
// list to keep track of unique items
LIST unique_items = screwdriver, fuel_cell, socket_wrench

// variables to keep track of items that have more than one
VAR num_wires = 0
VAR num_fuses = 0
VAR num_screws = 0

VAR monster_distance = 200

// possible ship related variables
VAR ship_damage = 80 // percent
VAR num_repair_tasks = 20
LIST unique_repair_tasks = thing

// maybe variables for player location
LIST locations = stasis_deck, navigation_deck, crew_quarters, engine_room
VAR player_location = stasis_deck

-> start

== start ==
This is the start
-> location_stasis_deck


// possible way of traveling
// show options for moving to adjacent rooms
// add conditions for different rooms
== get_adjacent_locations(location) ==
{location == stasis_deck:
    + [Move to navigation deck.] 
        -> location_navigation_deck
    + [Move to engine room.] 
        -> location_engine_room
    + [Move to crew quarters.] 
        -> location_crew_quarters
}
{location == navigation_deck:
    + [Move to stasis deck.] 
        -> location_stasis_deck
    + [Move to engine room.] 
        -> location_engine_room
}
{location == engine_room:
    + [Move to stasis deck.] 
        -> location_stasis_deck
    + [Move to navigation deck.] 
        -> location_navigation_deck
    + [Move to crew quarters.] 
        -> location_crew_quarters
}
{location == crew_quarters:
    + [Move to stasis deck.] 
        -> location_stasis_deck
    + [Move to engine room.] 
        -> location_engine_room
}
-> DONE


// thing for each place
== location_stasis_deck ==
This is the stasis deck
-> get_adjacent_locations(stasis_deck)
-> END

== location_navigation_deck ==
This is the navigation deck
-> get_adjacent_locations(navigation_deck)
-> END

== location_crew_quarters ==
This is the crew quarters
-> get_adjacent_locations(crew_quarters)
-> END

== location_engine_room ==
This is the engine room
-> get_adjacent_locations(engine_room)
-> END