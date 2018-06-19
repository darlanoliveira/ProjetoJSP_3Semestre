<%-- 
    Document   : cadastro_game
    Created on : 07/06/2018, 16:20:13
    Author     : Dr
--%>

<%@page import="Model.bean.GameBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="js1.js"></script>
<link rel="stylesheet" type="text/css" href="css/cadastro_game.css">
<!------ Include the above in your HEAD tag ---------->


     <% 
            if (session.getAttribute("login") != null) {
                if (request.getParameter("insertOk")!=null && request.getParameter("insertOk")!=""){
                            %>
                                        <script>alert("Game registrado com sucesso");</script>
                            <%
                    }
      %>
      <body>
     
<div class="row">
    <div class="col-md-6 col-sm-12 col-lg-6 col-md-offset-3">
		<div class="panel panel-primary">
			<div class="panel-heading">Cadastro de Games
                           
			</div>
			<div class="panel-body">
                
                            <form method="post" action="<%=request.getContextPath()%>/GameServlet">
					<div class="form-group">
						<label for="nome">Nome</label>
						<input id="nome" name="nome" class="form-control" type="text" data-validation="required">
						<span id="error_name" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="desenvolvedora">Desenvolvedora</label>
						<input id="desenvolvedora" name="desenvolvedora" class="form-control" type="text">
						<span id="error_lastname" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="quantidade">Quantidade</label>
						<input id="quantidade" name="quantidade"  class="form-control" type="number" min="0" >
						<span id="error_age" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="preco">Preço (R$)</label>
						<input type="number" name="preco" id="preco" class="form-control">
						<span id="error_dob" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="plataforma">Plataforma</label>
						<select name="plataforma" id="plataforma" class="form-control">
							<option selected>Xbox</option>
							<option>Xbox</option>
							<option>Xbox One</option>
                                                        <option>Playstation 3</option>
                                                        <option>Playstation 4</option>
                                                        <option>Nintendo Wii</option>
                                                        <option>Nintendo DS</option>
						</select>
						<span id="error_gender" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="codigo">Código (Gerado Automaticamente)</label>
						<input type="number" id="codigo" name="codigo" class="form-control" readonly/>
						<span id="error_phone" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="descricao">Descrição</label>
						<textarea class="form-control" rows="3" id="descricao" name="descricao"></textarea>
					</div>
                                        
					<input type="hidden" name="acao" value="inserir" />   
					<input id="submit" type="submit" value="Cadastrar" class="btn btn-primary center"/>
                                       
				</form>
                                        
                            <form name="frmLogout" method="post" action="<%=request.getContextPath()%>/LoginServlet">
                            <input type="hidden" name="acao" value="logout" />
                         
                            <input type="submit" value="Logout" />
                            </form>
                            <form action="cadastro_usuario.jsp">
                                <input type="submit" value="Cadastrar Usuário" />
                            </form>
                            
                            <a href="home.jsp"> <b>Home</b></a>
                         
			</div>
		</div>
	</div>
</div>
      </body>
  <% } else{
            out.print("<h4>Usuário não logado!</h4>");
            out.print("<a href='" + request.getContextPath() + "/home.jsp'>Voltar</a>");
        }%>

