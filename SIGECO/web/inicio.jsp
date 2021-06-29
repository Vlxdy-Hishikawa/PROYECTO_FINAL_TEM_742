<%-- 
    Document   : Inicio
    Created on : 25-jun-2021, 20:53:56
    Author     : Vlxdy Hishikawa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%
    HttpSession ses = request.getSession();
    String usuario = "";
    String id = "";
    int cargo = 0;
    if (ses.getAttribute("usuario") != null && ses != null && ses.getAttribute("id") != null) {
        usuario = ses.getAttribute("usuario").toString();
        id = ses.getAttribute("id").toString();
        cargo = Integer.parseInt(ses.getAttribute("cargo").toString());
    } else {
        response.sendRedirect("login.jsp");
    }
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="author" content="VLADIMIR HUANCA">
        <meta name="viewport" content="with=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="Logo.png">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <title> SIGECO  </title>
</head>
<style>
    
        body
            {
                padding-top: 1em;
                    background-image: url(Fondo.png);
                    background-image: no-repeat;
                    background-image: fixed;
                    background-image: center;
                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    -o-background-size: cover;
                    background-size: cover;

            }
            .card1
            {
                background: rgba( 255, 255, 255, 0.25 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 4px );
            -webkit-backdrop-filter: blur( 4px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            }
            .card2
            {
                padding-top: 5px;
                border-radius: 50px;
            background: #99bec7;
            box-shadow:  5px 5px 10px #84a3ab,
                         -5px -5px 10px #aed9e3;
            }
            h3
            {
                font-family: Verdana, Geneva, Tahoma, sans-serif;
            }
            .card3
            {
                text-align: center;
                padding-left: 3em;
                padding-right: 3em;

                background: rgba( 255, 255, 255, 0.25 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 4px );
            -webkit-backdrop-filter: blur( 4px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            padding-bottom: 2em;
            }
            .card3copy
            {
                padding-top: 40px;
                margin: 20px auto;
                text-align: center;
                padding-left: 3em;
                padding-right: 3em;

                background: rgba( 255, 255, 255, 0.25 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 4px );
            -webkit-backdrop-filter: blur( 4px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            padding-bottom: 2em;
            }
            .boton
            {
                font-size: 20px;
                font-family: 'Courier New', Courier, monospace;
                border-radius: 21px;
            background: #357788;
            box-shadow:  12px 12px 24px #1a3a43,
                         -12px -12px 24px #50b4cd;
            }
            label
            {
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                font-size: 20px;
            }
            .icon
            {
                height: 45px;
                border-radius: 15px;
            background: #357788;
            box-shadow: inset 26px 26px 26px #275763,
                        inset -26px -26px 26px #4397ad;
            color: white;
            }
            .cardtext
            {   
                background: rgba( 255, 255, 255, 0.25 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 4px );
            -webkit-backdrop-filter: blur( 4px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            }
            .but
            {
                background: rgba( 255, 255, 255, 0.25 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 4px );
            -webkit-backdrop-filter: blur( 4px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            }
        .button {
            background-color: #4CAF50; 
            border: none;
            color: white;
            padding: 6px 13px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
            margin: 4px 2px;
            cursor: pointer;
          }

        .button2 {background-color: #008CBA;
        text-align: right;
        align-content: right;
        align-items: right} 
        .button3 {background-color: #f44336;
        text-align: right}
        .button4 {background-color: #e7e7e7; color: black;} 
        .button5 {background-color: #555555;} 
        .btn {
            background-color: #f1f1f1;
            border: none;
            color: black;
            padding: 2px 3px;
            text-align: center;
            font-size: 14px;
            text-decoration: none;
            display: inline-block;
            margin: 0px 4px;
            cursor: pointer;
            border-radius: 16px;
            opacity: 0.6;
            transition: 0.3s;
          }
          .btn:hover {opacity: 0.1;
            background-color: #f1f1f1;
    </style>
<body>    
    <div class="container">
        <div class="row">
            <div class="col col-lg-12">
                <header>
                <div class="card3">
                    <a href="Index.jsp?cerrar=true" onclick="return(confirm('Realmente Esta Seguro'))"><button class="btn" style="float: right"><img src="1.png" width="14"> SALIR</button></a>
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Koe_no_Katachi_logo.svg/1200px-Koe_no_Katachi_logo.svg.png" height="80px" width="300px">
                    <h4>GESTION DE CORRESPONDENCIA</h4> 
                    <br>
                    <div class="but">
                    <table class="table">
                        <tr> 
                            <c:if test="${sessionScope.cargo== 2}">
                                <th><a href="HojaControlador?action=view&id=${sessionScope.id}><button class="icon"><i class="ic fa fa-inbox"> BANDEJA DE ENTRADA</i></button></a></th>
                                <th><a href="ControladorSegui?action=view&id=${sessionScope.id}"><button class="icon"><i class="ic fa fa-inbox"> SEGUIMIENTO</i></button></a></th>
                            </c:if>
                            <c:if test="${sessionScope.cargo== 1}">
                                <th><a href="UsuarioControlador"><button class="icon"><i class="ic fa fa-inbox"> VER USUARIOS</i></button></a></th>
                                <th><a href="UserTipoControlador"><button class="icon"><i class="ic fa fa-inbox"> VER TIPO DE USUARIOS</i></button></a></th>
                                <th><a href="TipoDocControlador"><button class="icon"><i class="ic fa fa-inbox"> VER TIPO DE DOCUMENTOS</i></button></a></th>
                                <th><a href="SeguimientoControlador"><button class="icon"><i class="ic fa fa-inbox"> VER SEGUIMIENTO</i></button></a></th>
                                <th><a href="HojaRutaControlador"><button class="icon"><i class="ic fa fa-inbox"> VER HOJA DE RUTA</i></button></button></a></th>
                                <th><a href="AreaControlador"><button class="icon"><i class="ic fa fa-inbox"> VER AREAS</i></button></a></th>
                            </c:if>
                            <c:if test="${sessionScope.cargo > 2}">
                            <th><a href="ControladorSeguiadmi?action=view&id=${sessionScope.id}"><button class="icon"><i class="ic fa fa-inbox"> SEGUIMIENTO</i></button></a></th>
                            <th><a href="HojaControlador?action=view&id=${sessionScope.id}><button class="icon"><i class="ic fa fa-inbox">  HOJA DE RUTA</i></button></a></th>
                            </c:if>
                        </tr>
                    </table>
                    </div>
                    <br>
                </div>
                </header>
                <div class="card3copy">
                    <!--Inicio del carrusel-->
                    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <img src="https://www.rutanmedellin.org/media/zoo/images/correspondencia_8fa29018d46cc728396cbf76bfe296cc.jpg"  width="1100px" height="400px">
                            <div class="carousel-caption d-none d-md-block">
                              
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img src="https://img2.rtve.es/i/?w=1600&i=1479235685752.jpg" width="1100px" height="400px">
                            <div class="carousel-caption d-none d-md-block">
                              
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img src="http://edu4.me/wp-content/uploads/2017/01/jan1.png" width="1100px" height="400px">
                            <div class="carousel-caption d-none d-md-block">
                              
                            </div>
                          </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                        </button>
                      </div>
                      <!--Fin del carrusel-->
                      <hr>
                      
                        <div class="cardtext">
                          SISTEMA DISEÑADO PARA PROYECTO FINAL
                        </div>
                        <div class="cardtext">
                          <p class="card-text">VLADIMIR HUANCA.</p>
                          <p class="card-text">RENE CHAMBI.</p>
                          <p class="card-text">MISHEL MUJICA.</p>
                          <a href="#" class="btn btn-primary">Ir Arriba</a>
                        </div>
                        <div class="cardtext">
                          Creado para proyecto final!!
                        </div>
                      
                </div>
            </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
