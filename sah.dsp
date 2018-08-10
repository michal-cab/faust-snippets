import("stdfaust.lib");
import("basics.lib");

process = harmOsc :>_; 

harmOsc = par(i,10,os.osc(i*sah*100));
sah = no.lfnoise0(500) : sAndH(trig);
trig = button("hold");
