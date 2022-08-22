== ending_1_desc(->ret) ==
{
    - !ending_reached && player_location == bridge && LIST_COUNT(unique_repair_tasks) >= num_repair_tasks && monster_distance > 0:
        + [Call it a day]
            ~ ending_reached = true
            -> ending_1_body
        -> ret
}
-> DONE

== ending_1_body ==
You’ve surpassed what’s expected of a junior engineer; you’ve slain the monster and successfully repaired the spaceship. The ship’s power levels are back to normal, and it’s full-speed ahead! You breathe a sigh of relief, as the oxygen systems function at normal capacity. It’s a happy ending. Or is it?... Your uniform looks like a Pollock painting– spattered in a black, venomous liquid. And, another alien threat might await you in the expanse of the universe. Despite this, you’re proud of your accomplishments, and ready to take on the challenges of space travel.
-> END