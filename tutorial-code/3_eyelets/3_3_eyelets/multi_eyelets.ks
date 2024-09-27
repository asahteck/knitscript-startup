import cast_ons;

with Carrier as c1, width as 20, height as 20:{
    cast_ons.alt_tuck_cast_on(width); // cast on front

    left_needles = [n for n in Front_Needles[3:width-2:4]];

    for i in range(0, height):{
        condition = (5<i) and (i<13) and ((i%6)==0);
        print f"{i}:{condition}";
        tuck_loops = [];
          if condition:{
        //if (5<i<13 and i%6 == 0) :{
            xfer left_needles across;
            xfer Back_Loops 1 to Left;
            //in reverse direction:{
              //  tuck left_needles;
            //}
            tuck_loops = left_needles;
        }

        in reverse direction:{
            knit Loops;
            tuck tuck_loops;
        }
    }

}
