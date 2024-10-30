# Asistente de Ajedrez con Prolog

## Lista de hechos sobre el Ajedrez:
- Tablero de dos dimensiones:
    - Eje x de 8 posiciones
    - Eje y de 8 posiciones
    - Posiciones en eje x se listan de la A - H
    - Posiciones en eje y si enumeran del 1 - 8

- Clasificación de las piezas:
    - Las piezas pertenecen a la lista de piezas BLANCAS o NEGRAS
    - Las distintas piezas son las siguientes:
        - Rey
        - Dama
        - Torre
        - Caballo
        - Alfil
        - Peon  
    - Enumeración de piezas (tanto blancas como negras):
        - Un rey blanco
        - Una dama blanca
        - Dos torres
        - Dos caballos
        - Dos alfiles
        - Ocho peones
        - Por tanto, hay un total de 16 piezas por color.
        - 32 piezas son ocupadas por las piezas de ambos colores de forma predeterminda en el instante t = 0 de la partida.
        - A medida que avanza la partida, quedarán menos 32 - x piezas de cada color en el tablero.

# Reglas del propio juego del Ajedrez:

1. Posición inicial del juego blancas: 
    - Peones y = 2 fijado y se pone en x = A, B, ..., H
    - Torres: A1 y H1
    - Caballos: B1 y G1
    - Alfiles: C1 y F1
    - Dama: D1
    - Rey: E1
2. Posición inicial del juego negras:
    - y = 7 y se pone x = A, B, ..., H
    - Torres: A8 y H8
    - Caballos: B8 y G8
    - Alfiles: C8 y F8
    - Dama: D8
    - Rey: E8

3. Movimientos válidos para cada pieza:
    - Peones: siempre adelante en la misma columna => y + 1 (blancas) e y - 1 (negras)
    - Torres: se pueden mover tantas posiciones como haya libres tanto en las filas como en las columnas => x + 1 e y + 1
    - Caballos: x +- {1 o 2} e y +- {1 o 2} con x != y
    - Alfiles: se pueden mover sólo en diagonal tantas veces como posiciones haya libres => (x +-1) y (y +-1)
    - Dama: se puede mover como las torres + alfiles => (x + 1 e y + 1) o (x +-1 e y+-1), pero se puede mover N veces
    - Rey: se puede mover como una dama pero solo una casilla a la vez => (x + 1 e y + 1) o (x +-1 e y+-1), aquí N = 1

4. Cómo mata cada pieza:
    Peón:

    Movimiento normal: se mueve hacia adelante, una casilla a la vez (o dos desde su posición inicial).
    Captura: en diagonal, una casilla hacia adelante, a la izquierda o derecha.
    Especial: el "en passant" permite capturar un peón enemigo que ha avanzado dos casillas desde su posición inicial.

Torre:

    Movimiento y captura: se mueve y captura en línea recta, tanto horizontal como verticalmente, sin límite de casillas mientras no haya obstáculos.

Alfil:

    Movimiento y captura: se mueve y captura en diagonal, sin límite de casillas en cualquier dirección (izquierda, derecha, adelante o atrás) hasta que encuentra un obstáculo.

Dama (Reina):

    Movimiento y captura: combina los movimientos de la torre y el alfil, por lo que se desplaza en cualquier dirección (horizontal, vertical y diagonal) y captura de la misma manera, sin límite de casillas.

Caballo:

    Movimiento y captura: en forma de "L", es decir, dos casillas en una dirección (vertical o horizontal) y luego una casilla perpendicular, o viceversa. Es la única pieza que puede "saltar" sobre otras.

Rey:

    Movimiento y captura: una casilla en cualquier dirección (horizontal, vertical o diagonal).
    No puede moverse a una casilla que esté bajo ataque enemigo.


5. La cosa es que me he dado cuenta de que en la descripción de este problema estoy pensando en el cómo y no en el qué, que es lo realmente
importante. Por tanto, no tengo que crear ningún tipo de tablero ni nada ya que puedo simular directamente las posiciones al definir el predicado.
Es decir, puedo poner la posición original y posición destino. Luego, puedo generar predicados que sean especiíficamente para emular como se mueven las piezas
Luego, puedo definir hechos para definir exactamente cómo las piezas tienen que estar al iniciar la partida.
.



