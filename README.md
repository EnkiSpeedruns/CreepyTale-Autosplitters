# CreepyTale-Autosplitters
LiveSplit autosplitter scripts for Creepy Tale

# Creepy Tale - LiveSplit Autosplitters

This repository contains autosplitter scripts for the game *Creepy Tale*.

## 🧩 Available Scripts
- **Full Game**
- **Chapter 1** (Episodes 1–3)
- **Chapter 2** (Episodes 4–6)
- **Chapter 3** (Episodes 7–8)
- **Individual Episodes** (1 through 8)

## ⚠️ Notes
- The game uses a single value (`levelNumber`) to represent the episode number.
- The value `0` is used both for the **main menu** and the **title screen**.
- Because of this, **Episode 8** ends with a transition from `8 -> 0`, which is indistinguishable from a manual return to menu.
  - This means: **the timer should be reset manually when running Episode 8 as an IL or Full Game.**
