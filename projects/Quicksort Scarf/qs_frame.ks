// Single random starting frame of Quicksort, done as knit/purl
// testing frame structure (vertical)

import cast_ons;

with Carrier as 4, width as 40, height as 20:{
    cast_ons.alt_tuck_cast_on(width);
    // n_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    n_list = [3, 5, 4, 6, 9, 10, 2, 8, 7, 1];
    // n_list = numpy.random.permutation(n_list);
    //scramble list

    //frame structure
    for i in range(0, 5):{
        in reverse direction:{
            knit Loops;
        }
    }

    //0-9 and 30-39 are borders so the active frame is 10-29
    xfer Loops[10:30:2] across to back bed; //initial ribbing

    for i in range(1, 11):{ //frame height 10 and border 10
        xfer_list = [];

        for s in range(0,10):{          //iterate through list elements
            num_val = n_list[s];        //value of list element
            needle_val = 10 + (s*2);
            //print(Loops);
            needle_val = 30+s;

            if (i>num_val):{
                xfer_list.append(Loops[needle_val]);
                //print(Loops[needle_val]);
            }
        }

        //print(xfer_list);
        xfer xfer_list across to front bed;

        in reverse direction:{
            knit Loops;
        }
        //print(Loops);
    }

    xfer Loops across to front bed; //end jersey

    for i in range(0, 5):{

        in reverse direction:{
            knit Loops;
        }
    }

}
