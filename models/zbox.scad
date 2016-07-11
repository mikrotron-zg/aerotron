// zrakotron floorplan

//univ. const.
uspace=2;
uheight=2;

//mq slot
mq_l=41;
mq_w=17.3;
mq_off=20;
mq_hole=[7.53,8.34,0];
mq_holder_d=2;
mq_holder_l=20;
//meta
mq_ext_l=mq_l+2*uspace;
mq_ext_w=mq_w+2*uspace+2*mq_holder_d;
mq_holder_h=mq_off+3.2;

//mg811
mg_l=41.9;
mg_w=32;
mg_hoffset=3.5;
mg_h1=[mg_hoffset,mg_hoffset,0];
mg_h2=[mg_l-mg_hoffset,mg_hoffset,0];
mg_h3=[mg_hoffset,mg_w-mg_hoffset,0];
mg_h4=[mg_l-mg_hoffset,mg_w-mg_hoffset,0];
mg_space=2;
//mg811 meta
mg_ext_l=mg_l+2*mg_space;
mg_ext_w=mg_w+2*mg_space;

//esp8266
esp_l=24.8;
esp_w=14.35;
esp_holder_d=2;
esp_holder_l=esp_l-5;
esp_holder_h=6;
//esp meta
esp_ext_l=esp_l+2*uspace;
esp_ext_w=esp_w+2*esp_holder_d+2*uspace;

//power splitter
ps_l=35.5;
ps_w=21.1;
ps_holder_h=6;
ps_holder_d=2;
ps_holder_l=20;
ps_space=2;
//ps meta
ps_ext_l=ps_l+2*ps_space;
ps_ext_w=ps_w+2*ps_holder_d+2*ps_space;

//step-up section
su_l=43.8;
su_w=21.5;
su_space=2;
su_h1=[6.66,su_w-2.45,0];
su_h2=[su_l-6.66,2.45,0];
//stepup meta
su_ext_l=su_l+2*su_space;
su_ext_w=su_w+2*su_space;

//uno board
uno_w=54.05;
uno_ll=65.66;
uno_lr=68.56;
uno_tspace=2;
uno_bspace=3;
uno_lspace=2;
uno_rspace=4;
//board meta
uno_ext_w=uno_w+uno_lspace+uno_rspace;
uno_ext_l=uno_lr+uno_tspace+uno_bspace;
//pins
pin1=[50.95,13.6,0];    //uz power - ne koristiti za iteaduino
pin2=[2.82,15.11,0];    //uz usb
pin3=[46.05,66,0];      // uz procesor
pin4=[18.05,66,0];
pinr=3.1/2;
pinh=6;
//pin meta
outr=pinr+1;
botr=pinr+3;

//shinyei dust sensor
shin_l=59;
shin_w=44.7;
shin_h=19.5;
shin_cable_d=5.35;
shin_cable_l=15;
shin_cable_h=4.8;
shin_cable_space=5;
shin_hole=[27.2,40.64,0];
//shinyei meta
shinyei_ext_l=2*uspace+shin_l;
shinyei_ext_w=2*uspace+shin_w;

//dht11
dht_l=26.5;
dht_w=22;
dht_h1=[6.5,3,0];
dht_h2=[6.5,19,0];
//dht meta
dht_ext_l=dht_l+2*uspace;
dht_ext_w=dht_w+2*uspace;

//box
box_h=50;
pylon_l=6+2*botr;
pylon_w=2*botr;
//meta
box_l=uno_ext_w+shinyei_ext_w+2*mq_ext_w;
box_w=shinyei_ext_l+mg_ext_w+dht_ext_w;

