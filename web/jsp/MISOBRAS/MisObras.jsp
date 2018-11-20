<%-- 
    Document   : MisObras
    Created on : 17/11/2018, 12:47:16 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/materialize.css"  media="screen,projection"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/favicon.ico"/>
  <title>ReWrite - Mis Obras</title>
</head>
<body>
<div class="" name="header">
  <nav>
    <div class="nav-wrapper ">
      <a href="${pageContext.request.contextPath}/index.jsp" class="brand-logo"><img class="responsive-img center-align" style="padding: 10px" src="../../img/logoT.png"></a>
      <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
      <ul class="right hide-on-med-and-down">
        <li><a class=" text-accent-4" href="${pageContext.request.contextPath}/jsp/Login.jsp">Cerrar Sesión</a></li>
        <li><a class=" text-accent-4" href="${pageContext.request.contextPath}/jsp/MISOBRAS/MisObras.jsp">Mis Obras</a></li>
        <li><a class=" text-accent-4" href="${pageContext.request.contextPath}/jsp/CREAR/Crear.jsp">Crear</a></li>
        <li><a class=" text-accent-4" href="${pageContext.request.contextPath}/jsp/AJUSTES/Ajustes.jsp">Ajustes</a></li>
        <li><a class=" text-accent-4" href="${pageContext.request.contextPath}/jsp/EVOLUCION/Evolucion.jsp">Evolución</a></li>
      </ul>
      <ul class="sidenav" id="mobile-demo">
        <li><a class=" text-accent-4" href="${pageContext.request.contextPath}/jsp/Login.jsp">Cerrar Sesión</a></li>
        <li><a class=" text-accent-4" href="${pageContext.request.contextPath}/jsp/MISOBRAS/MisObras.jsp">Mis Obras</a></li>
        <li><a class=" text-accent-4" href="${pageContext.request.contextPath}/jsp/CREAR/Crear.jsp">Crear</a></li>
        <li><a class=" text-accent-4" href="${pageContext.request.contextPath}/jsp/AJUSTES/Ajustes.jsp">Ajustes</a></li>
        <li><a class=" text-accent-4" href="${pageContext.request.contextPath}/jsp/EVOLUCION/Evolucion.jsp">Evolución</a></li>
      </ul>
    </div>
  </nav>
</div>
<div class="container">
  <div class="row">
    <div class="col s12 m12 l12 xl12">
      <h3 class="section white z-depth-3">Mis Obras</h3>
      <div class="col s7 m7 l8 xl8 " >
        <div class="section grey z-depth-3">
          <div class="row">
            <h5 class="white-text">Recientes</h5><hr class="blue lighten-1">
            <div class="col s12 m12 l12 xl12 " >
              <div class="col s4 m4 l4 xl4 ">
                <div class="card sticky-action">
                  <div class="card-image">
                    <img src="${pageContext.request.contextPath}/img/plantilla.png">
                    <a class="btn-floating halfway-fab waves-effect waves-light"><i class="material-icons">create</i></a>
                  </div>
                  <div class="card-content">
                    <span class="card-title black-text">Mi primer poema</span><!--Traer titulo de la obra-->
                  </div>
                  <div class="card-action">
                    <a class=" blue-text " href="#">Descargar PDF<i class="material-icons">file_download</i></a>
                  </div>
                </div>
              </div>
              <div class="col s4 m4 l4 xl4 "><div class="card sticky-action">
                <div class="card-image">
                  <img src="${pageContext.request.contextPath}/img/plantilla.png">
                  <a class="btn-floating halfway-fab waves-effect waves-light"><i class="material-icons">create</i></a>
                </div>
                <div class="card-content">
                  <span class="card-title black-text">Mi primer poema</span><!--Traer titulo de la obra-->
                </div>
                <div class="card-action">
                  <a class=" blue-text " href="#">Descargar PDF<i class="material-icons">file_download</i></a>
                </div>
              </div></div>
              <div class="col s4 m4 l4 xl4 ">
                <div class="card sticky-action">
                  <div class="card-image">
                    <img src="${pageContext.request.contextPath}/img/plantilla.png">
                    <a class="btn-floating halfway-fab waves-effect waves-light"><i class="material-icons">create</i></a>
                  </div>
                  <div class="card-content">
                    <span class="card-title black-text">Mi primer poema</span><!--Traer titulo de la obra-->
                  </div>
                  <div class="card-action">
                    <a class=" blue-text " href="#">Descargar PDF<i class="material-icons">file_download</i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <h5 class="white-text">Todas mis obras</h5><hr class="blue lighten-1">
            <div class="col s12 m12 l12 xl12 " >
              <div class="col s4 m4 l4 xl4 ">
                <div class="card sticky-action">
                  <div class="card-image">
                    <img src="${pageContext.request.contextPath}/img/plantilla.png">
                    <a class="btn-floating halfway-fab waves-effect waves-light"><i class="material-icons">create</i></a>
                  </div>
                  <div class="card-content">
                    <span class="card-title black-text">Mi primer poema</span><!--Traer titulo de la obra-->
                  </div>
                  <div class="card-action">
                    <a class=" blue-text " href="#">Descargar PDF<i class="material-icons">file_download</i></a>
                  </div>
                </div>
              </div>
              <div class="col s4 m4 l4 xl4 "><div class="card sticky-action">
                <div class="card-image">
                  <img src="${pageContext.request.contextPath}/img/plantilla.png">
                  <a class="btn-floating halfway-fab waves-effect waves-light"><i class="material-icons">create</i></a>
                </div>
                <div class="card-content">
                  <span class="card-title black-text">Mi primer poema</span><!--Traer titulo de la obra-->
                </div>
                <div class="card-action">
                  <a class=" blue-text " href="#">Descargar PDF<i class="material-icons">file_download</i></a>
                </div>
              </div></div>
              <div class="col s4 m4 l4 xl4 ">
                <div class="card sticky-action">
                  <div class="card-image">
                    <img src="${pageContext.request.contextPath}/img/plantilla.png">
                    <a class="btn-floating halfway-fab waves-effect waves-light"><i class="material-icons">create</i></a>
                  </div>
                  <div class="card-content">
                    <span class="card-title black-text">Mi primer poema</span><!--Traer titulo de la obra-->
                  </div>
                  <div class="card-action">
                    <a class=" blue-text " href="#">Descargar PDF<i class="material-icons">file_download</i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>


        </div>
      </div>

      <div class="col s5 m5 l4 xl4 " >
        <div class="section white z-depth-3">
          <form>
            <div class="input-field">
              <input id="search" type="search" placeholder="Buscar..." required>
              <i class="material-icons">close</i>
            </div><br>
            <div class="input-field" id="select">
              <select>
                <option value="1" selected>A-z</option>
                <option value="2">Z-a</option>
                <option value="3">Fecha</option>
              </select>
              <label>Ordenar por...</label>
            </div>
            <br><br>
          </form>
        </div>

      </div>

      <div class="row">



      </div>
    </div>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/materialize.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/init.js"></script>
</body>
</html>
