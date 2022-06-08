<%-- 
    Document   : Term
    Created on : Jun 8, 2022, 7:47:02 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Term Management</title>
        <link rel="stylesheet" type="text/css" href="css/cssforadmin.css">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Play&amp;display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/9b6cd90630.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <header>
            <h1>ADMIN HOME PAGE</h1> <!-- tiêu đề -->
        </header>

        <%@include file="MenuAdmin.jsp" %>

        <div>
            <h1>Term Management</h1>
            <form action="mainController" method="post">
                <input type="text" name="search" value="<%= (request.getParameter("txtsearch") == null) ? "" : request.getParameter("txtsearch")%>">
                <select name="searchby">
                    <option value="byname">By id</option>
                    <option value="bycate">By name</option>
                </select>
                <input type="submit" value="search" name="action" >
            </form>
            <p>Add Term: <a href="AddTerm.jsp"><i class="fa-solid fa-circle-plus"></i></a></p>
            <h1></h1>
            <table class="table table-responsive table-bordered table-hover">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Update</th>
                    <th scope="col">Delete</th>
                </tr>
                <c:forEach var="s" items="${requestScope.LIST_Terms}">
                    <tr>
                        <td><c:out value="${s.id}"></c:out></td>
                        <td><c:out value="${s.name}"></c:out></td>

                            <td>              
                            <c:url  var="update" value="MainController">
                                <c:param name="userID" value="${s.id}"></c:param>
                                <c:param name="action" value="pageUpdateStudent"></c:param>
                            </c:url>
                            <a href="${update}"><i class="fas fa-edit"></i></a>
                        </td>
                        <td>              
                            <c:url  var="delete" value="MainController">
                                <c:param name="userID" value="${s.id}"></c:param>
                                <c:param name="action" value="deleteStudent"></c:param>
                            </c:url>
                            <a href="${delete}"><i class="fas fa-trash"></i></a>
                        </td>

                    </tr>
                </c:forEach>
            </table>
            <c:if test="${not empty requestScope.SUCCESS}">
                <p style="color: lightgreen">${requestScope.SUCCESS}</p>
            </c:if>
        </div>
        <footer>
            <p>Team</p>
            <p>FPT University</p>
        </footer>

    </body>
</html>