//floorplan meta
pylon_v=[uno_ext_w/2-pylon_l/2,uno_ext_l,0];
dht_v=[-dht_ext_l,shinyei_ext_l+mg_ext_w,0];
esp_v=[0,uno_ext_l+pylon_w,0];
mg_v=[-mg_ext_l,shinyei_ext_l,0];
shinyei_v=[-shinyei_ext_w,0,0];
ps_v=[uno_ext_w-ps_ext_l,uno_ext_l+pylon_w,0];
mq_v1=[uno_ext_w+mq_ext_w,su_ext_w,0];
mq_v2=[uno_ext_w,2*mq_ext_l+su_ext_w,0];
mq_v3=[uno_ext_w+2*mq_ext_w,su_ext_w,0];
mq_v4=[uno_ext_w+mq_ext_w,2*mq_ext_l+su_ext_w,0];
su_v=[uno_ext_w,0,0];

//wall meta
p1=[0.5-pylon_l/2,0.5-pylon_l/2,0];
p2=[box_l-0.5+pylon_l/2,0.5-pylon_l/2,0];
p3=[box_l-0.5+pylon_l/2,box_w-0.5+pylon_l/2,0];
p4=[0.5-pylon_l/2,box_w-0.5+pylon_l/2,0];
p5=[box_l/2,0.5-pylon_l/2,0];
p6=[box_l/2,box_w-0.5+pylon_l/2,0];
p7=[0.5-pylon_l/2,box_w/2,0];
p8=[box_l-0.5+pylon_l/2,box_w/2,0];

w1=[box_l/4-pylon_l/4,0.5-pylon_l/2,0];
w2=[3*box_l/4+pylon_l/4,0.5-pylon_l/2,0];
w3=[box_l/4-pylon_l/4,box_w-0.5+pylon_l/2,0];
w4=[3*box_l/4+pylon_l/4,box_w-0.5+pylon_l/2,0];
w5=[0.5-pylon_l/2,box_w/4-pylon_l/4,0];
w6=[0.5-pylon_l/2,3*box_w/4+pylon_l/4,0];

w10=[box_l/2,0.5-pylon_l/2,0];
w20=[box_l/2,box_w-0.5+pylon_l/2,0];
w30=[box_l-0.5+pylon_l/2,box_w/2,0];
w40=[0.5-pylon_l/2,box_w/2,0];

//battery
bat_l=66.8;
bat_w=37.1;
bat_h=18.63;

//charger
ch_a=35.4;
ch_usb_l=8;
ch_usb_h=4;
ch_hole_r=2.2/2;
ch_offset=5;
ch_h_off=2.75;
ch_plug_off=6.62;

//battery box
wall_d=3;
binder=4.5;
plughole_l=6;
plughole_w=8;
//box meta
flap_w=pinr+2;
flap_l=flap_w*2;
wall_h=bat_h+binder;
batbox_l=bat_l+2*uspace+plughole_l+ch_a;
batbox_w=bat_w;
batbox_ext_l=batbox_l+2*wall_d;
batbox_ext_w=batbox_w+2*wall_d;

//zbox lid
box_ext_l=box_l+pylon_l+2;
box_ext_w=box_w+pylon_l+2;

batbox_lid();

module zbox_lid(){
    difference(){
        union(){
            cube([box_ext_l,box_ext_w,uheight],false);
            translate([1.5,1.5,0])cylinder(uheight+1,botr,botr,false,$fn=48);
            translate([box_ext_l-1.5,1.5,0])cylinder(uheight+1,botr,botr,false,$fn=48);
            translate([1.5,box_ext_w-1.5,0])cylinder(uheight+1,botr,botr,false,$fn=48);
            translate([box_ext_l-1.5,box_ext_w-1.5,0])cylinder(uheight+1,botr,botr,false,$fn=48);
            translate([shinyei_ext_w+uno_ext_w/2+pylon_l/2+1,uno_ext_l+pylon_l-2,0])cylinder(uheight+1,botr,botr,false,$fn=48);
        }
        translate([1.5,1.5,-0.5])cylinder(2*uheight+1,pinr,pinr,false,$fn=48);
        translate([box_ext_l-1.5,1.5,-0.5])cylinder(2*uheight+1,pinr,pinr,false,$fn=48);
        translate([1.5,box_ext_w-1.5,-0.5])cylinder(2*uheight+1,pinr,pinr,false,$fn=48);
        translate([box_ext_l-1.5,box_ext_w-1.5,-0.5])cylinder(2*uheight+1,pinr,pinr,false,$fn=48);
        translate([shinyei_ext_w+uno_ext_w/2+pylon_l/2+1,uno_ext_l+pylon_l-2,-0.5])cylinder(2*uheight+1,pinr,pinr,false,$fn=48);
        translate([50,20,-0.5]){
            translate([bat_l+uspace,ch_plug_off,0])cube([plughole_l,plughole_w,uheight+1],false);
            translate([0.5,-wall_d-flap_w,0])cylinder(2*uheight+1,pinr,pinr,false,$fn=48);
            translate([batbox_ext_l-flap_l+0.5,-wall_d-flap_w,0])cylinder(2*uheight+1,pinr,pinr,false,$fn=48);
            translate([0.5,batbox_ext_w+0.5,0])cylinder(2*uheight+1,pinr,pinr,false,$fn=48);
            translate([batbox_ext_l-flap_l+0.5,batbox_ext_w+0.5,0])cylinder(2*uheight+1,pinr,pinr,false,$fn=48);
        }
        translate([35,10,-0.5])rotate([0,0,90])air_bars(120,25,uheight+1,35);
    }
}

