<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>
    <link rel="stylesheet" href="./bootstrap.min.css">
</head>

<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-info">
        <a class="navbar-brand">Administración para clientes</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link">Buscar</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="registerupdate.jsp">Registrar / Actualizar</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="delete.jsp">Eliminar</a>
                </li>
            </ul>
        </div>
    </nav>
</header>
<section>
    <div class="container bg-light text-dark mt-2">
        <form>
            <div class="row p-2">
                <div class="col-12 col-md-8">
                    <div class="form-group">
                        <label for="customerNumber">Buscar por el número de cliente: </label>
                        <input type="number" name="customerNumber" id="customerNumber" class="form-control">
                    </div>
                </div>
                <div class="col-12 col-md-4 align-self-center text-right">
                    <button type="submit" class="btn btn-success" style="width: 100%;"
                            onclick="return getCustomer()">Buscar</button>
                </div>
                <div class="col-12  text-center mt-2">
                    <button class="btn btn-primary" onclick="return getCustomers()">Cargar registros</button>
                </div>
            </div>
        </form>
    </div>
</section>
<section>
    <div class="container">
        <table id="table" class="table table-striped table-info mt-2 table-responsive">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Número de cliente</th>
                <th scope="col">Nombre cliente</th>
                <th scope="col">Nombre contacto</th>
                <th scope="col">Celular</th>
                <th scope="col">Ciudad</th>
                <th scope="col">País</th>
                <th scope="col">Representante ventas número</th>
                <th scope="col">Límite de crédito</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</section>

<script src="./main.js">
</script>
<script src="https://code.jquery.com/jquery-3.2.1.js"
        integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
        crossorigin="anonymous"></script>
</body>

</html>