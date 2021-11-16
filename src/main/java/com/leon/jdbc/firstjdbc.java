package com.leon.jdbc;

import com.mysql.cj.protocol.Resultset;

import java.sql.*;

public class firstjdbc {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        //1.加载驱动
        Class.forName("com.mysql.jdbc.Driver");
        //2.用户信息和url
        String url = "jdbc:mysql://localhost:3306/dbms1?useUnicode=true&characterEncoding=utf8&useSSL=true";
        String username = "root";
        String password = "123456";
        //3.连接成功  数据库对象  Connection 代表数据库
        Connection connection = DriverManager.getConnection(url,username,password);
        //4.执行sql对象  Statement执行sql
        Statement statement = connection.createStatement();
        //5.执行sql对象 去执行sql
        String sql = "select * from admin";
        Resultset resultSet = (Resultset) statement.executeQuery(sql);//返回结果集
//        while (resultSet.next());
//        //6.释放连接
//        resultSet.close();
//        statement.close();
//        connection.close();
    }
}
