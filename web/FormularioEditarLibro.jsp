<%-- 
    Document   : FormularioEditarLibro
    Created on : 28/09/2018, 08:09:34 AM
    Author     : nunez-pc
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.nunez.Libro"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="Error.jsp"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Formulario Libro</title> 
        <!-- cabecera y javascript-->
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <script type="text/javascript" src="js/validacion.js"></script>
    </head>
    <body>
        <form id="formularioEdicion" action="EditarLibro.do">
            <fieldset>
                <legend>Formulario alta libro</legend>
                <p><label for="isbn">ISBN:</label><input type="text" id="isbn" name="isbn" value="${libro.isbn}" /></p>
                <p><label for="titulo">Titulo:</label><input type="text" id="titulo" name="titulo" value="${libro.titulo}" /></p>
                <p><label for="categoria">Categoria :</label>
                    <select name="categoria">
                        <c:forEach var="categoria" items="${listaDeCategorias}">
                            <option value="${categoria.cveCategoria}">
                                ${categoria.descripcion}
                            </option>
                        </c:forEach>
                    </select><br />
                </p>
                <p><input type="submit" value="Salvar" /></p>
            </fieldset>
        </form>
    </body>
</html>
