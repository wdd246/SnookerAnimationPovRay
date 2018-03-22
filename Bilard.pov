#include "colors.inc"
#include "textures.inc"

camera{
    location <10,15,10>
    look_at <0,0,0>
}  
light_source {
    <6, 10, 0>
    color White
    spotlight
    radius 20
    falloff 60
    tightness 1
    adaptive 1
    point_at <6, 5, 0>
  }
  light_source {
    <-6, 10, 0>
    color White
    spotlight
    radius 20
    falloff 60
    tightness 1
    adaptive 1
    point_at <-6, 5, 0>
  } 
    light_source {
    <0, 10, 0>
    color White
    spotlight
    radius 20
    falloff 60
    tightness 1
    adaptive 1
    point_at <0, 5, 0>
  }
background{
    color Black
}
plane{
    y,0 
    texture{Dark_Wood}
}
cone{
    <-6,10,0> 2,<-6,11,0> 1
    pigment{color Green} 
} 
cone{
    <6,10,0> 2,<6,11,0> 1
    pigment{color Green} 
}
cone{
    <0,10,0> 2,<0,11,0> 1
    pigment{color Green} 
}
difference{
    box{
        <-10,4,-5> <10,6,5>
        texture{Cherry_Wood}
    }
    box{
        <-9,5.5,-4> <9,7,4>
        texture{pigment{color DarkGreen}normal {
        wrinkles 1.0
      }}
    
    }
    cylinder{
        <-9,4.5,-4> <-9,8,-4> 0.5
        pigment{color Black} 
    }
    cylinder{
        <-9,4.5,4> <-9,8,4> 0.5
        pigment{color Black} 
    }
    cylinder{
        <9,4.5,4> <9,8,4> 0.5
        pigment{color Black} 
    }
     cylinder{
        <9,4.5,-4> <9,8,-4> 0.5
        pigment{color Black} 
    }
    cylinder{
        <0,4.5,-4> <0,8,-4> 0.5
        pigment{color Black} 
    }
    cylinder{
        <0,4.5,4> <0,8,4> 0.5
        pigment{color Black} 
    }
} 
box{
    <-9,0,-4> <-8,4,-3>
    texture{Cherry_Wood}
}
box{
    <9,0,4> <8,4,3>
    texture{Cherry_Wood}
}
box{
    <-9,0,4> <-8,4,3>
    texture{Cherry_Wood}
}
box{
    <9,0,-4> <8,4,-3>
    texture{Cherry_Wood}
} 
#declare kij = object{
cylinder{
        <7,5.5,0> <16,10,0> 0.1
         texture{White_Wood}
}  
}

#local zmiennax=-5; 
#local zmiennaz=-2;
#while(zmiennax<=-3.5)
    sphere{<zmiennax,5.83,zmiennaz>, 0.33 texture{pigment{color Red}} finish {diffuse 0.9 phong 1.0}}
    #local zmiennax=zmiennax+0.5;  
    #local zmiennaz=zmiennaz+0.5; 
#end 
#local zmiennax=-5; 
#local zmiennaz=2;
#while(zmiennax<=-3)
    sphere{<zmiennax,5.83,zmiennaz>, 0.33 texture{pigment{color Red}} finish {diffuse 0.9 phong 1.0}}
    #local zmiennax=zmiennax+0.5;  
    #local zmiennaz=zmiennaz-0.5; 
#end 
#local zmiennax=-5; 
#local zmiennaz=-1;
#while(zmiennax<=-4)
    sphere{<zmiennax,5.83,zmiennaz>, 0.33 texture{pigment{color Red}} finish {diffuse 0.9 phong 1.0}}
    #local zmiennax=zmiennax+0.5;  
    #local zmiennaz=zmiennaz+0.5; 
#end
#local zmiennax=-5; 
#local zmiennaz=1;
#while(zmiennax<=-4)
    sphere{<zmiennax,5.83,zmiennaz>, 0.33 texture{pigment{color Red}} finish {diffuse 0.9 phong 1.0}}
    #local zmiennax=zmiennax+0.5;  
    #local zmiennaz=zmiennaz-0.5; 
#end
#declare czerwona = object{
sphere{
    <-5,5.83,0>, 0.33 
    texture{pigment{color Red} finish {diffuse 0.9 phong 1.0}}
}
}
#declare biala = object{
sphere{
    <5,5.83,0>, 0.33 
    texture{pigment{color White} finish {diffuse 0.9 phong 1.0}}
}
}
czerwona
#if(clock>0.0)
  #object{ kij    translate <-2.66*(clock+0.0),0.33,0>    }

#if(clock>0.5)
  #object{ biala   translate <-5*(clock-0.5),0,0>    } 
#if(clock>2)
  #object{ czerwona   translate <-4.5*(clock-2),0,4.5*(clock-2)>    }
#end
#end
#end       