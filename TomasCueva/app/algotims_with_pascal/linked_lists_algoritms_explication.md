# agregasr adelante
Para agregar adelante en una lista necesitamos un modulo en el que se pase por parametro el puntero inicial de la lista y el elemento el cual queremos insertar en la lista.

Dentro de la declaracion de variables necesitamos una variable con el mismo tipo que el puntero inicial

Dentro del modulo tenemos que seguir los siguientes pasos:
* Hacemos un new() de la variable dentro del modulo que es del mismo tipo que el puntero inicial
* al dato que apunta la variable, le asignamos el elemento que pasamos por parametro.
* Y le asignamos el puntero "siguiente" el puntero inicial
* Finalmente a la variable que contiene el puntero inicial anterior, le asignamos el nuevo puntero inicial el cual es la dirección en memoria de la variable declarada dentro del modulo

# agregar atras u agregar ordenado
Para este algoritmo podemos hacerlo de la siguiente manera:
* dentro de los parametros, pasamos el puntero inicial y el puntero ultimo de la lista, cabe resaltar que este puntero final debio ser inicializado debidamente antes de ser pasado al modulo correspondiente para agregar un elemento ordenadamente.
* dentro de las variables del modulo, declaramos una variable "nueva" del mismo tipo que la lista a la que deseamos agregar el alemento.
* dentro del codigo del modulo, hacemos un new() de la variable "nueva", posteriormente al dato que apunta la variable le asignamos el elemento deseado y al puntero siguiente de la variable lo inicializamos en nil.
* Continuamos con una sentencia if, en donde consultamos si el puntero inicial es igual a nil, si se cumple esa condicion, le asignamos al puntero inicial la dirección de memoria de la variable "nueva", si nó se cumple la condición, le asignamos la direccion de memoria de la variable "nueva" al puntero siguiente del puntero final de la lista que se paso por referencia.

# Insertar ordenado
En este caso tenemos que contemplar una seria de casos para esta situación:
1. La lista está vacia
2. Debemos insertar en el inicio de la lista
3. Debemos insertar en el medio de la lista o al final de la lista
4. debemos insertar al final de la lista

Para nuestro modulo de insertar ordenado necesitamos pasar por valor el puntero inicial y el elemento que queremos insertar, cabe resaltar que el mismo debe tener alguna caracteristica que nos permita seguir un orden, por ejemplo que la caracteristica sea un tipo integer o un tipo char.

Posteriormente dentro de las variables del modulo necesitamos declarar tres variables del mismo tipo que el puntero pasado por los parametros. las cuales llamaremos "Anterio", "Actual" y "Nuevo".

Haremos un new() del la variable "nuevo" para asignarla una posicion de memoria y asignarle el dato el cual queremos insertar dentro de la lista, y a si puntero siguiente lo inicializamos en nil;

Para el primer caso, la condicion debe ser que si el puntero inicial que se paso por referencia es igual a nil, si se cumple la condicion,  le asignamos la direccion de memoria de la variable "nuevo" al puntero inicial.

Si no se cumple, pasamos al caso dos, en donde empezaremos inicializando la variable actual y anterior con el mismo valor que el puntero inicial.

Posteriormente iniciamos un while en donde mientras el puntero actual sea diferente de NIL y el dato de la variable actual sea menor al dato de la variable "nuevo"; asignamos a la variable anterior el puntero de la variable actual y el puntero de la variable actual le asignamos su puntero siguiente.

una vez salimos del while, seguimos con una sentencia if en donde si el dato actual y el anterior son iguales, entonces nos encontramos en el segundo caso en donde tenemos que insertar el elemento al principio de la lista de la siguiente manera:
1. al puntero siguiente de la variable "nuevo", le asignamos la direccion de memoria del puntero inicial y al puntero inicial le asignamos el puntero de la variable "nuevo".

si no se cumple la condicion, entonces la posicion en donde lo debemos insertar está al final o en el medio de la lista, de las dos formas es el mismo procedimiento:
1. le asignamos al puntero siguiente de la variable "anterior" el puntero de la variable "nuevo" y al puntero siguiente de la variable "nuevo" le asignamos el puntero de la variable actual.

# Eliminar un elemento de la lista
Para eliminar un elemento de una lista tenemos que contemplar los siguiente casos

1. la lista esta vacía
2. el elemento esta al inicio de la lista
3. el elemento esta al medio de la lista
4. el elemento esta al final de la lista
5. el elemento a buscar no se encuentra dentro de la lista

Dentro del modulo necesitamos recibir por parametro por referencia el puntero inicial y por valor el elemento que hace referencia al dato del puntero que queremos eliminar de la lista.

dentro de las variables dentro del modulo, podemos utilizar una variable booleana que nos indique si fue encontrado el elemento que buscamos para eliminar y dos variables del mismo tipo del puntero inicial pasado por referencia las cuales representen un puntero actual y un puntero anterior.

En principio debe existir una sentencia if que verifique que la lista nó este vacía, si se cuimple la condicion,inicializamos la variable que representa el puntero anterior y actual con el mismo puntero que el puntero inicial, luego iniciamos una sentencia while, en donde mientras el puntero actual sea diferente de NIL y no se haya encontrado el elemento que buscamos borrar.

Dentro de desta sentencia while tendremos una sentencia if en donde preguntamos si el valor del dato del puntero actual es igual al elemento que estamos buscando, pondremos a la variable booleana en verdadero o falso (va a depender de la coondicion dentro del while) para detener la sentencia while y mantener la posicion en donde nos quedamos dentro de la lista, si la condicion del if no se cumple, entonces:
1. al puntero de la variable anterior le asignamos el puntero de de la variable que hace referencia al puntero actual 
2. al puntero actual le asignamos su puntero siguiente.

Continuamos hasta encontrar salir de la sentencia while.

al salir del while, tendremos una sentencia if en donde si nuestra variable booleana nos indica que el dato se encontro, entonces continuamos con otra sentencia if en donde consultamos si el puntero anterior es igual al puntero actual, si se cumple la condicion, entonces el elemento a eliminar se encuentra en el principio de nuestra lista, en este caso lo que debemos hacer es:
1. guardamos el puntero de la variable actual
2. Le asignamos al puntero inicial la direccion de memoria de su puntero siguiente.
3. hacemos un dispose del puntero actual

si no se cumple la condicion entonces nos encontramos en el tercer o cuarto caso en donde el elemento a eliminar se encuentra en el medio o al final de la lista, en este caso, al puntero siguiente del puntero anterior, le asignamos el puntero siguiente del puntero actual y hacemos un dispose del puntero actrual.

en caso de que no se haya encontrado el elemento simplemente no se entra a la ultima sentencia if