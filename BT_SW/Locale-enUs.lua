local L = LibStub("AceLocale-3.0"):NewLocale("BT_SW", "enUS", true)
if not L then return end

--infos
L["Module resetted"] = "Module resetted" --dont change this line!

L["info"] = "|cff91069ETactics by|r rpguides\n|cff91069EImages by|r Vonswan, rpguides\n|cff91069EModule by|r Sorontur\n\n|cffC0C0C0[http://www.kdh-wow.de]\n[http://www.rpguides.de]|r"

--add here localized tactic texts

L["tactic Kalecgos"] =  [[
|cffff0000Kalecgos
------------------|r

This fight involves switching between engaging Kalecgos in his (possessed) dragon state and fighting the demon inside that is controlling him. You do this by constantly rotating between fighting both separate entities through the medium of portals created by the dragon's Spectral Blasts (see abilities). The fun part is that you need to kill the demon and Kalecgos at close to the same time to prevent a wipe; so make sure you consider this factor. 

|cFFDBD5331) Boss Abilities
------------------|r

|cff00FF96Sunwell Radiance|r
Chance to hit increased by 5%.
Enemy chance to dodge reduced by 20%.

This buff is currently active on all NPCs in Sunwell Plateau, including bosses, it seems intended to balance encounters against high avoidance tank gear. It also makes the rogue ability Evasion less effective. It does not require any particular raid strategy to counter, but tanks and rogues should be aware of it. 

|cffffff00Both Kalecgos and Sathrovarr the Corrupter are Tauntable.|r

|cff00ff00Kalecgos|r
(Located in the "normal realm," henceforth referred to as the dragon realm)

|cff00FF96Arcane Buffet:|r This AoE blast hits all targets in the dragon realm for 463 to 537 and also applies a stacking debuff that increases arcane damage taken by 500 per application. This debuff lasts 40 seconds and is not dispellable. The debuff stacks indefinitely until the player enters the Spectral Realm, at which point it is removed. If a player remains in the dragon realm without taking a portal for too long, this debuff will eventually stack high enough to kill them in one tick.

|cff00FF96Spectral Blast:|r This is a spell cast on any player in the dragon realm every 20-30 seconds, teleporting them to the spectral realm. This will damage everyone within 8 yards of the targeted player for approximately 6,000, in addition to spawning a portal where they were standing. This portal is used by other players to get to the demon realm. This cannot target the player currently on top of Kalecgos' aggro list.

|cff00FF96Frost Breath:|r This inflicts frost damage in a frontal cone in front of the dragon form of Kalecgos. Reduces attack speed by 75% for 12 seconds. Dispellable.

|cff00FF96Wild Magic:|r This is a random debuff cast on a random player. The debuff is entirely random; any class can receive any of the following six abilities:
- Healing done by spells and effects increased by 100%.
- Chance to hit with melee and ranged attacks reduced by 50%.
- Increases threat generated by 100%.
- Spell and ability costs reduced by 50%.
- Casting time increased by 100%.
- Damage done by critical hits increased by 100%.

|cff00FF96Spectral Realm:|r This is a debuff placed on players that enter the spectral realm. It lasts 60 seconds. When this debuff expires, the player will be ported back to the dragon realm.

|cff00FF96Spectral Exhaustion:|r This debuff is placed on players that are removed from the spectral realm. It prevents re-entry into the spectral realm until it expires. It lasts for 60 seconds.

|cff00FF96Tail Lash:|r Standard dragon tail lash. This deals damage and knocks the player down. The Tail Lash should be avoided.

|cff00ff00Sathrovarr the Corrupter|r
(Located in the "spectral realm," henceforth referred to as the demon realm)

|cff00FF96Corrupting Strike:|r This massive shadow nuke deals between 9k and 10k damage. It applies a DoT that does an additional 1k damage over 3 seconds, as well as a knockdown effect for that three seconds that does not allow the tank to mitigate.

|cff00FF96Curse of Boundless Agony:|r This is essentially the same as Curse Of Agony, dealing shadow damage that steadily rises throughout the duration of the curse. It starts ticking at 250, and if allowed to progress will eventually tick for over 6,000. When decursed, this curse will jump to a nearby target.

|cff00FF96Shadow Bolt Volley:|r This shadow damage attack deals 5-6k damage to a random target. This is a cone based attack, dealing damage to everyone in a small area around the targeted player.

This encounter relies heavily on organization and fully understanding all of the abilities listed above. If you have not read any of them, go over them thoroughly or you will not understand the reasoning behind the positioning in this article.

|cFFDBD5332) Group Composition
------------------|r
The composition recommended for this fight is the following:
    * 8 or more healers
    * 3 tanks
    * 4 or more decursers

