<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/estilos.css" >
    </head>
    <body>
        <form name="frmLogin" method="post" action="<%=request.getContextPath()%>/LoginServlet">
           <table border=1>
                <caption>Login:</caption>
                <tr>
                    <td>Usuário:</td>
                    <td><input type="text" name="login" size="10" /></td>
                </tr>
                <tr>
                    <td>Senha:</td>
                    <td><input type="password" name="senha" size="10" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Entrar" /></td>
                </tr>
           </table>
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
    </body>
</html>