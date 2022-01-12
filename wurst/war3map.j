//===========================================================================
// 
// Bounty Controller vJass Test Map
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Wed Jan 12 01:05:04 2022
//   Map Author: HerlySQR
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************

globals
    // User-defined
    integer                 udg_Nothing_to_see_here    = 0

    // Generated
    trigger                 gg_trg_Table               = null
    trigger                 gg_trg_Bounty_Controller   = null
    trigger                 gg_trg_Initialization      = null
    trigger                 gg_trg_Edits               = null
    trigger                 gg_trg_Get_money           = null
    trigger                 gg_trg_Global              = null
    trigger                 gg_trg_Hello               = null
    trigger                 gg_trg_Move_text           = null
    unit                    gg_unit_Hmkg_0001          = null
    unit                    gg_unit_nftk_0004          = null
    unit                    gg_unit_nfsh_0005          = null
    unit                    gg_unit_nrdr_0006          = null
    unit                    gg_unit_Hamg_0007          = null
    unit                    gg_unit_hfoo_0008          = null
    unit                    gg_unit_nspb_0017          = null
    trigger                 gg_trg_Detonador_sin_nombre_001 = null
endglobals

function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p = Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_Hmkg_0001 = CreateUnit( p, 'Hmkg', -472.6, 173.2, 339.910 )
    call SetHeroLevel( gg_unit_Hmkg_0001, 10, false )
    call SelectHeroSkill( gg_unit_Hmkg_0001, 'AHtb' )
    call SelectHeroSkill( gg_unit_Hmkg_0001, 'AHtb' )
    call SelectHeroSkill( gg_unit_Hmkg_0001, 'AHtb' )
    call SelectHeroSkill( gg_unit_Hmkg_0001, 'AHtc' )
    call SelectHeroSkill( gg_unit_Hmkg_0001, 'AHtc' )
    call SelectHeroSkill( gg_unit_Hmkg_0001, 'AHtc' )
    call SelectHeroSkill( gg_unit_Hmkg_0001, 'AHbh' )
    call SelectHeroSkill( gg_unit_Hmkg_0001, 'AHbh' )
    call SelectHeroSkill( gg_unit_Hmkg_0001, 'AHbh' )
    call SelectHeroSkill( gg_unit_Hmkg_0001, 'AHav' )
    set u = CreateUnit( p, 'hpea', -328.1, -7.2, 159.252 )
    set u = CreateUnit( p, 'hpea', -268.0, 117.7, 175.523 )
    set gg_unit_Hamg_0007 = CreateUnit( p, 'Hamg', -461.8, 17.9, 193.230 )
    call SetHeroLevel( gg_unit_Hamg_0007, 10, false )
    call SelectHeroSkill( gg_unit_Hamg_0007, 'AHbz' )
    call SelectHeroSkill( gg_unit_Hamg_0007, 'AHbz' )
    call SelectHeroSkill( gg_unit_Hamg_0007, 'AHbz' )
    call SelectHeroSkill( gg_unit_Hamg_0007, 'AHwe' )
    call SelectHeroSkill( gg_unit_Hamg_0007, 'AHwe' )
    call SelectHeroSkill( gg_unit_Hamg_0007, 'AHwe' )
    call SelectHeroSkill( gg_unit_Hamg_0007, 'AHab' )
    call SelectHeroSkill( gg_unit_Hamg_0007, 'AHab' )
    call SelectHeroSkill( gg_unit_Hamg_0007, 'AHab' )
    call SelectHeroSkill( gg_unit_Hamg_0007, 'AHmt' )
    set u = CreateUnit( p, 'Hblm', -135.7, 335.2, 49.341 )
endfunction

