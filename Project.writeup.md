# Group 15
## Scary Spaceship
- Jeremy Dahlberg
- Matthew Chen
- Noah Eichler
- Stanley Caldwell

## EXPERIENCE GOAL

The emotional goal was to make the players experience fear, stress, and paranoia.
Our main goal as a team was to simply finish the game on time.

## NARRATIVE STANCE AND RATIONALE

The story follows an open map model, in which the player can travel between locations freely to complete tasks. The locations and story parts are structured as storylets. It also follows the gauntlet model, where the player moves mostly linearly through the story.
The story is in second person, the focalizer being the player, following the player’s perspective and experience. This is important because the player’s actions and perspective are affected by the player’s sanity from the horror aspect. This makes the narrator unreliable.

## STORY STRUCTURE

The story is structured as an open map with locations that can be traveled between.
The story is also branch and bottleneck.
There are multiple conclusions that depend on what is changed in the state.
These changes can occur in different orders, and can rejoin in the same state and ending.

## KEY INK VARIABLES / STATE TRACKING

`VAR monster_distance`

This decreases every loop, or every time the player moves between two locations.
The sanity of the player is determined by the distance.
This in turn affects how the player acts and describes their surroundings.

High sanity example:
> “The ship’s pièce de résistance, a vessel for the research at the heart of this voyage. A workbench runs along the back wall, host to several scientific instruments including an ostentatiously high-tech device which is really just a microscope. Behind it, a well-stocked chemical fume hood. Between you and that setup, though, is an examination table.”

Low sanity example:
> "You aren’t sure if the containment units in here actually work. These… well, you hesitate to even call them “creatures.” These entities sit behind the tempered glass, quivering and squirming. They seem innocuous now, while your eyes are trained on them. You don’t know anything about them. They could very well be capable of escaping.”

`LIST locations`
`VAR player_location`

The player_location is one of the items in the locations list.
It tells where the player is, and is used in location storylet descriptions to determine whether the player can enter that location.

`LIST unique_items`

This list acts as an inventory for unique items that can have a obtained or not obtained state.
Various tasks in the ship such as repair tasks check for unique items to be able to perform those tasks.

ex:
>“You realize the only way to reattach the valve is by welding it back onto its base with a welder.”

`VAR num_repair_tasks`
`LIST unique_repair_tasks`

This list is used to check whether each repair task is completed or not.
The num_repair_tasks is the number of tasks that need to be completed for a status of "repaired."

Based on whether the num_repair_tasks is reached and the monster_distance when the player is finished,
the story conclusion will reflect that. In total, this results in 4 different endings.

## INK AFFORDANCES

We used storylet structure for the main loop of the story. 
Each location is represented by a storylet. 

ex:
```
== storylets(->ret) ==
<- stasis_deck_desc(ret)
<- nav_deck_desc(ret)
<- engine_room_desc(ret)
-> DONE
```

The storylet descriptions contain conditions that check if the player can enter.
Mainly if the player_location is in an adjacent room simply with multiple "and" conditions.
Other conditions can be used for more elaborate conditions between rooms.

ex:
```
== nav_deck_desc(->ret) ==
{
    - player_location == stasis_deck || (player_location == engine_room && nav_deck_engine_room_door_open):
        + [Enter navigation deck]
            ~ player_location = nav_deck
            -> nav_deck_body ->
        -> ret
}
-> DONE
```

The inventory is also a storylet. It allows the player to check their items in every main loop and in any location.
The endings are also storylets, checking if the player is in the right location and if they have the right conditions for that ending.

Using storylets allowed for flexible collaboration in the group project.
Each person was to stick to working on a couple individual storylets / locations / endings.
Storylets also allowed content to be split into separate files, making for simpler version control.
The main file combines all the files with the INCLUDE feature.

## DISCOURSE EXAMPLE / DEMONSTRATION

In one playthrough, the player will explore the ship going through connected locations and learning about the interior and the state of the ship.
Then the player will find something that needs to be fixed.
And if the player has the right conditions for it, such as having the correct item, they can fix it.
If not, they can keep exploring until they find the right item on the ship.
For example, 
1. The player goes through the stasis deck to the nav deck.
2. The nav deck has a room that must be opened using a wrench.
3. The player goes to the engine room and breaks a valve.
4. The engine room valve must be fixed with a welder.
5. The player goes to the damaged bulkhead and discovers a wrench.
6. The player goes back to the nav deck and opens the room.
7. In the room is a welder.
8. Back to the engine room, the player fixes the valve.
9. The player goes to the bridge and calls it a day.
10. The monster is not close enough, but the ship is not fixed. So the player survives, but the ship fails.
With each movement through the ship, the monster_distance decreases.
When the monster distance is close enough, their sanity will change to low, becoming more nervous and paranoid.
Ship descriptions and their thoughts will become more fearful.

## SOMETHING COOL

Using a sanity system which changes the content depending on the sanity allowed for more variation.
This means revisiting locations can result in different descriptions, keeping it fresh.

## RESOURCES USED
References
- Don’t Escape 3. Scriptwelder, 2015.
- GTFO. Ten Chambers, 2019.
- Iron Lung. David Szymanski, 2022.
- Evolve. Turtle Rock Studios, 2015.

