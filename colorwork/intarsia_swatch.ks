rect_length = 20;
height = 10;
width = 50;
borders = int((width - rect_length)/2);

// a rectangle of intarsia knitting with three carriers
// specify with the three variables above

main_carrier = c3;
supp_carrier = c4;

color_carrier = c5;

import cast_ons;

def right_intarsia_pass():{
    with Carrier as [main_carrier]:{
        in Rightward direction:{
            knit Loops[width-borders:width];
        }
    }

    with Carrier as [color_carrier]:{
        in Rightward direction:{
            tuck Loops[width-borders];
            knit Loops[borders:width-borders];
            tuck Loops[borders-1];
        }
    }

    with Carrier as [supp_carrier]:{
        in Rightward direction:{
            knit Loops[0:borders];
        }
    }
}
def left_intarsia_pass():{
    with Carrier as [main_carrier]:{
        in Leftward direction:{
            knit Loops[width-borders:width];
        }
    }
    with Carrier as [color_carrier]:{
        in Leftward direction:{
            tuck Loops[width-borders];
            knit Loops[borders:width-borders];
            tuck Loops[borders-1];
        }
    }
    with Carrier as [supp_carrier]:{
        in Leftward direction:{
            knit Loops[0:borders];
        }
    }
}

with Carrier as main_carrier:{
    cast_ons.alt_tuck_cast_on(width);
    for _ in range(10):{
        in reverse direction:{
            knit Loops;
        }
    }
}

// first insertion
with Carrier as [main_carrier]:{
    in Leftward direction:{
        knit Loops[width-borders:width];
    }
}
with Carrier as [color_carrier]:{
    in Leftward direction:{
        tuck Loops[width-borders];
        knit Loops[borders:width-borders];
        tuck Loops[borders-1];
    }
}
releasehook;
with Carrier as [supp_carrier]:{
    in Leftward direction:{
        knit Loops[0:borders];
    }
}
releasehook;

for _ in range(10):{
    right_intarsia_pass();
    left_intarsia_pass();
}

right_intarsia_pass();

with Carrier as [main_carrier]:{
    in Leftward direction:{
        knit Loops;
    }
}
with Carrier as [main_carrier]:{
    in Rightward direction:{
        knit Loops;
    }
}

cut color_carrier;
cut supp_carrier;

with Carrier as main_carrier:{
    for _ in range(10):{
        in reverse direction:{
            knit Loops;
        }
    }
}
