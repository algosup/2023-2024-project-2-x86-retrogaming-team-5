# Functional Specification

<details>

<summary>
📖 Table of content
</summary>

- [Functional Specification](#functional-specification)
  - [Team members](#team-members)
  - [Project overview](#project-overview)
  - [project goal](#project-goal)
  - [Game's rules](#games-rules)
    - [Win condition](#win-condition)
    - [Loose condition](#loose-condition)
    - [Game board](#game-board)
    - [Character](#character)
      - [Player](#player)
      - [Ghosts](#ghosts)
    - [Item](#item)
      - [Fruits](#fruits)
      - [Power-up](#power-up)
  - [Out of scope](#out-of-scope)
  - [PEGI \& Copyright Information](#pegi--copyright-information)
    - [PEGI Rating](#pegi-rating)
    - [Copyright](#copyright)
  - [Audience and persona](#audience-and-persona)
    - [Target Audience](#target-audience)
    - [Player Personas](#player-personas)
      - [Persona 1: Timmy the Young Gamer](#persona-1-timmy-the-young-gamer)
      - [Persona 2: Sarah the Casual Gamer](#persona-2-sarah-the-casual-gamer)
      - [Persona 3: Retro Gaming Enthusiast](#persona-3-retro-gaming-enthusiast)
      - [Key Considerations](#key-considerations)
  - [Game's features](#games-features)
    - [Pac-Man features](#pac-man-features)
    - [Ghosts features](#ghosts-features)
    - [Collision](#collision)
    - [Score](#score)
    - [Screen game over](#screen-game-over)
    - [Musics/Sounds effects](#musicssounds-effects)
      - [ON/OFF](#onoff)
  - [Non-functional requirements](#non-functional-requirements)
  - [Game behaviors](#game-behaviors)
    - [Ghosts behavior](#ghosts-behavior)
      - [Blinky](#blinky)
      - [Pinky](#pinky)
  - [Mock up](#mock-up)
  - [Risks and assumptions](#risks-and-assumptions)
  - [Milestones](#milestones)
  - [Glossary](#glossary)
  
</details>

## Team members

| Laura-Lee Hollande | Technical Lead           | laura-lee.hollande@algosup.com | https://github.com/lauraleehollande |
|--------------------|--------------------------|--------------------------------|-------------------------------------|
| Guillaume Deramchi | Project Manager          | guillaume.deramchi@aglosup.com | https://github.com/Guillaume18100   |
| Lucas Megnan       | Program Manager          | lucas.megnan@algosup.com       | https://github.com/LucasMegnan      |
| Mathis Lebel       | Junior Software Engineer | mathis.lebel@algosup.com       | https://github.com/mathislebel      |
| Loris DeMattia     | Junior Software Engineer | loris.demattia@algosup.com     | https://github.com/Loriisss         |
| Wilfried Portet    | Quality Assurance        | wilfried.portet@algosup.com    | https://github.com/wilfried973      |

## Project overview

We were asked to recreate the classic Pac-Man in assembly x86 on DOSBox emulator as simple as posssible while
upgrade the basic gameplay, better randomness, score management, high scores, sounds and musics.

As a reminder Pac-man is a video game made by Toru Iwatani for the enterprise Namco. It was released on May 22, 1980. The game consist to eat all the dots with Pac-man while avoiding four colored ghosts.

<!-- /insérer image du jeu/ -->

## project goal

- Project duration: 7 weeks
- Technology: assembly
- Platform: DOSBox emulator, which is playable on computers

## Game's rules

### Win condition

The player win a level when he eats all dots in the map without losing all is lives.

### Loose condition

When the player lost all of is lives, he lose.
to loose a life the player needs to be touch by a ghosts.

### Game board

The game board is a square with maze. the walls are'nt traversable. We add pipes and each side of the map.
There pipes can teleport the player at the inverse side.

We use the same graphical charter of the original Board game of Pac-Man but we modify the map like google create a different map of the traditional game.

/ajouter imager du jeu classic et la version google/

### Character

#### Player

The player control Pac-Man and these objectives are have the maximum score value and rest in life. He cans take power-up and fruit to have more points and bonus to kill the enemies.
The player can eat fruits and there give more score value, and when he eats a power up he can eat the ghosts and he's more speed.

/insérer une image de Pac-Man/

#### Ghosts

Ghosts are the enemies of the player and this objectives it's kill the player. they have a random pattern to search and kill the player. Some are more passive and others more aggressive.
When the player eat a power-up the ghosts are scared and flees Pac-Man.

<!-- /insérer une image des 4 fantômes (voir wikipédia pour info sur le fonctionnement des fantômes)/ -->

### Item

#### Fruits

We have differents fruits which gives differents points depending of the level.

The first fruits is a cherry and he cans give 100 points. The second is a strawberry and he gives 300 points. after we have the orange with 500 points, the apple with 700 points, the melon with 1000 points, the Galaxian with 2000 points, the bell with 3000 points and for fini we have the key he can gives 5000 points.

/image des fruits/

#### Power-up

When the player eats a power-up the ghosts are scared and flees the player. The player has extra speed and can eat ghosts. When he eats a ghost ha has bonus scored.
We have only 4 power-up per level split in the board.

<!-- /image power-up/ -->

## Out of scope

The first idea was to create a new design for Pac-Man inspired by Japanese culture, but after brainstorming, we decided to reject this idea, because it was out of reach to code it in Assembly.

For the second idea we wanted to play Pac-Man in first-person, but we thought it was irrelevant and out of reach to code it in Assembly.

## PEGI & Copyright Information

### PEGI Rating

- PEGI 3 (Suitable for all ages)

### Copyright

Our game is a tribute to the famous game Pac-Man developed by Bandai Namco Entertainment Inc. As a reminder, Pac-Man® is a registered trademark of Bandai Namco Entertainment Inc. Therefore, this game will be inspired by Pac-Man and will not be affiliated with or endorsed by Bandai Namco Entertainment Inc. or any related entities.

## Audience and persona

### Target Audience

The game is designed to target a broad and diverse audience, aiming for a PEGI 3 rating, which means it's suitable for players of all ages. The primary focus is on casual gamers who enjoy classic arcade-style games. By keeping the content and gameplay accessible to all age groups, we aim to make the game an inclusive experience that can be enjoyed by children, teenagers, and adults alike.

### Player Personas

#### Persona 1: Timmy the Young Gamer

- **Age:** 12 years old
- **Background:** Timmy is a middle school student who loves video games. He is new to gaming and enjoys playing simple and colorful games. He often plays games with his parents or older siblings.
- **Gaming Experience:** Limited gaming experience. Mostly plays mobile games.
- **Motivations:** Timmy is looking for fun and engaging games to play after school. He wants something that is easy to understand and not too challenging.

#### Persona 2: Sarah the Casual Gamer

- **Age:** 32 years old
- **Background:** Sarah is a working mother with two children. She enjoys playing games in her free time to relax and have fun. She used to play classic arcade games like Pac-Man in her childhood.
- **Gaming Experience:** Casual gamer. Has played games on mobile devices and web browsers.
- **Motivations:** Sarah is looking for games that provide a sense of nostalgia while being easy to pick up and play during her breaks. She wants a game that can be enjoyed by her and her kids.

#### Persona 3: Retro Gaming Enthusiast

- **Age:** 45 years old
- **Background:** John is a software engineer and a passionate retro gaming enthusiast. He collects classic arcade cabinets and enjoys playing old-school games on emulators.
- **Gaming Experience:** Experienced gamer with a deep understanding of classic arcade games.
- **Motivations:** John is interested in the technical aspects of game development, including programming in assembly language. He's excited about the opportunity to study and understand the game's code, gameplay mechanics, and design

#### Key Considerations

- The game's user interface and controls should be simple and intuitive to cater to players of all ages and experience levels.
- The game should provide an option for local multiplayer or co-op gameplay, allowing parents and children to enjoy the game together.
- Art and sound design should strike a balance between modern aesthetics and retro charm to appeal to both newcomers and retro gaming enthusiasts.

## Game's features

**Game Concept and Mechanics:**

- Classic maze-based gameplay with Pac-Man and ghosts
- Player-controlled Pac-Man character
- Each ghost move according to an algorithm detailled in the [Ghosts behavior](#ghosts-behavior) section
- Collectible pellets for points
- Power pellets to make ghosts vulnerable
- Fruit bonus items for extra points

**Player Controls:**

- Keyboard input for Pac-Man movement
  - move up: 
  - move left:
  - move right:
  - move down: 
<!-- define Keyboard input -->
- Responsive and smooth character movement
<!-- define performance -->

**Maze Design:**

- Custom maze layouts with walls and corridors
- Multiple levels with increasing difficulty
<!-- game balancing -->
- Warp tunnels for Pac-Man and ghosts

**Graphic and Display:**

- 2D top-down view of the maze
- Character animations (Pac-Man, ghosts, and fruit)
- Score display and UI elements

**Game Logic:**

- Score calculation and tracking.
- Lives system with extra lives at certain score thresholds.
- Game over and victory conditions.
- Current and high score display

### Pac-Man features

The movements of Pac-Man are simple, he can go left, right, top and bottom. We can control it with arrows of the keyboard.

### Ghosts features

- 
- 

### Collision

The ghosts and the player can't pass throught wallsand. When a ghost touch Pac-Man The game is over but if Pac-Man had a power-up the ghost was dead and he goes back in the ghost room.

### Score

We added a score system to watch your score and another, if you want watch the best score on the computer.
When you have 10.000 score the game give 1 additional life.

you win Score when you eat dots, fruits and ghosts when you have the power-up activate.

### Screen game over

When you have no life and a ghost touch you a last time the screen game over appear.
We can see two button, play again and exit.

### Musics/Sounds effects

We decided to use 3 musics, the first for the lobby, anoter when you play and a last when you eat a power up to change the atmosphere of the game.

#### ON/OFF

We wanted to add a feature to cut the sounds of the game because if you play a long moments the same music endlessly cand be irritate.

## Non-functional requirements

## Game behaviors

### Ghosts behavior

#### Blinky

Blinky is the red ghost, he directly attacks Pac-Man. He follows him continuously.

#### Pinky

Pinky is the pink ghost

<!-- ## Collision

The ghosts and the player can't pass throught wallsand when a ghost touch Pac-Man The game is over but if Pac-Man had a power-up the ghost is dead and go back in the ghost room.

/gif pacman mur, pacman meurt fantôme, pacman mange fantôme/ -->

## Mock up

## Risks and assumptions

## Milestones

| Date  | Hours   | Deliverable              |
|-------|---------|--------------------------|
| 13/11 | 1.30 PM | Functional specification |
| 27/11 | 1.30 PM | Technical specification  |
| 8/12  | 5 PM    | Test plan                |
| 11/12 | 5 PM    | Working prototype        |
| 21/12 | 5 PM    | Final product            |

## Glossary

Assembly:

PEGI:

Copyright:

Ghost room:

DosBox:
