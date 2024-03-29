# Documentation

## How to use it:

Important is have deactivated the bounties (this system do that, but don't active them) and you have to set the values of the bounties manually.

First set the values using
```java
Bounty.set(<Unit-type id>, <base bounty>, <number of dices>, <sides per dice>)
```
or in other case the bounty will be 0, and when the events will be fired, those you register with the functions:
```java
Bounty.onDead(BountyListener cb) returns BountyListener // Fires when a unit kills another
Bounty.onRun(BountyListener cb) returns BountyListener // Fires everytime the method run (explained later) is fired without problems
```
The value cb is a function that has an argument of the class ```Bounty``` and the procces works like this:
![Bounty Process](https://www.hiveworkshop.com/attachments/1642297398419-png.393388/)
### The fields to edit
`setAmount(int amount)` The quantity of gold or lumber that you will receive (it can be negative).
<br />`setSize(real size)` The size of the text.
<br />`setLifeSpan(real lifeSpan)` The max. lifetime of the text.
<br />`setAge(real age)` For some reason the x,y position of the texttag respect to the camera depends of its speed and age, so you can edit it.
<br />`setSpeed(real speed)` The speed of the text.
<br />`setDirection(angle direction)` The direction to the texttag will move.
<br />`setFadePoint(real fadePoint)` How many seconds the text will fade after apear.
<br />`setState(string state)` What type of bounty the player will receive (only "gold" and "lumber" are valid).
<br />`setHeight(real height)` How many distance the text will be from the floor.
<br />`setShow(boolean show)` To show the text or not.
<br />`setShowNothing(boolean showNothing)` If the Bounty is 0 by default the text is not showed, if you set this to true, the text will be showed even if the bounty is 0.
<br />`setAllowFriendFire(boolean allowFriendFire)` By default the bounty only will happen if the dying unit is enemy of the killing unit, if you set this to true, the bounty will happen even if they weren't enemies.
<br />`setEff(string eff)` The root of the effect that will be displayed (In the same place of the text).
<br />`setShowEff(boolean showEff)` The effect will be displayed if this value is true.
<br />`setPermanent(boolean permanent)` This allows erase it (care, if this value is true and you don't use the texttag later it can be an object leak)
<br />`setReceiver(player receiver, boolean canSee)` The player who will receive the bounty (the boolean is to set if can see the text tag).
<br />`setUnitPos(unit unitPos)` The position of the text and the effect (If is a unit)
These values you can get and also these others:
<br />`unit getKillingUnit()` replace for GetKillingUnit()
<br />`unit getDyingUnit()` replace for GetDyingUnit()
<br />`texttag getTexttag()` The texttag that will be displayed (Only with the registerBountyEvent).

**Methods:**<br />
The color of the texttag
```java
setColor(string color)
setColor(color color)
setColor(colorA color)
getColor() returns string
```
Set the position with a vector instead of a unit (this has more priority)
```java
setPos(vec2 pos)
getPos() returns vec2 // If pos is null, it returns the position of unitPos
```
Who can see the text tag
```java
canSee(player p, boolean flag)
isSeeing(player p) returns boolean
```
Short the process of changing the receiver
```java
changeReceiver(player newPlayer, boolean removePrevious, boolean addNew)
```
To run manually the process (and destroy the instance)
```java
run() returns texttag
run(integer bounty, unit pos, player myplayer, boolean addplayer, boolean perm) returns texttag
```

## Examples:
**Lose money when you kill a friend**
```java
Bounty.onDead(bounty -> begin
    if bounty.getKillingUnit().getOwner().isAllyOf(bounty.getDyingUnit().getOwner())
        bounty..setAllowFriendFire(true)
              ..setAmount(bounty.getAmount() * -1)
end)
```
Result:<br />
![kill ally](https://www.hiveworkshop.com/attachments/1642298492574-png.393389/)<br />
**Get lumber instead of gold**
```java
Bounty.onDead(bounty -> bounty.setState("lumber"))
```
Result:<br />
![get lumber](https://www.hiveworkshop.com/attachments/1642298922564-png.393392/)<br />
**Change the text**
```java
Bounty.onRun(bounty -> bounty.getTextTag().setText("Hello!, how are you?", 10))
```
Result:<br />
![change text](https://www.hiveworkshop.com/attachments/1642298749666-png.393390/)<br />
**Also you can create your own bounties**
``` java
new Bounty()
    ..setAmount(1546)
    ..setUnitPos(GetTriggerUnit())
    ..setReceiver(GetTriggerPlayer(), true)
    ..run()
```
Result:<br />
![custom bounty](https://www.hiveworkshop.com/attachments/1642298855233-png.393391/)<br />

Give me tips to improve this system, thank you.
