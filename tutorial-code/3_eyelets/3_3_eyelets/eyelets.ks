import cast_ons;

with Carrier as c1, width as 20, height as 20:{
    cast_ons.alt_tuck_cast_on(width); // cast on front

    right_needles = [n for n in Front_Needles[4:width-4:4]];
    left_needles = [n for n in Front_Needles[7:width-4:4]];

    for i in range(0, height):{
        if i == 10:{
            xfer left_needles across;
            xfer Back_Loops 1 to Left;
            xfer right_needles across;
            xfer Back_Loops 1 to Right;
            in reverse direction:{
                tuck left_needles;
                tuck right_needles;
            }
        }

        in reverse direction:{
            knit Loops;
        }
    }

}
