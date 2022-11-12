<%-- 
    Document   : LibroForm
    Created on : 12/11/2022, 08:16:34
    Author     : PC GAMING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <title>Registrar Libros</title>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
                    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
                    <!-- JavaScript Bundle with Popper -->
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
                    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                    <script src="js/script.js"></script>
                    <script src="js/ScriptLibro.js" type="text/javascript"></script>
               
                    <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body><header class="header">
                                <nav class="navbar navbar-expand-lg navbar-light">
                                        <div class="container-fluid">
                                                  <a class="navbar-brand" href="#">
                                                            <img src="https://images.vexels.com/media/users/3/206006/isolated/preview/3538885ee4f6d3de4aeb1a3aa6c644bf-dibujos-animados-lindo-libro-de-texto.png" width="60" height="60" alt="">
                                                            Libros
                                                  </a>
                                                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                                            <span class="navbar-toggler-icon"></span>
                                                  </button>
                                                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                                            <ul class="navbar-nav m-auto">
                                                                      <li class="nav-item active">
                                                                                <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
                                                                      </li>

                                                                      <li class="nav-item dropdown">
                                                                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                                                          Registrar
                                                                                </a>
                                                                                <ul class="dropdown-menu dropdown-menu-dark" id="menu-navbar">
                                                                              
                                                                                          <li><a class="dropdown-item" href="ProfesorForm.jsp">Registrar profesor</a></
                                                                                          <li><hr class="dropdown-divider"></li>
                                                                                </ul>
                                                                      </li>
                                                                      <li class="nav-item dropdown">
                                                                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                                                          Reportes De Libro
                                                                                </a>
                                                                                <ul class="dropdown-menu dropdown-menu-dark" id="menu-navbar2">                                                              
                                                                                          <li><a class="dropdown-item" href="LibroReport.jsp">Reporte de libros</a></li>
                                                                                       
                                                                                </ul>
                                                                      </li>
                                                            </ul>
                                                            <form class="d-flex" role="search">
                                                                      <a class="btn btn-outline-dark text-white" id="btnSearch" href="Logout">Cerrar Sesion - ${UsuarioLogueado}</a>
                                                            </form>
                                                  </div>
                                        </div>
                              </nav>
                    </header>
        
         <body>
        
        <div class="d-flex justify-content-around mx-4 my-5">
            <div class="shadow-lg p-3 bg-white rounded">
                <form method="POST" id="form" name="form" action="LibroController">
                    <div class="mt-3 mb-5 mx-4">
                        <img src="https://images.vexels.com/media/users/3/206006/isolated/preview/3538885ee4f6d3de4aeb1a3aa6c644bf-dibujos-animados-lindo-libro-de-texto.png" class="rounded mx-auto d-block"   height="200" alt="...." >
                        <h2 class="display-4 text-center my-4">  REGISTRO DEL Libro </h2>
                          
                            <div class="col">
                                <label for="codigo">codigo del libro </label>
                                <input type="text" class="form-control" placeholder="" name="code" id="code">
                                <input type="hidden" name="control" value="GUARDAR">
                                 </div>
                               <div class="row my-3">
                            <div class="col">
                                <label for="Nombres">nombre</label>
                                <input type="text" class="form-control" placeholder="" name="name" id="name">
                            </div>
                               <div class="col">
                                <label for="Nombres">fecha de lanzamiento</label>
                                <input type="text" class="form-control" placeholder="" name="fecha" id="fecha">
                            </div>   
                          
                          </div>
                        
                                <div class="row my-3">
                             <div class="col">
                    <label for="email">autor</label>
                    <input type="email" class="form-control" id="auto" placeholder="" name="auto">
                </div>
                            <div class="col">
                                <label for="telefono">id pasta </label>
                                <input type="text" class="form-control" placeholder="" name="id" id="id">
                            </div>
                        </div>
                        <div class="contenido">
          <input type="button" onclick="sendForm()" class="btn btn-outline-success" value="Register">
                        <button type="reset" class="btn btn-outline-danger">Vaciar</button>
                        </div>
                    </div>
                </form>
     
            </div>
        </div>
        
        
        
  
</html>
