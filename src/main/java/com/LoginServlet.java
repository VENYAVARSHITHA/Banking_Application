package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accountNumber = request.getParameter("accountNumber");
        String password = request.getParameter("password");

        CustomerDAO customerDAO = new CustomerDAO();
        boolean isValidUser = customerDAO.validate(accountNumber, password);

        if (isValidUser) {
            HttpSession session = request.getSession();
            session.setAttribute("accountNumber", accountNumber); // Store as String
            response.sendRedirect("Customerdashboard.jsp");
        } else {
            response.sendRedirect("login.jsp?error=Invalid username or password");
        }
    }
}
