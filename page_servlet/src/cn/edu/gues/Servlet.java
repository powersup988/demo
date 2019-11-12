package cn.edu.gues;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

/**
 * @author sunda
 */
@WebServlet("/test")
//@WebServlet("/HelloServlet")
public class Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().write("hello, 这是我的第一个Servlet...");
        response.getWriter().write("当前系统时间是："+new Date());
        System.out.println("test.post");
        response.setStatus(405);
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 向浏览器输出内容
        // 设置编码
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().write("hello, 这是我的第一个Servlet...");
        response.getWriter().write("当前系统时间是："+new Date());
        System.out.println("test.get");
        response.setStatus(406);

    }

}
