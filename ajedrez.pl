% Hechos de la base de conocimiento para saber cómo está cada pieza del ajedrez:

% Peones blancos:
casilla(peonBlanco1, Blanco, 1, 2).
casilla(peonBlanco2, Blanco, 2, 2).
casilla(peonBlanco3, Blanco, 3, 2).
casilla(peonBlanco4, Blanco, 4, 2).
casilla(peonBlanco5, Blanco, 5, 2).
casilla(peonBlanco6, Blanco, 6, 2).
casilla(peonBlanco7, Blanco, 7, 2).
casilla(peonBlanco8, Blanco, 8, 2).

% Peones negros:
casilla(peonNegro1, Negro, 1, 7).
casilla(peonNegro2, Negro, 2, 7).
casilla(peonNegro3, Negro, 3, 7).
casilla(peonNegro4, Negro, 4, 7).
casilla(peonNegro5, Negro, 5, 7).
casilla(peonNegro6, Negro, 6, 7).
casilla(peonNegro7, Negro, 7, 7).
casilla(peonNegro8, Negro, 8, 7).

% Caballos blancos:
casilla(caballoBlanco1, Blanco, 2, 1).
casilla(caballoBlanco2, Blanco, 6, 1).

% Caballos negros:
casilla(caballoNegro1, Negro, 2, 8).
casilla(caballoNegro2, Negro, 7, 8).

% Torres blancas:
casilla(torreBlanca1, Blanco, 1, 1).
casilla(torreBlanca2, Blanco, 8, 1).

% Torres negras:
casilla(torreNegra1, Negro, 1, 8).
casilla(torreNegra2, Negro, 8, 8).

% Alfiles blancos:
casilla(alfilBlanco1, Blanco, 3, 1).
casilla(alfilBlanco2, Blanco, 6, 1).

% Alfiles negros:
casilla(alfilNegro1, Negro, 3, 8).
casilla(alfilNegro2, Negro, 6, 8).

% Reyes blancos:
casilla(reyBlanco, Blanco, 5, 1).

% Reyes negros:
casilla(reyNegro, Negro, 5, 8).

% Reinas blancas:
casilla(reinaBlanco, Blanco, 4, 1).

% Reinas negras:
casilla(reinaNegra, Negro, 4, 8).

