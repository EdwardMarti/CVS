<?php
//session_start();
//
//if (!isset($_SESSION['id_usuario']) || $_SESSION['nombre'] == null || $_SESSION['correo'] == "") {
//    echo'<script type="text/javascript">
//                alert("Inicio de Sesion Requerido");
//                window.location="login.html"
//                </script>';
//}
////session_destroy(); //  window.location="login.php"
//$usuario = $_SESSION['id_usuario'];
//$nombre = $_SESSION['nombre'];
//$correo = $_SESSION['correo'];

 header("Cache-Control: no-cache, must-revalidate"); // HTTP/1.1
  header("Expires: Sat, 1 Jul 2000 05:00:00 GMT"); // Fecha en el pasado
  
 
//$nombre_host = gethostbyaddr($_SERVER['REMOTE_ADDR']);
// 
//echo $nombre_host;

?>

<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta http-equiv="Expires" content="0">
  <meta http-equiv="Last-Modified" content="0">
  <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
  <meta http-equiv="Pragma" content="no-cache">

    <title>CVS </title>


    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">




<script type="text/javascript"  charset="UTF-8"></script></head>

<body class="pace-done fixed-nav fixed-nav-basic">

    <div id="wrapper">

        <div class="theme-config" style="display: none">
    <div class="theme-config-box show">
        <div class="spin-icon">
            <i class="fa fa-cogs fa-spin"></i>
        </div>
        <div class="skin-settings">
            <div class="title">Configuration <br>
            <small style="text-transform: none;font-weight: 400">
                Config box designed for demo purpose. All options available via code.
            </small></div>
            <div class="setings-item">
                    <span>
                        Collapse menu
                    </span>

                <div class="switch">
                    <div class="onoffswitch">
                        <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="collapsemenu">
                        <label class="onoffswitch-label" for="collapsemenu">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch"></span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="setings-item">
                    <span>
                        Fixed sidebar
                    </span>

                <div class="switch">
                    <div class="onoffswitch">
                        <input type="checkbox" name="fixedsidebar" class="onoffswitch-checkbox" id="fixedsidebar">
                        <label class="onoffswitch-label" for="fixedsidebar">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch"></span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="setings-item">
                    <span>
                        Top navbar
                    </span>

                <div class="switch">
                    <div class="onoffswitch">
                        <input type="checkbox" name="fixednavbar" class="onoffswitch-checkbox" id="fixednavbar">
                        <label class="onoffswitch-label" for="fixednavbar">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch"></span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="setings-item">
                    <span>
                        Top navbar v.2
                        <br>
                        <small>*Primary layout</small>
                    </span>

                <div class="switch">
                    <div class="onoffswitch">
                        <input type="checkbox" name="fixednavbar2" class="onoffswitch-checkbox" id="fixednavbar2">
                        <label class="onoffswitch-label" for="fixednavbar2">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch"></span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="setings-item">
                    <span>
                        Boxed layout
                    </span>

                <div class="switch">
                    <div class="onoffswitch">
                        <input type="checkbox" name="boxedlayout" class="onoffswitch-checkbox" id="boxedlayout">
                        <label class="onoffswitch-label" for="boxedlayout">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch"></span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="setings-item">
                    <span>
                        Fixed footer
                    </span>

                <div class="switch">
                    <div class="onoffswitch">
                        <input type="checkbox" name="fixedfooter" class="onoffswitch-checkbox" id="fixedfooter">
                        <label class="onoffswitch-label" for="fixedfooter">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch"></span>
                        </label>
                    </div>
                </div>
            </div>

            <div class="title">Skins</div>
            <div class="setings-item default-skin">
                    <span class="skin-name ">
                         <a href="#" class="s-skin-0">
                             Default
                         </a>
                    </span>
            </div>
            <div class="setings-item blue-skin">
                    <span class="skin-name ">
                        <a href="#" class="s-skin-1">
                            Blue light
                        </a>
                    </span>
            </div>
            <div class="setings-item yellow-skin">
                    <span class="skin-name ">
                        <a href="#" class="s-skin-3">
                            Yellow/Purple
                        </a>
                    </span>
            </div>
            <div class="setings-item ultra-skin">
                    <span class="skin-name ">
                        <a href="md_skin/" class="md-skin">
                            Material Design
                        </a>
                    </span>
            </div>
        </div>
    </div>
