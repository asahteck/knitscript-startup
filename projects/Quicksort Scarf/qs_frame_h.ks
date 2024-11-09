import cast_ons;

with Carrier as 2, width as 80, height as 80:{
    cast_ons.alt_tuck_cast_on(width);
    // n_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    n_list = [3, 5, 4, 6, 9, 10, 2, 8, 7, 1];
    // n_list = numpy.random.permutation(n_list);
    //scramble list

    //frame structure
    for i in range(0, border):{
        in reverse direction:{
            knit Loops;
        }
    }

    for i in range(1, 11):{ //frame height 10 and border 10

        n_val = n_list[i-1]; //get value of indexed element
        stop_val = 20 + (n_val*4);
        xfer Loops[20:stop_val] across;

        for j in range(0, 2):{
            in reverse direction:{
                knit Loops;
            }
        }

        xfer Back_Loops across; //normalize
        for k in range(0, 2):{
            in reverse direction:{
                knit Loops;
            }
        }
    }

    xfer Loops across to front bed; //end jersey

    for i in range(0, 10):{

        in reverse direction:{
            knit Loops;
        }
    }

}