Managing the portals and who takes them to the Spectral Realm is key to stopping the Arcane Buffet from stacking too high (killing raid members) and getting the damage in on Sathrovarr in his realm.

You are going to want to arrange the first 4 groups so that there are 2 healers and one decurser in each group peppering in DPS after meeting the aforementioned requirement so that the ported groups are balanced. Don't worry about the tanking: those 3 guys are on a separate rotation so dump them in the 5th raid group. Due to the tank group having 2 extra spots, those individuals will be assigned to one of the first 4 portal groups each to even things out. They can go in any of the 4 groups but make sure that, upon assignment, each group still meets the whole 2 healer 1 decurser requirement. Make sure people are paying attention to their group number so they know when to hop into portals because these 4 groups are going to be part of a rotation dependant on who gets ported when. If any group member gets ported the others need to get into that portal fast. Missing a portal is not a good thing, especially when being one of the last groups to go through initially. After 4 portals the rotation is set in place and should be easy.

The tanks are going to be on their own rotation independent of the other 4 groups so mash them into their own group. This leaves 2 slots open in their group. It is best to fill these slots with healers or DPS that can hold their own without group support as they will be accompanying one of the first 4 groups (depending on where you put them) each. Remember to consider what each of the first 4 groups needs before assigning these individuals.

The first tank will grab Kalecgos, the second tank enters the first portal to tank the demon, and the third tank will take Kalecgos as the first tank enters the second portal. The second tank will take Kalecgos as the third tank enters the third portal. It sounds complicated but the rotation will become automatic and just requires communication.

Now that you understand the abilities and group composition, lets go over how the fight will play out.

|cFFDBD5333) The Fight
------------------|r

|cff00ff00Dragon Phase|r

Make sure that on the pull 2 things are worked out. The first is where the groups will be standing so that entering portals will be streamlined and easy. Groups can just stay in a general area with their members. Melee should try to position close to their group without triggering the boss's parries.

The second concern is the actual pull itself. Upon engaging (or rather shortly after), you are sealed into the tiny area by a blue mist (visually shown), so make sure that you are all paying attention and have the distractible raid members turn their TVs off because you all should be entering at once. You will also want to face Kalecgos as shown to avoid him breathing on entering group members.

Make sure that, although you are at your position, you are also spread out. This minimizes the damage of the portals when they spawn, and you are going to want to do that because, although in the beginning few portals people wont be taking too much from the Arcane Buffet, as the fight progresses you will always have one group that is dangerously close to being able to be killed by a combination of Arcane Buffet and portal damage. The second thing to watch out for is the Wild Magic debuff/buff. Do not ride the tank's threat as in the dragon phase you will be ahead in DPS anyway due to how the fight begins. If you review the Wild Magic abilities you'll see three that can easily pull aggro and cause wipes.

This phase is quite easy to get a grip on. Make sure you have someone dispelling your tank to improve his threat. Also, as the fight goes on you'll have a complication. The curse will hop over from the Spectral Realm (Sathrovarr's dimension) into the Dragon realm, so make sure you are still keeping tabs on the decursers. The first person that gets ported will be followed by his or her group. The same will follow for subsequent ported members. As time goes on this rotation will become automatic, but the order will be random so pay attention.

|cff00ff00Demon Phase|r

After entering one of those portals Kalecgos spawns every 25 seconds or so, you will be transported to this phase for 60 seconds (that means you'll see some of the members from other groups inside). Tanks are to Taunt Sathrovarr off the human form of Kalecgos inside and begin tanking (if this is not done human Kalecgos will die). Make sure you face Sathrovarr away from Kalecgos' human form to stop parries and allow melee to be close to the ranged DPS and healers.

The groups that are ported inside will bunch up as displayed. This is done to make healing the Shadowbolt damage easier. Make sure that you are keeping a watch on the curses and stopping them from ticking too hard on one player; keep them bouncing. The comfort level of the bounce will vary so pay attention to how the mechanic works and adjust accordingly. Decursing is a priority so if you are a damage focused mage control yourself and remember it's going to help kill the boss more to keep your fellow raid members alive. After 60 seconds you will be ported back to the dragon form and unable to enter the Spectral Realm and fight the demon for 60 seconds. Decursers make sure you are paying attention when going back to the dragon phase: continue curse management.

|cff00ff00Repeat|r

You will be repeating this cycle until the death of the boss. You need to make sure you are keeping track of the life totals of Kalecgos and the Demon as they must both die close to the same time to minimize a potential wipe. Reduce DoTs as the life totals get lower. One will enrage when the other's health is at 0% and deal more damage (every 1%) as you hurt him so try to make sure that they die pretty close to the same time as best as possible and to prevent a low % wipe.

Keep your focus and don't lose it just because you are almost done.

|cFFDBD5334) Class Roles
------------------|r

