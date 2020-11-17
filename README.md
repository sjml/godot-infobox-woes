# Godot InfoPanel UI Test

Here are my efforts to make an informational box useful for an in-game pop-over tooltip. 

## Requirements:
1. Box remains at fixed width
2. Text can be arbitrarily long (within reason; not pasting the text of _Moby Dick_ in there)
3. InfoBox resizes itself to accommodate longer text
4. InfoBox has a colored background
5. Text is set away from edges of the box by margins.

1-3 are accomplished by putting the label inside a VBoxContainer. Alas, VBoxContainers cannot themselves be styled, so I put it inside of a PanelContainer to give the colored background, satisfying 4.

Number 5 is where I run into problems. I cannot figure out the logic of what margins are allowed to be set and which are fixed. If I try to change the margins on the VBoxContainer, they snap back. At one point I had the margins set up properly but they went back to zero once the text changed. (I can't reproduce this at the moment.)

![Setup](https://github.com/sjml/godot-infobox-woes/raw/master/screenshot.png) 
