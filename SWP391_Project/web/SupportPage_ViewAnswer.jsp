<%-- 
    Document   : SupportPage_ViewAnswer
    Created on : Jul 17, 2022, 3:51:31 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Supporter Management</title>
        <link rel="stylesheet" href="css/admincss.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/9b6cd90630.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed jumbotron">

        <%@include file="HeaderSupport.jsp" %>

        <div id="layoutSidenav_content">

            <main class="container-fluid">
                <h1 class="mt-4 col-md-4"><i class="fa fa-house"></i>View Question</h1>
                <div class="room container-fluid px-4">    
                    <div class="tab-content ">

                        <table class="table table-responsive table-bordered table-hover">
                            <tr class="bg-light">
                                <th scope="col">ID</th>
                                <th scope="col">Title</th>
                                <th scope="col">Question</th>
                                <th scope="col">Sent Date</th>
                                <th scope="col">View Reply</th>
                                <th scope="col">Reply Date</th>
                            </tr>
                            <!--Foreach -->
                            <tr>
                                <td>1</td>
                                <td>2</td>
                                <td>
                                    <details>
                                        <summary>Click</summary>
                                        <p>Hỏiiii</p>
                                    </details>
                                </td>
                                <td>4</td>
                                <td>
                                    <details>
                                        <summary>Click</summary>
                                        <p>Câu tl</p>
                                    </details>
                                </td>
                            </tr>
                            <!--Foreach -->
                        </table>
                    </div>


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