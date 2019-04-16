<?php
/*
              -------Creado por-------
             \(x.x )/ Anarchy \( x.x)/
              ------------------------
 */

//    Hecho en sólo 6 días  \\


interface IPersona_has_celularDao {

    /**
     * Guarda un objeto Persona_has_celular en la base de datos.
     * @param persona_has_celular objeto a guardar
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function insert($persona_has_celular);
    /**
     * Modifica un objeto Persona_has_celular en la base de datos.
     * @param persona_has_celular objeto con la información a modificar
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function update($persona_has_celular);
    /**
     * Elimina un objeto Persona_has_celular en la base de datos.
     * @param persona_has_celular objeto con la(s) llave(s) primaria(s) para consultar
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function delete($persona_has_celular);
    /**
     * Busca un objeto Persona_has_celular en la base de datos.
     * @param persona_has_celular objeto con la(s) llave(s) primaria(s) para consultar
     * @return El objeto consultado o null
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function select($persona_has_celular);
    /**
     * Lista todos los objetos Persona_has_celular en la base de datos.
     * @return Array<Persona_has_celular> Puede contener los objetos consultados o estar vacío
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function listAll();
    /**
     * Lista todos los objetos Persona_has_celular en la base de datos que coincidan con la llave primaria.
     * @param persona_has_celular objeto con la(s) llave(s) primaria(s) para consultar
     * @return Array<Persona_has_celular> Puede contener los objetos consultados o estar vacío
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function listByPersona_id($persona_has_celular);
    /**
     * Lista todos los objetos Persona_has_celular en la base de datos que coincidan con la llave primaria.
     * @param persona_has_celular objeto con la(s) llave(s) primaria(s) para consultar
     * @return Array<Persona_has_celular> Puede contener los objetos consultados o estar vacío
     * @throws NullPointerException Si los objetos correspondientes a las llaves foraneas son null
     */
  public function listByCelular_id($persona_has_celular);
    /**
     * Cierra la conexión actual a la base de datos
     */
  public function close();
}
//That´s all folks!