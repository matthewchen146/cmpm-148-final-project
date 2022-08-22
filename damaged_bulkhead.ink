== damaged_bulkhead_desc(->ret) ==
{
    - player_location == engine_room || player_location == alien_lab || player_location == medbay:
        + [Enter damaged bulkhead]
            ~ player_location = damaged_bulkhead
            -> damaged_bulkhead_body ->
        -> ret
}
-> DONE

VAR damaged_bulkhead_search_times = 0

== damaged_bulkhead_body ==
The walls in the bulkhead are bent of shape, with many dents scattered around. You wonder how its form could change so much, considering the strength it should have.
{
    - get_sanity() == high:
        The once organized containers are now misplaced in seemingly random positions, tattered and split open. Luckily, it means less work trying to open them yourself. But unfortunately at a glance, a lot of items are missing or are not useful you currently.
    - else:
        
        {
            - damaged_bulkhead_body > 1:
                But things seem off. You thought those boxes were on the left side of the room. When did that panel fall over? Did you ever look through that container? You can't remember what you did or didn't do, but you can only hope it's poor memory, and not the result of someone else, or something else. 
            - else:
                You try to shake away your paranoia, but the dents and markings too closely resemble foot prints, and not of anyone or thing that could be friendly. Various containers lie here half open, as though they were dug through in the ship's last moments. But some of the damage is too destructive to have been caused by any person. You shiver from this thought, hesitant to see what remains.
        }
            
}
+ You take a closer look as you inch toward the containers.
    
    {
        - unique_items !? socket_wrench:
            {
                - get_sanity() == high:
                    You dig your hands into the pile of trash, flipping things over and tossing them to the side, trying to find anything of use for reparing the ship. Cloth and metal clutter the ground around you. Hopefully the engineers will understand. This mess didn't start with you after all.
                - else:
                    Looking around, its eerily quiet as you slowly reach into a container. As you push some trash to the side, something grabs your leg. You topple backwards as you try to jump away. But it was only a loose cloth that fell onto your foot. Shaken, you get back up.
            }
            Something shiny catches your eye. A socket wrench lies in a pile of scrap and boxes. You decide to take it with you.
            ~ unique_items += socket_wrench
        - else:
            {
                - damaged_bulkhead_search_times == 1:
                {
                - get_sanity() == high:
                    You rummage through the stacks of preserved food, feeling your way through to find anything. It's hard to read any labels in the dim light. A lot of these snacks will go to waste, having been forcefully removed from their cold storage, as well as the lack of energy to power it. You find some nutrient bars and look away disgusted. You remember the terrible metallic taste of pure vitamins and minerals. Only for emergencies. But it seems that time has come.
                - else:
                    You pick through stacks of preserved food, mostly contained in small boxes which have spilled out from their respective containers. Some of the boxes are open. Some are half full or empty. Some are torn apart in the most gruesome ways. This food has probably been spoiled, having been removed from their cold storage, but much of it is missing, as though they've been eaten.
                }
                But there doesn't seem to be anything useful. 
                - damaged_bulkhead_search_times == 2:
                {
                - get_sanity() == high:
                    Hundreds of neatly organized and highly expensive scientific survey equipment line the shelves. A lot of them fell out of their slots and are smashed on the ground. Unfortunately, you are not too knowledgeable about how this equipment is used, and doubt it can be used to repair the ship. Microscopes, terrariums, and vials of chemicals have also been beaten and destroyed by the bulkhead damage. It is sad to see it all go to waste.
                - else:
                    Hundreds of very expensive survey equipment line the shelves like a library of technology, but without any more lights, as most of them are dead and shattered. You contemplate whether any of it can be used to repair the ship, but you can't think of anything. The sharp glass from destroyed equipment and tanks make you watch your step carefully. Every gap in the shelves makes you look twice, to make sure there is nothing watching you from behind.
                }
                But there doesn't seem to be anything useful. 
                - else:
                There doesn't seem to be anything useful. 
            }
            
    }
    ~ damaged_bulkhead_search_times += 1
- ->->