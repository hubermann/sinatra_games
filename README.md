#Juego buscaminas en API.

voy a usar Sinatra como entorno (a pesar de no usarlo facil desde hace 6 años pero me parecia enorme un framework como Rails para algo tan chico)

Para poner a andar el server se usa el comado rackup config.ru.
lo mas probable a posteriro se use alguna base de datos minima y se requiera correr algun script previamente. lo documentaré a posterior.


deberia hace run id o random string unico que identifique cada juego.

El tablero deberia ser un array de arrayo/hashes qeu fucnionen como rows/columnas.

Un tablero donde se generen por defecto todos con "X" luego incorporar la cantidad de minas en posicion random.

Deberia tener una ruta donde recibir los parametros a jugar (posicion_row/posicion_col)

Debe marcarse el tiempo de incio del juego.

Al usuario se le devuelve un tablero (["x","x","x","x","x"],["x","x","x","x"],["x","x","x","x"]) y el tablero minado se guarda en BD para luego ir comparando.
