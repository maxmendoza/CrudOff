<%--
  Created by IntelliJ IDEA.
  User: diego
  Date: 10/3/2021
  Time: 10:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar</title>
    <link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-info">
        <a class="navbar-brand">Administración para clientes</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Buscar</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="registerupdate.jsp" >Registrar / Actualizar</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" >Eliminar</a>
                </li>
            </ul>
        </div>
    </nav>
</header>
<section >
    <div class="container bg-light text-dark mt-2">
        <form>
            <div class="row p-2">
                <div class="col-12 col-md-8">
                    <div class="form-group">
                        <label for="customerNumber">Número del cliente que desea eliminar: </label>
                        <input type="number" name="customerNumber" id="customerNumber" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-4 align-self-center text-right">
                    <button type="submit" class="btn btn-danger" style="width: 100%;"
                            onclick="return deleteCustomer()">Eliminar</button>
                </div>
            </div>
        </form>
    </div>
    <div class="text-center bg-dark text-light">
        <h1 id="mensaje"></h1>
    </div>
</section>
<script src="main.js">
</script>
<script src="https://code.jquery.com/jquery-3.2.1.js"
        integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</body>
</html>