<%-- 
    Document   : UpdateSpecialization
    Created on : Jun 20, 2022, 6:10:59 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Narrow</title>
        <link rel="stylesheet" href="css/admincss.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/9b6cd90630.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed jumbotron">

        <%@include file="Header.jsp" %>

        <div id="layoutSidenav_content">

            <main class="container-fluid">
                <h1 class="mt-4 col-md-4"><i class="fa fa-house"></i>Update Narrow</h1>


                <div class="room container-fluid px-4">    
                    <div class="tab-content ">
                        <form action="MainController" method="GET">
                            <table class="table table-responsive table-bordered table-hover">
                                <tr>
                                    <td>ID</td>
                                    <td>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td>Name</td>
                                    <td>
                                        <input value="" type="text" name="">
                                    </td>
                                    <td>
                                        <p style="color: red; ">${requestScope.ERROR.majorName}</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Link</td>
                                    <td>
                                        <input value="" type="text" name="linkFLM">
                                    </td>
                                    <td>
                                        <p style="color: red; ">${requestScope.ERROR.linkFLM}</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Description</td>
                                    <td>
                                        <input value="" type="text" name="description">
                                    </td>
                                    <td>
                                        <p style="color: red; ">${requestScope.ERROR.description}</p>
                                    </td>
                                </tr>

                                <tr>
                                    <td colspan="2">
                                        <!--Mấy ông sửa cái này lại nha tui demo thôi_-->
                                        <input class="button" type="submit" name="action" value="UpdateNarrow">
                                        <input type="hidden" name="" value="">
                                    </td>
                                </tr>
                            </table>
                        </form>

                        <footer>
                            <p>Team</p>
                            <p>FPT University</p>
                        </footer>
                    </div>


                </div>
            </main>
            <footer class="bg-dark">
                <p>Team</p>
                <p>FPT University</p>
            </footer>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

</body>
</html>
