import ("stdfaust.lib");

process = os.triangle(carFreq) : +~ (de.fdelay(65536,delay) :
fi.resonlp(fr,res,gain) * fedGain) : _ * gain
with {
   carFreq = hslider("[1]osc freq",200,1,1000,0.01) : si.smoo;
   fr = hslider("[2]filter freq",200,100,5000,0.01) : si.smoo;
   res = hslider("[3]resonance",1,1,5,0.01) : si.smoo;
   delay = hslider("[4]delay",1,1,65535,1) : si.smoo;
   fedGain = hslider("[5]feedback gain",0,0,1,0.01) : si.smoo;
   gain = hslider("[6]main gain",0.1,0,1,0.01) : si.smoo;
   };

  
