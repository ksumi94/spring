package com.korea.cgv;
import java.io.File;
import org.apache.catalina.Context;
import org.apache.catalina.startup.Tomcat;

public class EmbeddedTomcatServer {
    public static void main(String[] args) throws Exception {
        // 톰캣 인스턴스 생성 및 포트 설정
        Tomcat tomcat = new Tomcat();
        String port = System.getenv("PORT");
        if (port == null || port.isEmpty()) {
            port = "8080";  // 기본값
        }
        tomcat.setPort(Integer.parseInt(port));

        // 웹 애플리케이션 루트 경로 설정
        String webappDirLocation = "src/main/webapp/";
        File webContentFolder = new File(webappDirLocation);
        if (!webContentFolder.exists()) {
            throw new RuntimeException("Webapp folder not found: " + webContentFolder.getAbsolutePath());
        }

        Context context = tomcat.addWebapp("/cgv", webContentFolder.getAbsolutePath());
        System.out.println("Configuring app with basedir: " + webContentFolder.getAbsolutePath());

        // Connector의 바인딩 주소를 0.0.0.0으로 설정하여 외부 접속 허용
        tomcat.getConnector().setProperty("address", "0.0.0.0");

        // 톰캣 시작
        tomcat.start();
        tomcat.getServer().await();
    }
}
