/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.bean.UsuarioBean;
import Model.dao.UsuarioDAO;
/**
 *
 * @author Dr
 */
public class UsuarioServlet extends HttpServlet{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");

            request.setCharacterEncoding("utf-8");
            
            try (PrintWriter out = response.getWriter()) {            
                    String oAcao = request.getParameter("acao");
                    UsuarioDAO user = new UsuarioDAO();

                    if(oAcao.equals("inserir")){
                            user.cadastrar(new UsuarioBean(request.getParameter("nome"), request.getParameter("email"),request.getParameter("usuario"),request.getParameter("senha")));                            
                            response.sendRedirect( request.getContextPath()+"/cadastro_usuario.jsp?insertOk=1");
                    }else if(oAcao.equals("selecionar")){
                            List<UsuarioBean> listBean = user.buscarTodos();
                            request.setAttribute("listUsuario", listBean);            
                            request.getRequestDispatcher("home.jsp").forward(request, response);                        
                    }                     
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
