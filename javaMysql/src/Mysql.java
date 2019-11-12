
/**
 * Created by huasheng on 2018/12/16.
 */
import java.sql.*;
/**
 * 测试数据库
 */
public class Mysql {
    //mysql驱动包名

    private static final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
    //数据库连接地址
    private static final String URL = "jdbc:mysql://localhost:3306/mysql?serverTimezone=GMT%2B8&characterEncoding=utf-8";
    //用户名
    private static final String USER_NAME = "root";
    //密码
    private static final String PASSWORD = "123456";
    public static void main(String[] args){
        Connection connection = null;
        try {
            //加载mysql的驱动类
           // Class.forName("com.mysql.jdbc.Driver");
            //获取数据库连接
            connection = DriverManager.getConnection(URL, USER_NAME, PASSWORD);
            Statement statement = connection.createStatement();
            System.out.println(statement.toString());
            System.out.println("成功");
            String sql="INSERT INTO TEST(name) VALUES('ZHANGSHAN')";
            int i=statement.executeUpdate(sql);
            System.out.println("成功修改"+i+"行信息");
            statement.close();
            connection.close();
            //mysql查询语句
//            String sql = "SELECT * FROM `stu`";
//            PreparedStatement prst = connection.prepareStatement(sql);
//            //结果集
//            ResultSet rs = prst.executeQuery();
//            while (rs.next()) {
//                System.out.println("学号:" + rs.getString("sno")+"   "+"姓名:" + rs.getString("sname")+" "+"性别:"+ rs.getString("ssex"));
//            }
//            rs.close();
//            prst.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
