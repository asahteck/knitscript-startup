import cast_ons;

with Gauge as 2, Carrier as c1, width as 20, height as 20:{
    cast_ons.alt_tuck_cast_on(width); // cast on front

    left_needles = [n for n in Front_Needles[3:width:4]];

    for i in range(0, height):{
        if i == 10:{
            xfer left_needles across;
            xfer Back_Loops 1 to Left;
            in reverse direction:{
                tuck left_needles;
            }
        }

        in reverse direction:{
            knit Loops;
        }
    }

}
