package org.ng12306.jetty;

import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.webapp.WebAppContext;

/**
 * User: Radium
 * Date: 13-3-5
 * Time: 下午4:37
 */
public class WebServer {

    public static final int PORT = 8080;
    public static final String CONTEXT = "/";
    public static final String BASE_URL = "http://localhost:8080/12306ng";

    public static void main(String args[]) throws Exception{
        Server server = JettyFactory.createServerInSource(PORT, CONTEXT);

        try {
            server.start();

            System.out.println("Server running at " + BASE_URL);
            System.out.println("Hit Enter to reload the application");

            // 等待用户输入回车重载应用.
            while (true) {
                char c = (char) System.in.read();
                if (c == '\n') {
                    JettyFactory.reloadContext(server);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(-1);
        }
    }
}
