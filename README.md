# Juego buscaminas en API.

voy a usar Sinatra como entorno (a pesar de no usarlo facil desde hace 6 años, pero me parecia enorme un framework como Rails para algo tan chico)

Para poner a andar el server se usa el comando:
#### rackup config.ru.
lo mas probable a posteriro se use alguna base de datos minima y se requiera correr algun script previamente. lo documentaré a posterior.


Un id o random string unico que identifica cada juego. Se accede (to do) al tablero del mismo en una ruta que reciba como posto o get el ID de board.

El tablero deberia ser un array de array/hashes que funcionen como rows/columnas.

Un tablero donde se generen por defecto todos con "X" luego incorporar la cantidad de minas en posicion random.

Deberia tener una ruta donde recibir los parametros a jugar (posicion_row/posicion_col)

Debe marcarse el tiempo de incio del juego. (created_at en BD)

Al usuario se le devuelve un tablero (["x","x","x","x","x"],["x","x","x","x"],["x","x","x","x"]) y el tablero minado se guarda en BD para luego ir comparando.

En el front se reemplazarias por iconos o imagenes cada caracter elegido para funcionalidades EJ: ['X' => 'comun', 'B' => 'Mina', '1' => 'Adyacente' ]