|cffC41F3BTank|r - Keep your communication going as if you screw up the rotation, you screw the raid. Death is not a recoverable option.

|cffFF7D0ADruid|r - As one of the decursing classes you should know what to keep track of.

|cffF58CBAPaladin|r - Nothing special here, really. You are one of the strong single target healers so you will most likely be handling tank damage. For DPS or tanking paladins your job should be pretty easy to understand.

|cff808080Priest|r - Healing and shadow priests play a role in the AoE healing. The more AoE damage you can repair in either phase the better.

|cffABD473Hunter|r - DPS your hearts out; you have no real responsibilities other than the Misdirection. Mind your pet and make sure to call out for its heals.

|cff9482C9Warlock|r - DPS away, but mind your health and switch to survival mode when needed.

|cff69CCF0Mage|r - Prioritise your curse management. If you forget your task you will cost people their lives.

|cffC79C6EDPS Warrior|r - Mind your positioning and be sure to be by your assigned group area without attacking from the front. Stay at maximum melee range to make taking portals easier for the ranged classes.

|cffFFF569Rogue|r - Same as the DPS warriors

]]

L["tactic Brutallus"] =  [[
|cffff0000Brutallus
------------------|r
|cffff4000Thanks to Laqueesha from Bosskillers.com
Guide taken from http://www.ownedcore.com/forums/world-of-warcraft/world-of-warcraft-guides/137435-guide-sunwell-boss-list-guides.html|r

|cFFDBD5331) Raid Composition
------------------|r

This is an encounter that, at least for first kills, will require absolute min-maxing of raid composition.

2 Tanks
7-8 Healers
15-16 DPS (No more than 5 melee due to soaking requirements for Meteor Slash. At least one hunter.)

|cFFDBD533Raid Composition Commentary|r

|cffC41F3BTanks|r: Can be either protection warriors or feral druids; a feral druid can help to boost damage with Faerie Fire and Mangle if one is not already included with the melee.

|cff47d147Healers|r: 2 Shaman, 2 priests, 2-3 paladins and 1 druid. Priests and 1-2 of the Paladins heal the main tanks; maintaining Inspiration on the main tank is necessary at all times. Shaman heal the damage the raid takes from Meteor Slash. The druid and 1 paladin should heal Burn targets.

|cff0000ffDPS|r: Limit to 5 melee DPS. Warlocks can prove very useful in numbers here and stacking for absolute maximum DPS will be needed. Limit yourself to 1-2 Shadow priests; healers on the tank will need one due to Brutallus' damage output and spike capability.

|cFFDBD533Buffs and Consumables|r
All raid members must be fully buffed with flasks, elixirs, food, Haste Potions, Destruction Potions, and Ironshield Potions. Melee DPS classes should use old world Elixirs of Demonslaying. Drums of Battle are very useful and any raid members who can should be using them. All of these should be used on cooldown and a Heroism rotation should be developed and used. The raid must put out 27,777 DPS to beat the enrage timer.


|cffff0000Brutallus|r
10,000,000 Health, Demon, Taunt-able, 6 minute enrage timer. Brutallus himself has only a few abilities.

|cff00FF96Sunwell Radiance|r
Chance to hit increased by 5%.
Enemy chance to dodge reduced by 20%.

This buff is currently active on all NPCs in Sunwell Plateau, including bosses, it seems intended to balance encounters against high avoidance tank gear. It also makes the rogue ability Evasion less effective. It does not require any particular raid strategy to counter, but tanks and rogues should be aware of it. 

|cff00FF96Meteor Slash|r
This is a 30 yard range fire based frontal cone attack. It has a 1 second cast time and a 12 second cooldown. It deals 20000 damage split between all targets within the cone, and applies a stacking debuff that increases fire damage by 75%. It lasts for 40 seconds. This cannot be resisted, dodged, parried or miss.

|cff00FF96Burn|r
A fire based damage over time attack. At any point during the duration of the debuff, if the afflicted player moves within 2-3 yards of another player, they will spread a fresh debuff to the new player. Burn is randomly targeted. Damage starts at negligible amounts and increases every few ticks, culminating with a ~6000 tick at the end. The debuff lasts 60 seconds, can be resisted, and is removed by Cloak of Shadows, Iceblock, and Divine Shield.

|cff00FF96Stomp|r
This reduces the armor of Brutallus' primary target by 50% for 10 seconds and also deals 18850-21150 physical damage after mitigation. It will hit a well geared tank for approximately 5000. Note that this attack removes the Burn debuff.

|cff00FF96Melee|r
Brutallus has a very fast attack speed and hits off hand and main hand. Without Stomp, his main hand will hit for 6-8000 and his off hand will hit for ~3000. During a Stomp they will increase to 8-11000 and 4-5000 respectively.

|cff00FF96Enrage|r
After 6 minutes Brutallus will gain a 500% increase to his damage and 150% increased attack speed. This will kill even Shield Wall-ed tanks.


|cFFDBD5332) Strategy
------------------|r

