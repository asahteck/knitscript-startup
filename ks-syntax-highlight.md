How to Configure PyCharm for KnitScript Syntax Highlighting

1.In PyCharm, go to File > Settings > Editor > File Types > + to add a file type
![/imgs/1_add_filetype.jpg](/imgs/1_add_filetype.jpg)

In the Edit File Type window, name this file type “knit_script”. In the “Line comment:” field, add two slashes as // and check the boxes for “Support paired braces”, “Support paired brackets”, and “Support paired parens”.
See screenshot below for settings.

![/imgs/2_edit_filetype.jpg](/imgs/2_edit_filetype.jpg)

Additionally, paste the keywords into the respective boxes. (See Appendix)

Click the OK button.

In the filetype window, with knit_script selected, associate .ks with knit_script filetype by clicking the + sign in the File name patterns box. Type *.ks in the box that appears, then click the OK button again.
![/imgs/3_associate.jpg](/imgs/3_associate.jpg)

Click the final OK button and return to your project, which should now have syntax highlighting!
![/imgs/4_example_syntax.jpg](/imgs/4_example_syntax.jpg)

An image example of syntax highlighting.

Appendix
Keywords for each box (suggested placement, can be modified to your liking)

1: across and as assert bed def direction elif else false for if import in none not or push swap return to true while with

2: bool float int len print range str list dict

3: back back_loops back_needles back_sliders backward carrier current forward front front_loops front_needles front_sliders gauge

4: drop knit miss split tuck xfer
