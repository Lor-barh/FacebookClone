package controller;

import dao.UserDao;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "usercontroller", urlPatterns = "/")
public class UserController extends HttpServlet {

    private static final long seialVersionUID = 1L;
    private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getServletPath();

        try {
            switch (action) {
                case "/login":
                    showHomePage(request, response);

                case "/sign-up":
                    insertUser(request, response);
                    break;
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }

    }

    private void showHomePage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        String username = request.getParameter("email");
        String password = request.getParameter("password");
        User user = new User();
        user.setEmail(username);
        user.setPassword(password);
        try {
            if (userDao.validate(user)) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                request.getRequestDispatcher("Home.jsp").forward(request, response);
            } else {
                response.sendRedirect("register.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String fullName = request.getParameter("full_name");
        String birthday = request.getParameter("birthday");
        String sex = request.getParameter("sex");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String phoneNumber = request.getParameter("phone_number");
        User newUser = new User(email, password, fullName, birthday, sex, address, city, phoneNumber);

        try {
            userDao.insertUser(newUser);

        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("home.jsp");
    }

}
