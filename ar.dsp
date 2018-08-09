import("stdfaust.lib");

process = pattern1,pattern2 :>_; 
pattern1  = en.ar(0.01,0.1,gate) * no.noise * 0.1;
pattern2  = en.ar(0.01,0.05,gate1) * no.pink_noise;
gate = no.lfnoise0(5);
gate1 = no.lfnoise0(7);