|cFFDBD533Positioning|r

The Raid will be split into 3 groups. The melee will be their own group; they will remain in the same position for the entire fight. Prior to the pull, or on early attempts, each melee should be assigned a position 2-3 yards apart so as not to spread the Burn debuff; Brutallus's tail can and will cover players up and obscure them from view, so moving is not advised. The other two groups will be group A and group B. The remainder of the raid should be split between each of the two tanks. Each of these groups should have between 9-12 players (counting the tank). As much effort as possible should be spent to keep the numbers even. Within each of these groups should be both healers and DPS. Healers should occupy the positions near the front while DPS stay near the back. All players in the raid should have an assigned position and should have no reason to move to anyone else's spot.

In addition to these are two initially unoccupied areas beside the melee group. This is the Burn areas where players in groups A and B will run to should they get the Burn debuff. Within the Burn areas players should remain spread by 2-3 yards so as not to respread their debuff. In this area the Burned players should continue to DPS and heal all out during their debuff. Healers will need to be placed in groups A and B so that they are in range of the Burn areas. Melee does not have to reposition as they should be spread enough to avoid spreading it and will not be soaking Meteor Slashes. This means they should be able to spend 100% of their time DPS-ing Brutallus.

|cFFDBD533The Fight|r

This is a very unforgiving fight, the slightest mistake can be the difference between a wipe and a kill. All damage increasing debuffs should be used on Brutallus (Curse of Recklessness, though it will increase Brutallus' own damage, is necessary). Any debuff which will decrease the raid's damage will be tremendously helpful too.

The raid will position themselves in their spots and a hunter will use Misdirection to begin the fight. As soon as the tank has initial aggro, the raid should begin DPS. Any aggro pull, death, or disconnect will almost always result in a wipe.

Shortly after engaging, Brutallus will do his first Meteor Slash. Everyone in group A should be hit by it. If people are not, they should adjust to make sure they will take the next one. Following three Meteor Slashes, the tank in group B should Taunt. Tanks should offer a count of 3-2-1 over voice comms to allow healers to prepare heals on him. After three Meteor Slashes on group B, the debuff on group one should have worn off and at that point group A's tank should do as group B's tank did previously: count and then Taunt. That rotation will continue for the duration of the fight.


Throughout the fight, Brutallus will cast Burns. All healers and ranged DPS should move to the Burn spots shown in the diagram. It is imperative that those with Burn get out of the frontal cone immediately. Having the Meteor Slash debuff for the final few ticks of Burn will result in a death for almost anyone. The first few ticks are only for a few hundred, so the priority should be getting out of the Meteor Slash cone over getting to the safe spot. When a Burned player reaches the safe spot they should make it a point to make sure they are out of the cone: it is rather wide and completely lethal. Players must almost make sure not to spread their flame to players whose Burn has just worn off.

Along with Burn, Brutallus will cast another debuff, but only on his current target: Stomp. Healers should make sure to have the latest version of their boss mods that will give them a warning for incoming Stomps. Upon seeing the warning, all tank healers should immediately begin chain casting their best heals on the tank. A half second break in the heals can result in a tank death and a wipe. During a Stomp, tanks should use whatever trinkets they have and be prepared to use Last Stand or Shield Wall.

|cFFDBD5333) Class Roles
------------------|r

