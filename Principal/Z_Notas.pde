/*
ARREGLAR:
 * Cómo dejar abierto el borde para que se escapen
 * Acomodar dimensiones de la pantalla
 * Cambiar sonidos
 * Agregar más colisiones
 * Agregar serial/fantasma a la llegada
 * Ver estética de contador
 * Agregar pantalla de ganar y perder
 * que el pendulo se mueva o quitarlo
 * que al quedarse quieta la pelota pierda
 
 SONIDOS:
 - pelota al caer
 - perder con fantasmitas o boss fight
 - contacto con osc y otras cosas
 - perder por no moverse
 - llegar a la meta
 - al dibujar
 - reloj
 
 MECANICAS DEL JUEGO:
 1 Etapa de dibujo: Hay un contador al momento de dibujar (15 seg),
 luego de eso pasa al estado de reconocer los dibujos y mapearlos.
 2 Etapa de correr: Una ver mapeado, empieza a correr la bolita.
 Al colicionar con distintos elementos del pizarrón tendrá ventajas o desventajas.
 3 Etapa de perder: Si la bolita no logra alcanzar la meta el jugador perderá una vida.
 Tiene solo 3 vidas para liberar a la bolita, sino se aparagará el juego(?
 cada vida puede constar de diferentes puntajes y funcionar como arcade
 4 Etapa de ganar: Si la bolita logra ser liberada del pizarrón, el juegador ganará y se le contarán sus puntos.
 */
