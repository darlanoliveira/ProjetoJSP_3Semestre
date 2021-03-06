/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.teste
 */
package Controller;

import Model.bean.GameBean;
import Model.dao.GameDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dr
 */
public class GameServlet extends HttpServlet {
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");

            request.setCharacterEncoding("utf-8");
            
            try (PrintWriter out = response.getWriter()) {            
                    String oAcao = request.getParameter("acao");
                    GameDAO game = new GameDAO();

                    if(oAcao.equals("inserir")){
                            game.cadastrar(new GameBean(request.getParameter("nome"), request.getParameter("desenvolvedora"),request.getParameter("quantidade"),Float.parseFloat(request.getParameter("preco")),request.getParameter("plataforma"),request.getParameter("descricao")));                            
                            response.sendRedirect( request.getContextPath()+"/cadastro_game.jsp?insertOk=1");
                    }else if(oAcao.equals("selecionar")){
                            List<GameBean> listBean = game.buscarTodos();
                            request.setAttribute("listGame", listBean);            
                            request.getRequestDispatcher("lista.jsp").forward(request, response);                        
                    }                     
            }
            
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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


