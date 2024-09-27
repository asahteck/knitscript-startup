import cast_ons;

with Carrier as c1, width as 20, height as 20:{
    cast_ons.alt_tuck_cast_on(width); // cast on front
    tuck_needle = [];
    print Loops;

    for i in range(0, height):{
        if i == 10:{
            right_needles = [n for n in Front_Loops[10:20]];
            tuck_needle = Front_Loops[10];
            xfer right_needles 1 to Right;
            xfer Back_Loops across;
        }

        in reverse direction:{
            knit Loops;
            tuck tuck_needle;
        }
        print Loops;
        tuck_needle = []; //clear tuck
    }

}
