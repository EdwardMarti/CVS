<?php
/*
              -------Creado por-------
             \(x.x )/ Anarchy \( x.x)/
              ------------------------
 */

//    ...Y como plato principal: ¡Código espagueti!  \\


interface ITipo_vigilanciaDao {

    /**
     * Guarda un objeto Tipo_vigilancia en la base de datos.
     * @param tipo_vigilancia objeto a guardar
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function insert($tipo_vigilancia);
    /**
     * Modifica un objeto Tipo_vigilancia en la base de datos.
     * @param tipo_vigilancia objeto con la información a modificar
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function update($tipo_vigilancia);
    /**
     * Elimina un objeto Tipo_vigilancia en la base de datos.
     * @param tipo_vigilancia objeto con la(s) llave(s) primaria(s) para consultar
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function delete($tipo_vigilancia);
    /**
     * Busca un objeto Tipo_vigilancia en la base de datos.
     * @param tipo_vigilancia objeto con la(s) llave(s) primaria(s) para consultar
     * @return El objeto consultado o null
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function select($tipo_vigilancia);
    /**
     * Lista todos los objetos Tipo_vigilancia en la base de datos.
     * @return Array<Tipo_vigilancia> Puede contener los objetos consultados o estar vacío
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function listAll();
    /**
     * Cierra la conexión actual a la base de datos
     */
  public function close();
}
//That´s all folks!