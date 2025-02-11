import java.io.File;
import org.apache.catalina.Context;
import org.apache.catalina.startup.Tomcat;

public class EmbeddedTomcatServer {
	public static void main(String[] args) throws Exception {
        // 톰캣 인스턴스 생성 및 포트 설정
		Tomcat tomcat = new Tomcat();
        tomcat.setPort(8080);

        // 웹 애플리케이션 루트 경로 설정
        String webappDirLocation = "src/main/webapp/"; // 실제 webapp 폴더 경로
        File webContentFolder = new File(webappDirLocation);
        if (!webContentFolder.exists()) {
            throw new RuntimeException("Webapp folder not found: " + webContentFolder.getAbsolutePath());
        }

        // 톰캣에 웹 애플리케이션 추가 (컨텍스트 루트: "")
        Context context = tomcat.addWebapp("", webContentFolder.getAbsolutePath());
        System.out.println("Configuring app with basedir: " + webContentFolder.getAbsolutePath());

        // (선택 사항) JSP 컴파일을 위한 설정 추가
        // context.addParameter("org.apache.jasper.compiler.disablejsr199", "false");

        // 톰캣 시작
        tomcat.start();
        tomcat.getServer().await();
    }
}