//===========================================================================
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p = Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_hfoo_0008 = CreateUnit( p, 'hfoo', -1526.7, -340.5, 58.581 )
    set u = CreateUnit( p, 'hfoo', -1209.7, -458.4, 71.534 )
    set u = CreateUnit( p, 'hfoo', -1191.8, -295.6, 83.191 )
    set u = CreateUnit( p, 'hfoo', -1283.8, -171.3, 152.198 )
    set u = CreateUnit( p, 'hfoo', -1558.0, -532.8, 270.810 )
    set u = CreateUnit( p, 'hfoo', -1352.4, -689.3, 225.710 )
    set u = CreateUnit( p, 'hfoo', -1279.0, -622.8, 323.371 )
    set u = CreateUnit( p, 'hfoo', -1363.4, -363.6, 146.419 )
    set u = CreateUnit( p, 'hfoo', -1149.4, -569.5, 296.519 )
endfunction

//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_nftk_0004 = CreateUnit( p, 'nftk', -202.7, 1564.8, 216.141 )
    set u = CreateUnit( p, 'nfsh', 1613.9, 152.3, 288.037 )
    set gg_unit_nrdr_0006 = CreateUnit( p, 'nrdr', 1079.4, -1243.4, 213.482 )
    set gg_unit_nspb_0017 = CreateUnit( p, 'nspb', -55.3, -1312.9, 236.180 )
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0(  )
    call CreateUnitsForPlayer1(  )
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreatePlayerBuildings(  )
    call CreateNeutralHostile(  )
    call CreatePlayerUnits(  )
endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Detonador sin nombre 001
//
// Just have their reference to the wurst script
//===========================================================================
function Trig_Detonador_sin_nombre_001_Actions takes nothing returns nothing
    call KillUnit( gg_unit_Hmkg_0001 )
    call KillUnit( gg_unit_nftk_0004 )
    call KillUnit( gg_unit_nrdr_0006 )
    call KillUnit( gg_unit_Hamg_0007 )
    call KillUnit( gg_unit_hfoo_0008 )
    call KillUnit( gg_unit_nspb_0017 )
endfunction

//===========================================================================
function InitTrig_Detonador_sin_nombre_001 takes nothing returns nothing
    set gg_trg_Detonador_sin_nombre_001 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Detonador_sin_nombre_001, function Trig_Detonador_sin_nombre_001_Actions )
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Detonador_sin_nombre_001(  )
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation( Player(0), 0 )
    call SetPlayerColor( Player(0), ConvertPlayerColor(0) )
    call SetPlayerRacePreference( Player(0), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(0), true )
    call SetPlayerController( Player(0), MAP_CONTROL_USER )

    // Player 1
    call SetPlayerStartLocation( Player(1), 1 )
    call SetPlayerColor( Player(1), ConvertPlayerColor(1) )
    call SetPlayerRacePreference( Player(1), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(1), true )
    call SetPlayerController( Player(1), MAP_CONTROL_USER )

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_006
    call SetPlayerTeam( Player(0), 0 )

    // Force: TRIGSTR_008
    call SetPlayerTeam( Player(1), 1 )

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount( 0, 1 )
    call SetStartLocPrio( 0, 0, 1, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 1, 1 )
    call SetStartLocPrio( 1, 0, 0, MAP_LOC_PRIO_HIGH )
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds( -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM) )
    call SetDayNightModels( "Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl" )
    call NewSoundEnvironment( "Default" )
    call SetAmbientDaySound( "LordaeronSummerDay" )
    call SetAmbientNightSound( "LordaeronSummerNight" )
    call SetMapMusic( "Music", true, 0 )
    call CreateAllUnits(  )
    call InitBlizzard(  )
    call InitGlobals(  )
    call InitCustomTriggers(  )

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName( "TRIGSTR_001" )
    call SetMapDescription( "TRIGSTR_003" )
    call SetPlayers( 2 )
    call SetTeams( 2 )
    call SetGamePlacement( MAP_PLACEMENT_TEAMS_TOGETHER )

    call DefineStartLocation( 0, -64.0, 0.0 )
    call DefineStartLocation( 1, -1408.0, -448.0 )

    // Player setup
    call InitCustomPlayerSlots(  )
    call InitCustomTeams(  )
    call InitAllyPriorities(  )
endfunction

