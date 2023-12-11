# Functional Specification

<details>

<summary>
📖 Table of content
</summary>

- [Functional Specification](#functional-specification)
  - [Team Members](#team-members)
  - [Project Overview](#project-overview)
  - [Project Goal](#project-goal)
  - [Game's Rules](#games-rules)
    - [Win Condition](#win-condition)
    - [Loss Condition](#loss-condition)
    - [Game Board](#game-board)
    - [Characters](#characters)
      - [Player](#player)
      - [Ghosts](#ghosts)
    - [Items](#items)
      - [Fruits](#fruits)
      - [Power Pellet](#power-pellet)
  - [Out of Scope](#out-of-scope)
  - [PEGI \& Copyright Information](#pegi--copyright-information)
    - [PEGI Rating](#pegi-rating)
    - [Copyright](#copyright)
  - [Audience and Persona](#audience-and-persona)
    - [Target Audience](#target-audience)
    - [Player Personas](#player-personas)
      - [Persona 1: Timmy the Young Gamer](#persona-1-timmy-the-young-gamer)
      - [Persona 2: Sarah the Casual Gamer](#persona-2-sarah-the-casual-gamer)
      - [Persona 3: Retro Gaming Enthusiast](#persona-3-retro-gaming-enthusiast)
      - [Key Considerations](#key-considerations)
  - [Game's Features](#games-features)
  - [Non-Functional Requirements](#non-functional-requirements)
    - [Performance](#performance)
    - [Reliability](#reliability)
    - [Security](#security)
    - [Usability](#usability)
    - [Maintainability](#maintainability)
    - [Scalability](#scalability)
    - [Performance Optimization](#performance-optimization)
    - [Documentation](#documentation)
    - [Legal and Compliance](#legal-and-compliance)
  - [Game Behaviors](#game-behaviors)
    - [Ghosts Behavior](#ghosts-behavior)
    - [Items Behavior](#items-behavior)
    - [Score/High Score](#scorehigh-score)
    - [New Life](#new-life)
  - [Game Balancing](#game-balancing)
  - [Game Visual Identity](#game-visual-identity)
    - [Color Scheme](#color-scheme)
    - [Typography](#typography)
    - [Icons and Symbols](#icons-and-symbols)
    - [Art Style](#art-style)
    - [UI Elements](#ui-elements)
    - [Sound and Music](#sound-and-music)
    - [Logo and Branding](#logo-and-branding)
    - [Additional Considerations](#additional-considerations)
  - [Mock up](#mock-up)
  - [Risks and Assumptions](#risks-and-assumptions)
    - [Risks](#risks)
    - [Assumptions](#assumptions)
    - [Mitigation Strategies](#mitigation-strategies)
  - [Milestones](#milestones)
  - [Glossary](#glossary)
  
</details>

## Team Members
| Name               | Role                     | Email                          | GitHub                              |
|--------------------|--------------------------|--------------------------------|-------------------------------------|
| Guillaume Deramchi | Project Manager          | guillaume.deramchi@aglosup.com | https://github.com/Guillaume18100   |
| Lucas Megnan       | Program Manager          | lucas.megnan@algosup.com       | https://github.com/LucasMegnan      |
| Laura-Lee Hollande | Technical Lead           | laura-lee.hollande@algosup.com | https://github.com/lauraleehollande |
| Mathis Lebel       | Junior Software Engineer | mathis.lebel@algosup.com       | https://github.com/mathislebel      |
| Loris DeMattia     | Junior Software Engineer | loris.demattia@algosup.com     | https://github.com/Loriisss         |
| Wilfried Portet    | Quality Assurance        | wilfried.portet@algosup.com    | https://github.com/wilfried973      |

## Project Overview

We were asked to recreate the classic Pac-Man in assembly x86 on DOSBox emulator as simple as posssible while
improving the basic gameplay, randomness, score management, high scores, sounds and musics.

As a reminder Pac-man is a video game made by Toru Iwatani for the enterprise Namco. It was released on May 22, 1980. The game consists to eat all the pelletss with Pac-man while avoiding four colored ghosts.

![alt text](image/pac-man-jeu-video.jpg)

## Project Goal

- Project duration: 7 weeks
- Technology: assembly
- Platform: DOSBox emulator, which is playable on computers

## Game's Rules

### Win Condition

The player win a level when he eats all the pellets in the map without losing all is lives.

### Loss Condition

When the player lost all of is lives, he loses.
To lose a life, the player needs to be touched by a ghost.

### Game Board

The game board is a square with maze. The walls aren't traversable. We add pipes at each side of the map.
These pipes can teleport the player on the other side of the map.

We use the same graphical charter of the original Board game of Pac-Man but we custom the design of the map.

### Characters

#### Player

The player control Pac-Man and his objectives are to have the maximum score value and not be touched by any ghost. He can take the power pellets and fruits to have more points and bonus to kill the ghosts.
The player can eat fruits and it will give points, and when he eats a power up he can eat the ghosts and he's faster.

#### Ghosts

Ghosts are the enemies of the player and their objective is to kill the player. They have a random pattern to search and kill the player.  
Behavior of the different ghosts:

- Red: Chases Pac-Man all the time, Also speeds up after you've eaten a certain amount of pellets, which gets less for each level.

- Pink: Fast but random movement

- Cyan: Shy and tries to stay away from pac-man, unless approached too much, after which it will chase Pac-Man too.

- Orange: Slow and Random Movement.  

When the player eats a power pellet, the ghosts are scared and fleeing Pac-Man.

### Items

#### Fruits

There are different fruits which give different amounts of points depending on the level.

The first fruit is a cherry and it can give 100 points. The second is a strawberry and it gives 300 points. After, we have the orange with 500 points, the apple with 700 points, the melon with 1000 points, the Galaxian with 2000 points, the bell with 3000 points, and finally, there is the key that gives 5000 points.

![alt text](image/image.png)

#### Power Pellet

When the player eats a power pellet, the ghosts are scared and flee the player. The player has extra speed and can eat ghosts. When he eats a ghost, he wins 50 points.
There is only 4 power pellets per level splited in the board.

<!-- /image power pellet/ -->

## Out of Scope

The first idea was to create a new design for Pac-Man inspired by Japanese culture, but after brainstorming, we decided to reject this idea, because it was out of reach to code it in Assembly.

For the second idea, we wanted to play Pac-Man in first-person, but we thought it was irrelevant and out of reach to code it in Assembly.

## PEGI & Copyright Information

### PEGI Rating

- PEGI 3 (Suitable for all ages)

### Copyright

Our game is a tribute to the famous game Pac-Man developed by Bandai Namco Entertainment Inc. As a reminder, Pac-Man® is a registered trademark of Bandai Namco Entertainment Inc. Therefore, this game will be inspired by Pac-Man and will not be affiliated with or endorsed by Bandai Namco Entertainment Inc. or any related entities.

## Audience and Persona

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

## Game's Features

**Game Concept and Mechanics:**

- Classic maze-based gameplay with Pac-Man and ghosts
- Player-controlled Pac-Man character
- Each ghost move according to an algorithm detailled in the [Ghosts behavior](#ghosts-behavior) section
- Collectible pellets for points
- Power pellets to make ghosts vulnerable
- Fruit bonus items for extra points

**Player Controls:**

- Keyboard input for Pac-Man movement
  - ↑ : move up
  - ↓ : move down
  - ← : move left
  - → : move right
- Responsive and smooth character movement
  - response time: ≤200 milliseconds

**Maze Design:**

- Custom maze layouts with walls and corridors
- Multiple levels with increasing difficulty
- Warp tunnels for Pac-Man and ghosts

**Graphic and Display:**

- 2D top-down view of the maze
- Character animations (Pac-Man, ghosts, and fruit)
- Score display and UI elements

**Game Logic:**

- Score calculation and tracking
- Lives system with extra lives at certain score thresholds
- Game over conditions
  - the player loose all his lives
- Victory conditions
  - the player collect all the pellets without loose all his life
- Current and high score display
- Game balancing

**Gameplay Features:**

- Ghost house where ghosts respawn
- Speed-up feature for Pac-Man
- Different ghost personalities for variety
  - **Blinky:** always follows directly behind Pac-Man, except if the short-sighted decision-making causes him to take an inefficient path
  - **Pinky:** embushed the player by looking at his current position and orientation and selecting the location four tiles straight ahead him
  - **Inky:** exhibits unpredictable movements by alternating between direct pursuit of the player and erratic lateral shifts, influenced by a complex blend of Blinky's position and a set point calculated using a specific algorithm
  - **Clyde:** exhibits erratic behavior by alternating between chasing Pac-Man and moving to a random location when he's too close to the player

**Collision Detection:**

- Player and ghosts can't pass throuhg the walls
- Collision between the player and one of the ghost
  - the ghost is killed and respawn in the ghost house
- Collision between one of the ghost and the player
  - the player loose 1 life

**Audio:**

- PC speaker or sound card support for simple game sounds
- Sound effects for eating pellets, ghosts, and collecting fruit
- Background music

**UX and User Friendly Requirements:**

- All the transitions have to be fluid
  - ≤200 milliseconds
- Pause game
- Display all the commands

**Emulator Compatibility:**

- Ensure compatibility with DOSBox
<!-- Ability to run on older DOS systems -->
- Proper setup instructions for DOSBox

**Documentation:**

- [Game manual](https://github.com/algosup/2023-2024-project-2-x86-retrogaming-team-5/blob/main/README.md) with game instructions

**Legal Considerations:**

- Ensure proper licensing and copyrights for any Pac-Man related assets or gameplay elements.

## Non-Functional Requirements

### Performance

**Loading Time:**

- The game should load within 5 seconds on standard hardware

**Frame Rate:**

- The game should maintain a consistent frame rate of at least 30 frames per second to ensure smooth gameplay

### Reliability

**Stability:**

- The game should be stable and free from crashes, with an acceptable crash rate of less than 1% per gameplay hour

**Error Handling:**

- The game should provide clear and user-friendly error messages in case of unexpected issues

### Security

**Data Integrity:**

- Player progress and high scores should be securely stored and protected against data corruption or unauthorized access

### Usability

**User Interface Responsiveness:**

- The user interface should respond to player input with minimal delay, aiming for a maximum response time of 100 milliseconds

### Maintainability

**Code Documentation:**

- The source code should be well-documented to facilitate future maintenance and updates

**Modularity:**

- The game architecture should be modular to allow for easy integration of updates or additional content

### Scalability

**Level Design Scalability:**

- The game should support the addition of new levels without requiring extensive modifications to the core code

### Performance Optimization

**Resource Usage:**

- Optimize resource usage to ensure the game runs efficiently on a variety of hardware, with a focus on minimizing CPU and memory usage

**Load Balancing:**

- Distribute processing load evenly to avoid performance bottlenecks during gameplay

### Documentation

**User Manual:**

- Provide a comprehensive user manual or in-game tutorial to guide players through the controls and gameplay mechanics

**Developer Documentation:**

- Maintain detailed developer documentation for codebase understanding and future development

### Legal and Compliance

**Licensing Compliance:**

- Ensure compliance with all relevant licensing agreements and copyright regulations for third-party assets used in the game

**Regulatory Compliance:**

- Adhere to applicable regulations and industry standards related to game development and distribution

## Game Behaviors

### Ghosts Behavior

- The patterns are different for all ghosts some are more agressive and others are more passive
- The ghosts leave the room ghosts at different times
- When the player eat a PowerUp ghosts flees Pac-Man and the patterns are random for all ghosts

### Items Behavior

- The fruits spwans randomly during the level with a interval time of 20 secondes
- To spawn certain fruit we need to complete different level of the game
- The PowerUp are only four per level and situate on each corner of the map. When you finish a level all PowerUp respawn

### Score/High Score

- When you have the new high score it will be displayed at the end of the game as a high score

### New Life

- We start the game with 3 lives and the maximum lives you can have is 5
- To receive a bonus life you need to have 10,000 scores. Every 10,000 score you receive 1 life

## Game Balancing

- **Pellet**: 10 points
- **Power Pellet**: 50 points
- **Eating Ghosts**: 200, 400, 800, 1600 points (eat ghosts consecutively for increasing points)
- **Fruits**: Varying points
  - cherry: 100 points
  - strawberry: 300 points
  - orange: 500 points
  - apple: 700 points
  - melon: 1000 points
  - Galaxian: 2000 points
  - bell: 3000 points

## Game Visual Identity

### Color Scheme

The game will adopt a vibrant and retro-inspired color palette to evoke a nostalgic feel while maintaining visual appeal. The primary colors include:

- **Pac-Man Yellow (#FFFF00):** Main color for Pac-Man character and key elements
- **Ghostly Blue (#00BFFF):** Color for ghost characters
- **Maze Green (#00FF00):** Background color for the maze
- **Power Pellet Orange (#FFA500):** Color for power pellets
- **Fruit Bonus Red (#FF0000):** Color for bonus fruit items

### Typography

The game will feature a bold and easily readable font to enhance the retro aesthetic. The chosen typeface is:

- **Font: PixelFont-Bold**
- **Size: 8x8 pixels**
- **Color: White (#FFFFFF) for main text**

### Icons and Symbols

Small icons and symbols will be used to represent key elements in the user interface and game HUD:

- **Pellet Icon:** represents standard pellets
- **Power Pellet Icon:** indicates power pellets
- **Fruit Icon:** represents bonus fruit items
- **Heart Icon:** represents player lives

### Art Style

The visual style will be pixel art to align with the retro theme. The resolution will be set at 8-bit, giving a classic arcade appearance. Animations will be simple but expressive to convey character movements effectively.

### UI Elements

User interface elements will have a clean and siple design, displaying essential information such as score, lives, and level progression. Buttons and menu items will maintain a consistent retro-inspired aesthetic.

### Sound and Music

The game will feature simple, retro 8-bit sound effects for pellet eating, ghost encounters, and power pellet activation. Background music will also be a 8-bit retro music.

### Logo and Branding

The game logo will incorporate the iconic Pac-Man character and maintain a cohesive design with the chosen color palette. The branding will reflect the game's classic arcade roots.

### Additional Considerations

- Consistent use of retro-inspired visual elements across marketing materials
- Accessibility considerations for colorblind players in the design choices

## Mock up

![alt text](image/mockUp.png)

## Risks and Assumptions

### Risks

**Technical Challenges:**

- The development in assembly language may pose challenges in terms of code complexity and debugging. The team will need to allocate sufficient time for testing and troubleshooting

**Emulator Compatibility:**

- Ensuring seamless compatibility with DOSBox may require additional testing and adjustments, considering potential differences in emulation environments

**Performance on Older Hardware:**

- Performance optimization for older hardware may be challenging. Testing on a range of systems is crucial to identify and address performance issues

**Legal Considerations:**

- Adherence to licensing and copyright regulations for Pac-Man-inspired elements must be carefully monitored to avoid legal issues

### Assumptions

**Team Expertise:**

- It is assumed that the development team has a proficient understanding of assembly language and can effectively overcome challenges associated with low-level programming

**DOSBox Stability:**
  
- The project assumes that DOSBox provides a stable and consistent emulation environment for the targeted hardware configurations

**Player Familiarity:**

- Players are expected to be familiar with basic Pac-Man mechanics, allowing for a smoother onboarding process without extensive tutorial requirements

**Testing Resources:**

- Sufficient resources will be allocated for comprehensive testing on various systems to identify and address potential compatibility issues

**Community Engagement:**

- The assumption is that there will be engagement and interest from the community for a Pac-Man-inspired game in assembly on DOSBox, contributing to user feedback and potential issue identification

### Mitigation Strategies

**Technical Support:**

- Provide documentation for assembly-specific challenges and establish a support system within the team to address technical issues promptly

**Community Outreach:**

- Actively engage with the gaming community to gather feedback during development, allowing for timely adjustments and improvements based on user experience

## Milestones

| Date  | Hours   | Deliverable              |
|-------|---------|--------------------------|
| 13/11 | 1.30 PM | Functional specification |
| 27/11 | 1.30 PM | Technical specification  |
| 8/12  | 5 PM    | Test plan                |
| 11/12 | 5 PM    | Working prototype        |
| 21/12 | 5 PM    | Final product            |

## Glossary

| Term                  | Definition                                                                                                                             |
|-----------------------|----------------------------------------------------------------------------------------------------------------------------------------|
| Assembly              | In computer programming, assembly language, often referred to simply as assembly (ASM), is any low-level programming language with a strong correspondence between the instructions and machine code.                                      |
| PEGI                  | Pan-European Game Information (PEGI) is a European video game content rating system established to help consumers make informed decisions based on age recommendations and content descriptors.  |
| Copyright             | Copyright is a type of intellectual property that grants its owner the exclusive right to copy, distribute, adapt, display, and perform a creative work, usually for a limited time.         |
| Ghost Room            | The ghost room is the area where ghosts appear at the start of the game and when they are respawned after being defeated by the player. |
| DOSBox                | DOSBox is an emulator simulating an MS-DOS compatible environment, allowing the running of video games developed for MS-DOS on various operating systems.                                        |
| Emulator              | An emulator is a software or hardware that mimics the functionality of another system, enabling it to run applications or games designed for that system.                                    |
| Frame Rate            | Frame rate refers to the number of individual frames or images displayed per second in a video game, impacting the smoothness of motion and overall visual experience.                      |
| Pixel Art             | Pixel art is a form of digital art where images are created at a small scale, often using a limited color palette, to evoke a retro and nostalgic aesthetic.                                 |
| High Score            | The high score represents the highest achieved score in a game, often displayed prominently to encourage competition among players.       |
| Maze Design           | The maze design refers to the layout of walls and corridors in the game environment, creating a challenging path for the player to navigate.                                                |
| Power Pellet          | A power pellet is an item in the game that, when consumed by the player, grants temporary invincibility and the ability to eat ghosts.                                                             |
| User Interface (UI)   | The user interface is the space where interactions between the player and the game occur, including menus, buttons, and other visual elements.                                                 |
| User Experience (UX)  | User experience encompasses the overall experience a player has with a game, including usability, accessibility, and enjoyment.                                                                    |
