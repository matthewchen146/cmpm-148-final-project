== ending_1_desc(->ret) ==
{
    - !ending_reached && player_location == bridge:
        + [ending 1]
            ~ ending_reached = true
            -> ending_1_body
        -> ret
}
-> DONE

== ending_1_body ==
ending 1!!
-> END