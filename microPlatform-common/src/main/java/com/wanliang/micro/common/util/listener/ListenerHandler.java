package com.wanliang.micro.common.util.listener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @author wupeng
 * @version 1.0
 * @date 2015-09-29
 * @modify
 * @copyright Navi Tsp
 */
@Component
public class ListenerHandler {

    private static Map<Class<?>, List<OpentspListener<?>>> listeners;
    private static ExecutorService executorService;

    @Value("${opentsp.listener.executor.size:3}")
    private Integer poolSize;

    @Autowired
    public ListenerHandler(List<OpentspListener<?>> listenerList){
        executorService = Executors.newFixedThreadPool(3);
        for(OpentspListener listener : listenerList) {
            Type[] mySuperClass = listener.getClass().getGenericInterfaces();
            for(Type type : mySuperClass) {
                if(type == OpentspListener.class) {
                    type = ((ParameterizedType)mySuperClass[0]).getActualTypeArguments()[0];
//                    listeners.put(type, listener);
                }
            }

        }
    }

}
