// Zrakotron arduino odjeljak

//univ. const.
uspace=2;
uheight=2;

//uno board
uno_w=53.25;
uno_ll=65.66;
uno_lr=68.56;

//pins
pin1=[50.95,13.6,0];    //uz power - ne koristiti za iteaduino
pin2=[2.82,15.11,0];    //uz usb
pin3=[46.05,66,0];      // uz procesor
pin4=[18.05,66,0];
pinr=3/2;
pinh=6;
//pin meta
outr=pinr+1;
botr=pinr+3;

screwholes();

module screwholes(){
    union(){
        translate(pin2)screwhole();
        translate(pin3)screwhole();
        translate(pin4)screwhole();
    }
}

module screwhole(){
    difference(){
        cylinder(pinh,botr,outr,false,$fn=32);
        translate([0,0,-0.5])cylinder(pinh+1,pinr,pinr,false,$fn=32);
    }
}