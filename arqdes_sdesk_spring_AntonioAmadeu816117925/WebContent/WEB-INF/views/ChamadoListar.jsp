<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Listar Chamados</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <c:import url="Menu.jsp" />
   
    <div id="main" class="container">
        <h3 class="page-header">Consultar Chamados</h3>
        <form action="listar_chamados_exibir" method="post">
            <div class="row">
                <div class="form-group col-md-4">
                    <label for="fila">Escolha a Fila:</label>
                    <select class="form-control" name="id">
                        <c:forEach var="fila" items="${filas}">
                            <option value="${fila.id}">${fila.nome}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div id="actions" class="row">
                <div class="col-md-12">
                    <button type="submit" class="btn btn-primary" name="acao" value="ListarChamadosExibir">Listar Chamados</button>
                    <a href="index" class="btn btn-default">Cancelar</a>
                </div>
            </div>
        </form>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>