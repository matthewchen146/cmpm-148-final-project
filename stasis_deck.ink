== stasis_deck_desc(->ret) ==
{
    - player_location == engine_room || player_location == nav_deck || player_location == crew_quarters:
        + [Enter stasis deck]
            ~ player_location = stasis_deck
            -> stasis_deck_body ->
        -> ret
}
-> DONE

== stasis_deck_body ==
stasis deck
->->