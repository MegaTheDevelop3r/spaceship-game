# Rage Quitting Simulator

A 2D physics puzzle game built from scratch in **GameMaker Studio 2** with **GML**, featuring
momentum-based ship control, enemy AI, and a lock-and-key progression system across 18 levels.

**[▶ Play it in your browser on gx.games](https://gx.games/games/efwjf0/rage-quitting-simulator/tracks/6e329dbe-3cfd-4067-990b-458b85f382dd)**

---

## About

You pilot a ship through 18 increasingly hostile rooms. There is no health bar — a single mistake
restarts the level, which is where the name comes from. Movement is entirely momentum-based: the
ship has mass and inertia, so steering is about managing velocity rather than pressing a direction.

The game runs on GameMaker's Box2D physics integration. Every hazard, door, enemy and projectile is
a physics body, which means the difficulty comes from real collision dynamics rather than scripted
behaviour.

## Gameplay systems

| System | Implementation |
|---|---|
| **Ship control** | Momentum-based thrust on a Box2D rigid body. Angular and linear velocity are driven separately, so the ship drifts and rotates independently of its facing direction. |
| **Enemy AI** | A state machine using radial distance detection and a field-of-view cone. Units compute the angle to the player with vector math and switch between passive patrol and active pursuit. |
| **Gravity gun** | Fires a physics projectile that attaches to dynamic bodies, letting the player grab and reposition objects mid-flight to solve puzzles. |
| **Lock and key progression** | Coloured doors gated on distinct conditions — enemies defeated, buttons pressed, or objects placed on pressure points. |
| **Camera** | A custom End Step controller. Running the follow logic after the physics step eliminates the jitter you get when a camera chases a body during simulation. |
| **Positional audio** | An audio listener oriented to the ship's heading, so directional sound tracks the player's facing rather than the screen. |
| **Boost pads** | Apply an impulse along the pad's own `image_angle`, so a single object works at any rotation. |
| **Resource management** | A limited per-level allowance of emergency stops, plus a precision-flight mode that trades rotation speed for control. |

## Built with

- **GameMaker Studio 2**
- **GML** (GameMaker Language)
- **Box2D** physics via GameMaker's built-in physics system

## Project structure

```
spaceShooter/
├── objects/      51 objects — ship, enemies, doors, hazards, UI
├── rooms/        21 rooms — 18 playable levels, menu, 2 level-select screens
├── sprites/      42 sprites
├── sounds/       8 sound assets
└── fonts/
```

Roughly **1,000 lines of GML** across 143 event files.

## Running it locally

1. Install [GameMaker Studio 2](https://gamemaker.io/).
2. Clone this repository.
3. Open `spaceShooter/spaceShooter.yyp`.
4. Press **Run** (F5).

Or just [play it in the browser](https://gx.games/games/efwjf0/rage-quitting-simulator/tracks/6e329dbe-3cfd-4067-990b-458b85f382dd) — no install needed.

## Controls

| Input | Action |
|---|---|
| `W` / `↑` | Thrust — accelerates along the ship's heading |
| `A` `D` / `←` `→` | Rotate |
| `S` / `↓` | Emergency stop — kills all momentum instantly. **Limited uses per level** |
| `Space` | Fire |
| `X` (hold) | Gravity gun — grab a dynamic object and drag it while you fly |
| `V` (hold) | Precision mode — locks your heading and switches to fine rotation for tight manoeuvres |
| `M` | Return to the level menu |

The emergency stop and precision mode are what the harder levels are built around: you get a fixed
number of stops, so deciding *when* to spend one is the actual puzzle.

## Status

Complete and published. Built between 2023 and 2025 as a solo project — design, code, physics
tuning and level layout.

## Author

**Omar Aamar** — Computer Engineering student, Tel Aviv University.
[GitHub](https://github.com/MegaTheDevelop3r)

## License

Released under the MIT License. See [LICENSE](LICENSE).

