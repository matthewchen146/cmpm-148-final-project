== ending_2_desc(->ret) ==
{
    - !ending_reached && player_location == bridge:
        + [ending 2]
            ~ ending_reached = true
            -> ending_2_body
        -> ret
}
-> DONE

== ending_2_body ==
ending 2!!
-> END