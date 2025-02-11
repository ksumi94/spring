package com.korea.cgv;
import java.io.File;
import org.apache.catalina.Context;
import org.apache.catalina.startup.Tomcat;

public class EmbeddedTomcatServer {
	public static void main(String[] args) throws Exception {
        // ��Ĺ �ν��Ͻ� ���� �� ��Ʈ ����
		Tomcat tomcat = new Tomcat();
        //tomcat.setPort(8080);
		String port = System.getenv("PORT");
		if (port == null || port.isEmpty()) {
		    port = "8080";  // �⺻��
		}
		tomcat.setPort(Integer.parseInt(port));

        // �� ���ø����̼� ��Ʈ ��� ����
        String webappDirLocation = "src/main/webapp/"; // ���� webapp ���� ���
        File webContentFolder = new File(webappDirLocation);
        if (!webContentFolder.exists()) {
            throw new RuntimeException("Webapp folder not found: " + webContentFolder.getAbsolutePath());
        }

        // ��Ĺ�� �� ���ø����̼� �߰� (���ؽ�Ʈ ��Ʈ: "")
        //Context context = tomcat.addWebapp("", webContentFolder.getAbsolutePath());
        //System.out.println("Configuring app with basedir: " + webContentFolder.getAbsolutePath());
        String webappDirLocation1 = "src/main/webapp/";
        Context context = tomcat.addWebapp("", new File(webappDirLocation1).getAbsolutePath());
        System.out.println("Configuring app with basedir: " + new File(webappDirLocation1).getAbsolutePath());
        // (���� ����) JSP �������� ���� ���� �߰�
        // context.addParameter("org.apache.jasper.compiler.disablejsr199", "false");

        // ��Ĺ ����
        tomcat.start();
        tomcat.getServer().await();
    }
}
