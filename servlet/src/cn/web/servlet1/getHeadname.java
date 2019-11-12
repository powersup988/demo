package cn.web.servlet1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

@WebServlet("/getHeadname")
public class getHeadname extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Enumeration<String> headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()){
            String name=headerNames.nextElement();
            String value=request.getHeader(name);
            System.out.println(name+" :"+value);
        }
        String username=request.getHeader("User-Agent");
        System.out.println("\nUser-agent"+username);
        if(username.contains("Chrome")){
            System.out.println("谷歌浏览器");
        }
        else if(username.contains("firefox")){
            System.out.println("\nFirefox");
        }
        else if(username.contains("QQBrowser")){
            System.out.println("\nQQ Browser");
        }
    }
}