% Hechos sobre cómo se mueven las piezas:
movimiento(peonBlanco1, Blanco, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y + 1,
    Y1 >=1,
    Y1 <= 8.

movimiento(peonBlanco2, Blanco, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y + 1,
    Y1 >=1,
    Y1 <= 8.
movimiento(peonBlanco3, Blanco, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y + 1,
    Y1 >=1,
    Y1 <= 8.

movimiento(peonBlanco4, Blanco, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y + 1,
    Y1 >=1,
    Y1 <= 8.


movimiento(peonBlanco5, Blanco, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y + 1,
    Y1 >=1,
    Y1 <= 8.

movimiento(peonBlanco6, Blanco, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y + 1,
    Y1 >=1,
    Y1 <= 8.

movimiento(peonBlanco7, Blanco, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y + 1,
    Y1 >=1,
    Y1 <= 8.

movimiento(peonBlanco8, Blanco, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y + 1,
    Y1 >=1,
    Y1 <= 8.

movimiento(peonNegro1, Negro, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y - 1,
    Y1 >=1,
    Y1 <= 8.

movimiento(peonNegro2, Negro, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y - 1,
    Y1 >=1,
    Y1 <= 8.

movimiento(peonNegro3, Negro, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y - 1,
    Y1 >=1,
    Y1 <= 8.

movimiento(peonNegro4, Negro, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y - 1,
    Y1 >=1,
    Y1 <= 8.

movimiento(peonNegro5, Negro, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y - 1,
    Y1 >=1,
    Y1 <= 8.

movimiento(peonNegro6, Negro, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y - 1,
    Y1 >=1,
    Y1 <= 8.

movimiento(peonNegro7, Negro, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y - 1,
    Y1 >=1,
    Y1 <= 8.


movimiento(peonNegro8, Negro, X, Y, Sig_x, Sig_y) :- 
    Y1 is Y - 1,
    Y1 >=1,
    Y1 <= 8.

% Movimiento de la torre blanca
movimiento(torreBlanca1, Blanco, X, Y, Sig_x, Sig_y) :-
    Sig_x = X, Sig_y \= Y;  % Movimiento vertical
    Sig_y = Y, Sig_x \= X.  % Movimiento horizontal

movimiento(torreBlanca2, Blanco, X, Y, Sig_x, Sig_y) :-
    Sig_x = X, Sig_y \= Y;  % Movimiento vertical
    Sig_y = Y, Sig_x \= X.  % Movimiento horizontal

% Movimiento de la torre negra
movimiento(torreNegra1, Negro, X, Y, Sig_x, Sig_y) :-
    Sig_x = X, Sig_y \= Y;  % Movimiento vertical
    Sig_y = Y, Sig_x \= X.  % Movimiento horizontal

movimiento(torreNegra2, Negro, X, Y, Sig_x, Sig_y) :-
    Sig_x = X, Sig_y \= Y;  % Movimiento vertical
    Sig_y = Y, Sig_x \= X.  % Movimiento horizontal


movimiento(alfilBlanco1, Blanco, X, Y, Sig_x, Sig_y) :- 
    (Sig_x is X + 1, Sig_y is Y + 1);  
    (Sig_x is X + 1, Sig_y is Y - 1);  
    (Sig_x is X + 2, Sig_y is Y + 2);  
    (Sig_x is X + 2, Sig_y is Y - 2);  
    (Sig_x is X + 3, Sig_y is Y + 3);  
    (Sig_x is X + 3, Sig_y is Y - 3);  
    (Sig_x is X + 4, Sig_y is Y + 4);  
    (Sig_x is X + 4, Sig_y is Y - 4);  
    (Sig_x is X + 5, Sig_y is Y + 5);  
    (Sig_x is X + 5, Sig_y is Y - 5);  
    (Sig_x is X + 6, Sig_y is Y + 6);  
    (Sig_x is X + 6, Sig_y is Y - 6);  
    (Sig_x is X + 7, Sig_y is Y + 7);  
    (Sig_x is X + 7, Sig_y is Y - 7).

movimiento(alfilBlanco2, Blanco, X, Y, Sig_x, Sig_y) :-
    (Sig_x is X + 1, Sig_y is Y + 1);  
    (Sig_x is X + 1, Sig_y is Y - 1);  
    (Sig_x is X + 2, Sig_y is Y + 2);  
    (Sig_x is X + 2, Sig_y is Y - 2);  
    (Sig_x is X + 3, Sig_y is Y + 3);  
    (Sig_x is X + 3, Sig_y is Y - 3);  
    (Sig_x is X + 4, Sig_y is Y + 4);  
    (Sig_x is X + 4, Sig_y is Y - 4);  
    (Sig_x is X + 5, Sig_y is Y + 5);  
    (Sig_x is X + 5, Sig_y is Y - 5);  
    (Sig_x is X + 6, Sig_y is Y + 6);  
    (Sig_x is X + 6, Sig_y is Y - 6);  
    (Sig_x is X + 7, Sig_y is Y + 7);  
    (Sig_x is X + 7, Sig_y is Y - 7).

movimiento(alfilNegro1, Negro, X, Y, Sig_x, Sig_y) :-
    (Sig_x is X + 1, Sig_y is Y + 1);  
    (Sig_x is X + 1, Sig_y is Y - 1);  
    (Sig_x is X + 2, Sig_y is Y + 2);  
    (Sig_x is X + 2, Sig_y is Y - 2);  
    (Sig_x is X + 3, Sig_y is Y + 3);  
    (Sig_x is X + 3, Sig_y is Y - 3);  
    (Sig_x is X + 4, Sig_y is Y + 4);  
    (Sig_x is X + 4, Sig_y is Y - 4);  
    (Sig_x is X + 5, Sig_y is Y + 5);  
    (Sig_x is X + 5, Sig_y is Y - 5);  
    (Sig_x is X + 6, Sig_y is Y + 6);  
    (Sig_x is X + 6, Sig_y is Y - 6);  
    (Sig_x is X + 7, Sig_y is Y + 7);  
    (Sig_x is X + 7, Sig_y is Y - 7).

movimiento(alfilNegro2, Negro, X, Y, Sig_x, Sig_y) :-
    (Sig_x is X + 1, Sig_y is Y + 1);  
    (Sig_x is X + 1, Sig_y is Y - 1);  
    (Sig_x is X + 2, Sig_y is Y + 2);  
    (Sig_x is X + 2, Sig_y is Y - 2);  
    (Sig_x is X + 3, Sig_y is Y + 3);  
    (Sig_x is X + 3, Sig_y is Y - 3);  
    (Sig_x is X + 4, Sig_y is Y + 4);  
    (Sig_x is X + 4, Sig_y is Y - 4);  
    (Sig_x is X + 5, Sig_y is Y + 5);  
    (Sig_x is X + 5, Sig_y is Y - 5);  
    (Sig_x is X + 6, Sig_y is Y + 6);  
    (Sig_x is X + 6, Sig_y is Y - 6);  
    (Sig_x is X + 7, Sig_y is Y + 7);  
    (Sig_x is X + 7, Sig_y is Y - 7).

movimiento(caballoBlanco1, Blanco, X, Y, Sig_x, sig_y) :-
    (Sig_x is X + 2, Sig_y is Y + 1);  
    (Sig_x is X + 2, Sig_y is Y - 1); 
    (Sig_x is X - 2, Sig_y is Y + 1);  
    (Sig_x is X - 2, Sig_y is Y - 1);
    (Sig_x is X + 1, Sig_y is Y + 2);  
    (Sig_x is X + 1, Sig_y is Y - 2);  
    (Sig_x is X - 1, Sig_y is Y + 2); 
    (Sig_x is X - 1, Sig_y is Y - 2).

movimiento(caballoBlanco2, Blanco, X, Y, Sig_x, sig_y) :-
    (Sig_x is X + 2, Sig_y is Y + 1);  
    (Sig_x is X + 2, Sig_y is Y - 1); 
    (Sig_x is X - 2, Sig_y is Y + 1);  
    (Sig_x is X - 2, Sig_y is Y - 1);
    (Sig_x is X + 1, Sig_y is Y + 2);  
    (Sig_x is X + 1, Sig_y is Y - 2);  
    (Sig_x is X - 1, Sig_y is Y + 2); 
    (Sig_x is X - 1, Sig_y is Y - 2).

movimiento(caballoNegro1, Negro, X, Y, Sig_x, sig_y) :-
    (Sig_x is X + 2, Sig_y is Y + 1);  
    (Sig_x is X + 2, Sig_y is Y - 1); 
    (Sig_x is X - 2, Sig_y is Y + 1);  
    (Sig_x is X - 2, Sig_y is Y - 1);
    (Sig_x is X + 1, Sig_y is Y + 2);  
    (Sig_x is X + 1, Sig_y is Y - 2);  
    (Sig_x is X - 1, Sig_y is Y + 2); 
    (Sig_x is X - 1, Sig_y is Y - 2).


movimiento(caballoNegro2, Negro, X, Y, Sig_x, sig_y) :-
    (Sig_x is X + 2, Sig_y is Y + 1);  
    (Sig_x is X + 2, Sig_y is Y - 1); 
    (Sig_x is X - 2, Sig_y is Y + 1);  
    (Sig_x is X - 2, Sig_y is Y - 1);
    (Sig_x is X + 1, Sig_y is Y + 2);  
    (Sig_x is X + 1, Sig_y is Y - 2);  
    (Sig_x is X - 1, Sig_y is Y + 2); 
    (Sig_x is X - 1, Sig_y is Y - 2).

movimiento(reyBlanco, Blanco, X, Y, Sig_x, Sig_y) :- 
    Sig_x is X + 1;
    Sig_y is Y + 1;
    Sig_x is X - 1;
    Sig_y is Y - 1;
    Sig_x is X + 1,
    Sig_y is Y + 1;
    Sig_x is X + 1,
    Sig_y is Y - 1;
    Sig_x is X - 1,
    Sig_y is Y + 1;
    Sig_x is X - 1,
    Sig_y is Y - 1.

movimiento(reyNegro, Negro, X, Y, Sig_x, Sig_y) :- 
    Sig_x is X + 1;
    Sig_y is Y + 1;
    Sig_x is X - 1;
    Sig_y is Y - 1;
    Sig_x is X + 1,
    Sig_y is Y + 1;
    Sig_x is X + 1,
    Sig_y is Y - 1;
    Sig_x is X - 1,
    Sig_y is Y + 1;
    Sig_x is X - 1,
    Sig_y is Y - 1.

% Movimiento de la reina blanca
movimiento(reinaBlanco, Blanco, X, Y, Sig_x, Sig_y) :-
    % Movimiento vertical hacia arriba
    Sig_x = X, Sig_y > Y.
    
movimiento(reinaBlanco, Blanco, X, Y, Sig_x, Sig_y) :-
    % Movimiento vertical hacia abajo
    Sig_x = X, Sig_y < Y.
    
movimiento(reinaBlanco, Blanco, X, Y, Sig_x, Sig_y) :-
    % Movimiento horizontal hacia la derecha
    Sig_y = Y, Sig_x > X.
    
movimiento(reinaBlanco, Blanco, X, Y, Sig_x, Sig_y) :-
    % Movimiento horizontal hacia la izquierda
    Sig_y = Y, Sig_x < X.
    
movimiento(reinaBlanco, Blanco, X, Y, Sig_x, Sig_y) :-
    % Movimiento diagonal hacia arriba a la derecha
    Sig_x is X + D, Sig_y is Y + D,
    D > 0.

movimiento(reinaBlanco, Blanco, X, Y, Sig_x, Sig_y) :-
    % Movimiento diagonal hacia arriba a la izquierda
    Sig_x is X - D, Sig_y is Y + D,
    D > 0.

movimiento(reinaBlanco, Blanco, X, Y, Sig_x, Sig_y) :-
    % Movimiento diagonal hacia abajo a la derecha
    Sig_x is X + D, Sig_y is Y - D,
    D > 0.

movimiento(reinaBlanco, Blanco, X, Y, Sig_x, Sig_y) :-
    % Movimiento diagonal hacia abajo a la izquierda
    Sig_x is X - D, Sig_y is Y - D,
    D > 0.

% Movimiento de la reina negra
movimiento(reinaNegra, Negro, X, Y, Sig_x, Sig_y) :-
    % Movimiento vertical hacia arriba
    Sig_x = X, Sig_y > Y.
    
movimiento(reinaNegra, Negro, X, Y, Sig_x, Sig_y) :-
    % Movimiento vertical hacia abajo
    Sig_x = X, Sig_y < Y.
    
movimiento(reinaNegra, Negro, X, Y, Sig_x, Sig_y) :-
    % Movimiento horizontal hacia la derecha
    Sig_y = Y, Sig_x > X.
    
movimiento(reinaNegra, Negro, X, Y, Sig_x, Sig_y) :-
    % Movimiento horizontal hacia la izquierda
    Sig_y = Y, Sig_x < X.
    
movimiento(reinaNegra, Negro, X, Y, Sig_x, Sig_y) :-
    % Movimiento diagonal hacia arriba a la derecha
    Sig_x is X + D, Sig_y is Y + D,
    D > 0.

movimiento(reinaNegra, Negro, X, Y, Sig_x, Sig_y) :-
    % Movimiento diagonal hacia arriba a la izquierda
    Sig_x is X - D, Sig_y is Y + D,
    D > 0.

movimiento(reinaNegra, Negro, X, Y, Sig_x, Sig_y) :-
    % Movimiento diagonal hacia abajo a la derecha
    Sig_x is X + D, Sig_y is Y - D,
    D > 0.

movimiento(reinaNegra, Negro, X, Y, Sig_x, Sig_y) :-
    % Movimiento diagonal hacia abajo a la izquierda
    Sig_x is X - D, Sig_y is Y - D,
    D > 0.


% Conjunto de reglas:

mover_o_matar(Pieza, Color, X, Y, Sig_x, Sig_y) :- 
        % gestionar el que una posición está vacía
        \+(casilla(_, _ , X, Y)),
        movimiento(Pieza, Color, X, Y, Sig_x, Sig_y),
        % Quitar el vacío del tablero yy actualizar el tablero con el nuevo movimiento
        retract(casilla(Pieza, X, Y)),
        assert(casilla(Pieza, Color ,Sig_x, Sig_y)).

mover_o_matar(Pieza, Color, X, Y, Sig_x, Sig_y) :-
    casilla(_, Diferentecolor, Sig_x, Sig_y),
    Diferentecolor \= Color,
    movimiento(Pieza, Color, X, Y, Sig_x, Sig_y),
    retract(casilla(_, Diferentecolor, Sig_x, Sig_y)),
    retract(casilla(Pieza, Color, X, Y)),
    assert(casilla(Pieza, Color, Sig_x, Sig_y)).

mover_o_matar(Pieza, Color, X, Y, Sig_x, Sig_y) :-
    casilla(_, Mismocolor, X, Y, Sig_x, Sig_y),
    MismoColor = Color,
    Sig_x =:= X,
    Sig_y =:= Y,
    !,
    movimiento(Pieza, Mismocolor, Sig_x, Sig_y).


    














