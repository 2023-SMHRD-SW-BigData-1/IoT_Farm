<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Tables - SB Admin Pro</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="nav-fixed">
    <jsp:include page="admin_header.jsp"></jsp:include>
        
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                
            </div>
            <div id="layoutSidenav_content">
                <main>
                    
                    <!-- Main page content-->
                    <div class="container-xl px-4">
                        <div class="card mb-4">
                            <div class="card-header">Billing History</div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Transaction ID</th>
                                            <th>Product</th>
                                            <th>Amount</th>
                                            <th>Date</th>
                                            <th>End Date</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Transaction ID</th>
                                            <th>Product</th>
                                            <th>Amount</th>
                                            <th>Date</th>
                                            <th>End Date</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                          				<c:forEach items="${list}" var="bill">
                                        <tr>
                                            <td>#${bill.deal_num}</td>
                                            <td><div class="badge bg-primary text-white rounded-pill">${bill.product}</div></td>
                                            <td>${bill.price}</td>
                                            <td>${bill.start_date}</td>
                                            <td>${bill.end_date}</td>
                                        </tr>
                           				</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        
                    </div>
                </main>
                
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables/datatables-simple-demo.js"></script>
    </body>
</html>
