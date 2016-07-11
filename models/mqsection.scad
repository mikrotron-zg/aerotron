// Zrakotron MQ odjeljak

//univ. const.
uspace=2;
uheight=2;

//mq holder section
//general shape
mq_eff_w=20;
mq_space=17.3;
mq_divide=5;
//holder bar dimensions
mq_holder_space=6.4;
mq_holder_h=3.5;
mq_holder_d=2;
//holes
mq_offset=1.5;
mq_hole_radius=2;
mq_offset_radius=mq_hole_radius+1.5;
//meta
section_l=4*mq_space+3*mq_divide;
section_w=mq_eff_w;
sensorspace=mq_space+mq_divide;

mq_section();

module mq_section(){
    difference(){
        union(){
            // main plate
            cube([section_l,section_w,uheight],false);
            // holders
            for(i=[0,1,2,3]){
                translate([i*sensorspace,0,uheight])cube([mq_space,mq_holder_d,mq_holder_h],false);
            }
            // screw offsets
            for(i=[0,1,2,3]){
                translate([mq_space/2+i*sensorspace,section_w/2,0])cylinder(uheight+mq_offset,mq_offset_radius,mq_offset_radius,false,$fn=30);
            }
            // edge
            translate([0,0,uheight/2])cylinder(uheight,uspace,uspace,true,$fn=30);
            translate([section_l,0,uheight/2])cylinder(uheight,uspace,uspace,true,$fn=30);
            translate([section_l,section_w,uheight/2])cylinder(uheight,uspace,uspace,true,$fn=30);
            translate([0,section_w,uheight/2])cylinder(uheight,uspace,uspace,true,$fn=30);
            translate([0,-uspace,0])cube([section_l,uspace,uheight],false);
            translate([0,section_w,0])cube([section_l,uspace,uheight],false);
            translate([-uspace,0,0])cube([uspace,section_w,uheight],false);
            translate([section_l,0,0])cube([uspace,section_w,uheight],false);
        }
        // mounting holes
        for(i=[0,1,2,3]){
            translate([mq_space/2+i*sensorspace,section_w/2,uheight/2])cylinder(10*uheight,mq_hole_radius,mq_hole_radius,true,$fn=30);
        }
    }
}