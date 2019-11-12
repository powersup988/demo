package cn.web.servlet1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/referer")
public class Servlet2 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             response.setContentType("/res/referer;charset:utf-8");
                String referrer = request.getHeader("Referer");
                System.out.println(referrer);
                if(referrer.contains("/res")){
                    System.out.println("是本公司的网站访问的，容许进入");
                    response.getWriter().write("是本公司的网站访问的，容许进入");
                }
                else{
                    System.out.println("想看电影请充值9999999999999");
                    response.getWriter().write("想看电影请充值9999999999999");
                }
    }
}
