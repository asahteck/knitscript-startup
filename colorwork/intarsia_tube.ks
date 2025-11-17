rect_length = 20;
height = 10;
width = 50;
borders = 15;

main_carrier = c5;

color_carrier = c3;

//advice on picking carriers
//if intarsia on the front bed, the color carrier should be in front of the main carrier
//or else everything will tangle

//new strat we're doing a c-shape
// need to kick carriers out of the way
import cast_ons;

def tube_knit():{
    in reverse direction:{
        knit Front_Loops;
    }
    in reverse direction:{
        knit Back_Loops;
    }
}

with Carrier as main_carrier:{
    cast_ons.alt_tuck_cast_on(width, is_front=True);
    cast_ons.alt_tuck_cast_on(width, is_front=False);
    for _ in range(10):{
        tube_knit();
    }
}

// first insertion
with Carrier as [main_carrier]:{
    in Leftward direction:{
        knit Front_Loops[width-borders:width];
    }
}

with Carrier as [color_carrier]:{
    in Leftward direction:{
        tuck Front_Loops[width-borders];
        knit Front_Loops[borders:width-borders];
        tuck Front_Loops[borders-1];
    }
}
releasehook;

for _ in range(height):{
    with Carrier as [main_carrier]:{
        in Rightward direction:{
            knit Front_Loops[width-borders:width];
        }
        in Leftward direction:{
            knit Back_Loops;
        }
        //add miss statements
        in Rightward direction:{
            knit Front_Loops[0:borders];
        }
    }
    with Carrier as [color_carrier]:{
        in Rightward direction:{
            tuck Front_Loops[width-borders];
            knit Front_Loops[borders:width-borders];
            tuck Front_Loops[borders-1];
        }
    }
    with Carrier as [main_carrier]:{
        in Leftward direction:{
            knit Front_Loops[0:borders];
        }
        in Rightward direction:{
            knit Back_Loops;
        }
        in Leftward direction:{
            knit Front_Loops[width-borders:width];
        }
    }
    with Carrier as [color_carrier]:{
        in Leftward direction:{
            tuck Front_Loops[width-borders];
            knit Front_Loops[borders:width-borders];
            tuck Front_Loops[borders-1];
        }
    }
}

//finishing
with Carrier as [main_carrier]:{
    in Leftward direction:{
        knit Front_Loops[0:width-borders];
    }
    in Rightward direction:{
        knit Back_Loops;
    }
    cut color_carrier;
    for _ in range(height):{
        tube_knit();
    }
}
