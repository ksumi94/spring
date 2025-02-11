package com.korea.cgv;
import java.io.File;
import org.apache.catalina.Context;
import org.apache.catalina.startup.Tomcat;

public class EmbeddedTomcatServer {
    public static void main(String[] args) throws Exception {
        // ��Ĺ �ν��Ͻ� ���� �� ��Ʈ ����
        Tomcat tomcat = new Tomcat();
        String port = System.getenv("PORT");
        if (port == null || port.isEmpty()) {
            port = "8080";  // �⺻��
        }
        tomcat.setPort(Integer.parseInt(port));

        // �� ���ø����̼� ��Ʈ ��� ����
        String webappDirLocation = "src/main/webapp/";
        File webContentFolder = new File(webappDirLocation);
        if (!webContentFolder.exists()) {
            throw new RuntimeException("Webapp folder not found: " + webContentFolder.getAbsolutePath());
        }

        Context context = tomcat.addWebapp("/cgv", webContentFolder.getAbsolutePath());
        System.out.println("Configuring app with basedir: " + webContentFolder.getAbsolutePath());

        // Connector�� ���ε� �ּҸ� 0.0.0.0���� �����Ͽ� �ܺ� ���� ���
        tomcat.getConnector().setProperty("address", "0.0.0.0");

        // ��Ĺ ����
        tomcat.start();
        tomcat.getServer().await();
    }
}
