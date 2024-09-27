#This is a really long files with examples of the various methods for making more files out of your .ks

from knit_script.interpret import knit_script_to_knitout, knit_script_to_knitout_to_dat
from knit_script.knit_graphs.knit_graph_viz import visualize_sheet

def _print_knitout(filename: str):
    with open(filename, mode='r') as knitout_file:
        print_str = ""
        for line in knitout_file.readlines():
            print_str += line
        print(print_str)
#borrow the old print knitout method

program = r"""
import cast_ons;
import stockinette;

with Carrier as 1, width as 50, height as 50:{
    cast_ons.alt_tuck_cast_on(width);
    stockinette.stst(height);                
}
        """
with open("fiftysquare.ks", mode='w') as file:
    file.write(program)
#This writes the program to a ks file, knitscript

knit_graph, _machine_state = knit_script_to_knitout(program, "fiftysquare.k", pattern_is_filename=False)
_print_knitout("fiftysquare.k")
#This writes the program to a k file, knitout

visualize_sheet(knit_graph, "fiftysquare_graph.png")
#This generates a visualization .png

_knit_graph, _machine_state = knit_script_to_knitout("fiftysquare.ks", "program_from_file.k", pattern_is_filename=True)
_print_knitout("program_from_file.k")
#This converts ks to k

knit_graph, _machine_state = knit_script_to_knitout_to_dat("fiftysquare.ks", "program_for_dat.k","program.dat", pattern_is_filename=True)
#This outputs a dat file, converts to k first then dat
