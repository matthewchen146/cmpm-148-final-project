== alien_lab_desc(->ret) ==
{
    - player_location == damaged_bulkhead || player_location == life_support:
        + [Enter alien research lab]
            ~ player_location = alien_lab
            -> alien_lab_body ->
        -> ret
}
-> DONE

VAR alien_lab_sealed = false

== alien_lab_body ==
{
    - get_sanity() == high:
        The ship’s pièce de résistance, a vessel for the research at the heart of this voyage. A workbench runs along the back wall, host to several scientific instruments including an ostentatiously high-tech device which is really just a microscope. Behind it, a well-stocked chemical fume hood. Between you and that setup, though, is an examination table.
    	The freezers to your left boast a wide variety of tissue samples, and the containment units to your right house live specimens. From here you can see that it’s mostly plants, while a few are what you could call animals. You can’t tell if that purple one is adorable or horrific. You know there to be some highly secure petri dishes as well, presumably tucked away.
    	There are two doors opposite the desk space, leading to the Damaged Bulkhead and Life Support.

    - else:
        You aren’t sure if the containment units in here actually work. These… well, you hesitate to even call them “creatures.” These entities sit behind the tempered glass, quivering and squirming. They seem innocuous now, while your eyes are trained on them. You don’t know anything about them. They could very well be capable of escaping. Ultimately there would be nowhere for them to escape to out here in the middle of nothing, except some other part of the ship to curl up and die in, without the care provided to them in confinement. But so far none have exhibited the sapience required to be aware of that fact, only raw instinct that may demand freedom. The urge to return to the home they were ripped from, without warning. Are any of them cognizant enough to yearn for vengeance? You can’t be sure if all the specimens are present, or if they’re all where they should be. You feel as though they are not. At least you had a choice to be here. If any one of them has opted to starve in an untouched corner of this metal shell, the least it could do is take you out with it, and it would be your own fault.
        Unless it remained here, lurking, it could have made its way to either the Damaged Bulkhead or Life Support through the doors.

}
{
    - !alien_lab_sealed:
        It looks like the containment units have been compromised. A vent of not insignificant size has fallen to the floor, surrounded by screws. You should really put it back before anything gets out. Hopefully nothing has already.
    - else:
        The containment units have been sealed to the best of your ability.
}
 ~ alien_lab_sealed = false
    You pat your pockets in search of a screwdriver.
    
{unique_repair_tasks !? seal_alien_lab && alien_lab_sealed && unique_items ? screwdriver} You try to screw the vent back on.

    {
    - get_sanity() == high:
        You collect the screws and metal plate from the ground and position them over the passage leading to the aliens. A few clockwise twists later and it looks good as new.
        
    - else:
        You dare to get close enough to the foul-smelling hole that feeds into where these unknowable things are held captive. You fix the vent and pray you are not too late. 
    }
    ~ alien_lab_sealed = true
    ~ unique_repair_tasks += seal_alien_lab
    No one's getting out of there now.
    
}
+ ->->
- ->->