</div>
        
        
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    
                        <div class="dropdown profile-element" align=center> <span>
                                    <img alt="image" class="img" src="img/logo.png"/>
                                </span>


                            </div>
                    <div class="logo-element">
                        CVS
                    </div>
                </li>
    
             
                      

                <li>
                    <a style="display: none" onclick="empleado_Listar2();"><i class="fa fa-th-large"></i> <span class="nav-label">Empleado</span>  </a>
                </li>
                
                <li>
                    <a ><i class="fa fa-th-large"></i> <span class="nav-label">Empleado</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li>
                            <a onclick="empleado_Listar2()">Empleado</a>
                        </li>
                        <li>
                            <a onclick="act_Cargo()">Actualizar Cargo</a>
                        </li>
                       
                    </ul>
                </li>

                     <li>
                    <a ><i class="fa fa-th-large"></i> <span class="nav-label">Adm Empresa</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li>
                            <a onclick="empresa_Listar_P()">Empresa</a>
                        </li>
                        <li>
                            <a onclick="sucursal_emp_Listar()">Sucursal</a>
                        </li>
                        <li>
                            <a onclick="area_Listar()">Area</a>
                        </li>
                        <li>
                            <a onclick="cargo_Listar()">Cargo</a>
                        </li>
                    </ul>
                </li>
              

               
                     <li>
                    <a href="index.html"><i class="fa fa-user-o"></i> <span class="nav-label">Administrador</span> <span class="fa arrow"></span></a>
                               <ul class="nav nav-second-level collapse">
                        <li class="">
                                <a href="#" id="damian">Empleado <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level collapse" style="height: 0px;">
                                    <li>
                                      <a onclick="empleado_Registrar_rapido2()">Registrar Empleados</a>
                                    </li>
                                   

                                </ul>
                            </li>
                      
                       </ul>
               
                </li>
               <li>
                    <a href="index.html"><i class="fa fa-gear"></i> <span class="nav-label">Configuracion</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a onclick="persona_cambiarPass()">Cambiar Contraseña</a></li>
                         
                        
                    </ul>
                </li>

            </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
<nav class="navbar navbar-fixed-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
       
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li style="padding: 20px">
                    <span class="m-r-sm text-muted welcome-message">Administrador</span>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                    </a>
                    <ul class="dropdown-menu dropdown-messages dropdown-menu-right">
                        <div class="container-menu2 color-menu">
                            
                        <li class="dropdown-divider"></li>
                        <li>
          
    <div class="row">
        <div class="col-sm">
             <div style="text-align: center">
                    <a href="dashboard_4.html" >
                        <i class="imagen"> <img  src="img/ico/administrador_1.png" width="20" height="20"></i>
                    </a>
                    <h4   style="color: black"><b>Adm</b></h4>
                </div>
        </div>
        <div class="col-sm">
         <div style="text-align: center">
                    <a href="dashboard_4.html" >
                        <i class="imagen"> <img  src="img/ico/administrador_1.png" width="20" height="20"></i>
                    </a>
                    <h4   style="color: black"><b>Adm</b></h4>
                </div> 
        </div>
        <div class="col-sm">
            <div style="text-align: center">
                    <a href="dashboard_4.html" >
                        <i class="imagen"> <img  src="img/ico/administrador_1.png" width="20" height="20"></i>
                    </a>
                    <h4   style="color: black"><b>Adm</b></h4>
                </div>
        </div>
    </div>

                        </li>
                        <li class="dropdown-divider"></li>
 
                    
                        </div>
                     
                    </ul>
                </li>
            


               <li>
                    <a href="logout.php">
                        <i class="fa fa-sign-out"></i> Salir
                    </a>
                </li>
             
            </ul>

        </nav>
        </div>
     
        <div class="wrapper wrapper-content animated fadeIn">

            <div class="row">
                <div class="col-lg-12">
                      <div id="mostrarcontenido">
                         
                          
                      <div class="ibox-content">
 
 

