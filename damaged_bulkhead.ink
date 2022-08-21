== damaged_bulkhead_desc(->ret) ==
{
    - player_location == engine_room:
        + [Enter engine room]
            ~ player_location = damaged_bulkhead
            -> damaged_bulkhead_body ->
        -> ret
}
-> DONE

== damaged_bulkhead_body ==
engine room
- ->->