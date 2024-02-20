# Mar.io
### Autores
- Matt Castellanos Silva
- Pedro León Miranda
- Francisco Mollá Astrar
- Nanxi Qin
- María Sachez Carrasco
- Rocío Sánchez Horcajuelo López
- Santiago Tienda Perus
- Laura Wang Qiu
- Jianuo Wen
- Likang Wu


## GDD
### Índice
- [Ficha técnica](#1-ficha-técnica)
- [Descripción](#2-descripción)
- [Jugabilidad](#3-jugabilidad)
  - [Cámara](#31-cámara)
  - [Mecánicas del personaje](#32-mecánicas-del-personaje)
  - [Enemigos](#33-enemigos)
  - [Mecánicas de escenario y objetos](#34-mecánicas-de-escenario-y-objetos)
    - [Objetos](#341-objetos)
    - [PowerUps](#342-powerups)
- [HUD](#4-hud)
  - [Mockup del HUD](#41-mockup-del-hud)
  - [Explicación de los elementos del HUD](#42-explicación-de-los-elementos-del-hud)
- [Visual](#5-visual)
- [Menús y flujo de juego](#6-menús-y-flujo-de-juego)
- [Contenido](#7-contenido)
  - [Historia](#71-historia)
- [Referencias](#8-referencias)
  - [Videojuegos](#81-videojuegos)
  - [Recursos](#82-recursos)
    - [Escenarios y personajes](#821-escenario-y-personajes)
    - [UI](#822-ui)
    - [Sonido](#823-sonido)


### 1. Ficha técnica
- **Título:** Mar.io
- **Género:** Plataformas
- **Target:** Jugador casual
- **Rating:** Pegi 7
- **Plataforma:** PC
- **Modos de juego:** Un jugador

### 2. Descripción
Videojuego de plataformas lineal en tercera persona en el que se controla a un personaje por un escenario en 3 dimensiones repleto de plataformas y obstáculos. El objetivo es avanzar por el nivel y lograr llegar hasta la meta. A lo largo de los niveles también habrá enemigos que intentarán dificultar el avance, por lo que el jugador tendrá a su disposición diferentes power ups que lo ayudarán a combatirlos.

### 3. Jugabilidad	

### 3.1. Cámara	
En el nivel 1 la cámara está situada detrás del personaje, de modo que, cuando el personaje se mueve, la cámara lo sigue.
El nivel consiste en una persecución, por lo que la cámara se sitúa delante del personaje para que el jugador pueda ver en todo momento por donde va el enemigo que le persigue. Tiene el mismo funcionamiento en el nivel anterior, siguiendo al jugador en todos sus movimientos.

### 3.2. Mecánicas del personaje	
| Mecánica | Descripción | Input |
|:--------:|:-----------:|:-----:|
| Andar | Desde una posición de reposo, el personaje comienza a moverse por el escenario. | WASD / ARROW KEYS |
| Salto | Estando el personaje en el suelo, al pulsar la tecla correspondiente, saltará. | SPACE |
| Doble salto | Si el personaje ha realizado un salto en el suelo, mientras se encuentre en el aire, podrá volver a pulsar la tecla oportuna para realizar un segundo salto. | SPACE (una vez se haya saltado) |
| Salto en carrera | Mientras está andando o corriendo, podrá realizar un salto, que tendrá una trayectoria parabólica. | - |
| Correr | Mientras el personaje está andando, al pulsar la tecla oportuna, correrá. | SHIFT |
| Ataque a melé | Se trata de un golpe hacia adelante que hace daño a los enemigos. | F / Click izquierdo |
| Pisotón | El personaje puede saltar encima de los enemigos, para hacerles daño, o de ciertos objetos, para interactuar con ellos. Después de haber saltado encima de uno de estos dos tipos de objetos, realizará un pequeño rebote. | - |

### 3.3. Enemigos
| Nombre | Imagen | Localización | Descripción |
|:------:|:------:|:------------:|:-----------:|
| Cangrejo | ![](/documents/images/GDD/crab.png) | Nivel 1 | - Quita un “punto de vida” al jugador.<br>- Se mueve de izquierda a derecha.<br>- Se puede eliminar saltando encima de él o golpeándolo. |
| Morena | ![](/documents/images/GDD/moray_eel.png) | Nivel 1 | - Aparece en un hueco y va subiendo y bajando cada cierto tiempo.<br>- Quita un “punto de vida” al jugador. |
| Tortuga | ![](/documents/images/GDD/turtle.png) | Nivel 1 | - Se mueve igual que el cangrejo, solo que tiene una concha.<br>- Saltar encima de él no le hace daño, sino que hay que golpearlo para eliminarlo. |
| Red | ![](/documents/images/GDD/net.png) | Nivel 2 | - Convierte el nivel en una persecución en la que el jugador no puede parar, sino que tiene que desplazarse continuamente hacia delante.<br>- Si toca al jugador, este muere. |

### 3.4. Mecánicas de escenario y objetos

### 3.4.1. Objetos	
| Nombre | Imagen | Localización | Descripción |
|:------:|:------:|:------------:|:-----------:|
| Fosa |  | El suelo<br>Niveles 1 y 2 | Si el jugador pasa sobre este espacio cae al vacío y muere independientemente de los power ups que tenga equipados. |
| Plataformas sobre fosas |  | EN una zona de fosas | Hay ciertas zonas del nivel en el que hay una fosa muy grande, de modo que hay plataformas para que el jugador pueda seguir avanzando. |
| Corales | ![](/documents/images/GDD/coral1.png)<br>![](/documents/images/GDD/coral2.png)<br>![](/documents/images/GDD/coral3.png) | Tanto sobre el suelo como sobre las plataformas distribuidas por la escena | Si el jugador salta sobre los corales, recibe daño. |
| Checkpoint (sólo si el nivel es demasiado largo) | ![](/documents/images/GDD/checkpoint.png) | El suelo | Si el jugador lo ha abierto, cuando este muera, aparecerá en ese punto en el nivel. Se abre saltando encima de él o golpeándolo. |
| Cofre |  | El suelo | Cofre lleno de monedas. El jugador puede abrirlo golpeándolo o saltando encima de él para recoger su contenido. |

### 3.4.2. PowerUps	
| Nombre | Imagen | Localización | Descripción |
|:------:|:------:|:------------:|:-----------:|
| Escudo |  | El suelo | Cuando el jugador lo coge, se protege de un golpe que reciba. Sólo se puede tener 1 escudo a la vez. |
| Invencibilidad |  | El suelo | Cuando el jugador lo coge, no puede recibir daño de ningún enemigo ni objeto pequeños (no se incluyen ni la red ni las fosas) y los elimina sólo con tocarlos. |

### 4. HUD	

### 4.1. Mockup del HUD	
![](/documents/images/GDD/hud_mockup.png)

### 4.2. Explicación de los elementos del HUD	
| Nombre | Imagen | Descripción |
|:------:|:------:|:-----------:|
| Monedas | ![](/documents/images/GDD/coin.png) | Número de monedas recogidas |

### 5. Visual	
La temática del juego está inspirada en el fondo del mar, de modo que, a excepción del protagonista, los elementos que se encontrarán en el juego seguirán el mismo estilo, ya sean animales propios de la fauna marina como el propio entorno.
Destaca por su tono alegre, colores vivos y escenarios con mucha luz. Además, tendrá un estilo “low poly”.

### 6. Menús y flujo de juego	
| Menús |
|:-----:|
| ![](/documents/images/GDD/main_menu_mockup.png) |
| *Menú principal* |
| ![](/documents/images/GDD/pause_menu_mockup.png) |
| *Menú de pausa* |
| ![](/documents/images/GDD/you_win_mockup.png) |
| *Menú de victoria* |
| ![](/documents/images/GDD/you_lose_mockup.png) |
| *Menú de derrota* |

| Diagrama de flujo de juego |
|:-----:|
| ![](/documents/images/GDD/scenes_graph.png) |

### 7. Contenido

### 7.1. Historia	
Un mapache marinero navega explorando el mar con su submarino. Cuando menos se lo espera, el submarino comienza a fallar y el protagonista cae en las profundidades del mar, con tan mala suerte que acaba lejos de donde lo hizo el submarino. El mapache debe recorrer el mar hasta encontrar el submarino y poder volver a la superficie.

### 8. Referencias	

### 8.1. Videojuegos	

### 8.2. Recursos	

### 8.2.1. Escenario y personajes	

### 8.2.2. UI	
- https://free-game-assets.itch.io/free-jungle-cartoon-gui
- https://prinbles.itch.io/bliss
- https://pzuh.itch.io/free-bubble-game-button-pack


### 8.2.3. Sonido
