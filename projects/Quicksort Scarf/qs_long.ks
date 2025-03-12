import cast_ons;
import numpy as np;
import numpy.random;
import qs_google;
// calling in output from another python file

//make an array 1-10, scramble, quicksort, make scarf

def frame(nlist, border, lr_frame):{
//take in list, top/bottom border size, left/right border size

    //bottom edge
    for i in range(0, border):{
        in reverse direction:{
            knit Loops;
        }
    }

    for i in range(1, len(nlist)+1):{
        multiplier = 4;
        thickness = 2;

        n_val = nlist[i-1]; //get value of indexed element
        stop_val = lr_frame + (n_val*multiplier); //size multiplier

        xfer Loops[lr_frame:stop_val] across;

        for j in range(0, thickness):{
            in reverse direction:{
                knit Loops;
            }
        }

        xfer Back_Loops across; //normalize
        for k in range(0, thickness):{
            in reverse direction:{
                knit Loops;
            }
        }
    }

    xfer Loops across to front bed;

    //bottom border
    for i in range(0, border):{

        in reverse direction:{
            knit Loops;
        }
    }
}

with Carrier as 1, width as 80, height as 80:{
    cast_ons.alt_tuck_cast_on(width);
    n_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    n_list = numpy.random.permutation(n_list);
    //print(n_list);

    //frame(n_list, 10, 20);
    //qs.quick_sort(n_list, 0, 9);

    list_full = qs_google.quicksort_with_steps(n_list);
    for step in list_full:{
        print(step);
        frame(step, 10, 20);
    }
 }
