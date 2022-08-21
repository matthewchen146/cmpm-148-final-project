== medbay_desc(->ret) ==
{
    - player_location == damaged_bulkhead || player_location == life_support:
        + [Enter medbay]
            ~ player_location = medbay
            -> medbay_body ->
        -> ret
}
-> DONE

== medbay_body ==
{
    - monster_distance > 100:
        You walk past an organic 3D printer. On the counter beside it is a set of computer monitors, all currently displaying a generic screensaver resembling a stylized human body. Wires trail down from the monitors to a large, sleek cylinder lying on its side against the wall, with an entrance on one end and a control panel on the other. In the center of the room is an examination chair. The lamp positioned over it is off for now. Along the other wall are waste receptacles plastered with biohazard warnings. Above those, a sealed cabinet, presumably filled with pharmaceuticals and other medical supplies.
    	The other two walls primarily feature one door each, leading to the Damaged Bulkhead and Life Support.
    - else:
        The room is still, yet filled with the sounds of activity, the whirring and humming of machines waiting to be brought back to life. An occasional low beep. Everything sits right where it belongs. The tube used for full body scans creaks. You do not have a place. You are intruding here, a foreign object in such a sterile space. A tap comes from the tube. Is this how a virus feels? Where are the antibodies? You hear more tapping from inside the tube. It starts slow, barely noticeable, but as you stand there the pace increases alongside your heart rate.
    	You stumble backwards and look around. There is a door leading to the Damaged Bulkhead, and another one leading to Life Support.
}
->->