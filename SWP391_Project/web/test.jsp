<%-- 
    Document   : test
    Created on : Jun 15, 2022, 6:02:17 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Student Management</title>
        <link rel="stylesheet" type="text/css" href="css/cssforadmin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Play&amp;display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/9b6cd90630.js" crossorigin="anonymous"></script>
    </head>
    <body>

        <div id="mySidebar" class="sidebar">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
            <a href="#">About</a>
            <a href="#">Services</a>
            <a href="#">Clients</a>
            <a href="#">Contact</a>
        </div>

        <header>
            <h1>AdminPage</h1>
        </header>
        <div id="main">
            <button class="openbtn" onclick="openNav()">☰ Open Sidebar</button>  
            <h1>Student Management</h1>
                <a href="AddStudent.jsp">
                    <button>Add Student: <i class="fa-solid fa-circle-plus"></i></button>
                </a> 
                </form> 
                <form  method="POST" action="MainController" enctype="multipart/form-data" >
                    <input  type="file" name="file" accept=".xlsx">
                    <input  type="submit" value="Upload" name="action">
                </form>
            </div>

            <div>
                <form action="mainController" method="post">
                    <input type="text" name="search" value="<%= (request.getParameter("txtsearch") == null) ? "" : request.getParameter("txtsearch")%>">
                    <select  name="searchby">
                        <option value="byid">By Id</option>
                        <option value="byname">By Name</option>
                    </select>
                    <input  type="submit" value="Search" name="action" >

                    </div>

                    <h1></h1>
                    <table class="table table-responsive table-bordered table-hover">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Address</th>
                            <th scope="col">Role</th>
                            <th scope="col">Semester</th>
                            <th scope="col">Major</th>
                            <th scope="col">Narrow</th>
                            <th scope="col">Update</th>
                            <th scope="col">Delete</th>
                        </tr>
                        <c:forEach var="s" items="${requestScope.LIST_Students}">
                            <tr>
                                <td><c:out value="${s.userID}"></c:out></td>
                                <td><c:out value="${s.name}"></c:out></td>
                                <td><c:out value="${s.email}"></c:out></td>
                                <td><c:out value="${s.phoneNumber}"></c:out></td>
                                <td><c:out value="${s.address}"></c:out></td>
                                <td><c:out value="${s.roleID}"></c:out></td>
                                <td><c:out value="${s.semesterID}"></c:out></td>
                                <td><c:out value="${s.majorID}"></c:out></td>
                                <td><c:out value="${s.narrowID}"></c:out></td>

                                    <td>              
                                    <c:url  var="update" value="MainController">
                                        <c:param name="userID" value="${s.userID}"></c:param>
                                        <c:param name="action" value="pageUpdateStudent"></c:param>
                                    </c:url>
                                    <a href="${update}"><i class="fas fa-edit"></i></a>
                                </td>
                                <td>              
                                    <c:url  var="delete" value="MainController">
                                        <c:param name="userID" value="${s.userID}"></c:param>
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
        </div>

        <script>
            function openNav() {
                document.getElementById("mySidebar").style.width = "250px";
                document.getElementById("main").style.marginLeft = "250px";
            }

            function closeNav() {
                document.getElementById("mySidebar").style.width = "0";
                document.getElementById("main").style.marginLeft = "0";
            }
        </script>

    </body>
    <style>
            body {
                font-family: "Lato", sans-serif;
            }

            .sidebar {
                height: 100%;
                width: 0;
                position: fixed;
                z-index: 1;
                top: 0;
                left: 0;
                background-color: #111;
                overflow-x: hidden;
                transition: 0.5s;
                padding-top: 60px;
            }

            .sidebar a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: #818181;
                display: block;
                transition: 0.3s;
            }

            .sidebar a:hover {
                color: #f1f1f1;
            }

            .sidebar .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }

            .openbtn {
                font-size: 20px;
                cursor: pointer;
                background-color: #111;
                color: white;
                padding: 10px 15px;
                border: none;
            }

            .openbtn:hover {
                background-color: #444;
            }

            #main {
                transition: margin-left .5s;
                padding: 16px;
            }

            /* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
            @media screen and (max-height: 450px) {
                .sidebar {padding-top: 15px;}
                .sidebar a {font-size: 18px;}
            }
        </style>
</html> 
