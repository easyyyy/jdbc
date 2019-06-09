import DBUtils.StuDB;
import dao.Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class test {



    public static void main(String[] args) throws Exception {
        //1.加载驱动程序
        StuDB stuDB = new StuDB();
//        ResultSet rs = stuDB.getAll();
////        while(rs.next()){
////            System.out.println(rs.getString("studentName"));
////        }

        stuDB.insert(new Student(10019,"123","lin","男",1,"12332112334","nanchang","1991-02-17 00:00:00"));

    }
}
