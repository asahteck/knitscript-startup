import cast_ons;

with Gauge as 2, Carrier as c1, width as 20, height as 40:{
    cast_ons.alt_tuck_cast_on(width); // cast on front

    for i in range(0, height):{
        if 5<i<37 and i%3 == 0 :{
            left_needles = [n for n in Front_Needles[3:width-2:4]];
            xfer left_needles across;
            xfer Back_Loops 1 to Left;
            in reverse direction:{
                tuck left_needles;
            }
        }

        if 5<i<37 and (i-1)%3 == 0:{
            right_needles = [n for n in Front_Needles[2:width-2:4]];
            xfer right_needles across;
            xfer Back_Loops 1 to Right;
            in reverse direction:{
                tuck right_needles;
            }
        }

        in reverse direction:{
            knit Loops;
        }
    }

}
