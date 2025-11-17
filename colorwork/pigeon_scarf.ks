//pigeon scarf of 5 colors

//float version?
//more complex dithering in v2

//rerun in the morning

//stripes
grey = c1;
green = c2;
blue = c3;
purple = c4;

width = 100;
stripe_width = 20;
//grey band bigger, stripes smaller
dithering = 5;
//import random double jacquard?

import cast_ons;

def tube_knit(carrier_color):{
    with Carrier as carrier_color:{
        for _ in range(stripe_width):{
            with Sheet as s0:{
                in reverse direction:{
                    knit Loops;
                }
            }
            with Sheet as s1:{
                in reverse direction:{
                    knit Loops;
                }
            }
        }
    }
}

def speckles(carrier_color_1, carrier_color_2):{
    for _ in range(dithering):{
        with Carrier as [carrier_color_1]:{
            with Sheet as s0:{
                in reverse direction:{
                    knit Loops[0:width:2];
                }
            }
        }
        releasehook;
        with Carrier as [carrier_color_2]:{
            with Sheet as s0:{
                in current direction:{
                    knit Loops[1:width:2];
                }
            }
        }
        with Carrier as [carrier_color_1]:{
            with Sheet as s1:{
                in reverse direction:{
                    knit Loops[0:width:4];
                    knit Loops[1:width:4];
                }
            }
        }
        with Carrier as [carrier_color_2]:{
            with Sheet as s1:{
                in current direction:{
                    knit Back_Loops[2:width:4];
                    knit Back_Loops[3:width:4];
                }
            }
        }

        with Carrier as [carrier_color_2]:{
            with Sheet as s0:{
                in reverse direction:{
                    knit Loops[0:width:2];
                }
            }
        }
        with Carrier as [carrier_color_1]:{
            with Sheet as s0:{
                in current direction:{
                    knit Loops[1:width:2];
                }
            }
        }
        with Carrier as [carrier_color_2]:{
            with Sheet as s1:{
                in reverse direction:{
                    knit Loops[0:width:4];
                    knit Loops[1:width:4];
                }
            }
        }
        with Carrier as [carrier_color_1]:{
            with Sheet as s1:{
                in current direction:{
                    knit Back_Loops[2:width:4];
                    knit Back_Loops[3:width:4];
                }
            }
        }
    }
}

def striping(carrier_color_a, carrier_color_b):{
    for _ in range(dithering):{
        with Carrier as [carrier_color_a]:{
            with Sheet as s0:{
                in reverse direction:{
                    knit Loops;
                }
            }
        }
        with Carrier as [carrier_color_b]:{
            with Sheet as s0:{
                in current direction:{
                    knit Loops;
                }
            }
        }
        with Carrier as [carrier_color_a]:{
            with Sheet as s1:{
                in reverse direction:{
                    knit Loops;
                }
            }
        }
        with Carrier as [carrier_color_b]:{
            with Sheet as s1:{
                in current direction:{
                    knit Loops;
                }
            }
        }
    }
}

def tubular_bindoff_half_g(t_width):{
    //for now this only goes leftward
    next_knit_dir = reverse;
    if next_knit_dir == Rightward:{
        in next_knit_dir direction:{
            knit Back_Loops; //float stability
        }
    }

    with Sheet as s0:{
        for _ in range(t_width-1):{
            xfer Loops[-1] 1 to Left;
            xfer Back_Loops across;
            in Leftward direction:{knit Loops[-1];}
        }
    }
    xfer Front_Loops across;
    in Rightward direction:{knit Loops[0];}

    with Sheet as s1:{
        for _ in range(t_width):{
            xfer Loops[0] 1 to Right;
            xfer Front_Loops across;
            in Rightward direction:{knit Loops[0];}
        }
    }
}

//remember to use sheets
with Gauge as 2, Carrier as grey:{
    with Sheet as s0:{cast_ons.alt_tuck_cast_on(width);}
    with Sheet as s1:{cast_ons.alt_tuck_cast_on(width, is_front=False);}
}

tube_knit(grey);
speckles(grey, purple);
striping(grey, purple);
cut grey;

tube_knit(purple);
speckles(purple, blue);
striping(purple, blue);
cut purple;

tube_knit(blue);
speckles(blue, green);
striping(blue, green);
cut blue;

tube_knit(green);
speckles(green, grey);
striping(green, grey);
cut green;

tube_knit(grey);

with Carrier as grey:{
    tubular_bindoff_half_g(width);
}
