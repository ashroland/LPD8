# LPD8
 Max 8 Abstractions for the Akai LPD-8 MIDI controller


## How to Install
Clone this repository and drop the LPD8 folder into your MAXPATH. A good place on Windows is `C:\Users\username\Documents\Max 8\Library`.

By default, the LPD-8 feature map has namespace collisions. In rudimentary trials while developing these abstractions, knob twists would trigger pad hits occasionally. We can solve this. 

Download and install the [official LPD8 editing software](https://www.akaipro.com/lpd8) for your system. 

Use the LPD8 editing software to set program maps. There are two corrected maps in the Program Maps folder, one is for cases where you'd like the pads to work as on/off buttons (`CC Remap - Toggle Pads.lpd8`) and the other is for the traditional velocity-sensitive pad mode (`CC Remap - Momentary Pads.lpd8`). Load either file and use the 'set' button on a program bank to write it to memory. 
  
  
  
## How to Use
The LPD-8 must be plugged in to your computer to use this library. :P

The LPD-8 must be in CC mode to use this library.

This library provides simple abstractions for the knobs and pads of the Akai LPD-8. Say, for instance, that you wanted to use the output of knob 8 (K8). For that, you can use the outlet of the LP8.knobs.K8 object. Likewise, the LPD8.pads.P3 object will give you outlets for the status and velocity of Pad 3.

Higher on the order of abstraction are the LPD8.knobs and LPD8.pads objects. They output lists of all knobs or pads.

Higher yet, the LPD8 object. It has three outlets: the left provides a list of the statuses and velocities of the pads, the middle outputs a list of the knob values, and the right is a conjoined list of the pads and knobs. 
  
  
  
## Troubleshooting
Sleeping your computer may cause Max to lose track of the MIDI connection. Close and relaunch Max and the connection should sort itself out. 
  
  
  
## To-Do
Detect and implement program changes.

Only tested on Windows -- YMMV
  
  
  
## Trans Rights
Trans rights are human rights <3