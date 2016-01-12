package com.wanliang.micro.configuration;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.support.http.StatViewServlet;
import com.wanliang.micro.persistence.Page;
import com.wanliang.micro.persistence.interceptor.PaginationInterceptor;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.embedded.ServletRegistrationBean;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.data.annotation.TypeAlias;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.io.IOException;
import java.util.Properties;

@Configuration
@EnableTransactionManagement
@MapperScan("com.*.*.repository")
public class DataSourceConfig {
    private static final Logger logger = LoggerFactory.getLogger(DataSourceConfig.class);

    /**
     * xml 配置文件的位置
     */
    @Value("${microPlatform.mybatis.mapperfile.location}")
    private String mapperFolder;

    /**
     * mapper 接口的包名
     */
    @Value("${microPlatform.mybatis.mapper.package}")
    private String mapperPackage;


    @Bean
    @Primary
    @ConfigurationProperties(prefix = "micro.datasource")
    public DataSource dataSource() {
        logger.debug("Configuring Datasource");
        return new DruidDataSource();
    }

    @Bean
    public MybatisResource mybatisResource() throws IOException {
        ResourcePatternResolver resourcePatternResolver = new PathMatchingResourcePatternResolver();
        String pattern = ResourcePatternResolver.CLASSPATH_ALL_URL_PREFIX + mapperFolder + "/**/*.xml";
        Resource[] resources = resourcePatternResolver.getResources(pattern);
        return new MybatisResource(resources);
    }

    @Autowired
    @Bean
    public SqlSessionFactoryBean sqlSessionFactoryBean(DataSource dataSource, MybatisResource resource){
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource);
        sqlSessionFactoryBean.setTypeAliases(new Class[]{Page.class});
        sqlSessionFactoryBean.setMapperLocations(resource.getMapperResources());
        //添加插件
        sqlSessionFactoryBean.setPlugins(new Interceptor[]{new PaginationInterceptor()});
        return sqlSessionFactoryBean;
    }

    @Bean
    public ServletRegistrationBean druidServlet() {
        return new ServletRegistrationBean(new StatViewServlet(), "/druid/*");
    }


    @Bean
    public PlatformTransactionManager txManager() {
        return new DataSourceTransactionManager(dataSource());
    }
//
//    @Bean
//    public SqlSessionFactory sqlSessionFactoryBean() throws Exception {
//
//        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
//        sqlSessionFactoryBean.setDataSource(dataSource());
//
//        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
//
//
//        sqlSessionFactoryBean.setMapperLocations(resolver
//                .getResources());
//        return sqlSessionFactoryBean.getObject();
//    }

}