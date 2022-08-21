== engine_room_desc(->ret) ==
{
    - player_location == stasis_deck || (player_location == nav_deck && nav_deck_engine_room_door_open) || player_location == crew_quarters:
        + [Enter engine room]
            ~ player_location = engine_room
            -> engine_room_body ->
        -> ret
}
-> DONE

VAR engine_room_valve_broken = false
VAR engine_room_valve_fixed = false

== engine_room_body ==
{
    - monster_distance > 100:
        A maze of valves, pipes, and railings, once a bustling loud powerhouse is now a damp forest of wires, steam, and dust. The large industrial lights flash every so often like lightning. Occasionally the sound of air can be heard bursting through a cracked pipe, and drops of liquid from above. Loose oil creates long streaks on the walls, pooling by your feet. You are mesmerized by how such complex machinery could be designed and built by ordinary people. But that only makes it harder for you to fix. The steam and dust doesn't help, but you manage to go through, following the railings.
    - else:
        The cramped complex of pipes and railings limits your movement. As you step, oil pools ripple and splash, dotting the area in black, the walls are covered with dark slashes. You quickly look up, squinting to find the source of whatever keeps dripping on to you. The flashes of light are disorienting as you look around at the complex machinery, with no hope of being able to even comprehend it. The steam and dust makes visibility even worse, and with every blink or flash of light, the streaks of oil morph into animals, faces, monster. You grasp the railings tightly, feeling your way through.
}

{
    - !engine_room_valve_broken:
        You search for the main shutoff to stop the engine from running. You have to shut it down in order to conserve what is left in fuel and energy, as well as to prevent anymore malfunctions. On the center platform there is a large valve connected to the main pipe. It rotates slightly by itself, evidence of the engine still pumping if only a little.
    - else:
        The main shutoff valve is detached and needs to be welded back on with a welder.
}
* {!engine_room_valve_broken} You try to turn the valve.
    {
        - monster_distance > 100:
            You rotate it slowly, as to not break it. But it is tight and doesn't budge. With more and more force, you try to turn it, until it comes to a sudden stop. It has to work, so you try again, pushing and pushing until you hear a crack. Nervously, you see that it's about to break off from the pipe.
        - else:
            Putting in all your strength, you quickly rotate it, but it stops soon after with a loud clang. You turn it back, then swing it the otherway as fast as you can, repeatedly, trying to get through, until it suddenly breaks. The valve comes off, your momentum knocking you sideways. Holding the valve in your hands, you stare in disbelief. What do you do now? You desperately look around for a solution, try to stand up, then slip and fall again. The faces on the walls almost seem to be smiling and mocking.
    }
    ~ engine_room_valve_broken = true
    You realize the only way to reattach the valve is by welding it back onto its base with a welder.
    

* {!engine_room_valve_fixed && engine_room_valve_broken && unique_items ? welder} You try to weld the valve back on.

    {
    - monster_distance > 100:
        Carefully, with the valve against the base, you try to create a strong bond with the weld. You remember what you learned in the past, and finish, wiping off the sweat. You attempt to test out your fine work, but jump back from the burn of the leftover heat. After waiting a little, grabbing with your shirt, the valve is finally turned to its final position.
    - else:
        With the valve against the base, you hurriedly start welding the edges into place. You don't care if the weld is ugly, it just needs to be enough to turn again. You breathe heavily, unable to keep track of the time. The weld is done, and with the heat still spread on the valve, you grab it and turn it, wincing at the burn.
    }
    ~ engine_room_valve_fixed = true
    The whir of the engine mellows, the steam comes to a stop.
    
    {
    - monster_distance > 100:
        Proud as you are, you have to keep moving. The now quiet atmosphere calms you.
    - else:
        The engine room is now eerily quiet. As the sounds die down, your mind grows louder.
    }
+ ->->
- ->->