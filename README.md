# Floor is Air!

Welcome! I am Commusic, a Minecraft player from Hong Kong.<br>
_Floor is Air!_ is my first map for party gaming.<br>
This map is inspired thanks to _Volcano_ of _Party Game_ and _TNT Run_ from Hypixel.

Other languages:

- [English](README.md)
- [Traditional Chinese](README.zh-Hant.md)

## Main contents

> [!TIP]
>
> Number of players:<br>
> At least 2 players;<br>
> More than 4 Players are suggested.
>
> Estimated time required:<br>
> 3-5 minutes/round.

During the game, the floor players have stepped on will change its colour until it disappears.<br>
Order: Light grey → Yellow → Orange → Red → Disappears!<br>
There is a total of 5 floors. Attack other players to let them fall and stay alive to win the game!

There are 9 items available in this game.

| Image | Item             | Description                                                |
|-------|------------------|------------------------------------------------------------|
|       | Knock Back Rod   | Knock back other players!                                  |
|       | Shears / Pickaxe | The traditional fun.<br>Based on the texture of the floor. |
|       | TNT              | Art is Boom! 芸術は爆発だ！                                       |
|       | Super Snowball   | How effective...                                           |
|       | Speed up Events  | Don't you think random things can cause more fun?          |
|       | End Crystal      | More artistic!                                             |
|       | Time Pause!      | ZA WARUDO!!                                                |
|       | Rocket           | I believe I can fly...                                     |
|       | Totem of Undying | Just one more chance...                                    |

Besides, you can adjust some changes related to the appearance and the game.

> Theme `Quartz` `Oak` `Purpur`
>
> Floor Texture `Wool` `Concrete` `Stained Glass`
> 
> Death Block `Magma Block` `Black Concrete`
> 
> All Items `Disable` `Enable`
> 
> Items Cool Down `Disable` `Enable`
> 
> Random Events<br>
> `Disable random event`<br>
> `Enable random event but not to show the event bar`<br>
> `Enable random event and show the event bar`

## Info

- Please change game difficulty into **Easy** by `/difficulty easy`.

- Please players' game mode into **Adventure Mode**, by `/gamemode adventure @a`.

- Please do **NOT** make changes to the game rule. (`/gamerule`)

- Please ensure certain options in the `server.properties` file are changed as the same as the following provided, or ensure the (LAN) server meets the following requirements:

  1. Enable command blocks in the server.<br>In the `server.properties` file:
    ```
  enable-command-block=true
    ```
  
  2. At least one player has op permission, and op permission level is equal or larger than 2.<br>Change the value in the `server.properties` file, replace `[2..4]` with 2, 3 or 4:
  
    ```
  op-permission-level=[2..4]
    ```

  3. When opening the world to the LAN, toggle `Allow Cheats` to `On`.

> [!WARNING]
>
> Disabling command blocks results in the inability to start the game.<br>
> Giving no players the op permission, or setting op permission level `0` or `1` results in the inability of toggling game options.

> [!CAUTION]
>
> Required Minecraft version:<br>
> **Minecraft Java Edition 1.20.4**
>
> Using an incorrect Minecraft version may result in forever damage to the world, and/or inability to play normally.<br>
> When this happens, you need to download and install the map again.