module charger(){
    union(){
        translate([ch_h_off,ch_h_off,0])charger_screwhole();
        translate([ch_a-ch_h_off,ch_h_off,0])charger_screwhole();
        translate([ch_h_off,ch_a-ch_h_off,0])charger_screwhole();
        translate([ch_a-ch_h_off,ch_a-ch_h_off,0])charger_screwhole();
    }
}

module charger_screwhole(){
    difference(){
        cylinder(ch_offset,ch_hole_r+2,ch_hole_r+1,false,$fn=48);
        translate([0,0,-0.5])cylinder(ch_offset+1,ch_hole_r,ch_hole_r,false,$fn=48);
    }
}

module battery(){
    translate([bat_l,0,0])cube([uspace,bat_w,bat_h/2],false);
}

module flap(){
    difference(){
        union(){
            translate([0,-flap_w,0])cube([flap_l,flap_w+.5,2*uheight],false);
            translate([flap_l/2,-flap_w,0])cylinder(2*uheight,pinr+2,pinr+2,false,$fn=48);
        }
        translate([flap_l/2,-flap_w,-0.5])cylinder(2*uheight+1,pinr,pinr,false,$fn=48);
    }
}

module batbox_lid(){
    union(){
        cube([batbox_ext_l,batbox_ext_w,uheight],false);
        translate([wall_d,batbox_ext_w/2-batbox_ext_w/4,uheight-0.5])cube([wall_d,batbox_ext_w/2,binder],false);
        translate([batbox_ext_l-2*wall_d,batbox_ext_w/2-batbox_ext_w/4,uheight-0.5])cube([wall_d,batbox_ext_w/2,binder],false);
        translate([batbox_ext_l/2-batbox_ext_l/4,wall_d,uheight-0.5])cube([batbox_ext_l/2,wall_d,binder],false);
        translate([batbox_ext_l/2-batbox_ext_l/4,batbox_ext_w-2*wall_d,uheight-0.5])cube([batbox_ext_l/2,wall_d,binder],false);
    }
}

module batbox(){
    union(){
        battery();
        translate([bat_l+2*uspace+plughole_l,batbox_w/2-ch_a/2,0])charger();
        difference(){
            translate([-wall_d,-wall_d,-uheight])union(){
                cube([batbox_ext_l,batbox_ext_w,uheight],false);
                flap();
                translate([batbox_ext_l-flap_l,0,0])flap();
                translate([flap_l,batbox_ext_w,0])rotate([0,0,180])flap();
                translate([batbox_ext_l,batbox_ext_w,0])rotate([0,0,180])flap();
            }
            translate([bat_l+uspace,ch_plug_off,-uheight-0.5])cube([plughole_l,plughole_w,uheight+1],false);
        }
        translate([-wall_d,-wall_d,0])cube([wall_d,batbox_ext_w,wall_h],false);
        translate([batbox_l,-wall_d,0])difference(){
            cube([wall_d,batbox_ext_w,wall_h],false);
            translate([-5,batbox_ext_w/2-ch_usb_l/2-1,ch_offset+0.5])cube([20,ch_usb_l+2,ch_usb_h+2],false);
            translate([1,batbox_ext_w/2-8,ch_offset+0.5-2])cube([20,16,ch_usb_h+2+4],false);
        }
        translate([-wall_d,-wall_d,0])cube([batbox_ext_l,wall_d,wall_h],false);
        translate([-wall_d,batbox_w,0])cube([batbox_ext_l,wall_d,wall_h],false);
    }
}

