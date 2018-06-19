<%-- 
    Document   : cadastro
    Created on : 07/06/2018, 15:00:23
    Author     : Dr
--%>
<%@page import="Model.bean.UsuarioBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
                <link rel="stylesheet" type="text/css" href="css/cadastro.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Cadastro de usuário</title>
	</head>
        <% 
            if (session.getAttribute("login") != null) {
                if (request.getParameter("insertOk")!=null && request.getParameter("insertOk")!=""){
                            %>
                                        <script>alert("Usuário registrado com sucesso");</script>
                            <%
                    }
      %>
	<body>
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">Games Evolution</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form method="post" action="<%=request.getContextPath()%>/UsuarioServlet" class="form-horizontal">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Nome</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="nome" id="nome"  placeholder="Digite seu nome"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="Digite seu e-mail"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="usuario" id="usuario"  placeholder="Digite seu login"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Senha</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="senha" id="senha"  placeholder="Digite sua senha"/>
								</div>
							</div>
						</div>


						<div class="form-group ">
                                                        <input type="hidden" name="acao" value="inserir" />
							<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Registrar"/>
						</div>
						<div class="login-register">
				            <a href="cadastro_game.jsp">Voltar</a>
				         </div>
					</form>
				</div>
			</div>
		</div>

		<script type="text/javascript" src="assets/js/bootstrap.js"></script>
	</body>
         <% } else{
            out.print("<h4>Usuário não logado!</h4>");
            out.print("<a href='" + request.getContextPath() + "/home.jsp'>Voltar</a>");
        }%>
</html>