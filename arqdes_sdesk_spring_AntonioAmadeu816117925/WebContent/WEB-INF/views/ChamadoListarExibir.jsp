<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listar Chamados</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    
    <c:import url="Menu.jsp" />

    <div id="main" class="container">
        <h3 class="page-header">Chamado(s) da Fila ${fila.nome}</h3>
        <c:if test="${not empty chamados}">
            <div class="table-responsive col-md-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Número</th>
                            <th>Descrição</th>
                            <th>Abertura</th>
                            <th>Fechamento</th>
                            <th>Status</th>
                            <th>Tempo (dias)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="chamado" items="${chamados}">
                            <tr>
                                <td>${chamado.numero}</td>
                                <td>${chamado.descricao }</td>
                                <td align="center">
                                    <fmt:formatDate value="${chamado.dataAbertura }" pattern="dd/MM/yyyy" />
                                </td>
                                <td align="center">
                                    <fmt:formatDate value="${chamado.dataFechamento }" pattern="dd/MM/yyyy" />
                                </td>
                                <td>${chamado.status }</td>
                                <td align="right"><fmt:formatNumber type="number" value="${chamado.tempoDias}"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
        <c:if test="${empty chamados}">
            <div class="alert alert-info" role="alert">N&atilde;o h&aacute; chamados nesta fila.</div>
        </c:if>
        <a href="listar_filas_exibir" class="btn btn-default">Voltar</a>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>