module zbox(){
    union(){
        floorplan();
        boxwall();
    }
}

module boxwall(){
    difference(){
        union(){
            //pylons
            translate(p1)rotate([0,0,0])edge_pylon(1);
            translate(p2)rotate([0,0,90])edge_pylon(1);
            translate(p3)rotate([0,0,180])edge_pylon(1);
            translate(p4)rotate([0,0,-90])edge_pylon(1);
            //translate(p5)rotate([0,0,0])edge_pylon(0);
            //translate(p6)rotate([0,0,180])edge_pylon(0);
            //translate(p7)rotate([0,0,-90])edge_pylon(0);
            //translate(p8)rotate([0,0,90])edge_pylon(0);
            //walls
//            translate(w1)wallside(box_l/2-pylon_l/2+1);
//            translate(w2)wallside(box_l/2-pylon_l/2+1);
//            translate(w3)rotate([0,0,180])wallside(box_l/2-pylon_l/2+1);
//            translate(w4)rotate([0,0,180])wallside(box_l/2-pylon_l/2+1);
//            translate(w5)rotate([0,0,-90])wallside(box_w/2-pylon_l/2+1);
//            translate(w6)rotate([0,0,-90])wallside(box_w/2-pylon_l/2+1);
//            translate([box_l-0.5+pylon_l/2,box_w/4-pylon_l/4,0])rotate([0,0,90])wallside(box_w/2-pylon_l/2+1);
//            translate([box_l-0.5+pylon_l/2,3*box_w/4+pylon_l/4,0])rotate([0,0,90])wallside(box_w/2-pylon_l/2+1);
            translate(w10)wallside(box_l+1);
            translate(w20)rotate([0,0,180])wallside(box_l+1);
            translate(w30)rotate([0,0,90])wallside(box_w+1);
            translate(w40)rotate([0,0,-90])wallside(box_w+1);
        }
        translate([shinyei_ext_w,0,0]){
            //translate(shinyei_v)shinyei_airholes();
            arduino_usb();
        }
    }
}

module floorplan(){
    translate([shinyei_ext_w,0,0])difference(){
        union(){
            translate([-shinyei_ext_w,0,0])cube([box_l,box_w,uheight],false);
            arduino();
            translate(pylon_v)inner_pylon();
            translate(dht_v)rotate([0,0,0])dht11();
            translate(esp_v)esp8266();
            translate(mg_v)rotate([0,0,0])mg811();
            translate(shinyei_v)shinyei();
            translate(ps_v)rotate([0,0,0])power_splitter();
            translate(su_v)stepup();
            translate(mq_v1)rotate([0,0,90])mqslot();
            translate(mq_v2)rotate([0,0,-90])mqslot();
            translate(mq_v3)rotate([0,0,90])mqslot();
            translate(mq_v4)rotate([0,0,-90])mqslot();
        }
        translate(mq_v1)rotate([0,0,90])mqslot_airholes();
        translate(mq_v2)rotate([0,0,-90])mqslot_airholes();
        translate(mq_v3)rotate([0,0,90])mqslot_airholes();
        translate(mq_v4)rotate([0,0,-90])mqslot_airholes();
        translate(su_v)stepup_airholes();
    }
}

module dht11(){
    translate([uspace,uspace,uheight])union(){
        translate([-uspace,-uspace,-uheight])cube([dht_ext_l,dht_ext_w,uheight],false);
        translate(dht_h1)screwhole();
        translate(dht_h2)screwhole();
    }
}

