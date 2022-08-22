== stasis_deck_desc(->ret) ==
{
    - player_location == intro_loc || player_location == engine_room || player_location == nav_deck || player_location == crew_quarters:
        + [Enter stasis deck]
            ~ player_location = stasis_deck
            -> stasis_deck_body ->
        -> ret
}
-> DONE

== stasis_deck_body ==
{
    - get_sanity() == high:
        Rows of chrome cylindrical hydrostasis units are lined up above grated floors.  Each HSU contains a human floating in inky black fluid designed to keep them asleep and unaging while the ship moves to the next destination.  A series of the pods near yours read “ERROR” on the attached display.  They would need to be opened manually and carefully when you had extra hands and tools.  The chilly air causes you to shiver.
    - else:
        The HSUs here have all been covered in a thick grime.  It appears that the neuro-conductive fluid has been leaking since last you left.  This means that the crew would be waking up to claustrophobic, closed pods that would need to be opened.  Trace amounts of the same fluid had frozen over while leaking, leaving dark inky icicles hanging from the drain beneath your feet.  You hate how cold this place is.
}
->->