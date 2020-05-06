# LPD8
 Max 8 Abstractions for the Akai LPD-8 MIDI controller


## Use Case
So you have a fancy new MIDI controller and you're interested in interfacing it with Max 8 for your decade-defining, genre-shattering noise and spoken word performance art, but when you try to map its controls, you discover that it's missing some features. The pads aren't mappable by default in pad mode, and they collide with knobs in CC mode. Worse yet, the pads can't be configured as toggles! **We can solve this.**


## How to Install
Clone this repository and drop the LPD8 folder into your MAXPATH. A good place on Windows is `C:\Users\username\Documents\Max 8\Library`.

Download and install the [official LPD8 editing software](https://www.akaipro.com/lpd8) for your system. 

Use the LPD8 editing software to set program maps. I have provided two corrected maps in the `Program Maps` directory. One is for cases where you'd like the pads to work as on/off buttons (`CC Remap - Toggle Pads.lpd8`) and the other is for the traditional velocity-sensitive pad mode (`CC Remap - Momentary Pads.lpd8`). Load either file and use the 'set' button on a program bank to write it to memory. Or, assign one mapping to one bank, and the second mapping to another, so you can have both velocity pads AND toggle pads on the fly. 
    

## Prerequisites
The LPD-8 must be plugged in to your computer to use this library. :P

The LPD-8 must be in CC mode to use this library. Press the CC button in the lower-left of the controller.


## How to Use
This library provides simple abstractions for the knobs and pads of the Akai LPD-8. Say, for instance, that you wanted to use the output of knob 8 (K8). For that, you can use the outlet of the LPD8.knobs.K8 object. Likewise, the LPD8.pads.P3 object will give you outlets for the status and velocity of Pad 3.

Higher-level abstractions are provided for the entire knob bank and pad bank (`LPD8.knobs` and `LPD8.pads`), as well as statuses for the entire controller itself (`LPD8`). 
  
  
## Known Issues
Sleeping your computer may cause Max to lose track of the MIDI connection. Close and relaunch Max and the connection should sort itself out. 
  
I've only tested this on Windows 10 -- your mileage may vary.   
  
  
## Trans Rights
Trans rights are human rights <3