
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

// maybe variables for player location
LIST locations = stasis_deck
VAR player_location = stasis_deck

-> start

== start ==
this is the start
-> END