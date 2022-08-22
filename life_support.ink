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
        You enter the Life Support system, which contains the primary and backup components of the spaceship that are vital for addressing the core needs of human life– but it needs fixing! You hear the oxygen supply tanks wheezing as they struggle to disperse oxygen to the rest of the ship. The water purification systems are contaminated with a venomous tar substance, which could be deadly if consumed. The waste disposal system might be the only functioning aspect of the ship’s Life Support. The overall temperature of the ship is falling, and the temperature regulation systems need maintenance.
        You look to the other side of the Life Support system room, where a sign reads, “The Bridge”.
    - else:
        You stumble into a room filled to the brim with various cacophonous machinery. You can’t seem to make sense of your surroundings. with your intrusive thoughts clouding your focus. You think it could be the Life Support system, which contains the primary and backup components of the spaceship that are vital for addressing the core needs of human life. A loud beeping sound in the distance could indicate that these systems need fixing! You hear the oxygen supply tanks wheezing as they struggle to disperse oxygen to the rest of the ship. The water purification systems are contaminated with a venomous tar substance, which could be deadly if consumed. The waste disposal system might be the only functioning aspect of the ship’s Life Support. The overall temperature of the ship is falling, and the temperature regulation systems need maintenance.
        You look to the other side of the Life Support system room, where a sign reads, “The Bridge”.
}
->->