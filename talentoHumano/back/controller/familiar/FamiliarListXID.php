<?php
/*
              -------Creado por-------
             \(x.x )/ Anarchy \( x.x)/
              ------------------------
 */

//    Lo sé porque lo sabe Fredy  \\
include_once realpath('../../facade/FamiliarFacade.php');
$id = $_POST['idPersona'];
$list=FamiliarFacade::listXID($id);
$rta="";
foreach ($list as $obj => $Familiar) {	
	$rta.="{ 	    
	    \"nombre\":\"{$Familiar->getnombre()}\",
	    \"parentesco\":\"{$Familiar->getparentesco()}\",
            \"numero\":\"{$Familiar->numero}\",
	    \"persona_id_id\":\"{$Familiar->getpersona_id()->getid()}\"
	},";
}

if($rta!=""){
	$rta = substr($rta, 0, -1);
	$msg="{\"msg\":\"exito\"}";
}else{
	$msg="{\"msg\":\"MANEJO DE EXCEPCIONES AQUÍ\"}";
	$rta="{\"result\":\"No se encontraron registros.\"}";	
}
echo "[{$msg},{$rta}]";

//That´s all folks!