|cffFFF569Rogue|r: Do maximum DPS. Use Cloak of Shadows on Burns to reduce the healing needed.

|cff0070DEShaman|r: For enhancement and elemental shaman, do the maximum DPS possible while buffing your group. For restoration shaman, heal the raid following Meteor Slashes, when there are no targets to heal for Meteor Slashes help on tank/Burn targets.

|cffF58CBAPaladin|r: Retribution paladins do maximum DPS. Holy paladins should either be healing the tank or Burn targets. Those on the Burn targets can begin by using Flash of Light and switching to Holy Light as the Burn increases. Healers on the main tank will have to chain cast higher rank Holy Light the entire fight. Use Divine Shield on Burns to maintain heals and reduce healing strain on Burn healers. Blessing of Light should be used on all healers to aid in Burn healing.

|cff808080Priest|r: Shadow priests do maximum DPS. Holy priests should heal the main tank; they should be specced into Inspiration and be chain casting at all times to maintain the buff on the tank. This is key to dealing with the Stomp. Greater Heal should be used at almost all times with Prayers of Mending and Shields being tossed in on cooldown.

|cffABD473Hunter|r: Do maximum DPS, apply Scorpid Sting to reduce damage done.

|cff9482C9Warlock|r: Do maximum DPS, Curse Of Recklessness should be used in addition to Shadows Doom, and Curse of the Elements if there are enough mages in the raid to warrant it.

|cff69CCF0Mage|r: Do maximum DPS, Iceblock to save healers' mana on Burns.

|cffC79C6EWarrior|r: Tank or do as much DPS as possible. One warrior should have Improved Thunderclap and Improved Demoralizing Shout to reduce damage done. If a DPS warrior is brought he should preferably be arms specced to increase physical DPS.

|cffFF7D0ADruid|r: Feral druids should tank or DPS and maintain Faerie Fire and Mangle on the boss at all times to increase raid DPS. Balance druids, if they can maintain the damage, should Insect Swarm and Faerie Fire and do DPS. A single restoration druid should be brought; if there is a lack of other healers two can be. Restoration druids should be responsible for keeping the Burn targets up through Heals over time and Regrowths near the end; should they have time they can place Lifeblooms on the main tank. If they can maintain it and there is no other druid, they should put Faeire Fire and Insect Swarm on the boss at least early on in the fight.


|cFFDBD533Miscellaneous Notes|r
It can be helpful to have an alt priest and paladin logged out to provide an extra blessing and Improved Divine Spirit in between wipes as any little bit will help.

The mechanics are very simple but the execution is very difficult; it will take practice and sometimes luck to win.

Gear is of paramount importance; the requirements of this boss will exclude many players for no reason other than lack of gear. Make sure everyone in your raid has taken every possible opportunity to better their characters.

A first kill will likely be during an enrage. During the enrage, following tank deaths, paladins can Divine Shield and Taunt to try and push the last percent down.

This is a tough DPS fight. 
]]

L["tactic Felmyst"] =  [[
not yet available
]]

L["tactic Twins"] =  [[
not yet available
]]

L["tactic M'uru"] =  [[
not yet available
]]

L["tactic Kil'jaeden"] =  [[
not yet available
]]

--texts for trash

L["trash Kalecgos"] =  [[


]]

L["trash Brutallus"] =  [[

]]

L["trash Felmyst"] =  [[

]]

L["trash Twins"] =  [[

]]

L["trash M'uru"] =  [[

]]


--ra text messages every line separated by \n
L["ra Kalecgos"] = ""
L["ra Brutallus"] = ""
L["ra Felmyst"] = ""
L["ra Twins"] = ""
L["ra M'uru"] = ""
L["ra Kil'jaeden"] = ""

--button captions
L["More Melees"] = true
L["Less Melees"] = true
L["group 2"] = true
L["group 3"] = true
L["group 4"] = true
L["group 5"] = true
L["Spectral Realm"] = true
L["Burn Spot"] = true
L["healer & ranged DPS"] = true
L["Conflagration zone"] = true
L["Warlock tank"] = true
L["Paladin"] = true
L["Dark Fiends"] = true