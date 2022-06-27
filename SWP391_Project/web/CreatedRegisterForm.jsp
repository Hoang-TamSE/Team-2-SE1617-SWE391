<%-- 
    Document   : CreatedRegisterForm
    Created on : Jun 27, 2022, 3:32:07 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Created Form</title>
        <link rel="stylesheet" href="css/admincss.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/9b6cd90630.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed jumbotron">

        <%@include file="Header.jsp" %>

        <div id="layoutSidenav_content">

            <main class="container-fluid">
                <h1 class="mt-4 col-md-4"><i class="fa fa-house"></i>Created Form</h1>     
                <div class="room container-fluid px-4">    
                    <div class="tab-content ">
                        <table class="table">
                            <tr>
                                <th scope="col">Term</th>
                                <th scope="col">Start Date</th>
                                <th scope="col">End Date</th>
                                <th scope="col">Total</th>
                                <th scope="col">Submit</th>
                            </tr>
                            <tr>
                                <td scope="row">
                                    <div class="term">
                                        <select name="term">
                                            <c:forEach var="semester" items="${requestScope.LIST_SEMESTER}">
                                                <option value="${semester.semesterID}">${semester.semesterName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </td>
                                <td scope="row">
                                    <input type="datetime-local" name="startDate">
                                </td>
                                <td scope="row">
                                    <input type="datetime-local" name="startDate">
                                </td>
                                <td scope="row">
                                    
                                </td>
                                <td scope="row">
                                    <button type="submit" class="btn btn-success" value="MakeFormRegister" name="action">Submit</button>        
                                </td>
                            </tr>
                        </table>
                    </div>
            </main>
            <%@include file="Footer.jsp" %>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

</body>
</html>