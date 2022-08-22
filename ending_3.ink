== ending_3_desc(->ret) ==
{
    - !ending_reached && player_location == bridge && LIST_COUNT(unique_repair_tasks) < num_repair_tasks && monster_distance > 0:
        + [ending 3]
            ~ ending_reached = true
            -> ending_3_body
        -> ret
}
-> DONE

== ending_3_body ==
ending 3!!
-> END