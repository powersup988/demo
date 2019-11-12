package cn.web.servlet1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/requ")
public class Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            System.out.println(" method:"+request.getMethod());
            System.out.println("contextPath:"+request.getContextPath());
            System.out.println("queryString:"+request.getQueryString());
            System.out.println("URI:"+request.getRequestURI());
            System.out.println("URL:"+request.getRequestURL());
            System.out.println("Protocol:"+request.getProtocol());
            System.out.println("RemoteAddr:"+request.getRemoteAddr());
    }
}
