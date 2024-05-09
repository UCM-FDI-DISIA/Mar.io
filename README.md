![](/documents/images/GDD/logo.png)

### Autores

- [Matt Castellanos Silva](https://github.com/MattCastUCM)
- [Pedro León Miranda](https://github.com/P4179)
- [Francisco Mollá Astrar](https://github.com/frmolla)
- [Nanxi Qin](https://github.com/NanxiQin)
- [María Sachez Carrasco](https://github.com/marsache)
- [Rocío Sánchez Horcajuelo López](https://github.com/Bimbloc)
- [Santiago Tienda Perus](https://github.com/Santienper)
- [Laura Wang Qiu](https://github.com/LauraWangQiu)
- [Jianuo Wen](https://github.com/Jjianuo)
- [Likang Wu](https://github.com/likangwu03)

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
  - [Niveles](#71-niveles)
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

#### 3.1. Cámara	

La cámara está situada a una distancia fija del personaje en todo momento, de modo que, cuando el personaje se mueve, la cámara lo sigue, pero independientemente de si el personaje rota, la cámara siempre mirará en la misma dirección.

#### 3.2. Mecánicas del personaje

| Mecánica | Descripción | Input |
|:--------:|:-----------:|:-----:|
| Andar | Desde una posición de reposo, el personaje comienza a moverse por el escenario. | `W` `A` `S` `D` |
| Salto | Estando el personaje en el suelo, al pulsar la tecla correspondiente, saltará. | `Space` |
| Doble salto | Si el personaje ha realizado un salto en el suelo, mientras se encuentre en el aire, podrá volver a pulsar la tecla oportuna para realizar un segundo salto. | `Space` (una vez se haya saltado) |
| Salto en carrera | Mientras está andando o corriendo, podrá realizar un salto, que tendrá una trayectoria parabólica. | - |
| Correr | Mientras el personaje está andando, al pulsar la tecla oportuna, correrá. | `Shift` |
| Pisotón | Golpe hacia adelante que hace daño a los enemigos. | `F` `Click izquierdo` |
| Pisotón | El personaje puede saltar encima de los enemigos, para hacerles daño, o de ciertos objetos, para interactuar con ellos. Después de haber saltado encima de uno de estos dos tipos de objetos, realizará un pequeño rebote. | - |

#### 3.3. Enemigos

| Nombre | Imagen | Puntos de vida | Descripción |
|:------:|:------:|:------------:|:-----------:|
| Cangrejo | ![](/documents/images/GDD/crab.png) | 1 | - Quita una vida al jugador <br> - Se mueve de izquierda a derecha. <br> - Se puede eliminar saltando encima de él o golpeándolo. |
| Morena | ![](/documents/images/GDD/eel.png) | Infinitos | - Quita una vida al jugador <br> - Aparece en un hueco y va subiendo y bajando cada cierto tiempo. |
| Tortuga | ![](/documents/images/GDD/turtle.png) | 1 | - Quita una vida al jugador <br> - Se mueve igual que el cangrejo <br> - Tiene una concha, por lo que el pisotón no le hace daño y hay que darle un puñetazo para eliminarla. |

#### 3.4. Mecánicas de escenario y objetos

##### 3.4.1. Objetos

| Nombre | Imagen | Localización | Descripción |
|:------:|:------:|:------------:|:-----------:|
| Fosa |  | Espacios entre plataformas | Si el jugador cae en ella, cae al vacío y pierde una vida independientemente de los power ups que tenga. |
| Plataformas sobre fosas | ![](/documents/images/GDD/rocks.png) | En una zona de fosas | Hay ciertas zonas del nivel en el que hay una fosa muy grande, de modo que hay plataformas para que el jugador pueda seguir avanzando. |
| Corales | ![](/documents/images/GDD/corals.png) | El suelo, repartidos por el nivel | Si el jugador toca uno, recibe daño. |
| Cofre | ![](/documents/images/GDD/chest.png) | El suelo | Cofre lleno de monedas. El jugador puede abrirlo golpeándolo o saltando encima de él para recoger su contenido. |
| Barco pirata | ![](/documents/images/GDD/ship.png) | Final del nivel | Punto al que tiene que llegar el jugador para pasarse el nivel. |

##### 3.4.2. PowerUps

| Nombre | Imagen | Localización | Descripción |
|:------:|:------:|:------------:|:-----------:|
| Vida extra | ![](/documents/images/GDD/heart.png) | El suelo | Cuando el jugador lo coge, obtiene una vida extra |
| Invencibilidad | ![](/documents/images/GDD/bubble.png) | El suelo | Cuando el jugador lo coge, no puede recibir daño de ningún enemigo, pero puede seguir perdiendo una vida si llega al vacío. |

### 4. HUD	

#### 4.1. Mockup del HUD

![](/documents/images/GDD/hud_mockup.png)

#### 4.2. Explicación de los elementos del HUD

| Nombre | Imagen | Descripción |
|:------:|:------:|:-----------:|
| Monedas | ![](/documents/images/GDD/coin.png) | Número de monedas recogidas. Cuando el jugador obtiene 10, se suma una vida extra y se reinicia el contador. |
| Monedas | ![](/documents/images/GDD/raccoonface.png) | Número de vidas restantes. |

### 5. Visual

La temática del juego está inspirada en el fondo del mar, de modo que, a excepción del protagonista, los elementos que se encontrarán en el juego seguirán el mismo estilo, ya sean animales propios de la fauna marina como el propio entorno.

Todo el juego tiene un estilo low poly con un tono alegre y colores vivos, aunque afectados por un filtro azulado para simular el efecto de estar bajo el agua. 

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

#### 7.1. Niveles

| Diseño inicial del nivel 1 |
|:-----:|
| ![](/documents/images/GDD/level_1_mockup.png) |

| Diseño final del nivel 1 |
|:-----:|
| ![](/documents/images/GDD/level_1_final.png) |

### 8. Referencias	

#### 8.1. Videojuegos

- Saga Super Mario Bros (Nintendo)
- Saga Crash Bandicoot (Sony/Naughty Dog)

#### 8.2. Recursos	

##### 8.2.1. Escenario y personajes

- [Animales, corales y algas](https://rkuhlf-assets.itch.io/aquatic-animal-models) 
- [Moneda de oro](https://skfb.ly/69CRK) 
- [Cofre](https://skfb.ly/6WPQG) 
- [Barco pirata](https://poly.pizza/m/cIzO4MBPqI) 

##### 8.2.2. UI

- [Fondo](https://www.vecteezy.com/photo/30663955-cartoon-style-ocean-background-for-product-showca)
- [Carteles](https://free-game-assets.itch.io/free-jungle-cartoon-gui)
- [Botones](https://pzuh.itch.io/free-bubble-game-button-pack)
