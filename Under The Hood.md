# Under the Hood


## The Theory
Rather than rely on Max to maintain MIDI mappings, this library watches all incoming MIDI events and parses for the LPD8. By being specific about which MIDI channel the LPD8 will be broadcasting on, and by setting a standard map for all features of the controller, we can make assumptions about the kind of messages that are coming in and how to handle them.

## The LPD8 Editing Software
We use Akai's official tool to make thoughtful changes to the firmware. 


Pads that are in toggle mode are mapped as follows:

        PAD 1 - CC 1
        PAD 2 - CC 2
        ...
        PAD N - CC N

And pads that are in momentary, aka velocity, mode are mapped higher:

        PAD 1 - CC 17
        PAD 2 - CC 18
        ...
        PAD N - CC 16+N

This lets us define in Max that, for instance, messages coming in on Channel 8, from CC 19, should be handled as a Velocity event, and routed accordingly.

Knobs are mapped in the middle, from CC 9 - 16. Because their behavior doesn't change, we don't need a second layer to handle other cases.

## The Max Side of Things
Rather than make a monolithic patch to handle all controller events, and to keep the amount of outlets on any one object from exceeding a "handful" or even a "couple," we start at each individual feature of the controller and work our way out. This makes for a lot of duplicate code, but it is very concise and legible duplicate code, which is a tradeoff that I'm willing to accept in this instance. 

Each knob or pad starts with a loadbang that tells a midiin object to look for the LPD8. We unpack incoming midi events and double-check that the controller is communicating on channel 8. 

Pad messages are checked by their CC assignment. If the message originates from the lower range of pads, send a toggle. Otherwise, we can assume it's a momentary event, and send a bang and the velocity of the pad hit.

Knob messages are routed straight out.

Higher-level abstractions pack all of the outputs of the lower-level features into lists.