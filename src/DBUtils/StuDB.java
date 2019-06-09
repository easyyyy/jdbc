package DBUtils;

import dao.Student;

import java.sql.*;
import java.util.List;

public class StuDB implements Connection<Student> {
    private Statement stmt;
    private java.sql.Connection conn;

    private Integer studentNo;
    private String studentName;
    private String loginPwd;
    private String sex;
    private Integer gradeId;
    private String phone;
    private String address;
    private String  bornDate;
    private String email;
    private String identityCard;

    public StuDB() throws Exception{
        Class.forName("com.mysql.cj.jdbc.Driver");
        //2. 获得数据库连接
        this.conn = DriverManager.getConnection(URL, USER, PASSWORD);
        //3.操作数据库，实现增删改查
        this.stmt = conn.createStatement();

    }

    @Override
    public void insert(Student student) {

        int i = 0;
        String sql = "insert into student (studentNo,studentName,loginPwd,sex,gradeId,phone,address,bornDate,email,identityCard) values(?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pstmt;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, student.getStudentNo());
            pstmt.setString(2, student.getStudentName());
            pstmt.setString(3, student.getLoginPwd());
            pstmt.setString(4, student.getSex());
            pstmt.setInt(5, student.getGradeId());
            pstmt.setString(6, student.getPhone());
            pstmt.setString(7, student.getAddress());
            pstmt.setString(8, student.getBornDate());
            pstmt.setString(9, student.getEmail());
            pstmt.setString(10, student.getIdentityCard());

            i = pstmt.executeUpdate();
            pstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    @Override
    public ResultSet getAll() throws Exception {
        ResultSet rs = this.stmt.executeQuery("SELECT * FROM student");
        //如果有数据，rs.next()返回true
        return rs;
    }
}