</div>

 
                          
                          
                          
                          
                
                    </div> 
                    
 
                </div>
               
            </div>

        




        </div>


        </div>
        </div>


  
    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>



    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

  
    
  <script src="js/funciones.js"></script>
    
 

    <!-- Jquery Validate -->
    <script src="js/plugins/validate/jquery.validate.min.js"></script>


 
    <script src="js/Ajax.js "></script>
    <script src="js/ViewManager.js "></script>
    <script src="js/HtmlBuilder.js "></script>

                 



<script>
    // Config box  para configuracion

    // Enable/disable fixed top navbar
    $('#fixednavbar').click(function (){
        if ($('#fixednavbar').is(':checked')){
            $(".navbar-static-top").removeClass('navbar-static-top').addClass('navbar-fixed-top');
            $("body").removeClass('boxed-layout');
            $("body").addClass('fixed-nav');
            $('#boxedlayout').prop('checked', false);

            if (localStorageSupport){
                localStorage.setItem("boxedlayout",'off');
            }

            if (localStorageSupport){
                localStorage.setItem("fixednavbar",'on');
            }
        } else{
            $(".navbar-fixed-top").removeClass('navbar-fixed-top').addClass('navbar-static-top');
            $("body").removeClass('fixed-nav');
            $("body").removeClass('fixed-nav-basic');
            $('#fixednavbar2').prop('checked', false);

            if (localStorageSupport){
                localStorage.setItem("fixednavbar",'off');
            }

            if (localStorageSupport){
                localStorage.setItem("fixednavbar2",'off');
            }
        }
    });

    // Enable/disable fixed top navbar
    $('#fixednavbar2').click(function (){
        if ($('#fixednavbar2').is(':checked')){
            $(".navbar-static-top").removeClass('navbar-static-top').addClass('navbar-fixed-top');
            $("body").removeClass('boxed-layout');
            $("body").addClass('fixed-nav').addClass('fixed-nav-basic');
            $('#boxedlayout').prop('checked', false);

            if (localStorageSupport){
                localStorage.setItem("boxedlayout",'off');
            }

            if (localStorageSupport){
                localStorage.setItem("fixednavbar2",'on');
            }
        } else {
            $(".navbar-fixed-top").removeClass('navbar-fixed-top').addClass('navbar-static-top');
            $("body").removeClass('fixed-nav').removeClass('fixed-nav-basic');
            $('#fixednavbar').prop('checked', false);

            if (localStorageSupport){
                localStorage.setItem("fixednavbar2",'off');
            }
            if (localStorageSupport){
                localStorage.setItem("fixednavbar",'off');
            }
        }
    });

    // Enable/disable fixed sidebar
    $('#fixedsidebar').click(function (){
        if ($('#fixedsidebar').is(':checked')){
            $("body").addClass('fixed-sidebar');
            $('.sidebar-collapse').slimScroll({
                height: '100%',
                railOpacity: 0.9
            });

            if (localStorageSupport){
                localStorage.setItem("fixedsidebar",'on');
            }
        } else{
            $('.sidebar-collapse').slimscroll({destroy: true});
            $('.sidebar-collapse').attr('style', '');
            $("body").removeClass('fixed-sidebar');

            if (localStorageSupport){
                localStorage.setItem("fixedsidebar",'off');
            }
        }
    });

    // Enable/disable collapse menu
    $('#collapsemenu').click(function (){
        if ($('#collapsemenu').is(':checked')){
            $("body").addClass('mini-navbar');
            SmoothlyMenu();

            if (localStorageSupport){
                localStorage.setItem("collapse_menu",'on');
            }

        } else{
            $("body").removeClass('mini-navbar');
            SmoothlyMenu();

            if (localStorageSupport){
                localStorage.setItem("collapse_menu",'off');
            }
        }
    });

    // Enable/disable boxed layout
    $('#boxedlayout').click(function (){
        if ($('#boxedlayout').is(':checked')){
            $("body").addClass('boxed-layout');
            $('#fixednavbar').prop('checked', false);
            $('#fixednavbar2').prop('checked', false);
            $(".navbar-fixed-top").removeClass('navbar-fixed-top').addClass('navbar-static-top');
            $("body").removeClass('fixed-nav');
            $("body").removeClass('fixed-nav-basic');
            $(".footer").removeClass('fixed');
            $('#fixedfooter').prop('checked', false);

            if (localStorageSupport){
                localStorage.setItem("fixednavbar",'off');
            }

            if (localStorageSupport){
                localStorage.setItem("fixednavbar2",'off');
            }

            if (localStorageSupport){
                localStorage.setItem("fixedfooter",'off');
            }


            if (localStorageSupport){
                localStorage.setItem("boxedlayout",'on');
            }
        } else{
            $("body").removeClass('boxed-layout');

            if (localStorageSupport){
                localStorage.setItem("boxedlayout",'off');
            }
        }
    });

    // Enable/disable fixed footer
    $('#fixedfooter').click(function (){
        if ($('#fixedfooter').is(':checked')){
            $('#boxedlayout').prop('checked', false);
            $("body").removeClass('boxed-layout');
            $(".footer").addClass('fixed');

            if (localStorageSupport){
                localStorage.setItem("boxedlayout",'off');
            }

            if (localStorageSupport){
                localStorage.setItem("fixedfooter",'on');
            }
        } else{
            $(".footer").removeClass('fixed');

            if (localStorageSupport){
                localStorage.setItem("fixedfooter",'off');
            }
        }
    });

    // SKIN Select
    $('.spin-icon').click(function (){
        $(".theme-config-box").toggleClass("show");
    });

    // Default skin
    $('.s-skin-0').click(function (){
        $("body").removeClass("skin-1");
        $("body").removeClass("skin-2");
        $("body").removeClass("skin-3");
    });

    // Blue skin
    $('.s-skin-1').click(function (){
        $("body").removeClass("skin-2");
        $("body").removeClass("skin-3");
        $("body").addClass("skin-1");
    });

    // Inspinia ultra skin
    $('.s-skin-2').click(function (){
        $("body").removeClass("skin-1");
        $("body").removeClass("skin-3");
        $("body").addClass("skin-2");
    });

    // Yellow skin
    $('.s-skin-3').click(function (){
        $("body").removeClass("skin-1");
        $("body").removeClass("skin-2");
        $("body").addClass("skin-3");
    });

    if (localStorageSupport){
        var collapse = localStorage.getItem("collapse_menu");
        var fixedsidebar = localStorage.getItem("fixedsidebar");
        var fixednavbar = localStorage.getItem("fixednavbar");
        var fixednavbar2 = localStorage.getItem("fixednavbar2");
        var boxedlayout = localStorage.getItem("boxedlayout");
        var fixedfooter = localStorage.getItem("fixedfooter");

        if (collapse == 'on'){
            $('#collapsemenu').prop('checked','checked')
        }
        if (fixedsidebar == 'on'){
            $('#fixedsidebar').prop('checked','checked')
        }
        if (fixednavbar == 'on'){
            $('#fixednavbar').prop('checked','checked')
        }
        if (fixednavbar2 == 'on'){
            $('#fixednavbar2').prop('checked','checked')
        }
        if (boxedlayout == 'on'){
            $('#boxedlayout').prop('checked','checked')
        }
        if (fixedfooter == 'on') {
            $('#fixedfooter').prop('checked','checked')
        }
    }
</script>      


  
</body>

</html>
