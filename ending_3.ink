== ending_3_desc(->ret) ==
{
    - !ending_reached && player_location == bridge && LIST_COUNT(unique_repair_tasks) < num_repair_tasks && monster_distance > 0:
        + [Enter life support]
            ~ ending_reached = true
            -> ending_3_body
        -> ret
}
-> DONE

== ending_3_body ==
The screams of whatever that thing was die behind the bulkhead door as the failing life support begins to take a toll on you.  You cough blood onto your torn and sweat-stained uniform.  You had failed to fix the ship, but what else did the universe expect from a junior engineer?  You couldn’t be expected to slay monsters and repair a busted ship all at the same time.  Besides, one of those jobs sounds way cooler than the other.  An inky black similar to the one you began your quest in comes to claim you as the pride in your final accomplishment swells.
-> END