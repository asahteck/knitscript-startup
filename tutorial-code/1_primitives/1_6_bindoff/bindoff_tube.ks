import cast_ons;
import bind_offs;

with Carrier as c1, width as 50, height as 50:{
    cast_ons.alt_tuck_cast_on(width); // cast on front
    cast_ons.alt_tuck_cast_on(width, is_front=False);

    for i in range(0, height):{
        in reverse direction:{
            knit Front_Loops;
        }
        in reverse direction:{
            knit Back_Loops;
        }
    }

    bind_offs.chain_bind_off(Loops, Leftward);

}
