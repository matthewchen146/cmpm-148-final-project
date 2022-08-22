
== ending_4_desc(->ret) ==
{
    - !ending_reached && player_location == bridge && LIST_COUNT(unique_repair_tasks) < num_repair_tasks && monster_distance <= 0:
        + [Call it a day]
            ~ ending_reached = true
            -> ending_4_body
        -> ret
}
-> DONE

== ending_4_body ==
You were right, at least. This whole time, you weren’t crazy. You were right. There was something else on this ship. The lights flicker off for the last time. You have done all you can. The ship groans under more than just its own weight. The screeching whine of metal warping draws nearer. Your back is pressed against a corner. The last of the ship’s systems power down, leaving you in near total silence, except for the creaks of whatever is here with you. You wonder what will kill you first: the oncoming lack of oxygen or the thing coming towards you. You close your eyes. The creaking gets steadily louder until it is all around you, and then comes to a stop.
-> END
