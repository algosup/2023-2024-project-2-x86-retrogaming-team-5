# Technical Specification

<details>

<summary>
📖 Table of content
</summary>

- [Technical Specification](#technical-specification)
  - [Introduction](#introduction)
    - [Overview](#overview)
      - [Document Purpose](#document-purpose)
      - [Project Overview](#project-overview)
      - [Context](#context)
      - [Suggested Solution](#suggested-solution)
      - [Stakeholders](#stakeholders)
    - [Glossary](#glossary)
    - [Technical Requirements](#technical-requirements)
    - [Out of Scope](#out-of-scope)
    - [Future Goals](#future-goals)
      - [Technical Enhancements](#technical-enhancements)
      - [Technological Advancements](#technological-advancements)
  - [Assumptions](#assumptions)
  - [Solutions](#solutions)
    - [Propopsed Solution](#propopsed-solution)
      - [External Components and Interactions](#external-components-and-interactions)
      - [Dependencies](#dependencies)
      - [Pros and Cons](#pros-and-cons)
        - [Pros](#pros)
        - [Cons](#cons)
    - [Development Environment](#development-environment)
      - [Language](#language)
      - [Platform](#platform)
    - [Code Organization](#code-organization)
      - [Directory Structure](#directory-structure)
      - [Source Code](#source-code)
    - [Game Architecture](#game-architecture)
      - [Main Game Loop](#main-game-loop)
      - [Player Movement](#player-movement)
      - [Ghosts Behavior](#ghosts-behavior)
      - [Items Implementation](#items-implementation)
      - [User Interface](#user-interface)
    - [Integration with DOSBox](#integration-with-dosbox)
    - [Performance Optimization](#performance-optimization)
  - [Testing](#testing)
  - [Documentation](#documentation)
    - [User Manual](#user-manual)
    - [Developer Documentation](#developer-documentation)
  - [Legal Considerations](#legal-considerations)
  - [Milestones](#milestones)
    - [Milestone 1: Functional Prototype](#milestone-1-functional-prototype)
    - [Milestone 2: Gameplay Features](#milestone-2-gameplay-features)
    - [Milestone 3: Final Product](#milestone-3-final-product)
  
</details>

| Title       | Technical Specification For Pac-Man Game                                                                     |
|-------------|--------------------------------------------------------------------------------------------------------------|
| Author(s)   | Laura-Lee Hollande                                                                                           |
| Team        | Team 5 - Laura-Lee Hollande, Guillaume Deramchi, Lucas Megnan, Mathis Lebel, Loris DeMattia, Wilfried Portet |
| Reviewer(s) | ALGOSUP                                                                                                      |
| Created on  | 11/15/23                                                                                                     |

## Introduction

### Overview

`This document is based on the [functional specification](https://github.com/algosup/2023-2024-project-2-x86-retrogaming-team-5/blob/main/Documents/Functional.md). This document should be read before this one to ensure a better understanding of the project's functional requirements.`

#### Document Purpose

The technical specification outlines the implementation details and requirements for the development of the Pac-Man game. This document is intended for the development team and provides a detailed breakdown of the technical aspects involved in creating the game.

#### Project Overview

The Pac-Man Game project aims to recreate the classic Pac-Man experience in assembly x86 on the DOSBox emulator. The primary objective is to provide users with an enhanced and nostalgic gaming experience, staying true to the iconic gameplay of the original Pac-Man released in 1980. Players will navigate Pac-Man through a maze, consuming pellets, avoiding ghosts, and achieving high scores. The challenge lies in implementing the game's mechanics in assembly language, optimizing performance for the DOSBox environment, and incorporating additional features while maintaining the essence of the beloved arcade classic.

#### Context

This project is an educational project for the purpose of learning assembly and mastering this language. The choice of this language adds a technical challenge but also a good practice to understand the following concept:

- Perforcmance optimization
- Learning computer architecture
- Debbuging skills
- Improving coding skills

#### Suggested Solution

It involves meticulous implementation of Pac-Man's gameplay mechanics using assembly x86, ensuring compatibility with the DOSBox emulator. The team aims to enhance the classic experience by introducing randomness, improving score management, and incorporating sound and music elements. The visual identity will adopt a pixel art style with a vibrant color scheme, striking a balance between modern aesthetics and retro charm. The proposed solution addresses both the technical intricacies of assembly language and the user's desire for an authentic Pac-Man experience.

#### Stakeholders

- **Development Team:** Responsible for the coding, testing, and optimization of the game, ensuring it aligns with the assembly x86 and DOSBox requirements.
- **ALGOSUP:** The school who given the project and who will be part of the reviewvers team.
- **ALGOSUP students:** End-users of the game, interested in the technical aspects of game development and seeking for the opportunity to understand how our game work.

### Glossary

### Technical Requirements

**Assembly Coding Standards:**

- **Objective:** adhere to [assembly coding standards](https://projectacrn.github.io/latest/developer-guides/asm_coding_guidelines.html)
- **Details:** follow established coding conventions for assembly x86 programming to ensure consistency, readability, and maintainability of the codebase
- **Dependencies:** team familiarity with assembly coding standards

`The code should also be commented to improve the understanding and the readeability of the code in the future.`
  
**DOSBox Compatibility:**

- **Objective:** ensure compatibility with DOSBox emulator
- **Details:** test the game on DOSBox to verify proper execution and address any compatibility issues. Optimize code for DOS environment limitations
- **Dependencies:** DOSBox emulator, thorough testing on various DOS configurations
  
**Performance Optimization:**

- **Objective:** optimize game performance
- **Details:** identify and address performance bottlenecks, minimize CPU and memory usage, and ensure smooth gameplay on a range of hardware configurations
- **Dependencies:** profiling tools, knowledge of assembly-level performance optimization

**Error Handling:**

- **Objective:** implement robust error handling
- **Details:** develop error handling mechanisms for unexpected scenarios, providing clear and user-friendly error messages. Ensure graceful recovery from errors
- **Dependencies:** understanding of potential issues, proactive testing for error scenarios

**Documentation:**

- **Objective:** provide comprehensive documentation
- **Details:** document the assembly code, system architecture, and any external dependencies. Create user manuals and developer documentation for future reference
- **Dependencies:** documentation tools, attention to detail in documenting code

**Security Considerations:**

- **Objective:** address security concerns
- **Details:** Identify potential security threats, implement mitigation strategies, and ensure the overall security of the game, particularly in user data handling
- **Dependencies:** Knowledge of assembly-level security best practices

**Testing:**

- **Objective:** Conduct thorough testing
- **Details:** Develop and execute unit tests, integration tests, and performance tests to ensure the correctness and reliability of the game
- **Dependencies:** Testing frameworks, test environments

### Out of Scope

**New Design Architecture:**

- **Description:** introduction of a new design architecture not aligned with the classic Pac-Man style
- **Reasoning:** departing from the original design would require substantial changes in the codebase, surpassing the scope of the project

**First-Person Coding:**

- **Description:** coding the game logic to support first-person perspective interactions
- **Reasoning:** the project focuses on preserving the classic top-down arcade style, making first-person coding unnecessary

### Future Goals

#### Technical Enhancements

**Graphics and Animation Refinement:**

- **Objective:** improve the overall visual experience with enhanced graphics and smoother animations
- **Rationale:** elevate the aesthetic appeal of the game and provide a more engaging user experience

**Accessibility Features:**

- **Objective:** incorporate accessibility features such as colorblind-friendly options and customizable controls
- **Rationale:** ensure inclusivity by accommodating a diverse range of players with different needs

#### Technological Advancements

**Compatibility with Modern Systems:**

- **Objective:** ensure compatibility with modern systems and explore potential ports to contemporary platforms
- **Rationale:** extend the reach of the game to a broader audience and adapt to evolving technology
  
**Cross-Platform Support:**

- **Objective:** investigate the feasibility of cross-platform support, enabling the game to run seamlessly on various operating systems
- **Rationale:** facilitate accessibility for players on different devices and environments

**Integration of New Technologies:**

- **Objective:** explore the integration of modern technologies, such as improved sound libraries and graphics frameworks
- **Rationale:** keep the game technically up-to-date while preserving its classic charm

## Assumptions

The successful execution of the Pac-Man Game project relies on the following assumptions:

**Team Expertise:**

- **Assumption:** the development team possesses proficient knowledge of assembly language
- **Rationale:** assembly language expertise is crucial for coding the game logic and achieving optimal performance on the chosen platform
  
**DOSBox Stability:**

- **Assumption:** DOSBox provides a stable and consistent emulation environment for MS-DOS compatible systems
- **Rationale:** the project assumes that DOSBox is a reliable emulator for running the Pac-Man game on modern computers
  
**Player Familiarity:**

- **Assumption:** players are expected to be familiar with basic Pac-Man mechanics
- **Rationale:** the game design assumes a level of familiarity with classic Pac-Man gameplay, minimizing the need for extensive tutorials
  
**Testing Resources:**

- **Assumption:** adequate resources will be allocated for comprehensive testing on various systems
- **Rationale:** comprehensive testing is essential to identify and address potential compatibility issues on different hardware configurations

## Solutions

### Propopsed Solution

The proposed solution is to recreate the classic Pac-Man game in assembly x86 to run on the DOSBox emulator. The primary components include the assembly codebase, interaction with the DOSBox environment, and emulation of the original Pac-Man gameplay.

#### External Components and Interactions

**Assembly Codebase:**

- **Interaction:** the assembly code constitutes the core of the solution, defining Pac-Man's behavior, ghost movements, and game mechanics
- **Alteration:** the assembly code alters the game state based on user input, events, and interactions

**DOSBox Emulator:**

- **Interaction:** the game will interact with the DOSBox emulator to execute assembly code within a simulated MS-DOS environment
- **Alteration:** DOSBox provides a platform for executing assembly code and emulating the original Pac-Man environment

<!-- Add scheme -->

#### Dependencies

**DOS Environment:**

The solution is dependent on the DOS environment provided by the DOSBox emulator.

**Assembly Language Tools:**

Development tools for assembly language programming are required for coding and assembling the game.

<!-- Add scheme -->

#### Pros and Cons

##### Pros

- Recreates the classic Pac-Man experience
- Provides a retro gaming experience on modern systems
- Offers a challenging development project for the team

##### Cons

- Assembly language complexity may pose challenges
- Limited modern features compared to contemporary game development

### Development Environment

#### Language

The game will be developed in assembly language, specifically targeting the x86 architecture.

#### Platform

The game will be designed to run on the DOSBox emulator, providing compatibility with various computer systems.

### Code Organization

#### Directory Structure

```text
/project-root
│
├── src
│   ├── main.asm
│   ├── player.asm
│   ├── ghosts.asm
│   ├── items.asm
│   ├── ui.asm
│   └── ...
│
├── assets
│   ├── images
│   │   ├── pacman_sprite.bmp
│   │   ├── ghost_sprite.bmp
│   │   └── ...
│   └── sounds
│       ├── eat_pellet.wav
│       ├── eat_ghost.wav
│       └── ...
│
└── README.md
```

#### Source Code

The source code will be organized into separate files, each focusing on specific aspects of the game:

- `main.asm`: Main entry point and game loop
- `player.asm`: Player-controlled Pac-Man character logic
- `ghosts.asm`: Logic for ghost characters and their behaviors
- `items.asm`: Implementation of pellets, power pellets, and fruits
- `ui.asm`: User interface elements and display logic
- Other relevant files as needed

### Game Architecture

#### Main Game Loop

The game will follow a standard main loop structure, processing player input, updating game state, rendering graphics, and handling events.

```assembly
start:
  call initialize_game
  jmp game_loop

game_loop:
  call process_input
  call update_game_state
  call render_graphics
  call handle_events
  jmp game_loop
```

#### Player Movement

The player-controlled Pac-Man will move in response to keyboard input. The movement will be based on a grid system within the game board.

#### Ghosts Behavior

Ghosts will follow predefined patterns according to their individual characteristics. The behavior will include chasing Pac-Man, random movement, and specific strategies for each ghost.

#### Items Implementation

- **Pellets:** The basic collectibles that contribute to the player's score.
- **Power Pellets:** Grant temporary invincibility and the ability to eat ghosts.
- **Fruits:** Bonus items with varying point values, spawning at specific intervals.

#### User Interface

The user interface will display relevant information such as score, lives, and level progression. It will be kept simple and retro-inspired.

### Integration with DOSBox

The game will be developed and tested to ensure compatibility with the DOSBox emulator. This includes addressing any platform-specific considerations and providing setup instructions for users.

### Performance Optimization

Efforts will be made to optimize resource usage, ensuring the game runs smoothly on a variety of hardware. Load balancing will be implemented to distribute processing load evenly.

## Testing

A comprehensive testing plan will be created to cover various aspects of the game, including functionality, performance, and compatibility. This plan will be documented separately.

## Documentation

### User Manual

A detailed user manual will be provided, offering instructions on gameplay, controls, and other relevant information.

### Developer Documentation

Comprehensive documentation will be maintained for the source code, ensuring that future development and updates can be easily implemented.

## Legal Considerations

Adherence to licensing and copyright regulations for Pac-Man-inspired elements will be a priority throughout development.

## Milestones

### Milestone 1: Functional Prototype

- **Date:** 27/11
- **Deliverables:** Functional prototype with basic player movement, ghost behavior, and item interaction.

### Milestone 2: Gameplay Features

- **Date:** 8/12
- **Deliverables:** Implementation of game features, including scoring, lives system, victory and loss conditions.

### Milestone 3: Final Product

- **Date:** 21/12
- **Deliverables:** Polished and fully functional game, ready for release.
