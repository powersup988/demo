package cn.edu.gues;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;
import java.util.Date;

@WebServlet("/my11")
public class MyServlet extends HttpServlet {

    @Override
    public void destroy() {
        System.out.println("销毁");
        super.destroy();
    }

    @Override
    public void init() throws ServletException {
        super.init();
        System.out.println("初始化");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("utf-8");
        response.getWriter().write("客户端使用get请求！时间"+new Date().toString());
        System.out.println("Get");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().write("客户端使用Post请求！时间"+new Date().toString());

        System.out.println("post");
    }
}
