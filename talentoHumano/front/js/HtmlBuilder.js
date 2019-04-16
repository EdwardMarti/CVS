/*
              -------Creado por-------
             \(x.x )/ Anarchy \( x.x)/
              ------------------------
 */

//    Pero el ruiseñor no respondió; yacía muerto sobre las altas hierbas, con el corazón traspasado de espinas.  \\

/*
Construye una fila de tabla <TR></TR> con los atributos de la entidad obj

https://www.w3schools.com/jsref/met_document_createelement.asp

----------------- Para una tabla --------------------------

document.getElementById("myTable").appendChild(createTR(entity));

----------------- Para una tabla con update/delete  ------------

entity.updateHref='javascript:preUpdateEntity("'+entity.keyAttb+'");';
entity.deleteHref='javascript:preDeleteEntity("'+entity.keyAttb+'");';
document.getElementById("myTable").appendChild(createTR(entity));

----------------- Para una tabla con update/delete  por function ------------
entity.updateHrefB='function("'+entity.keyAttb+'");';
entity.deleteHrefB='function("'+entity.keyAttb+'");';
document.getElementById("myTable").appendChild(createTR(entity));

*/

function createTR(obj){
	var tr = document.createElement("TR");
	for (var attb in obj) {
		var td = document.createElement("TD");
		if(attb=="updateHref"){
			var a = document.createElement('A');
			a.setAttribute('href', obj[attb]);
			var span = document.createElement('SPAN');
			span.classList.add("glyphicon");
			span.classList.add("glyphicon-pencil");
			a.appendChild(span);
			td.appendChild(a);
		}else if(attb=="deleteHref"){
			var a = document.createElement('A');
			a.setAttribute('href', obj[attb]);
			var span = document.createElement('SPAN');
			span.classList.add("glyphicon");
			span.classList.add("glyphicon-remove");
			a.appendChild(span);
			td.appendChild(a);
		}else if(attb=="updateHrefB"){
			var a = document.createElement('A');
			a.setAttribute('onclick', obj[attb]);
			var span = document.createElement('SPAN');
			span.classList.add("glyphicon");
			span.classList.add("glyphicon-edit");
			a.appendChild(span);
			td.appendChild(a);
		}else if(attb=="viewHrefB"){
			var a = document.createElement('A');
			a.setAttribute('onclick', obj[attb]);
			var span = document.createElement('SPAN');
			span.classList.add("glyphicon");
			span.classList.add("glyphicon-zoom-in");
			a.appendChild(span);
			td.appendChild(a);
		}else if(attb=="deleteHrefB"){
			var a = document.createElement('A');
			a.setAttribute('onclick', obj[attb]);
			var span = document.createElement('SPAN');
			span.classList.add("glyphicon");
			span.classList.add("glyphicon-trash");
			a.appendChild(span);
			td.appendChild(a);
		}else if(attb=="fileHrefB"){
			var a = document.createElement('A');
			a.setAttribute('onclick', obj[attb]);
			var span = document.createElement('SPAN');
			span.classList.add("glyphicon");
			span.classList.add("glyphicon-cloud-upload");
			a.appendChild(span);
			td.appendChild(a);
		} 
                else if(attb=="cargoHrefB"){
                 var a = document.createElement('A');
			a.setAttribute('onclick', obj[attb]);
			var span = document.createElement('SPAN');
			span.classList.add("glyphicon");
			span.classList.add("glyphicon-credit-card");
			a.appendChild(span);
			td.appendChild(a);
		} 
                else{			
    		var textNode = document.createTextNode(obj[attb]);
    		td.appendChild(textNode);
    	}
    	tr.appendChild(td);
	}
	return tr;
}
//function createTR(obj){
//	var tr = document.createElement("TR");
//	for (var attb in obj) {
//		var td = document.createElement("TD");
//		if(attb=="updateHref"){
//			var a = document.createElement('A');
//			a.setAttribute('href', obj[attb]);
//			var span = document.createElement('SPAN');
//			span.classList.add("glyphicon");
//			span.classList.add("glyphicon-pencil");
//			a.appendChild(span);
//			td.appendChild(a);
//		}else if(attb=="deleteHref"){
//			var a = document.createElement('A');
//			a.setAttribute('href', obj[attb]);
//			var span = document.createElement('SPAN');
//			span.classList.add("glyphicon");
//			span.classList.add("glyphicon-remove");
//			a.appendChild(span);
//			td.appendChild(a);
//		}else{			
//    		var textNode = document.createTextNode(obj[attb]);
//    		td.appendChild(textNode);
//    	}
//    	tr.appendChild(td);
//	}
//	return tr;
//}

function createTR_2(obj){
	var tr = document.createElement("TR");
        for (var attb in obj) {
		var td = document.createElement("TD");
				
    		var textNode = document.createTextNode(obj[attb]);
    		td.appendChild(textNode);
                  if(attb === "idarea_emp"){
                 td.setAttribute("style","visibility:hidden;");
                }
                tr.appendChild(td);
    	}
    	
    
	
	return tr;
}
/*
Construye un option para ser incluido en un input <SELECT></SELECT>
con un valor y una texto

//Antes de agregar objetos debe limpiarse el select:
var mySelect=document.getElementById("mySelect");
removeAllChildren(mySelect);
for(json...){
// y se agregan las nuevas opciones
	mySelect.appendChild(createOPTION(Entity.valueAttb,Entity.textAttb));
}

*/
function createOPTION(value,text){
	var option = document.createElement("OPTION");
	option.setAttribute("value", value);
    var textNode = document.createTextNode(text);
    option.appendChild(textNode);
    return option;
}

/*
Construye un item de lista <LI></LI> para ser incluido en una lista <UL></UL>
con un texto y enlace

//Antes de agregar objetos debe limpiarse la lista:
var myList = document.getElementById("myList");
removeAllChildren(myList);
for(json...){
// y se agregan las nuevas opciones
	var href = 'javascript:preSelectEntity("'Entity+.keyAttb+'");'
    myList.appendChild(createLI(Entity.textAttb,href));
}

*/
function createLI(text,href){
	var li = document.createElement("LI");
    var a = document.createElement('A');
	a.setAttribute('href', href);
	var textNode = document.createTextNode(text);
    a.appendChild(textNode);
	li.appendChild(a);
    return li;
}


/*
	Remueve todos los hijos de un nodo HTML
	Útil para Selects y listas.
	No es necesario para tablas.
*/
function removeAllChildren(obj){
	while (obj.firstChild) {
    	obj.removeChild(obj.firstChild);
	}
}

//That´s all folks!