module mqslot(){
    translate([uspace,uspace+mq_holder_d,uheight])union(){
        translate([-uspace,-uspace-mq_holder_d,-uheight]){
            cube([mq_ext_l,mq_ext_w,uheight],false);
        }
        translate([0,-mq_holder_d,0])cube([mq_holder_l,mq_holder_d,mq_holder_h],false);
        translate([0,mq_w,0])cube([mq_holder_l,mq_holder_d,mq_holder_h],false);
        translate([0,0,0])cube([mq_holder_d,mq_w,mq_holder_h/1.5],false);
        translate(mq_hole)difference(){
            cylinder(mq_off,botr,outr,false,$fn=32);
            translate([0,0,-0.5])cylinder(mq_off+1,pinr,pinr,false,$fn=32);
        }
    }
}

module mqslot_airholes(){
    for(i=[0,1,2,3,4,5]){
        translate([uspace+15+4.5*i,uspace+mq_holder_d,-0.5])cube([2,mq_w,uheight+1],false);
    }
}

module shinyei(){
    translate([0,shinyei_ext_l,0])rotate([0,0,-90])translate([uspace,uspace,uheight])union(){
        translate([-uspace,-uspace,-uheight])cube([shinyei_ext_l,shinyei_ext_w,uheight],false);
        corner_holder(3,pinh,2,4,0);
        translate([shin_l,0,0])corner_holder(3,pinh,2,4,1);
        translate([shin_l,shin_w,0])corner_holder(3,pinh,2,4,2);
        translate([0,shin_w,0])corner_holder(3,pinh,2,4,3);
        translate(shin_hole)screwhole();
    }
}

module shinyei_airholes(){
    air_l=8*2+3*2.5;
    translate([0,0,box_h/2-15])for(i=[0,1,2,3,4,5,6,7]){
        translate([-50,8+4.5*i,-0.5])cube([50,2,30],false);
    }
}

module corner_holder(cha,chh,chd,cho,rot){
    points=[[cha,cha,0],[-chd,cha,0],[-chd,cha+cho,0],[cha+cho,cha+cho,0],[cha+cho,-chd,0],[cha,-chd,0],[cha,cha,chh],[-chd,cha,chh],[cha,-chd,chh]];
    tris=[[0,1,6],[6,1,7],[1,2,7],[2,6,7],[2,3,6],[2,1,0],[3,2,0],[6,5,0],[6,8,5],[4,5,8],[0,5,4],[4,3,0],[4,8,6],[4,6,3]];
    rotate([0,0,90*rot])union(){
        cube([cha,cha,chh],false);
        translate([0,-chd,0])cube([cha,chd,chh+2],false);
        translate([-chd,-chd,0])cube([chd,cha+chd,chh+2],false);
        polyhedron(points,tris,10);
    }
}

module mg811(){
    translate([mg_space,mg_space,uheight])union(){
        translate([-mg_space,-mg_space,-uheight])cube([mg_l+2*mg_space,mg_w+2*mg_space,uheight],false);
        translate(mg_h1)screwhole();
        translate(mg_h2)screwhole();
        translate(mg_h3)screwhole();
        translate(mg_h4)screwhole();
    } 
}

module stepup(){
    translate([su_space,su_space,uheight])union(){
        translate([-su_space,-su_space,-uheight])cube([su_ext_l,su_ext_w,uheight],false);
        translate(su_h1)screwhole();
        translate(su_h2)screwhole();
    } 
}

module stepup_airholes(){
    air_l=4*2+3*2.5;
    translate([su_ext_l/2-air_l/2,0,0])for(i=[0,1,2,3]){
        translate([4.5*i,uspace,-0.5])cube([2,su_w,uheight+1],false);
    }
}

module arduino(){
    translate([uno_lspace,uno_bspace,uheight])union(){
        translate([-uno_lspace,-uno_bspace,-uheight])cube([uno_ext_w,uno_ext_l,uheight],false);
        screwholes();
        translate([uno_w,0,0])corner_holder(3,pinh,2,4,1);
    }
}

