## Donkey Kong Teaches Consent

Once this game is released i'll chuck all the raw assets in a Mega folder for download.

This game is the equlivent of a  keynote presentation made in Game Maker 2, I learnt GML while making this game so I have probably missed many best practices. Some notes about the structure...

### Rooms

#### Calibration
This room has a spaghetti of objects that each change a global variable that contains the phase of the game (global.calibrationstate)

obj_000_meta will persist throughout the whole game, sets up the globals.

obj_000_debug is my debug object, needs the global.debug to be set in the obj_000_meta object.

This room also contains the title screen which is spawned from obj_transition

#### Chaper1 (Gameplay)
Gameplay is controlled by obj_dk_main until this object is complete, it will unload and load obj_dk_frenzy which will handle the frenzy sequence. These two objects puppet a whole bunch of objects.
#### Credits
Not too much to say about this room