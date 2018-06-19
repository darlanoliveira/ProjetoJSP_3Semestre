<%-- 
    Document   : lista
    Created on : 08/06/2018, 16:12:11
    Author     : Dr
--%>

<%@page import="java.lang.String"%>
<%@page import="Model.bean.GameBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="css/lista.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Digite o nome do Game
                    
                    
                     <div class="row">
        <div class="col-md-4 col-md-offset-3">
            <form action="<%=request.getContextPath()%>/GameServlet" class="search-form">
                <div class="form-group has-feedback">
            		<label for="search" class="sr-only">Search</label>
                        <input type="hidden" name="acao" value="selecionar" />
            		<input type="text" class="form-control" name="acao" id="search" placeholder="search">
              		<span class="glyphicon glyphicon-search form-control-feedback"></span>
            	</div>
            </form>
        </div>
    </div>
</div>
         
                
                    <div class="pull-right action-buttons">
                        <div class="btn-group pull-right">
                           
                          
                        </div>
                    </div>
                </div>
            
            
            
                <div class="panel-body">
                    <ul class="list-group">
                        
                        
                        
                          <%
                            List<GameBean> listGame = (List<GameBean>) request.getAttribute("listGame");                
                    %>      
                    
                                <%
                                if(listGame!=null){
                                             for(GameBean g: listGame){
                                                 %>
                           <li class="list-group-item">
                            <div class="checkbox">
                                <label for="checkbox">
                                   <%=g.getNome() %>
                                </label>
                            </div>
                                
                             
                            
                            
                            
                            
                            
                            
                            <div class="pull-right action-buttons">
                            
                            <% 
            if (session.getAttribute("login") != null) {
                
            %>
                            <div class="pull-right action-buttons">
                                
                                <a href="#"><span class="glyphicon glyphicon-pencil"></span></a>
                                <input type="hidden" name="acao" value="deletar" /> 
                                <a href="<%=request.getContextPath()%>/GameServlet" class="trash"><span class="glyphicon glyphicon-trash"></span></a>
                               
                            </div>
                        </li>
                        <li class="list-group-item">
                            
                            <% } %>
                                  
                                       <%
                                            }
                                }         
                    %> 
                                   
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-md-6">
                            
                        </div>
                        <div class="col-md-6">
                            <ul class="pagination pagination-sm pull-right">
                                
                        </div>
                        <a href="home.jsp"> <b>Voltar</b></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>                      

