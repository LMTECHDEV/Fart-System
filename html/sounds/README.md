# Fart Sounds Directory

## How to Add Sounds

1. Go to https://pixabay.com/sound-effects/search/fart/
2. Download 5 fart sound effects that you like (free license)
3. Convert them to .ogg format if needed (you can use online converters)
4. Rename them to:
   - fart1.ogg
   - fart2.ogg
   - fart3.ogg
   - fart4.ogg
   - fart5.ogg
5. Place all files in this directory (fart_system/html/sounds/)

## Want More or Fewer Sounds?

If you want to use a different number of sounds (e.g., 10 sounds instead of 5):

1. Update the `math.random(1, 5)` in `client.lua` to your number (e.g., `math.random(1, 10)`)
2. Add corresponding `<audio>` elements in `html/index.html` (e.g., fart6, fart7, etc.)
3. Add the sound files here with matching names (e.g., fart6.ogg, fart7.ogg, etc.)

## Recommended Pixabay Sounds

Search for terms like:
- "fart"
- "gas"
- "toot"
- "flatulence"

Pick sounds that are short (1-2 seconds) for best results!
