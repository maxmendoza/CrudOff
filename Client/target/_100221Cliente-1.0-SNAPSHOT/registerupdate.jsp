<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro | Actualización</title>
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
                    <a class="nav-link" >Registrar / Actualizar</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="delete.jsp">Eliminar</a>
                </li>
            </ul>
        </div>
    </nav>
</header>
<section >
    <div class="container bg-light text-dark mt-2">
        <form>
            <div class="row p-2">
                <div class="col-12"><span>Cliente</span><hr></div>
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <label for="customerNumber">Número: </label>
                        <input type="number" name="customerNumber" id="customerNumber" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <label for="customerName">Nombre: </label>
                        <input type="text" name="customerName" id="customerName" class="form-control">
                    </div>
                </div>
                <div class="col-12"><span>Contacto:</span><hr></div>
                <div class="col-12 col-md-5">
                    <div class="form-group">
                        <label for="contactLastName">Apellido(s): </label>
                        <input type="text" name="contactLastName" id="contactLastName" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-5">
                    <div class="form-group">
                        <label for="contactFirstName">Nombre(s): </label>
                        <input type="text" name="contactFirstName" id="contactFirstName" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-2">
                    <div class="form-group">
                        <label for="phone">Télefono: </label>
                        <input type="text" name="phone" id="phone" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <label for="addressLine1">Dirección 1: </label>
                        <input type="text" name="addressLine1" id="addressLine1" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="form-group">
                        <label for="addressLine2">Dirección 2: </label>
                        <input type="text" name="addressLine2" id="addressLine2" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="form-group">
                        <label for="city">Ciudad: </label>
                        <input type="text" name="city" id="city" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="form-group">
                        <label for="state">Estado: </label>
                        <input type="text" name="state" id="state" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="form-group">
                        <label for="postalCode">Código postal: </label>
                        <input type="text" name="postalCode" id="postalCode" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="form-group">
                        <label for="country">País: </label>
                        <input type="text" name="country" id="country" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="form-group">
                        <label for="salesRepEmployeeNumber">Núm Representante de ventas: </label>
                        <input type="number" name="salesRepEmployeeNumber" id="salesRepEmployeeNumber" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="form-group">
                        <label for="creditLimit">Límite de crédito: </label>
                        <input type="number" name="creditLimit" id="creditLimit" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-4 ">
                    <div class="form-group">
                        <label for="accion">Acción</label>
                        <select class="form-control" id="accion" name="accion" required>
                            <option value="Actualizar">Actualizar</option>
                            <option value="Registrar" selected>Registrar</option>
                        </select>
                    </div>
                </div>
                <div class="col-12 col-md-8  align-self-center text-right mt-2">
                    <button class="btn btn-primary" onclick="return registerOrUpdate()" >Confirmar</button>
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