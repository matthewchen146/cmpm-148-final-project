== bridge_desc(->ret) ==
{
    - player_location == life_support:
        + [Enter bridge]
            ~ player_location = bridge
            -> bridge_body ->
        -> ret
}
-> DONE

== bridge_body ==
{
    - get_sanity() == high:
        high
    - else:
        low
}
->->