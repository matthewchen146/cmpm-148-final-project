INCLUDE nav_deck.ink
INCLUDE engine_room.ink
INCLUDE damaged_bulkhead.ink
INCLUDE stasis_deck.ink
INCLUDE crew_quarters.ink
INCLUDE alien_lab.ink
INCLUDE medbay.ink
INCLUDE life_support.ink
INCLUDE bridge.ink
INCLUDE ending_1.ink
INCLUDE ending_2.ink
INCLUDE ending_3.ink
INCLUDE ending_4.ink


// story variables
VAR ending_reached = false


// list to keep track of unique items
LIST unique_items = screwdriver, fuel_cell, socket_wrench, welder

// variables to keep track of items that have more than one
VAR num_wires = 0
VAR num_fuses = 0
VAR num_screws = 0

VAR monster_distance = 20

// possible ship related variables
VAR num_repair_tasks = 3
LIST unique_repair_tasks = repair_engine, fix_life_support, seal_alien_lab

// maybe variables for player location
LIST locations = intro_loc, stasis_deck, nav_deck, crew_quarters, engine_room, damaged_bulkhead, alien_lab, medbay, life_support, bridge
VAR player_location = intro_loc

-> start

== start ==
-> intro

== intro ==
You feel a sense of perfect weightlessness as your conscience surfaces.  You try to open your eyes but are met with the same ocean of inky black that was behind them while closed.  Where are you?
Suddenly there is a sharp sound, like metal grating against metal, and a beam of white light cuts through the inky black.  You try to force yourself closer to it, to attempt to see exactly what is happening beyond, but you are as helpless as ever, stuck floating in the void, with your only window outside being just out of reach.
Just as you are about to give up hope, a dull hissing sound permeates the space around you and gravity suddenly returns as the darkness flows away like water.
You hit the floor of the hydrostasis unit with a wet thwap.  The cold air bites into your exposed skin as the front half of your unit swings open for you to step out.
Your memories begin to resurface as the sleep drains from your brain like the inky substance in your pod sloshing into the open drains in the floor of the stasis deck.
You are on the starship known as the pathfinder, set out to research alien life.
You are a junior engineer.
You are currently dressed in only underwear.
You are very cold.
Moving quickly, you reach the lockers at the far end of the stasis deck and dry yourself off with the nearby towels before getting dressed in one of your crew uniforms.  It offers some relief, but the computer should have set the temperature to a more comfortable level before waking up the crew.
It suddenly occurs to you that the crew is not awake.  You alone have been roused from slumber.  The only reason the computer might wake up a lone engineer like this is because something on the ship is wrong, and the only reason you would be woken up instead of one of the lead engineers is because something is wrong with their HSUs.  You stifle a swear before accessing the diagnostic terminal nearby.  Sure enough, there are several error messages.  Abnormal readings in life support, alien research lab, and engine room.  A brief, intrusive thought flashes to the front of your mind; two of these are vital systems, plus a breach in the alien lab.  Could a specimen have..?  No, your friends always said you watched too many science fiction horror movies to work on a ship like this, you aren’t about to prove them right.  Still, what had happened to the head engineers?  It didn’t matter now, the nature of each of these systems demanded immediate attention.  The crew was counting on you to fix the ship so they could all reach their next destination.  Signing out of the terminal, you look around the Stasis Deck.
-> main_desc


== main_desc ==
{
    - !ending_reached:
        -> main
}
-> END



== main ==
~ monster_distance -= 1
<- storylets(->main)
-> DONE


// storylets
== storylets(->ret) ==
<- stasis_deck_desc(ret)
<- nav_deck_desc(ret)
<- crew_quarters_desc(ret)
<- engine_room_desc(ret)
<- damaged_bulkhead_desc(ret)
<- alien_lab_desc(ret)
<- medbay_desc(ret)
<- life_support_desc(ret)
<- bridge_desc(ret)

<- ending_1_desc(ret)
<- ending_2_desc(ret)
<- ending_3_desc(ret)
<- ending_4_desc(ret)

-> DONE

LIST possible_sanity = low, high

== function get_sanity() ==
{
    - monster_distance > 10:
        ~ return high
    - else:
        ~ return low
}

== view_inventory ==
You have {list_with_commas(unique_items, "no tools")}.
{
    - num_wires == 1: You have a wire.
    - num_wires > 1: You have {num_wires} wires.
}
{
    - num_fuses == 1: You have a fuse.
    - num_fuses > 1: You have {num_fuses} fuses.
}
{
    - num_screws == 1: You have a screw.
    - num_screws > 1: You have {num_screws} screws.
}
<- main
-> DONE

=== function list_with_commas(list, if_empty)
    {LIST_COUNT(list):
    - 2:
        	{LIST_MIN(list)} and {list_with_commas(list - LIST_MIN(list), if_empty)}
    - 1:
        	{list}
    - 0:
			{if_empty}
    - else:
      		{LIST_MIN(list)}, {list_with_commas(list - LIST_MIN(list), if_empty)}
    }