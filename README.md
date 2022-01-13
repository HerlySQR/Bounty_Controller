# Bounty Controller
![GitHub Light](https://www.hiveworkshop.com/data/ratory-images/189/189725-51e27713323c248aaecbc6a5062c4c5d.jpg)

This system alows you to have control of almost everything related to the bounties (I am surprised that no one else has done this as far as I saw, I mean, I already saw other systems and none does everything that it does, and that I am not an expert and this is the first system that I share).

**How to use it:**

Important is have deactivated the bounties (this system do that, but don't active them) and you have to set the values of the bounties manually.

First (obviously import BountyController) set the values using
```java
Bounty.set(<Unit-type id>, <base bounty>, <number of dices>, <sides per dice>)
```
or in other case the bounty will be 0, and when the events will be fired, those you register with the functions:
```java
registerBountyDeadEvent(BountyCallback cb) // Fires when a unit kills another
registerBountyEvent(BountyCallback cb) // Fires everytime the method run (explained later) is fired without problems
```
The value cb is a function that has an argument of the class ```Bounty``` and it has the fields
```java
int amount // The quantity of gold or lumber that you will receive (it can be negative).
real size // The size of the text.
real lifeSpan // The max. lifetime of the text.
real age // For some reason the x,y position of the texttag respect to the camera depends of its speed and age, so you can edit it.
real speed // The speed of the text.
real direction // The direction to the texttag will move.
real fadePoint // How many seconds the text will fade after apear.
string state // What type of bounty the player will receive (only "gold" and "lumber" are valid).
real height // How many distance the text will be from the floor.
boolean show // To show the text or not.
boolean showNothing // If the Bounty is 0 by default the text is not showed, if you set this to true, the text will be showed even if the bounty is 0.
boolean allowFriendFire // By default the bounty only will happen if the dying unit is enemy of the killing unit, if you set this to true, the bounty will happen even if they weren't enemies.
string eff // The root of the effect that will be displayed (In the same place of the text)
boolean showEff // The effect will be displayed if this value is true.
boolean permanent // This allows erase it (care, if this value is true and you don't use the texttag later it can be an object leak)
player receiver // The player who will receive the bounty.
unit unitPos // The position of the text and the effect (If is a unit)
texttag textTag // The texttag that will be displayed (only accesable from the registerBountyEvent).
// Only with the registerBountyDeadEvent
unit killingUnit
unit dyingUnit
```
There are also methods:
```java
// The color of the texttag
setColor(string color)
setColor(color color)
setColor(colorA color)
getColor() returns string
// Set the position with a vector instead of a unit (this has more priority)
setPos(vec2 pos)
getPos() returns vec2 // If pos is null, it returns the position of unitPos
// Who can see the text tag
canSee(player p, boolean flag)
isSeeing(player p) returns boolean
// Short the process of changing the receiver, because doing "receiver = <Other player>" sometimes is not enough for the previous functions
changeReceiver(player newPlayer, boolean removePrevious, boolean addNew)
// To run manually the process (and destroy the instance)
run() returns texttag
run(integer bounty, unit pos, player myplayer, boolean addplayer, boolean perm) returns texttag
```
With the function ```registerBountyDeadEvent``` this values are editable, but with the ```registerBountyEvent``` is useless because the process ended
Example:
``` java
// Lose money when you kill a friend
registerBountyDeadEvent(bounty -> begin
    if bounty.killingUnit.getOwner().isEnemyOf(bounty.dyingUnit.getOwner())
        bounty.allowFriendFire = true
        bounty.amount *= -1
end)
// Change the text
registerBountyEvent(bounty -> bounty.textTag.setText("Hello!, how are you?", 10))
```
Also you can create your own bounties:
``` java
let curr = new Bounty()
curr.amount = GetRandomInt(0, 10)
curr.unitPos = GetTriggerUnit()
curr.receiver = GetTriggerPlayer()
curr.canSee(curr.receiver, true)
curr.run()
```
Give me tips to improve this system, thank you.
