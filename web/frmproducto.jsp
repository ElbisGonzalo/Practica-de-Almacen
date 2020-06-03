<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <c:if test="${producto.id == 0}">Nuevo </c:if>
            <c:if test="${producto.id != 0}">Editar </c:if>
            registro
        </h1>
        <form action="Inicio" method="post">
            <table>
            <tr>
                <td><input type="hidden" name="id" value="${producto.id}" /></td>
            </tr>
            <tr>
                <td><label>Descripcion:</label></td>
                <td><input type="text" name="descripcion" value="${producto.descripcion}" /></td>
            </tr>
            <tr>
                <td><label>Stock:</label></td>
                <td><input type="number" name="stock" value="${producto.stock}" /> </td>    
            </tr>
            <tr>
                <td><input type="submit" value="Enviar" /></td>
            </tr>
            </table>
        </form>
    </body>
</html>
