# Test Plan Document

| Author                    | Wilfried Portet            |
|---------------------------|----------------------------|
| Created                   | 11/24/2023                 |
| Last Modified             | 11/27/2023                 |

## Table of Contents

- [Product Analysis](#product-analysis)
- [Testing Strategy](#testing-strategy)
- [Elements Outside of the Test Scope](#elements-outside-of-the-test-scope)

## Product Analysis

### Who will use the game?
This game Pac-Man, will be mainly intended for students of ALGOSUP. We chose this target because we think they will enjoy the challenge of this classic game. However, we do not limit our audience to that community alone. Indeed, we will also make the game available on GitHub, a platform accessible to everyone. This will allow anyone interested, whether they are fans of retro games, developers, or just curious, to access and experience the game. We hope this will encourage an exchange of ideas and feedback, which will help us improve and refine the game.

### What is it used for?
This game has a dual purpose: to offer fans of retro games the opportunity to immerse themselves in the legendary Pac-Man, and to allow ALGOSUP students to learn programming in the NASM assembler language, offering them a fun way to learn the language.

### How does it work?
The product tested is a reconstituted version of the Pac-Man game, designed in the NASM assembly language. The game consists of moving Pac-man, a circular character inside a labyrinth, in order to make him eat all the pac-gums that are there while avoiding being hit by ghosts.

### What software and hardware does the product use?

#### Software
| Software        | Description |
|-----------------|-------------|
| NASM            | Assembly language used to write assembly code. |
| Visual Studio Code | Versatile and powerful source code editor. Used to write and edit Assembly code. Offers features like syntax highlighting, version control integration, and extensions to facilitate Assembly development. |
| Aseprite        | Pixel art and animation creation software. Useful for designing and animating in-game sprites and graphics, such as Pac-Man characters, ghosts, and environmental elements. |
| Dosbox          | A DOS environment emulator, used to run and test the game in an environment similar to that for which it was originally designed. Essential for ensuring compatibility and proper functioning of the game. |

#### Hardware
| Hardware        | Description |
|-----------------|-------------|
| Laptop          | A laptop with sufficient specifications to run the software mentioned above. |
| Graphic Card    | A stable graphics card is necessary for rendering graphics, especially if working with Aseprite for pixel art. |
| Storage Space   | A hard drive or SSD with enough space to store code, graphics resources, and development tools. |
| Input Devices   | Indispensable for precise manipulation of graphic elements. |
| Monitor         | A screen with good resolution and an adequate refresh rate for visual comfort. |

## Testing Strategy

### Testing Scope

#### Hardware Tested
| Hardware                 | Why? |
|--------------------------|------|
| Computer Windows / Mac   | Performance testing on various PC configurations to ensure game compatibility and stability on different hardware. |
| Input Devices            | Checking the responsiveness and accuracy of game controls via the keyboard. |
| Monitor/Screen           | Testing on different screens to ensure faithful graphical representation of the game in various resolutions and refresh rates. |

#### Software Tested
| Software                 | Why? |
|--------------------------|------|
| NASM                     | Control of the reliability of the Assembly source code and its error-free compilation. |
| DOSBox                   | Validation of game execution in the emulator to ensure compatibility with DOS-like environments. |

#### Version Control
| Version Control          | Why? |
|--------------------------|------|
| GitHub                   | Ensure effective management of game versions and traceability of modifications. |

#### Feature Testing
| Features                 | Why? |
|--------------------------|------|
| Gameplay                 | Verify that all game features, such as Pac-Man movements, ghost interactions, and collecting points, work. |
| Game Logic               | Ensure that game logic, including ghost movement algorithms and victory or defeat conditions, conform to expectations. |
| Scoring System           | Test the scoring system, including score display. |

#### Performance Test
| Test                     | Why? |
|--------------------------|------|
| Stability                | Stress tests to ensure the game remains stable and does not crash under high loads or during long periods of use. |
| Response Time            | Evaluate the response time of the game, in particular the fluidity of movements and the speed of reaction to user commands. |

#### User Interface Testing
| Test                     | Why? |
|--------------------------|------|
| Visual Clarity           | Ensure the user interface is clear and intuitive. |
| Navigation and Controls  | Test the ease of navigating the game menus and the responsiveness of the game controls. |

#### Test Objectives
| Goals                    | Why? |
|--------------------------|------|
| Compatibility            | The game should run smoothly on various hardware and software configurations. |
| Performance              | Optimizing resources and ensuring a smooth gaming experience. |
| Reliability              | The game should be stable, without crashes or critical errors. |
| Functionality            | All game features, such as Pac-Man moves, ghost logic, scores, should work as expected. |
| User Interface           | Ensure intuitive user interaction that meets player expectations. |

**These tests will ensure that the Pac-Man game, developed in NASM Assembly, not only meets the high quality standards required by our team, but also aims to ensure an optimal user experience. These standards will ensure that every player benefits from a seamless, immersive, and entertaining gaming experience.**

## Elements Outside of the Test Scope for this Project

### 1. Features Outside of the Functional Specifications
- Features that have not been defined in the functional specifications will not be tested. This includes improvements or changes suggested but not approved for the current version of the game.

### 2. Compatibility Testing with Other Software
- Unless otherwise stated, compatibility testing with other software (e.g. third-party applications) will not be performed.

### 3. Networks and Connectivity
- Since Pac-Man is intended as a local game with no online components, testing related to network connectivity, online performance, or interaction with remote servers is out of scope.

### 4. Unlikely Usage Scenarios
- Usage scenarios that do not reflect typical user behavior, such as unrealistic command sequences or extreme usage conditions, will not be tested.

### 5. Long-Term Durability Testing
- Although performance and stability testing is included, very long-term durability testing, such as continued use over several months or years, is not covered.
