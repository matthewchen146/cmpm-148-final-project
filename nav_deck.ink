
== nav_deck_desc(->ret) ==
{
    - player_location == stasis_deck || (player_location == engine_room && nav_deck_engine_room_door_open):
        + [Enter navigation deck]
            ~ player_location = nav_deck
            -> nav_deck_body ->
        -> ret
}
-> DONE

VAR nav_deck_engine_room_door_open = false

== nav_deck_body ==
The grand view to the outside is blocked by metal shutters. The glass is probably cracked or shattered, but you don't think you have the ability to fix it. The shutters won't last forever though. Enough debris from outside will deteriorate it enough to cause a leak. It seems like most of the navigation equipment is beyond repair. The bright fancy screens you remember are now dark and cracked. There is no chance any non-analog input would register. Connected nearby is the engine room, and there is an entrance with an air lock door.

{
    - monster_distance > 100:
        The chairs are in place but scraped and in need of oil. They squeak with every turn. The dials are either dead or turning randomly. A mess of wires hang from open panels on the walls and on the ceiling, shaking with the turbulence of the ship.
    - else:
        But through the air lock, in the shadow of a flashing light, you believe you might have seen something move. It could be the sway of a loose wire. There couldn't be any other survivors. Your train of thought is being interrupted by your own imagination. You're the last one, right? The squeak earlier was just a chair you accidentally turned, you think. Or the rolling of a loose nut on the ground. The shutters produce a metallic bang. More debris. Time doesn't allow you to dwell in your fears.
}
{ 
    - nav_deck_engine_room_door_open:
        The engine room is just over there.
    - else:
        It is engine room door slightly open, but not enough for you to fit through. The power is faulty, and the door is too stiff to be opened forcefully. Tracing the wire from the door through the exposed walls, there is a clear rip in the connection. You try to reconnect the wire with all the knots you can think of, but no power is going through.
        The door has exposed bolts that can be removed with a socket wrench.
}
* {!nav_deck_engine_room_door_open && unique_items ? socket_wrench} You try your socket wrench on the door to disassemble it. 
    The bolts are painfully tight, your arms burn trying to twist it open.
    {
        - monster_distance > 100:
            You groan with all your strength, and finally the bolt releases. The rest of the bolts are a breeze.
        - else:
            You hold your breath, trying not to make too much noise. Just in case. Sweat forms all over, from both labor and worry. You make a breakthrough, freeing the bolt at last. But the sound echoes through the ship, freezing you in place. You look around desperately as you remove the rest of the bolts as quickly as you can.
    }
    Taking down the heavy door piece by piece, there is finally enough space for you to fit through.
    ~ nav_deck_engine_room_door_open = true
    ->->
+ ->->
- ->->