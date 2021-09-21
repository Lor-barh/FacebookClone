package dao;

import model.User;

import java.sql.*;

public class UserDao {
    private String jdbcURL = "jdbc:mysql://localhost:3306/facebookdb";
    private String username = "root";
    private String password = "private1618";

    private static final String insert_User_Sql = "INSERT INTO user" +
            "(email, password, full_name, birthday, sex, address, city, phone_number)"
            + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

    public UserDao() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, username, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void insertUser(User user) throws SQLException {
        System.out.println(insert_User_Sql);

        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(insert_User_Sql)) {
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getFullName());
            preparedStatement.setString(4, user.getBirthday());
            preparedStatement.setString(5, user.getSex());
            preparedStatement.setString(6, user.getAddress());
            preparedStatement.setString(7, user.getCity());
            preparedStatement.setString(8, user.getPhoneNumber());

            if (preparedStatement.execute()) {
                System.out.println("Sign-up successful");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean validate(User user) throws ClassNotFoundException {
        boolean status = false;

        String sql = "SELECT * FROM user WHERE email = ? AND password = ?";

        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection connection = DriverManager
                .getConnection(jdbcURL, username, password);
             PreparedStatement preparedStatement = connection
                     .prepareStatement(sql)) {
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getPassword());

            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();
            status = resultSet.next();

        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return status;
    }

//    public User getUser(String email, String password) throws SQLException{
//        User user = new User();
//        String sql = "SELECT * FROM user WHERE email = ? AND password = ?";
//
//        try (Connection connection = getConnection();
//        PreparedStatement preparedStatement = connection.prepareStatement(sql)){
//            preparedStatement.setString(1, email);
//            preparedStatement.setString(2, password);
//
//            System.out.println(preparedStatement);
//            ResultSet resultSet = preparedStatement.executeQuery();
//            while (resultSet.next()) {
//                Long user_id = resultSet.getLong("user_id");
//                String userName = resultSet.getString("email");
//                String code = resultSet.getString("password");
//                user.setUserId(user_id);
//                user.setEmail(userName);
//                user.setPassword(code);
//            }
//
//        }
//        return user;
//    }
}
