<%-- 
    Document   : Ajustes
    Created on : 17/11/2018, 06:59:05 AM
    Author     : Axolotech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="../../css/materialize.css"  media="screen,projection"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="shortcut icon" type="image/x-icon" href="../../favicon.ico"/>
  <title>ReWrite - Ajustes</title>
</head>
<body>
    <%
        HttpSession sesi = request.getSession();
        if (sesi.getAttribute("ID") != null) {
        %>
<div class="" name="header">
  <nav>
    <div class="nav-wrapper ">
      <a href="../../index.jsp" class="brand-logo"><img class="responsive-img center-align" style="padding: 10px" src="../../img/logoT.png"></a>
      <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
      <ul class="right hide-on-med-and-down">
        <li><a class=" text-accent-4" href="${pageContext.request.contextPath}/index.jsp">Cerrar Sesión</a></li>
        <li><a class=" text-accent-4" href="../MISOBRAS/MisObras.jsp">Mis Obras</a></li>
        <li><a class=" text-accent-4" href="../CREAR/Crear.jsp">Crear</a></li>
        <li><a class=" text-accent-4" href="../AJUSTES/Ajustes.jsp">Ajustes</a></li>
        <li><a class=" text-accent-4" href="../EVOLUCION/Evolucion.jsp">Evolución</a></li>
      </ul>
      <ul class="sidenav" id="mobile-demo">
        <li><a class=" text-accent-4" href="../Login.jsp">Cerrar Sesión</a></li>
        <li><a class=" text-accent-4" href="../MISOBRAS/MisObras.jsp">Mis Obras</a></li>
        <li><a class=" text-accent-4" href="../CREAR/Crear.jsp">Crear</a></li>
        <li><a class=" text-accent-4" href="../AJUSTES/Ajustes.jsp">Ajustes</a></li>
        <li><a class=" text-accent-4" href="../EVOLUCION/Evolucion.jsp">Evolución</a></li>
      </ul>
    </div>
  </nav>
</div>
<div class="container">
  <div class="section white col s10 m10 l10 xl10 offset-s1 offset-l1 offset-m1 offset-xl1 z-depth-3" >
    <h4 class="center">Ajustes</h4>
  </div>
  <!--Aparecen los datos anteriormente guardados en el input para que el usuario vea que va a modifixar-->
  <div class="row section white">
    <span>Da clic para cambiar alguno de tus datos</span>
    <ul class="collapsible popout">
      <li>
        <div class="collapsible-header"><i class="material-icons">account_circle</i>Usuario: <!--Aquí va el nombre actual del usuario --></div>
        <div class="collapsible-body row">
            <form action="" method="" ><!--Form para cambiar nombre de usuario e imagen-->
            <div class="col s4 m4 l5 xl5">
              <img src="../../img/user.png" class="responsive-img">
              <input type="button" class="waves-effect waves-lights" name="cambiaImagen" value="Escoger imagen...">
            </div>
            <div class=" col s8 m8 l7 xl7">
              <label for="usuario">Cambiar nombre de usuario:</label><input type="text" class="" name="usuario" id="usuario" placeholder="Nuevo nombre">
              <input type="submit" class="btn waves-effect waves-light" name="confirmar" value="Guardar">
            </div>

          </form>
        </div>
      </li>
      <li>
        <div class="collapsible-header"><i class="material-icons">email</i>Correo:</div>
        <div class="collapsible-body">
          <form><!--Form para cambiar email-->
            <div class="input-field">
              <label for="correo">Ingresa el nuevo correo:</label>
              <input type="text" class="" name="correo" id="correo">
            </div>
            <input type="submit" class="btn waves-effect waves-light" name="guardar" value="Guardar">
          </form>
        </div>
      </li>
      <li>
        <div class="collapsible-header"><i class="material-icons">lock</i>Contraseña</div>
        <div class="collapsible-body">
          <form><!--Form para cambiar contraseña-->
            <div class="input-field">
              <label for="contraVieja"> Ingresa tu actual contraseña:</label>
              <input type="password" class="validate" name="contraVieja" id="contraVieja"><br>
            </div>
            <div class="input-field">
              <label for="contraNueva"> Ingresa tu nueva contraseña:</label>
              <input type="password" class="validate" name="contraNueva" id="contraNueva"><br>
            </div>
            <div class="input-field">
              <label for="confirmacionContra"> Confirma tu nueva contraseña:</label>
              <input type="password" class="validate" name="confirmacionContra" id="confirmacionContra"> <br>
            </div>
            <input type="submit" class="btn waves-effect waves-light" name="confirmar" value="Guardar">
          </form>
        </div>
      </li>
    </ul>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="../../js/materialize.min.js"></script>
<script type="text/javascript" src="../../js/init.js"></script>
<% } 
    else {
    RequestDispatcher rd = request.getRequestDispatcher("../Login.jsp");
                rd.forward(request, response);
}%>
</body>
</html>
