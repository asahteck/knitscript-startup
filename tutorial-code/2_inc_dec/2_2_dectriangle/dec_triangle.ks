import cast_ons;

with Carrier as c1, width as 20, height as 20:{
    cast_ons.alt_tuck_cast_on(width); // cast on front
    print Loops;

    for i in range(0, height):{
        if i == 10:{
            leftt_needles = [n for n in Front_Loops[10:20]];
            xfer left_needles 1 to Left;
            xfer Back_Loops across;
        }

        in reverse direction:{
            knit Loops;
        }
        print Loops;
    }

}
