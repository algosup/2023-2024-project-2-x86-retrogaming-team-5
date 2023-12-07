# Test Plan Document

| Author                    | Wilfried Portet            |
|---------------------------|----------------------------|
| Created                   | 11/24/2023                 |
| Last Modified             | 11/27/2023                 |
| Last Modified             | 12/01/2023                 |
| Last Modified             | 12/04/2023                 |
| Last Modified             | 12/07/2023                 |

## Table of Contents


- [Glossary](#Glossary)
- [Product Analysis](#product-analysis)
  - [Who will use the game](#who-will-use-the-game)
  - [Purpose](#purpose)
  - [How it works](#how-it-works)
  - [Software and hardware used](#software-and-hardware-used)
- [Testing Strategy](#testing-strategy)
  - [Testing Scope](#testing-scope)
  - [Test Objectives](#test-objectives)
  - [Test Cases](#test-cases)
  - [Elements Outside of the Test Scope for this Project](#elements-outside-of-the-test-scope-for-this-project)
- [Types of Tests for Project Pac-Man](#types-of-tests-for-project-pac-man)
  - [Functional Testing](#functional-testing)
  - [Non-functional Tests](#non-functional-tests)
  - [Conclusion](#conclusion)
- [Risk Analysis for the Pac-Man Project in NASM Assembly](#risk-analysis-for-the-pac-man-project-in-nasm-assembly)
  - [Identified Risks](#identified-risks)
  - [Action Plan](#action-plan)
  - [Conclusion](#conclusion-1)
- [Test Planning](#test-planning)
  - [Who will test?](#who-will-test)
  - [When will the tests be carried out?](#when-will-the-tests-be-carried-out)
  - [Conclusion](#conclusion-2)
- [Testing Objectives](#testing-objectives)
  - [Specific Objectives of Tests](#specific-objectives-of-tests)
- [Declare Test Success Criteria](#declare-test-success-criteria)
    - [Monitoring](#monitoring)

---

## Glossary

| Term          | Definition |
|---------------|------------|
| Smoke Test    | A smoke test is a type of software testing that comprises of a non-exhaustive set of tests that aim at ensuring that the most important functions work. |
| Functional Test | Functional testing is a quality assurance (QA) process and a type of black-box testing that bases its test cases on the specifications of the software component under test. |
| Regression Test | Regression testing is a type of software testing that seeks to uncover new software bugs, or regressions, in existing functional and non-functional areas of a system after changes such as enhancements, patches or configuration changes. |
| Test Case     | A test case is a set of conditions or variables under which a tester will determine whether an application, software system or one of its features is working as it was originally established for it to do. |

# Product Analysis
---
## Who will use the game
This slightly modified reproduction of Pac-Man will be mainly intended for ALGOSUP students. We chose this target because we think they will enjoy the challenge of this classic game. However, we do not limit our audience to this community alone. Indeed, we will also make the game available on GitHub, a platform accessible to everyone. This will allow anyone interested, whether a retro gaming fan, developer, or simply curious, to access and experience the game. We hope this will encourage an exchange of ideas and feedback, which will help us to improve and refine the game.
## Purpose
This game aims to allow ALGOSUP students to learn programming in NASM Assembly language, thus offering them a fun way to learn the language.

This project will also allow fans of retro games to discover a variation of the classic Pac-Man game, with a distinct artistic direction.
## How it works
The product tested is a reconstituted version of the Pac-Man game with a new artistic direction, designed in NASM Assembly language. The game consists of moving a circular character inside a maze, in order to make him eat all the pellets there while avoiding being hit by ghosts.
## Software and hardware used
| Software                    | Description | 
|---------------------------|----------------
| NASM                      | Assembly language used to write assembly code.
| Visual Studio Code        | Versatile and powerful source code editor. It is used to write and edit Assembly code. VSCode offers features like syntax highlighting, version control integration, and extensions to facilitate Assembly development.
| Dosbox                    |A DOS environment emulator, used to run and test the game in an environment similar to the one for which it was originally designed. DOSBox is essential to ensure compatibility and proper functioning of the game.

| Hardware                    | Description | 
|---------------------------|----------------
| Laptop                      | A laptop with sufficient specifications to run the software mentioned above.
| Graphic card        |A stable graphic card is necessary for rendering graphics, especially if working with Aseprite for pixel art.
| Storage space                  |A hard drive or SSD with enough space to store code, graphics resources, and development tools.
| Input devices (Keyboard)                    |Indispensable for precise manipulation of graphic elements.
| Monitor                   |A screen with good resolution and an adequate refresh rate for visual comfort.

# Testing Strategy
--------------------
## Testing Scope
**Hardware Tested**
| Hardware                    | WHY ? | 
|---------------------------|----------------
| Computer Windows / Mac                      |Performance testing on various PC configurations to ensure game compatibility and stability on different hardware.
| Input Devices      |Checking the responsiveness and accuracy of game controls via the keyboard.
| Monitor/Screen                 |Testing on different screens to ensure faithful graphical representation of the game in various resolutions and refresh rate.

**Software Tested**
| Software                    | WHY ? | 
|---------------------------|----------------
| NASM                       |Control of the reliability of the Assembly source code and its error-free compilation.
| DOSBox     |Validation of game execution in the emulator to ensure compatibility with DOS-like environments.

**Version Control**
| Version control                    | WHY ? | 
|---------------------------|----------------
| Github                       |Ensure effective management of game versions and traceability of modifications.

**Feature Testing**
|  Features                   | WHY ? | 
|---------------------------|----------------
| Gameplay                      |Verify that all game features, such as Pac-Man movements, ghost interactions, and collecting points, work.
| Logique du Jeu      |Ensure that game logic, including ghost movement algorithms and victory or defeat conditions, conform to expectations.
| Système de Scores               |Test the scoring system, including score display.

**Performance Test**
|  Test                   | WHY ? | 
|---------------------------|----------------
| Stability                      |Stress tests to ensure the game remains stable and does not crash under high loads or during long periods of use.

**User Interface Testing**
|  Test                   | WHY ? | 
|---------------------------|----------------
| Visual Clarity                      |Ensure the user interface is clear and intuitive
| Navigation and Controls                   |Test the ease of navigating the game menus and the responsiveness of the game controls.


**Testing Methodologies**
|  Goals                   | WHY ? | 
|---------------------------|----------------
| Black box testing                      |Evaluating gameplay and UI without internal code knowledge. Primarily used for UI and functionality tests
| White box testing                   |Analysis of the game with the code.
| Regression Testing                   |To verify that new code changes have not adversely affected existing game functionality.

**These tests will ensure that the Pac-Man game, developed in NASM Assembly, not only meets the high quality standards required by our team, but also aims to ensure an optimal user experience. These standards will ensure that every player benefits from a seamless, immersive and entertaining gaming experience.**


## Test Cases
### Legend
- **Status:** To Do, In Progress, Done
- **Priority:** High🔴, Medium🟠, Low🔵,Done🟢

| ID   | Test Description                 | Expected Result                                                                                                                                                                                                                                                                                                                                                                         | Status      | Priority |
|------|---------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|----------|
| TC01 | Maze                            | maze displayed                                                                                                                                                                                                                                                                                                                                                                         | Done | 🟢       |
| TC02 | Menu                            | menu displayed                                                                                                                                                                                                                                                                                                                                                                         | To Do       | 🟠       |
| TC03 | Pac-man sprite                  | Display pac-man in the maze                                                                                                                                                                                                                                                                                                                                                             | Done | 🟢       |
| TC04 | Ghost Sprite                    | Display the ghost in the maze                                                                                                                                                                                                                                                                                                                                                           | In Progress | 🔴       |
| TC05 | Pellet and power pellet sprites | display the pellet and power pellet sprites                                                                                                                                                                                                                                                                                                                                             | In Progress | 🔴       |
| TC06 | Fruits sprites                  | display the fruit sprites                                                                                                                                                                                                                                                                                                                                                               | In Progress | 🔴       |
| TC07 | Player movement                 | Be able to control pac-man with the keyboard arrow                                                                                                                                                                                                                                                                                                                                      | Done | 🟢       |
| TC08 | Ghost Behavior                  | Ghosts will follow predefined patterns according to their individual characteristics. The behavior will include chasing Pac-Man, random movement, and specific strategies for each ghost.                                                                                                                                                                                                | In Progress | 🔴       |
| TC09 | Scoring System                  | Recording and displaying the highest scores achieved by players.                                                                                                                                                                                                                                                                                                                        | Done       | 🟢       |
| TC10 | Scoring System                  | Point values: Assigning specific point values to different in-game actions, such as eating pellets or catching ghosts.                                                                                                                                                                                                                                                                  | To Do       | 🔴       |
| TC11 | Ghost collision                 | Normal collision:\nScenario: When Pac-Man encounters a ghost without the protection of a power pellet.\nOutcome: Results in a life loss for Pac-Man, triggering a "death" state.\nConsequence: Pac-Man is respawned to a predefined location in the maze.                                                                                                                              | To Do       | 🔴       |
| TC12 | Ghost collision                 | Collision with Super Pac-Gum activation:\nScenario: Pac-Man consumes a super pac-gum, granting temporary invulnerability.\nOutcome: Ghosts become vulnerable, and Pac-Man can "eat" them upon contact.\nConsequence: Eaten ghosts return to their starting box, reactivating after a brief cooldown (3 seconds).                                                                          | To Do       | 🔴       |
| TC13 | Object collision                | Pellet collection:\nScenario: Pac-Man moves over a pellet in the maze.\nOutcome: Incremental increase in the player's score.\nConsequence: The pellet disappears from the maze.                                                                                                                                                                                                        | To Do       | 🔴       |
| TC14 | Object collision                | Super Pac-Gum consumption:\nScenario: Pac-Man consumes a super pac-gum.\nOutcome: Activation of temporary invulnerability and ghost-vulnerability mode.\nConsequence: Super pac-gum disappears from the maze.                                                                                                                                                                          | To Do       | 🔴       |
| TC15 | Object collision                | Fruit collection:\nScenario: Pac-Man reaches and consumes a fruit.\nOutcome: Significant score boost.\nConsequence: The fruit disappears from the maze.                                                                                                                                                                                                                                 |             | 🔴       |
| TC16 | Wall and Pipe collision         | Wall collision:\nScenario: Pac-Man or ghosts attempt to move into a wall.\nOutcome: Prevents passage through the wall.\nConsequence: Character remains stationary, altering the navigation path.                                                                                                                                                                                         | To Do       | 🔴       |
| TC17 | Wall and Pipe collision         | Pipe collision:\nScenario: Pac-Man or ghosts encounter a pipe entrance or exit.\nOutcome: Facilitates movement between different sections of the maze.\nConsequence: Characters transition to the connected pipe exit.                                                                                                                                                                  | To Do       | 🔴       |
| TC18 | Items Implementation            | • Spawn Frequency:\n    ◦ Cherry: Appears every 70 seconds.\n    ◦ Strawberry: Appears every 120 seconds.\n    ◦ Orange: Appears every 170 seconds.\n    ◦ Apple: Appears every 220 seconds.\n    ◦ Melon: Appears every 270 seconds.\n    ◦ Galaxian: Appears every 320 seconds.\n    ◦ Bell: Appears every 370 seconds. 

## Elements Outside of the Test Scope for this Project
-----------------
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

---
# Types of Tests for Project Pac-Man

To achieve optimal test coverage, you will need to use a combination of functional and non-functional tests. Here are the details :

## Functional Tests

### 1. Unit Testing
- **Objective**: Test individual functions or procedures in NASM Assembly.
- **Importance**: Ensure the proper functioning of each component of the game in isolation.

### 2. Integration Testing
- **Objective** : Test the interactions between the different modules of the game.
- **Importance** : Essential to verify that the modules work together.

### 3. System Tests
- **Objective** : Test the game in its entirety, including gameplay, user interface, and graphics.
- **Importance** : Verify that the game meets the requirements and runs correctly on the targeted systems.

## Non-functional Tests

### 1. Performance Testing
- **Objective** : To assess responsiveness and fluidity of movements.
- **Importance** : Guarantee a smooth user experience, especially for a game where responsiveness is key.

### 2. Compatibility Testing
- **Objective**: Ensure the game works on various operating systems and hardware configurations.
- **Importance**: Provide a similar experience across different environments.

### 3. Usability Testing
- **Objective** : Evaluate ease of use and intuitiveness of controls.
- **Importance** : Ensuring that the game is accessible and enjoyable for players.

## Conclusion

A combination of functional (unit, integration, and systems) and non-functional (performance, compatibility, usability) testing is recommended for the Pac-Man project in NASM Assembly. This approach provides comprehensive test coverage, ensuring quality, performance and an optimal user experience.

---
# Risk Analysis for the Pac-Man Project in NASM Assembly
---
## Identified Risks

### 1. Tight deadlines
- **Risk** : Lack of time to perform all types of necessary tests.
- **Solution** : 
  -  Prioritize tests according to their impact on the quality of the game.

### 2. Complexity of Code in Assembly
- **Risk** : Difficulties in identifying and fixing bugs.
- **Solution** : 
   - Schedule regular code reviews.

### 3. Development Tool Dependencies
- **Risk** : Problems with development tools (VSCode, Aseprite, DOSBox).
- **Solutions** : 
   - Have alternatives for key tools.
   - Test tool compatibility upstream.

## Action Plan

- **Regular Review of the Test Plan** : Adapt the test plan based on progress and feedback.
- **Transparent Communication** : Maintain clear communication with the developer team on the status of testing.

---

# Test Planning

## Who will test 

### 1. Internal Testers (QA)
- **Role** : Functional, performance and usability tests.
- **Expertise** : Knowledge in NASM Assembly.

### 2. Software Engineer
- **Role** : Unit and integration testing.
- **Expertise** : Knowledge of the source code and game features.

### 3. External Users
- **Role** : Usability testing and user feedback.
- **Required Expertise** : No programming expertise required.
- **Availability** : Mainly in the final, post-prototype phases.

## When will the tests be carried out 

### Unit and Integration Testing
- **When** : Continuously during development. Intensification before the prototype on December 11.

### System and Usability Testing
- **When** : Post-creation of the prototype, before December 11 and intensification before December 21 for the final version.

### Performance Test
- **When** : After stabilization of the prototype (mid-December) and before final delivery (third week of December).

### Beta User Testing
- **When** : After the prototype, between December 12 and 20, for user feedback before the final version.

## Conclusion

This test organisation ensures complete and effective coverage at every stage of development. Leading to a stable final release by December 21.

---
# Testing Objectives

## Specific objectives of the tests

### 1. Feature Testing
- **Objective** : Ensure the correct functioning of all game features.
- **Reason** : Prevent malfunctions that affect the gaming experience.

### 2. User Interface (UI) Testing
- **Objective** : Guarantee an intuitive and responsive UI.
- **Reason** : A poorly designed UI can push users away.

### 3. Performance Test
- **objective** : Ensure fluidity and stability of the game, without slowdowns or crashes.
- **Reason** : Performance is crucial for user engagement and satisfaction.

### 4. Compatibility Testing
- **Objective** : Confirm compatibility with different hardware configurations.
- **Reason** : Have an identical user experience on different hardware configurations.

### 5. Integration Test
- **Objective** : Check the correct interaction between all the modules of the game.
- **Reason** : Identify and resolve integration issues to ensure overall stability.

### 7. Load and Stress Tests
- **Objective** : Test the resilience of the game over a long period of use.
- **Reason** : Guarantee stable performance under intensive use conditions.

## Conclusion

Each test is designed with a clear objective, aiming to minimize bugs and maximize game quality.

---

# Declare test success criteria

![Test Success Criteria PlantUML Diagram](https://plantuml-server.kkeisuke.dev/png/XPFHQjj044NVzoi6IgXjA9YMbDI6D8vjWHzIIjpcVQqTALElTitERgWf_P_cE_nZdLs7e9X0z2JDlPgvSrQwugX3J9rLl2Mtqq5tOB3HoSRAk_XDTmYpGBglRtIzRODFpiozzG7UBPVLkFhSSpWVyVhKLLNLnM9-wlB1O7XoB6Qpyu_ZdaF2HOG_2k2rRd9bfTzXN2wfvl0lQt-LUW-Bm-CcHJ093EbMHdIe2e4diI57aRmJ1Wnre7Zu5-JE873Y7JeMJUNS4AYzZp9eDFg1767zBCDSNaD1DXg9_05kV428zzh1ETpeNvBeEhLy8dqQdq6ZoQOyZHniSGzH-XvzQseTDLHh5-4xXiQ7JhiQOSMSa1KwKrWgDRbDJXfYUHTgpSZJlDdTuJ6K1c_kHWqCLWowLolUl11q6E7hC0zmCDWZ3oNTP1tz3Z83SkrK2YpF2YqZ39mVvd3Kl4tNXqZuAjdbRugdJ3dLDJ93o9_79NovE2lbcRK5BjmYU_k0fbJlj2KZHWDQGArSJ1BY0U7dgiXpxneAdSXpt-s4q8OinNsVgbXaktJ4Acj2acSBMiOziz5obC9dgYOvDPTc5lFKzJ5iawpTosaKFbVINNww_m00.png)

## Tracking
**Continuous Monitoring** : Regular meetings will be held to assess progress against the exit criteria.

---
# Ressources Allocation

### Human ressources
- **Quality Assurance (QA)**
  - Functional testers
  - Run performance tests
  - Usability testers
- **Software Engineer**
  - Execute unit and integration tests
  - Bug fixes
- **Project Manager**
  - Coordination and deadline management

### Software
- **Development Environments**
  - Visual Studio Code for writing the code
  - NASM compilers and interpreters
  - Dosbox
- **Testing Tools**
  - Bug tracking tools (google sheets)
- **Version Management Software**
  - Git, GitHub

### Materials
- **Test Computers**
  - Machines with different configurations (Windows, Mac)
- **Input Devices**
  - Keyboard

### Other Resources
- **Technical Documentation**
  - Technical Specification and Functional specification

**These resources are essential to successfully complete the testing process.**

---
# Testing Schedule
---


# Screenshot
