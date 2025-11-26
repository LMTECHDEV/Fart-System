# FiveM Random Fart System

A humorous FiveM script that randomly makes players fart when they're near other players, with multiple randomized fart sounds!

## Features
- Checks if players are near others at random intervals
- Random chance system for farting
- Proximity-based detection
- **Multiple random fart sounds** - no two farts sound the same!
- Customizable settings

## Installation

1. Copy the `fart_system` folder to your FiveM server's `resources` directory
2. **Download fart sounds from Pixabay:**
   - Go to https://pixabay.com/sound-effects/search/fart/
   - Download 5 different fart sound effects (they're free!)
   - Convert them to `.ogg` format if needed
   - Rename them to: `fart1.ogg`, `fart2.ogg`, `fart3.ogg`, `fart4.ogg`, `fart5.ogg`
   - Place them in `fart_system/html/sounds/` directory
3. Add `ensure fart_system` to your `server.cfg`
4. Restart your server or use `refresh` and `start fart_system`

## Configuration

You can adjust these settings in `client.lua`:

- **checkInterval**: How often to check for nearby players (milliseconds)
  - Default: `30000` (30 seconds)
  
- **proximityDistance**: How close players need to be (meters)
  - Default: `5.0` meters
  
- **fartChance**: Percentage chance to fart when near players (1-100)
  - Default: `10` (10% chance)

- **Number of sounds**: Change `math.random(1, 5)` in the `PlayFartSound()` function
  - Want 10 sounds? Change to `math.random(1, 10)` and add fart6.ogg through fart10.ogg

## Adding More Sounds

To use more than 5 sounds:

1. Add more sound files to `html/sounds/` (e.g., fart6.ogg, fart7.ogg, etc.)
2. Update `client.lua`: Change `math.random(1, 5)` to `math.random(1, X)` where X is your total number
3. Add corresponding `<audio>` elements in `html/index.html`

## Volume Adjustment

To change the fart volume, edit `html/index.html`:
- Find `audio.volume = 0.3;`
- Change 0.3 to any value between 0.0 (silent) and 1.0 (full volume)

## Commands

- `/testfart` - Test a random fart sound manually

## Troubleshooting

**No sound playing?**
- Make sure you downloaded the sound files and placed them in `html/sounds/`
- Check that files are named correctly (fart1.ogg, fart2.ogg, etc.)
- Verify the files are in `.ogg` format

**Same sound every time?**
- Check that all 5 sound files are present
- Make sure the files aren't corrupted

## Notes

- The script randomly picks one of 5 fart sounds each time
- Each player runs their own checks independently
- Adjust the settings to match your server's desired humor level!
- Sound files must be in `.ogg` format for best browser compatibility

## Recommended Sound Settings

For best results from Pixabay:
- Choose sounds that are 1-3 seconds long
- Mix different types (short toots, long ones, wet ones, etc.)
- Make sure they're not too loud or distorted

## Support

For issues or suggestions, please contact me @ https://discord.lmtdev.com.au
