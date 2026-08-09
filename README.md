# GearSwap Job Repository

This repository contains Windower GearSwap job files and shared logic for multiple characters.

## Repository structure

- `Common/`
  - Shared files used by all jobs.
  - `Common/Logic.lua` is the main shared logic dispatcher.
  - Other common utilities are also stored here for reuse.

- `JOB.lua`
  - Each top-level job file (for example `BLM.lua`, `PUP.lua`, `SMN.lua`) is the job-specific extension.
  - These files implement hooks and logic specific to that job.
  - `Logic.lua` calls into these job files to let each job override or extend behavior.

- `CharacterName/`
  - Folders such as `Cybin/`, `Gontari/`, `Kazako/`, `Kinoshiba/`, `Takagai/`, `Tarudrake/` contain character-specific gear files.
  - These files are named like `JOB_Gear.lua` and define gear sets for that character.
  - This split keeps gear configuration separate from shared job logic.

- `Archive/`
  - Older or retired job and gear files are stored here.
  - Useful for reference or restoring past configurations.

## How it works

1. `get_sets()` loads `Common/Logic.lua`.
2. It then includes the job-specific gear file for the current player and job.
3. `Common/Logic.lua` implements standard GearSwap hooks and forwards them to job-specific functions.
4. `JOB.lua` files define `job_precast`, `job_midcast`, `job_aftercast`, and other hooks.
5. Character-specific `JOB_Gear.lua` files define the actual equipment sets used by each job.

## Notes

- `Common/Logic.lua` is the standard shared logic used across all jobs.
- `JOB.lua` files are extended job logic; they rely on `Logic.lua` to call them.
- `JOB_Gear.lua` files are stored by character folder to differentiate equipment across characters.

## Example

- `Common/Logic.lua` handles generic event flow and shared behavior.
- `PUP.lua` contains Puppetmaster-specific logic.
- `Takagai/PUP_Gear.lua` contains the gear sets for the character `Takagai` on Puppetmaster.

## Tips

- Add new shared helpers to `Common/` when they are useful across multiple jobs.
- Keep job-specific decision logic in `JOB.lua` files.
- Keep equipment definitions in character-specific `JOB_Gear.lua` files.
