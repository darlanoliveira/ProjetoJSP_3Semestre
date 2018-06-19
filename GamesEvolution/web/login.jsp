<%-- 
    Document   : login1
    Created on : 07/06/2018, 15:14:53
    Author     : Dr
--%>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
<script src="js/js1.js"></script>
<link rel="stylesheet" type="text/css" href="css/login.css">
<!-- This is a very simple parallax effect achieved by simple CSS 3 multiple backgrounds, made by http://twitter.com/msurguy -->

<a href="home.jsp"><h4>VOLTAR</h4></a>
<div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Login</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form" action="<%=request.getContextPath()%>/LoginServlet">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="digite seu login" name="login" type="text">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="senha" name="senha" type="password" value="">
			    		</div>
			    		<div class="checkbox">
			    	    	<label>
			    	    		<input name="remember" type="checkbox" value="lembre"> Lembre
			    	    	</label>
			    	    </div>
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Entrar">
			    	</fieldset>
                                       <input type="hidden" name="acao" value="login" />
			      	</form>
                    
                     <%
        if (request.getParameter("erro") != null) {
        %>
        <div>
            <font color="red"> Login Inválido!!! - Tente novamente.</font>
        </div>
         <%
        }          
        %>
			    </div>
			</div>
		</div>
	</div>
</div>
