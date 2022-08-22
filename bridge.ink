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
        You walk through the exit doors of the Life Support room and enter the Bridge. The Bridge is a command station for the ship. You hear the sounds of crewmates snoring in stasis, amidst the beeps and boops of spaceship diagnostic alerts. You walk towards the front of the Bridge’s Command Deck, and marvel at the vast expanse of space ahead. You wonder if the ship can survive long enough to keep you alive, despite your efforts to fix its various systems.
    - else:
        You barely stumble your way into the Bridge. The Bridge, the command station of the ship, is the “final” section of the ship. The sounds of crewmates snoring in stasis seem unusually loud, and seem to make you want to fall asleep. The beeps and boops of the command deck are nauseating and shrill. A wave of exhaustion falls over you. As you walk towards the command deck window, you feel like you are one with space. You don’t see a reason to be locked up in a spaceship, when you could be flying through space with just a spacesuit. Indeed, you might be going a little insane. You become paranoid and start to hear monsters whispering in your ears. You wonder if the ship can survive long enough to keep you alive, despite your efforts to fix its various systems. 
}
->->