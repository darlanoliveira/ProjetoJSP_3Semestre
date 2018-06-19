/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.dao.UsuarioDAO;

/**
 *
 * @author Dr
 */
public class LoginServlet extends HttpServlet {
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                response.setContentType("text/html;charset=UTF-8");
                try (PrintWriter out = response.getWriter()) {

                request.setCharacterEncoding("utf-8");
                    
                String pagina = request.getContextPath()+"/login.jsp?erro=1";

                UsuarioDAO user = new UsuarioDAO();
                String usuario = request.getParameter("login");
                String senha    = request.getParameter("senha");
                String oAcao   = request.getParameter("acao");

                if(user.autenticar(usuario,senha)==true){
                           
                            HttpSession sessao = request.getSession();                          
                            sessao.setAttribute("login", request.getParameter("login"));                         
                            pagina = request.getContextPath()+"/cadastro_game.jsp";
                            
                } else if (oAcao.equals("logout")) {
                            
                            HttpSession sessao = request.getSession();
                            sessao.invalidate();                            
                            pagina = request.getContextPath()+"/login.jsp";
                }
                response.sendRedirect(pagina);           
        }
    }
     
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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

