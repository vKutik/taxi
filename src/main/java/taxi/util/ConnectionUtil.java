package taxi.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import taxi.dao.impl.CarDaoImpl;

public class ConnectionUtil {
    public static final String URL = "jdbc:mysql://localhost:3306/taxi?serverTimezone=UTC";
    public static final String USERNAME = "root";
    public static final String PASSWORD = "java123";
    public static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final Logger log = LogManager.getLogger(CarDaoImpl.class);

    static {
        try {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            log.error("Can't find SQL Driver", e);
            throw new RuntimeException("Can't find SQL Driver", e);
        }
    }

    public static Connection getConnection() {
        Properties dbProperties = new Properties();
        dbProperties.setProperty("user", USERNAME);
        dbProperties.setProperty("password", PASSWORD);
        try {
            return DriverManager.getConnection(URL, dbProperties);
        } catch (SQLException e) {
            log.error("Can't create connection to DB ", e);
            throw new RuntimeException("Can't create connection to DB ", e);
        }
    }
}
