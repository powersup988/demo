package cn.web.servlet;
import javax.servlet.*;
import java.io.IOException;

/**
 * @author sunda
 */
public class MyServlet implements Servlet  {


    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
                System.out.println("init.....");
    }
    private int cot=0;
    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        cot++;
            System.out.println("服务器被访问第"+cot+"次");
            System.out.println(servletRequest.getContentType());
            System.out.println( servletRequest.getServerPort()) ;

        System.out.println( servletRequest.getRemoteAddr() ) ;
        //servletRequest.getParameterValues();
    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {
        System.out.println("destroy.....");
    }
}
