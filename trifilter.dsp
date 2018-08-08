import("stdfaust.lib");

process = osc : filter : gain;

osc = os.triangle(carrier)
with {
   carrier = hslider("[1]carrier freq",100,50,2000,0.01) : si.smoo;
    };

gain = * (hslider("[5]gain",0,0,1,0.01): si.smoo); 

filter = _ <: fi.resonbp(fr+(ratio*fr),res,gain),
              fi.resonbp(fr+(ratio * fr * (-1)),res,gain),
              fi.resonbp(fr,res,gain) :> _ 
with {
   fr = hslider("[1]filter freq",200,100,5000,0.01) : si.smoo;
   ratio = hslider("[4]ratio",0,0,1,0.01) : si.smoo;
   res = hslider("[2]resonance",1,1,8,0.01) : si.smoo;
   gain = 1; 
   };



