package DBUtils;

import java.sql.ResultSet;
import java.util.List;

public interface Connection<T> {

    public static final String URL = "jdbc:mysql://localhost:3306/jdbc?serverTimezone=UTC&useUnicode=true&characterEncoding=utf8&useSSL=false";
    public static final String USER = "root";
    public static final String PASSWORD = "linhanyao";

    void insert(T t) throws Exception;
    ResultSet getAll() throws Exception;
}
