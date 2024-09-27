import cast_ons;

// creates a decreasing triangle

with Carrier as c1, width as 22, height as 20:{
    cast_ons.alt_tuck_cast_on(width); // cast on front

    for i in range(0, height):{
        n_needle = Loops[-1];
        xfer n_needle 1 to Left;
        xfer Back_Loops across;
        in reverse direction:{
            knit Loops;
        }
        print Loops;
    }

}
