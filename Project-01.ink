/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/
VAR hammer = 0
VAR bestie = ""
-> begin

=== begin ===
You find yourself running around in a beautiful feild. You can feel the sun rays on your skin and the wind in your hair. You feel at peace and suddenly jolt awake. 
You say aloud, "It was almost like it was real... almost" 
You look to your right and see your best friend. What is your friends name player?
*[Alex]
~bestie = "Alex" 
->Life
*[Zach]
~bestie ="Zach" 
->Life
*[CJ] 
~bestie ="CJ" 
->Life
*[Evan] 
~bestie = "Evan" 
->Life
=== Life ===
Oh what a nice name ! You look at {bestie} and suddenly reality becomes a little too real again. 

You look around the borded up room, life has been drained from it. Not just the room but the whole world. Unfortunetly you and {bestie} look to the left and remember that your other friend didn't make it back last night. The zombies got to them, but you and {bestie} have to stay strong. For now you need to stay in your curernt shelter
*[Stay put in your current shelter]-> Stay
=== Stay ===
You decided to stay in the current shelter you and {bestie} are a currently at. You look around and notice that one of the windows you and {bestie} borded up is loose. {not hammer_pick_up: There is a hammer on the floor.}
you have {hammer} hammer
*[Walk to window]->Window
*[stay and talk to {bestie}]->talk
*[pick up hammer] -> hammer_pick_up

=== hammer_pick_up ===
~ hammer = hammer +1
You now have a hammer!
+[Go back] ->Stay
=== Window ===
You walk up to the window and notice the loose board. You need to fix it, what do you do?
*{hammer_pick_up} [Fix window]-> fix
*[It is fine]-> Not_fine
=== fix ===
You were able to fix the window, seems very stable now, good job player! 
*+[Go back]-> Stay
=== Not_fine ==
It was not fine. You did not fix the window, that allowed many zombies to sneek in at night. You and {bestie} did not survive, thanks to you.
-> END
=== talk ===
You decide to talk to {bestie} before you go to the windwow. They tell you that they feel sick. You agknowledge {bestie} concerns and take note of it. You both realize that your food suplies is running low. Both of you also think your friend is out there somewhere alive. You need to make a choice
*[Seek out new shelter and food]->leave
*[Search for friend]-> search
=== search ===
You go out to search for your friend

After a while of searching you finally found her body

*[Pay respects] -> Ending
=== Ending ===
You pay respects to your friend. Her lifeless body lays there. 

You make a burial for her, decorated with her favorite flower

"thank you" 
+[Go back] -> talk
=== leave ====
You and {bestie} decide to go look for food outside the shelter. 

You are walking around with extra causion but all of the sudden you step on a stick and it makes a big CRUNCH.

You hear the zombies suddenly surround you... what do you do?
*[Stay put] -> stay_put
*[run] -> run

=== stay_put ===
A beautfiul day out. You stare at {bestie} knowing you cannot out run all of these zombies. You take each others hands, and with a smile on your face you say to {bestie}

"It was a good life wasn't it?"
"... yeah" says {bestie}

It was a good life player, good job. 
-> END
=== run ===
You and {bestie} start running. You quickly realize that they are way faster than you thought. Suddenly you hear {bestie} fall, you look back and {bestie} has a very obvious broken leg.
*[Leave them there]-> broken
*[carry them]-> carry
=== broken ===
You left them there player... that wasn't nice, your BEST FRIEND just died. Not cool, player. 

In spite of leaving them there you continue running, jokes on you player, you trip and break your leg on a conviently placed branch.
->END
=== carry ===
You qickly decide to pick up your best friend and throw them over your shoulder. There is no way you would ever leave {bestie} to die like that.

You out run the zombies with bestie and find a shelter!
*[Go inside] -> shelter
=== shelter===
You walk into the shelter with {bestie} in your arms. You set down {bestie} and look closer at their leg.

It is really bad, you step away from {bestie} for a sec to decide what is best...

You are faced with a tough decison player, do you let your best friend suffer their broken leg and try to survive, or do you put them out of their misery.

*[Pull the trigger]-> trigger
*[Try to survive]-> survive

=== survive ===
 You and {bestie} live out the rest of your days in what can only be considered bliss in a zombie apocalypse. Years later you look tword each other wondering what life would have been like if the apocalypse never happened. 

 You look twords {bestie}, they have changed and have started to look older. You have the same look each other eyes, both of you know what to do. You realize that the day you stop fighting and surviving is the day you start to live.
 
 You and {bestie} step outside with a look of relif on each others faces
 
 " will we be best friends in the next life?" asked {bestie}
 
 "In every single life and afterlife"
 
 You both stand there and wait for the innevable, it was a good life player. 
 ->END
=== trigger ===
player... are you sure you want to pull the trigger on {bestie}?
*[yes]-> sure
*[no]->shelter

=== sure===
Last chance player, are you sure you want to kill {bestie}
*[yes, I want to kill {bestie}]-> ending_1
*[no] -> shelter
=== ending_1 ===
You sneek behind {bestie}. For a moment you are reminded of your liife before the zombies. Memories full of joy, and laughter. Your eyes tear up as the gun points at their head, {bestie} turns their head at the last second.

You pull the tirgger and then throw the gun. You know in that last second of life {bestie} had they were scared. {bestie} looked you in the eyes right before you pulled the trigger. You feel like a monster. You are overwheled with emotion, not knowing what to do anymore without {bestie}. 
*[grab the gun] -> ending_2
=== ending_2 ===
Your memories flash back to the day you met {bestie}.

You are on the playground running around with {bestie}. You watch yourself grow up with {bestie}. Never a dull moment with {bestie}, they were the light of your life, and the only family you had left

You realised the only life worth living is one with {bestie}, that is why you pulled the trigger. 

A tragic ending to two lives 
-> END












































































