module arduino_usb(){
    translate([8.91+uno_lspace-0.5,-25,8.6-0.5])cube([12+2,50,11+2],false);
}

module esp8266(){
    translate([esp_ext_w,0,0])rotate([0,0,90])translate([uspace,uspace,uheight])union(){
        translate([-uspace,-uspace,-uheight])cube([esp_l+2*uspace,esp_w+2*esp_holder_d+2*uspace,uheight],false);
        translate([esp_l/2-esp_holder_l/2,0,0]){
            cube([esp_holder_l,esp_holder_d,esp_holder_h],false);
            translate([0,esp_w+esp_holder_d,0])cube([esp_holder_l,esp_holder_d,esp_holder_h],false);
        }
    }
}

module power_splitter(){
    translate([ps_space,ps_space,uheight])union(){
        translate([-ps_space,-ps_space,-uheight])cube([ps_ext_l,ps_ext_w,uheight],false);
        translate([ps_l/2-ps_holder_l/2,0,0]){
            cube([ps_holder_l,ps_holder_d,ps_holder_h],false);
            translate([0,ps_w+ps_holder_d,0])cube([ps_holder_l,ps_holder_d,ps_holder_h],false);
        }
    }
}

module screwholes(){
    union(){
        //translate(pin1)screwhole();
        translate(pin2)screwhole();
        translate(pin3)screwhole();
        translate(pin4)screwhole();
    }
}

module inner_pylon(){
    translate([pylon_l/2,pylon_w/2,uheight])union(){
        translate([-pylon_l/2,-pylon_w/2,-uheight])cube([pylon_l,pylon_w,uheight],false);
        difference(){
            union(){
                cylinder(box_h,botr,botr,false,$fn=48);
                translate([-botr-3,-1.5,0])cube([2*botr+6,3,box_h],false);
            }
            translate([0,0,-0.5])cylinder(box_h+1,pinr,pinr,false,$fn=48);
        }
    }
}

module edge_pylon(type){
    translate([0,0,uheight])union(){
        if(type==0)translate([-pylon_l/2,-1.5,-uheight])cube([pylon_l,pylon_l/2+1.5,uheight],false);
        if(type==1)translate([-1.5,-1.5,-uheight])cube([pylon_l/2+1.5,pylon_l/2+1.5,uheight],false);
        translate([0,0,-uheight])cylinder(uheight,botr,botr,false,$fn=48);
        difference(){
            union(){
                cylinder(box_h,botr,botr,false,$fn=48);
                if(type==0)translate([-botr-3,-1.5,0])cube([2*botr+6,3,box_h],false);
                if(type==1){
                    translate([-1.5,0,0])cube([3,botr+3,box_h],false);
                    translate([0,-1.5,0])cube([botr+3,3,box_h],false);
                }
            }
            translate([0,0,-0.5])cylinder(box_h+1,pinr,pinr,false,$fn=48);
        }
    }
}

module wallside(length){
    translate([0,0,uheight])union(){
        translate([-length/2,-1.5,-uheight])cube([length,pylon_l/2+1.5,uheight],false);
        translate([-length/2,-1.5,0])cube([length,3,box_h],false);
    }
}

module screwhole(){
    difference(){
        cylinder(pinh,botr,outr,false,$fn=32);
        translate([0,0,-0.5])cylinder(pinh+1,pinr-0.5,pinr+0.25,false,$fn=32);
    }
}

module screw_rings(){
    for(i=[0,1,2,3]){
        for(j=[0,1,2,3]){
            translate([i*2*(mq_hole_radius+uspace+1),j*2*(mq_hole_radius+uspace+1),0])difference(){
                cylinder(uheight,mq_hole_radius+uspace,mq_hole_radius+uspace,false,$fn=32);
                cylinder(uheight*3,mq_hole_radius,mq_hole_radius,true,$fn=32);
            }
        }
    }
}

module air_bars(l,w,h,n){
    barl=l/(2*n-1);
    for(i=[0:1:n-1]){
        translate([i*(l-barl)/(n-1),0,0])cube([barl,w,h],false);
    }
}