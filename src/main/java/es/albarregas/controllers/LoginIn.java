package es.albarregas.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author javier
 */
@WebServlet(name = "LoginIn", urlPatterns = {"/LoginIn"})
public class LoginIn extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    final static String USERNAME = "javier";
    final static String PASSWORD = "12345";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals(USERNAME) && password.equals(PASSWORD)) {

            Cookie usernameCookie = new Cookie("username", username);
            usernameCookie.setMaxAge(60 * 60 * 24 * 7); // 7 días
            response.addCookie(usernameCookie);

            Cookie[] cookies = request.getCookies();
            String cookieValue = null;
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    cookieValue = cookie.getValue();
                    break;
                }
            }

            request.setAttribute("cookieValue", cookieValue);

            request.getRequestDispatcher("/JSP/login.jsp").forward(request, response);

        } else {
            request.getRequestDispatcher("./index.jsp?error=1").forward(request, response);

        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
