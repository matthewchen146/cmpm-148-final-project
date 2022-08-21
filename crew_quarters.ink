== crew_quarters_desc(->ret) ==
{
    - player_location == stasis_deck || player_location == engine_room:
        + [Enter alien research lab]
            ~ player_location = crew_quarters
            -> crew_quarters_body_body ->
        -> ret
}
-> DONE

== crew_quarters_body ==
{
    - monster_distance > 100:
        The cramped quarters are quite comforting. A place of respite and warmth. Bunks line the walls, interspersed with sealed closets and trunks for personal items. You stare longingly at your bunk. You look forward to getting some shuteye, when the ship is back in working order of course. 
	    There’s eight beds in total, and eight trunks interrupting the surface of the walls to either side of you. If you didn’t already know the closets were there, you most likely would have assumed they were simply part of the paneling. But you do know they’re there, and you know there’s four of them
	    To one side of you is the door to the Stasis Deck, and to the other side is the door that leads to the Engine Room.


    - else:
        The closeness of the quarters gives the impression that the walls are starting to close in. For a moment, you are glad to be alone here. If anyone else was sharing this space with you, you are sure the body heat would be nauseating. For now, you are as cold as ever. The moment passes. Are you alone here? There are seven bunks that are not yours gouged into the walls. Someone is supposed to sleep in them. How else would you recognize the absence of the heat? It keeps you up every night. Night doesn’t exist out here, or it never stops existing, but the word is an easy shorthand for the period of time allocated for sleeping. No one is sleeping now. The sheets lie flat, stretched so tightly against the surface of the beds you can almost see what’s underneath. You don’t know when the last time you saw another human being was.
    	Are you alone? The beds are vacant. The walls press in. They bring the closets ever closer. You can not see into them. You can not see into the closets, nor the trunks bulging out from between the bunks. You don’t know what is inside of them. There is something inside of them.
	    The walls threaten to trap you here. The only exits lead to the Stasis Deck and Engine Room.	


}
->->