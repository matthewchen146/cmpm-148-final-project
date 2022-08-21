== damaged_bulkhead_desc(->ret) ==
{
    - player_location == engine_room || player_location == alien_lab || player_location == medbay:
        + [Enter damaged bulkhead]
            ~ player_location = damaged_bulkhead
            -> damaged_bulkhead_body ->
        -> ret
}
-> DONE

== damaged_bulkhead_body ==
damaged bulkhead
- ->->