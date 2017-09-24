#
# Cookbook:: chef-arkserver
# Attributes:: default
#
# Author:: Nick Gray (f0rkz@f0rkznet.net)
#
# Copyright:: 2017 f0rkznet.net
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
default['steam']['user'] = 'steam'
default['steam']['steamcmd']['install_dir'] = '/opt/steam'

default['ark']['appid'] = '376030'
default['ark']['install_dir'] = '/opt/arkserver'
default['ark']['force_update'] = false

default['ark']['gameserver']['configuration'] = {
  # The map to use when running the server
  map: 'TheIsland',
  # Specifies the maximum number of players that can play on the server
  # simultaneously.
  MaxPlayers: 70,
  ListenPort: 7777,
  QueryPort: 27015,
  EnableRcon: true,
  battleeye: true,
  ServerSettings: {
    # Enables 3rd Person view
    allowThirdPersonPlayer: 'False',

    # If set to 1, allows building in caves when PvE mode is also enabled.
    # This seems to be a dead option
    AllowCaveBuildingPvE: 'False',

    # Players will always get notified if someone joins the server
    alwaysNotifyPlayerJoined: 'False',

    # Players will always get notified if someone leaves the server
    alwaysNotifyPlayerLeft: 'False',

    # Allows flyers to pick up players and dinos
    bAllowFlyerCarryPvE: 'False',

    # Disable the gradual (7 days) decay of player structures
    bDisableStructureDecayPvE: 'False',

    # Specifies the scaling factor for the passage of time in the ARK,
    # controlling how often day changes to night and night changes to day.
    # The default value 1 provides the same cycle speed as the singleplayer
    # experience (and the official public servers). Values lower than 1 slow
    # down the cycle; higher values accelerate it.
    # Base time when value is 1 appears to be 1 minute real time equals approx.
    # 28 minutes game time. Thus, for an approximate 24 hour day/night cycle in
    # game, use .035 for the value.
    DayCycleSpeedScale: '1.00000',

    # Specifies the scaling factor for the passage of time in the ARK during the
    # day. This value determines the length of each day, relative to the length
    # of each night (as specified by NightTimeSpeedScale. Lowering this value
    # increases the length of each day.
    DayTimeSpeedScale: '1.00000',

    # Specifies the scaling factor for the passage of time in the ARK during
    # night time. This value determines the length of each night, relative to
    # the length of each day (as specified by DayTimeSpeedScale. Lowering this
    # value increases the length of each night.
    NightTimeSpeedScale: '1.00000',

    # Specifies the scaling factor for dinosaurs' food consumption. Higher
    # values increase food consumption (dinosaurs get hungry faster).
    DinoCharacterFoodDrainMultiplier: '1.00000',

    # Specifies the scaling factor for dinosaurs\' health recovery. Higher
    # values increase the recovery rate (dinosaurs heal faster).
    DinoCharacterHealthRecoveryMultiplier: '1.00000',

    # Specifies the scaling factor for dinosaurs\' stamina consumption. Higher
    # values increase stamina consumption (dinosaurs get tired faster).
    DinoCharacterStaminaDrainMultiplier: '1.00000',

    # Specifies the scaling factor for dinosaur spawns. Higher values increase
    # the number of dinosaurs spawned throughout the ARK.
    DinoCountMultiplier: '1.00000',

    # Specifies the scaling factor for the damage dinosaurs deal with their
    # attacks. The default value 1 provides normal damage. Higher values
    # increase damage. Lower values decrease it.
    DinoDamageMultiplier: '1.00000',

    # Specifies the scaling factor for the resistance to damage dinosaurs
    # receive when attacked. The default value 1 provides normal damage.
    # Higher values decrease resistance, increasing damage per attack. Lower
    # values increase it, reducing damage per attack. A value of 0.5 results in
    # a dino taking half damage while a value of 2.0 would result in a dino
    # taking double normal damage.
    DinoResistanceMultiplier: '1.00000',

    # Voice chat turns global
    globalVoiceChat: 'False',

    # Specifies the scaling factor for yields from all harvesting activities
    # (chopping down trees, picking berries, carving carcasses, mining rocks,
    # etc.). Higher values increase the amount of materials harvested with each
    # strike.
    HarvestAmountMultiplier: '1.00000',

    # Specifies the scaling factor for the "health" of items that can be
    # harvested (trees, rocks, carcasses, etc.).
    # Higher values increase the amount of damage (i.e. \"number of strikes\")
    # such objects can withstand before being destroyed, which results in higher
    # overall harvest yields.
    HarvestHealthMultiplier: '1.00000',

    # (OUTDATED) Specifies the maximum number of structures that can be
    # constructed within a certain (currently hard-coded) range.
    MaxStructuresInRange: 6700,

    # Disables downloading characters from other servers
    noTributeDownloads: 'False',

    # Prevents the download of survivors
    PreventDownloadSurvivors: 'False',

    # Prevents the download of items
    PreventDownloadItems: 'False',

    # Prevents the download of dinos
    PreventDownloadDinos: 'False',

    # Specifies the scaling factor for player characters\' food consumption.
    # Higher values increase food consumption (player characters get hungry
    # faster).
    PlayerCharacterFoodDrainMultiplier: '1.00000',

    # Specifies the scaling factor for player characters\' health recovery.
    # Higher values increase the recovery rate (player characters heal faster).
    PlayerCharacterHealthRecoveryMultiplier: '1.00000',

    # Specifies the scaling factor for player characters\' stamina consumption.
    # Higher values increase stamina consumption (player characters get tired
    # faster).
    PlayerCharacterStaminaDrainMultiplier: '1.00000',

    # Specifies the scaling factor for player characters' water consumption.
    # Higher values increase water consumption (player characters get thirsty
    # faster).
    PlayerCharacterWaterDrainMultiplier: '1.00000',

    # Specifies the scaling factor for the damage players deal with their
    # attacks. The default value 1 provides normal damage. Higher values
    # increase damage. Lower values decrease it.
    PlayerDamageMultiplier: '1.00000',

    # Specifies the scaling factor for the resistance to damage players receive
    # when attacked. The default value 1 provides normal damage. Higher values
    # decrease resistance, increasing damage per attack. Lower values increase
    # it, reducing damage per attack. A value of 0.5 results in a player taking
    # half damage while a value of 2.0 would result in taking double normal
    # damage.
    PlayerResistanceMultiplier: '1.00000',

    # Only players near each other can see their chat messages
    proximityChat: 'False',

    # Defines the distance where there are no resources respawning when being
    # close to a player
    ResourceNoReplenishRadiusPlayers: '1.00000',

    # Defines the distance where there are no resources respawning when being
    # close to a structure
    ResourceNoReplenishRadiusStructures: '1.00000',

    # Specifies the scaling factor for the respawn rate for resource nodes
    # (trees, rocks, bushes, etc.). Lower values cause nodes to respawn more
    # frequently.
    ResourcesRespawnPeriodMultiplier: '1.00000',

    # If specified, players must provide this password (via the in-game console)
    # to gain access to administrator commands on the server.
    ServerAdminPassword: '',

    # Shows crosshair
    ServerCrosshair: 'True',

    # HUD always disabled
    serverForceNoHud: 'False',

    # Enables hardcore mode (player characters revert to level 1 upon death)
    serverHardcore: 'False',

    # If specified, players must provide this password to join the server.
    ServerPassword: '',

    # Disables PvP, enables PvE
    serverPVE: 'False',

    # Show each player their own precise position when they view their map
    ShowMapPlayerLocation: 'False',

    # Specifies the scaling factor for the damage structures deal with their
    # attacks (i.e. spiked walls). The default value 1 provides normal damage.
    # Higher values increase damage. Lower values decrease it.
    StructureDamageMultiplier: '1.00000',

    # Specifies the scaling factor for the resistance to damage structures
    # receive when attacked. The default value 1 provides normal damage. Higher
    # values decrease resistance, increasing damage per attack. Lower values
    # increase it, reducing damage per attack. A value of 0.5 results in a
    # structure taking half damage while a value of 2.0 would result in a
    # structure taking double normal damage.
    StructureResistanceMultiplier: '1.00000',

    # Specifies the scaling factor for tamed dinosaurs damage.
    # A value of 2.0 doubles the inital amount, a value of 0.5 halfes it.
    TamedDinoDamageMultiplier: '1.00000',

    # Specifies the scaling factor for dinosaurs fortitude.
    # A value of 2.0 doubles the inital amount, a value of 0.5 halfes it.
    TamedDinoResistanceMultiplier: '1.00000',

    # Specifies the scaling factor for dinosaur taming speed.
    # A value of 2.0 doubles the inital amount, a value of 0.5 halfes it.
    TamingSpeedMultiplier: '1.00000',

    # Specifies the scaling factor for the experience received by players,
    # tribes and dinosaurs for various actions. The default value 1 provides
    # the same amounts of experience as in the singleplayer experience
    # (and official public servers). Higher values increase XP amounts awarded
    # for various actions; lower values decrease it.
    XPMultiplier: '1.00000',

    # Allows or disallows usage of gamma on PVP servers
    EnablePVPGamma: 'False',

    # Allows or disallows usage of gamma on PVE servers
    EnablePVEGamma: 'False',

    # To use non-admin spectator, the server must specify a spectator password.
    # Then any client can use these console commands: requestspectator and
    # stopspectating. See patch 191.0 for more information and hotkeys.
    SpectatorPassword: '',

    # Specifies the difficulty level.
    DifficultyOffset: '0.50000',

    # Specifies the scaling factor for the decay rate of player structures in
    # PvE mode. The specific effect(s) of this option and its range of valid
    # values are unknown as of this writing.
    PvEStructureDecayPeriodMultiplier: '1.00000',

    # Specifies the time required for player structures to decay in PvE mode.
    # The specific effect(s) of this option and its range of valid values are
    # unknown as of this writing.
    PvEStructureDecayDestructionPeriod: '1.00000',

    # Uses the global banlist of ARK to disallow players' access who have been
    # identified as cheaters
    Banlist: "http://playark.com/banlist.txt",

    # Activates (true) oder deactivates (false) the structure decay on PVP
    # servers
    PvPStructureDecay: 'False',

    # Deactivates the unclaiming functions for dinosaurs on PVE servers
    DisableDinoDecayPvE: 'False',

    # Multiplier value for the unclaiming speed of dinosaurs
    PvEDinoDecayPeriodMultiplier: '1.00000',

    # Enables the output of cheat commands that admins used
    # (will be shown in chat)
    AdminLogging: 'False',

    # Defines the maximum amount of tamed dinos on the island
    MaxTamedDinos: 8000,

    # SOTF setting: Defines the maximum player limit per tribe
    MaxNumbersofPlayersInTribe: 2,

    # SOTF setting: Defines how many tribes must have been created before the
    # countdown for game start begins
    BattleNumOfTribestoStartGame: 2,

    # SOTF setting: Defines the time period for the force field to collapse
    TimeToCollapseROD: 100,

    # SOTF setting: Defines the length of the countdown before match begins
    BattleAutoStartGameInterval: 100,

    # SOTF setting: Defines the time before sudden death starts
    BattleSuddenDeathInterval: 300,

    # Time period until an idling player will be kicked from server
    KickIdlePlayersPeriod: 1800,

    # Defines the multiplicator for structures on saddle plattforms
    # (Please use with caution - too high values may lead to a massive lack of
    # performance)
    PerPlatformMaxStructuresMultiplier: '1.00000',

    # Defines the cooldown time when a previously damaged structure can be
    # repaired again. (0 allows the structure to be always repaired)
    StructureDamageRepairCooldown: 180,

    # Server Option to allow Locking All Item Containers
    bForceAllStructureLocking: 1,

    # Server Option to allow Auto-Destroying Structures after sufficient
    # "no nearby Tribe" time has passed (defined as a multiplier of the
    # Allow Claim period)
    AutoDestroyOldStructuresMultiplier: '0.00000',

    # Deactivates the VSync setting (can reduce GPU problems in some cases)
    bUseVSync: 'False',

    # Defines the maximum number of structures on top of the saddle platform
    MaxPlatformSaddleStructureLimit: 100,

    # Wild dinos or dinos without a rider can take damage from defense
    # structures like spikewalls if this setting is activated
    bPassiveDefensesDamageRiderlessDinos: 'True',

    # Under which port RCON should be available?
    RCONPort: 27020,

    # After which time period (in minutes) the server should auto-save the game?
    # (Hint: A more frequent interval may lead some lags)
    AutoSavePeriodMinutes: 20,

    # How many chat lines should be available in RCON?
    RCONServerGameLogBuffer: 600,

    # Determines if turrets are allowed on moving platforms or not.
    # Yes will prevent it. No will allow it
    OverrideStructurePlatformPrevention: 'False',

    # Defines the time period of being offline so that a player will be really
    # considered as being offline.
    PreventOfflinePvPInterval: '60.0',

    # Determines if dinos of a player/tribe are also protected in the activated
    # offline raid protection
    bPvPDinoDecay: 'True',

    # Determines if structures of a player/tribe are also protected in the
    # activated offline raid protection
    bPvPStructureDecay: 'True',

    # Deactivates (no) the bonus stats for a dino if you raise the baby by
    # yourself
    DisableImprintDinoBuff: 'True',

    # Allows everybody to cuddle with the dino baby
    AllowAnyoneBabyImprintCuddle: 'True',

    # Prevents the building of structures on places which are rich of resources
    EnableExtraStructurePreventionVolumes: 'True',

    # Shows dealt damages in a RPG style
    ShowFloatingDamageText: 'False',

    # If active, it will destroy the pipes automatically after two real-time
    # days, if unconnected to any non-pipe (directly or indirectly) and no
    # allied player is nearby.
    DestroyUnconnectedWaterPipes: 'True',

    # Overwrites the difficulty settings
    OverrideOfficialDifficulty: '1.0',

    # New value for the maximum allowed structures nearby
    TheMaxStructuresInRange: 10500,

    # Number of seconds cooldown between allowed Dino re-uploads
    # (defaults to 0, set to 43200 on Official Servers which is 12 hours).
    # Remaining cooldown time is displayed on the Dino Upload UI.
    MinimumDinoReuploadInterval: 0,

    # Use "true" if you want to allow being able to build structures nearby
    # supply drop. "false" will disable it.
    PvEAllowStructuresAtSupplyDrops: 'False',

    # a new Wild NPC Stasis Range scaling-for-player-count option to scale
    # server performance for more players
    NPCNetworkStasisRangeScalePlayerCountStart: 70,

    # a new Wild NPC Stasis Range scaling-for-player-count option to scale
    # server performance for more players
    NPCNetworkStasisRangeScalePlayerCountEnd: 120,

    # a new Wild NPC Stasis Range scaling-for-player-count option to scale
    # server performance for more players
    NPCNetworkStasisRangeScalePercentEnd: '0.50',

    # Quantity of dinos that a tribe is allowed to have
    # (Default on official PVE servers is 500)
    MaxPersonalTamedDinos: 500,

    # Option to auto-destroy claimable decayed dinos on load, rather than have
    # them remain around as claimable.
    # Official PvE servers now have this enabled.
    AutoDestroyDecayedDinos: 'True',

    # Will clamp all spoiling times to the items' maximum spoiling times.
    # Useful if any infinite-spoiling exploits were used on the server and you
    # wish to clean them up. Could potentially cause issues with Mods that
    # alter spoiling time, hence it is an option.
    ClampItemSpoilingTimes: 'False',

    # Server custom "HarvestAmountMultiplier" now works as it used to,
    # to bias towards yielding rarer items.
    # This is more costly for server performance, so if you want a more
    # "optimized" server with high HarvestAmountMultiplier
    # (but less rare items), you can launch with "yes" in this setting here.
    UseOptimizedHarvestingHealth: 'True',

    # Servers can now allow from-the-air Supply Crates to appear on top of
    # Structures, rather than being prevented by Structures.
    # Enabled on Official Servers.
    AllowCrateSpawnsOnTopOfStructures: 'True',

    # Made all Flyers except for Quetz and Wyvern become 'grounded' if you put a
    # C4 on them. To disable this behavior, launch server with "yes"
    ForceFlyerExplosives: 'False',

    # Enables ORP on PVE/PVP servers if set to "yes"
    PreventOfflinePvP: 'True',

    # Flyer Nerf (to allow server to recover Stamina when standing on a Flyer,
    # run with "yes")
    AllowFlyingStaminaRecovery: 'True',

    # Limited one C4 attached per dino, unless you choose "yes" to allow more
    # than one C4
    AllowMultipleAttachedC4: 'True',

    # Use this to set how swim speed is multiplied by level spent in oxygen.
    OxygenSwimSpeedStatMultiplier: '1.00',

    # When using "yes", you are now able to harvest a slaughtered Ovis.
    bPvEDisableFriendlyFire: 'True',

    # This will force respawns of dinos on servers to prevent certain dino types
    # (like the Basilo and Spino) from becoming depopulated on long running
    # servers. Specify a value in seconds (86400 means a forced respawn after
    # one day (realtime) for example)
    DayCycServerAutoForceRespawnWildDinosInterval: 86400,
  },
  SessionSettings: {
    # Name of your server
    SessionName: 'Unconfigured chef-ark server'
  },
  MessageOfTheDay: {
    # Specifies the duration of the welcome message
    Duration: 30,
    # Defines a welcome message
    Message: 'https://github.com/f0rkz/chef-arkserver'
  }
}
