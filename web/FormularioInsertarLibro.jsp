<%-- 
    Document   : FormularioInsertarLibro
    Created on : 27/09/2018, 08:48:17 PM
    Author     : nunez-pc
--%>
<%@page import="java.util.List"%>
<%@page import="com.nunez.Libro"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="Error.jsp"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Formulario Libro</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <script type="text/javascript" src="js/validacion.js"></script>
    </head>
    <body>
        <form action="InsertarLibro.do" onsubmit="return validacion();" >
            <fieldset>
                <legend>Formulario alta libro</legend>
                <p><label for="isbn">ISBN:</label>
                    <input id="isbn" type="text" name="isbn" required/></p>
                <p>
                    <label for="titulo">Titulo:</label>
                    <input id="titulo" type="text" name= "titulo" required/>
                </p><p>
                    <select name="categoria" required>
                        <c:forEach var="categoria" items="${listaDeCategorias}">
                            <option value="${categoria.cveCategoria}">
                                ${categoria.descripcion}
                            </option>
                        </c:forEach>
                    </select>
                    <br/>
                </p>
                <p>
                    <input type="submit" value="Insertar" onclick="validacion()"/>
                </p>
            </fieldset>
        </form>
    </body>
</html>
