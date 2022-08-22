== ending_2_desc(->ret) ==
{
    - !ending_reached && player_location == bridge && LIST_COUNT(unique_repair_tasks) >= num_repair_tasks && monster_distance <= 0:
        + [Call it a day]
            ~ ending_reached = true
            -> ending_2_body
        -> ret
}
-> DONE

== ending_2_body ==
The ship is steady enough to stay alive. The lights flicker, but don't go offline. The engines are ready to cruise once again. But your greatest fears come to fruition. In the darkness you can now roughly define the silhouette of what must have been the root of all this madness. It reminds you of what you saw in the lab, what you were warned of that you always doubted. But it doesn't matter, as you sigh and take your last breaths. Hopefully the engineers will remember you and what you did, even if it only lasted a short while. It's not your problem anymore. But even these thoughts are not enough to distract you from the horror that is about to consume you.
-> END