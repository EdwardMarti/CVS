<?php
/*
              -------Creado por-------
             \(x.x )/ Anarchy \( x.x)/
              ------------------------
 */

//    Esta es tu vida y se acaba a cada minuto.  \\


class Puesto {

  private $idpuesto;
  private $nombre;

    /**
     * Constructor de Puesto
    */
     public function __construct(){}

    /**
     * Devuelve el valor correspondiente a idpuesto
     * @return idpuesto
     */
  public function getIdpuesto(){
      return $this->idpuesto;
  }

    /**
     * Modifica el valor correspondiente a idpuesto
     * @param idpuesto
     */
  public function setIdpuesto($idpuesto){
      $this->idpuesto = $idpuesto;
  }
    /**
     * Devuelve el valor correspondiente a nombre
     * @return nombre
     */
  public function getNombre(){
      return $this->nombre;
  }

    /**
     * Modifica el valor correspondiente a nombre
     * @param nombre
     */
  public function setNombre($nombre){
      $this->nombre = $nombre;
  }


}
//That´s all folks!