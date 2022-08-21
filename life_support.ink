== life_support_desc(->ret) ==
{
    - player_location == bridge || player_location == damaged_bulkhead || player_location == alien_lab || player_location == medbay:
        + [Enter life support]
            ~ player_location = life_support
            -> life_support_body ->
        -> ret
}
-> DONE

== life_support_body ==
{
    - get_sanity() == high:
        high
    - else:
        low
}
->->