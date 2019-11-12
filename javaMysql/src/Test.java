//导入包
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * 数据库连接
 */
public class Test {
    public static void main(String[] args)  {
        Connection con;
        //jdbc驱动
        String driver="com.mysql.cj.jdbc.Driver";
        //这里我的数据库是cxxt
        String url="jdbc:mysql://localhost:3306/mysql?&useSSL=false&serverTimezone=UTC";
        String user="root";
        String password="123456";
        try {
            Class.forName(driver);
           Connection connection = DriverManager.getConnection(url, user, password);
            Statement statement = connection.createStatement();
            String string="insert into test(name,age,sex) values('张三','23','男')";
           int getResult = statement.executeUpdate(string);
           System.out.println("有"+getResult+"被修改成功！");
           String delete="delete from test where name='zhangshan'";
           int res1=statement.executeUpdate(delete);
           System.out.println("删除"+res1+"条数据\n");
           String res2="Update test set sex='女' where name='张三' ";
           int res3=statement.executeUpdate(res2);
           System.out.println("有"+res3+"数据被修改\n");
           statement.close();
            connection.close();
        }
        catch (Exception e) {
            System.out.println(e.toString());
        }



    }
}