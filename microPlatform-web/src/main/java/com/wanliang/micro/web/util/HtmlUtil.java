package com.wanliang.micro.web.util;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.web.client.RestTemplate;

import java.io.File;
import java.io.IOException;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/18
 * @modify
 * @copyright Navi  TSP
 */
public class HtmlUtil {


    public static void main(String[] args) throws IOException {
      //  RestTemplate restTemplate=new RestTemplate();
     //  String html= restTemplate.getForObject("http://news.163.com", String.class);
        Document doc = Jsoup.connect("http://news.163.com").get();
        System.out.println(doc.title());
       Element element= doc.body();
       Elements elements= element.select("a[class=ac01]");
        for (Element element1: elements){
            System.out.println(element1.attr("href"));
            System.out.println(element1.text());
            if(element1.attr("href").indexOf("html")!=-1) {
                Document doc1 = Jsoup.connect(element1.attr("href")).get();
                Element element2 = doc1.body();
                //      String title= element2.getElementById("h1title").text();
                Element element3 = element2.select("div[class=ep-time-soure cDGray]").get(0);
                System.out.println("时间：" + element3.text() + "--" + element3.child(0).text());
                System.out.println("内容：" + element2.getElementById("endText").html());
                System.out.println("责任编辑：" + element2.getElementsByClass("ep-editor").get(0).text());
            }
        }
     //   System.out.println(html);
    }
}
