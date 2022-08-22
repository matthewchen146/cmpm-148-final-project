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

VAR monster_distance = 100

// possible ship related variables
VAR ship_damage = 80 // percent
VAR num_repair_tasks = 1
LIST unique_repair_tasks = repair_engine

// maybe variables for player location
LIST locations = stasis_deck, nav_deck, crew_quarters, engine_room, damaged_bulkhead, alien_lab, medbay, life_support, bridge
VAR player_location = stasis_deck

-> start

== start ==
This is the start
-> intro

== intro ==
This is the intro
-> main_desc


== main_desc ==
{
    - !ending_reached:
        -> main
}
-> END



== main ==

<- storylets(->main)
-> DONE

// + [See what you have]
//     -> view_inventory

// + [Next]
//     -> main_desc


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
    - monster_distance > 50:
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