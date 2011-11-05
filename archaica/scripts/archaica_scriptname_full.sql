/* AREATRIGGER */
DELETE FROM `scripted_areatrigger` WHERE `entry` IN (2527, 2532);
INSERT INTO `scripted_areatrigger` VALUES (2527,'at_pvp_barracks'), (2532,'at_pvp_barracks');
DELETE FROM `scripted_areatrigger` WHERE `entry`=3066;
INSERT INTO `scripted_areatrigger` VALUES (3066,'at_ravenholdt');

/* BATTLEGROUNDS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_spirit_guide' WHERE `entry` IN (13116, 13117);

/* WORLD BOSS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_azuregos' WHERE `entry`=6109;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_lord_kazzak' WHERE `entry`=12397;
-- Dragons of Nightmare
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_emeriss' WHERE `entry`=14889;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_lethon' WHERE `entry`=14888;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_spirit_shade' WHERE `entry`=15261;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_taerar' WHERE `entry`=14890;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_shade_of_taerar' WHERE `entry`=15302;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_ysondre' WHERE `entry`=14887;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_demented_druid' WHERE `entry`=15260;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_dream_fog' WHERE `entry`=15224;

/* GO */
UPDATE `gameobject_template` SET `ScriptName`='go_blastenheimer_cannon' WHERE `entry` IN (180515, 180452);
UPDATE `gameobject_template` SET `ScriptName`='go_cat_figurine' WHERE `entry`=13873;
UPDATE `gameobject_template` SET `ScriptName`='go_crystal_pylon' WHERE `entry` IN (164955, 164956, 164957);
UPDATE `gameobject_template` SET `ScriptName`='go_barov_journal' WHERE `entry`=180794;
UPDATE `gameobject_template` SET `ScriptName`='go_field_repair_bot_74A' WHERE `entry`=179552;
UPDATE `gameobject_template` SET `ScriptName`='go_jump_a_tron' WHERE `entry`=183146;
UPDATE `gameobject_template` SET `ScriptName`='go_orb_of_command' WHERE `entry`=179879;
UPDATE `gameobject_template` SET `ScriptName`='go_resonite_cask' WHERE `entry`=178145;
UPDATE `gameobject_template` SET `ScriptName`='go_sacred_fire_of_life' WHERE `entry`=175944;
UPDATE `gameobject_template` SET `ScriptName`='go_tablet_of_madness' WHERE `entry`=180368;
UPDATE `gameobject_template` SET `ScriptName`='go_tablet_of_the_seven' WHERE `entry`=169294;
UPDATE `gameobject_template` SET `ScriptName`='go_silithus_hive_crystal' WHERE entry BETWEEN 180453 AND 180455;

/* GUARD */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_orgrimmar' WHERE `entry`=3296;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_stormwind' WHERE `entry` IN (68,1976);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_contested' WHERE `entry` IN (9460,4624,3502,11190,15184);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_elwynnforest' WHERE `entry`=1423;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_darnassus' WHERE `entry`=4262;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_teldrassil' WHERE `entry`=3571;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_ironforge' WHERE `entry`=5595;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_dunmorogh' WHERE `entry` IN (727,13076);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_undercity' WHERE `entry`=5624;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_bluffwatcher' WHERE `entry`=3084;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_durotar' WHERE `entry`=5953;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_mulgore' WHERE `entry` IN (3212,3215,3217,3218,3219,3220,3221,3222,3223,3224);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_dunmorogh' WHERE `entry` IN (727,13076);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='guard_tirisfal' WHERE `entry` IN (1735,1738,2210,1744,1745,5725,1743,2209,1746,1742);

/* ITEMS */
UPDATE `item_template` SET `ScriptName`='item_essence_of_hakkar' WHERE `entry`=10663;

/* NPC (usually creatures to be found in more than one specific zone) */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_air_force_bots' WHERE `entry` IN (2614, 2615, 21974, 21993, 21996, 21997, 21999, 22001, 22002, 22003, 22063, 22065, 22066, 22068, 22069, 22070, 22071, 22078, 22079, 22080, 22086, 22087, 22088, 22090, 22124, 22125, 22126);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_chicken_cluck' WHERE `entry`=620;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_garments_of_quests' WHERE `entry` IN (12429,12423,12427,12430,12428);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lunaclaw' WHERE `entry`=12138;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lunaclaw_spirit' WHERE `entry`=12144;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_mount_vendor' WHERE `entry` IN (384,1261,1460,2357,3362,3685,4730,4731,4885,7952,7955);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_doctor' WHERE `entry` IN (12939,12920);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_injured_patient' WHERE `entry` IN (12936,12937,12938,12923,12924,12925);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='' WHERE npcflag!=npcflag|65536 AND `ScriptName`='npc_innkeeper';
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_innkeeper' WHERE npcflag=npcflag|65536;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_prof_blacksmith' WHERE `entry` IN (5164,11145,11146,11176,11177,11178,11191,11192,11193);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_engineering_tele_trinket' WHERE `entry` IN (14742,14743);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_prof_engineering' WHERE `entry` IN (8126, 7944, 7406);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_prof_leather' WHERE `entry` IN (7866,7867,7868,7869,7870,7871);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_rogue_trainer' WHERE `entry` IN (918,4163,3328,4583,5165,5167,13283);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_sayge' WHERE `entry`=14822;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_shahram' WHERE `entry`=10718;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_darrowshire_poltergeist' WHERE `entry`=11296;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_metzen_the_reindeer' WHERE `entry`=15664;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_winter_reveler' WHERE `entry`=15760;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_the_cleaner' WHERE `entry`=14503;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_mangy_wolf' WHERE `entry`=525;

/*  */
/* ZONE */
/* */

/* ALTERAC MOUNTAINS */

/* ALTERAC VALLEY */
UPDATE `creature_template` SET `AIName`='', `ScriptName`= 'boss_balinda_stonehearth' WHERE `entry`=11949;
UPDATE `creature_template` SET `AIName`='', `ScriptName`= 'boss_drekthar' WHERE `entry`=11946;
UPDATE `creature_template` SET `AIName`='', `ScriptName`= 'boss_galvangar' WHERE `entry`=11947;
UPDATE `creature_template` SET `AIName`='', `ScriptName`= 'boss_vanndar_stormpike' WHERE `entry`=11948;
UPDATE `creature_template` SET `AIName`='', `ScriptName`= 'mob_av_marshal_or_warmaster' WHERE `entry` IN (14762,14763,14764,14765,14772,14773,14776,14777);

/* ARATHI HIGHLANDS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_professor_phizzlethorpe' WHERE `entry`=2768;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_kinelory' WHERE `entry`=2713;

/* ASHENVALE */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_muglash' WHERE `entry`=12717;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_ruul_snowhoof' WHERE `entry`=12818;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_torek' WHERE `entry`=12858;
UPDATE `gameobject_template` SET `ScriptName`='go_naga_brazier' WHERE `entry`=178247;

/* AZSHARA */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mobs_spitelashes' WHERE `entry` IN (6190,6193,6194,6195,6196,7885,7886,12204,12205);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_duke_hydraxis' WHERE `entry`=13278;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_loramus_thalipedes' WHERE `entry`=7783;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_captain_vanessa_beltis' WHERE `entry`=8380;

/* BADLANDS */
UPDATE `gameobject_template` SET `ScriptName`='go_seal_of_the_earth' WHERE `entry`=2933;

/* BARRENS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_wrenixs_gizmotronic_apparatus' WHERE `entry`=7166;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_wrenix_the_wretched' WHERE `entry`=7161;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_polly' WHERE `entry`=7167;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_beaten_corpse' WHERE `entry`=10668;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_gilthares' WHERE `entry`=3465;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_sputtervalve' WHERE `entry`=3442;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_taskmaster_fizzule' WHERE `entry`=7233;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_twiggy_flathead' WHERE `entry`=6248;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_wizzlecranks_shredder' WHERE `entry`=3439;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_regthar_deathgate' WHERE `entry`=3389;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lantigah' WHERE `entry`=9990;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_warlord_kromzar' WHERE `entry`=9456;
DELETE FROM `scripted_areatrigger` WHERE `entry`=522;
INSERT INTO `scripted_areatrigger` VALUES (522,'at_twiggy_flathead');

/* BLACKFATHOM DEPTHS */
UPDATE `instance_template` SET `ScriptName`='instance_blackfathom_deeps' WHERE `map`=48;
UPDATE `gameobject_template` SET `ScriptName`='go_blackfathom_fire' WHERE `entry` IN (21118,21119,21120,21121);
UPDATE `gameobject_template` SET `ScriptName`='go_blackfathom_altar' WHERE `entry` IN (103015,103016);
UPDATE `gameobject_template` SET `ScriptName`='go_fathom_stone' WHERE `entry`=177964;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_gelihast' WHERE `entry`=6243;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_kelris' WHERE `entry`=4832;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_aku_mai' WHERE `entry`=4829;

/* BLACKROCK DEPTHS */
DELETE FROM `scripted_areatrigger` WHERE `entry`=1526;
INSERT INTO `scripted_areatrigger` VALUES (1526,'at_ring_of_law');
UPDATE `instance_template` SET `ScriptName`='instance_blackrock_depths' WHERE `map`=230;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_emperor_dagran_thaurissan' WHERE `entry`=9019;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_moira_bronzebeard' WHERE `entry`=8929;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_ambassador_flamelash' WHERE `entry`=9156;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_anubshiah' WHERE `entry`=9031;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_doomrel' WHERE `entry`=9039;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_gloomrel' WHERE `entry`=9037;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_general_angerforge' WHERE `entry`=9033;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_lord_argelmarch' WHERE `entry`=8983;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_gorosh_the_dervish' WHERE `entry`=9027;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_grizzle' WHERE `entry`=9028;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_high_interrogator_gerstahn' WHERE `entry`=9018;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_magmus' WHERE `entry`=9938;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_phalanx' WHERE `entry`=9502;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_warbringer_construct' WHERE `entry`=8905;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_corporal_keeshan' WHERE `entry` = 349;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_grimstone' WHERE `entry`=10096;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_kharan_mighthammer' WHERE `entry`=9021;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lokhtos_darkbargainer' WHERE `entry`=12944;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_mistress_nagmara' WHERE `entry`=9500;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_ribbly_crony' WHERE `entry`=10043;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_rocknot' WHERE `entry`=9503;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_watchman_doomgrip' WHERE `entry`=9476;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='the_grim_guzzler_patrons' WHERE `entry` IN (9545, 9547, 9554);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_ironhand_guard' WHERE `entry`=8982;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_anvilrage_reservist' WHERE `entry`=8901;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_anvilrage_medic' WHERE `entry`=8894;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_commander_gorshak' WHERE `entry`=9020;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_theldren_trigger' WHERE `entry`=16079;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_marshal_windsor' WHERE `entry`=9023;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_plugger_spazzring' WHERE `entry`=9499;
UPDATE `creature_template` SET `AIName`='ReactorAI', `ScriptName`='' WHERE `entry`=9178;
UPDATE `gameobject_template` SET `ScriptName`='go_dark_keeper_portrait' WHERE `entry`=164819;
UPDATE `gameobject_template` SET `ScriptName`='go_relic_coffer_door' WHERE `entry` BETWEEN 174554 AND 174566;
UPDATE `gameobject_template` SET `ScriptName`='go_shadowforge_brazier' WHERE `entry` IN (174744, 174745);
UPDATE `gameobject_template` SET `ScriptName`='go_shadowforge_lock' WHERE `entry`=161460;
UPDATE `gameobject_template` SET `ScriptName`='go_thunderbrew_lager_keg' WHERE `entry`=164911;
UPDATE `gameobject_template` SET `ScriptName`='go_dark_iron_ale_mug_and_grim_guzzler_boar' WHERE `entry` IN (165738, 165739);

/* BLACKROCK SPIRE */
UPDATE `instance_template` SET `ScriptName`='instance_blackrock_spire' WHERE `map`=229;
/* BLACKROCK SPIRE Lower */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_gizrul_the_slavener' WHERE `entry`=10268;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_halycon' WHERE `entry`=10220;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_highlord_omokk' WHERE `entry`=9196;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_shadow_hunter_voshgajin' WHERE `entry`=9236;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_mor_grayhoof' WHERE `entry`=16080;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_mother_smolderweb' WHERE `entry`=10596;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_overlord_wyrmthalak' WHERE `entry`=9568;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='quartermaster_zigris' WHERE `entry`=9736;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_urok_doomhowl' WHERE `entry`=10584;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_war_master_voone' WHERE `entry`=9237;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='' WHERE `entry`=10375;
/* BLACKROCK SPIRE Upper */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_drakkisath' WHERE `entry`=10363;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_gyth' WHERE `entry`=10339;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_lord_valthalak' WHERE `entry`=16042;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_pyroguard_emberseer' WHERE `entry`=9816;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_rend_blackhand' WHERE `entry`=10429;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_solakar_flamewreath' WHERE `entry`=10264;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_the_beast' WHERE `entry`=10430;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_finkle_einhorn' WHERE `entry`=10776;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_awbee' WHERE `entry`=10740;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_blackhand_dragon_handler' WHERE `entry`=10742;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_blackhand_incarcerator' WHERE `entry`=10316;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_chromatic_elite_guard' WHERE `entry`=10814;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_grayhoof_valthalak_trigger' WHERE `entry` IN (16044, 16048);
UPDATE `gameobject_template` SET `ScriptName`='go_father_flame' WHERE `entry`=175245;
UPDATE `gameobject_template` SET `ScriptName`='go_challenge_to_urok' WHERE `entry`=175584;
DELETE FROM `scripted_areatrigger` WHERE `entry` IN (1946, 1986, 1987, 2026, 2046);
INSERT INTO `scripted_areatrigger` VALUES
(1946, 'at_backrock_spire'),
(1986, 'at_backrock_spire'),
(1987, 'at_backrock_spire'),
(2026, 'at_backrock_spire'),
(2046, 'at_backrock_spire');
DELETE FROM `scripted_event_id` WHERE `id`=4884;
INSERT INTO `scripted_event_id` VALUES (4884, 'event_spell_emberseer_start');

/* BLACKWING LAIR */
UPDATE `instance_template` SET `ScriptName`='instance_blackwing_lair' WHERE `map`=469;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_razorgore' WHERE `entry`=12435;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_vaelastrasz' WHERE `entry`=13020;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_broodlord' WHERE `entry`=12017;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_blackwing_dragon' WHERE `entry` IN (11981, 11983, 14601);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_chromaggus' WHERE `entry`=14020;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_victor_nefarius' WHERE `entry`=10162;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_grethok_the_controller' WHERE `entry`=12557;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_demon_portal' WHERE `entry`=14081;
UPDATE `gameobject_template` SET `ScriptName`='go_orb_of_domination' WHERE `entry`=177808;
DELETE FROM `scripted_areatrigger` WHERE `entry`=3626;
INSERT INTO `scripted_areatrigger` VALUES (3626, 'at_vaelastrasz');

/* BLASTED LANDS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_deathly_usher' WHERE `entry`=8816;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_fallen_hero_of_horde' WHERE `entry`=7572;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_lord_kazzak' WHERE `entry`=12397;

/* BURNING STEPPES */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_ragged_john' WHERE `entry`=9563;

/* DARKSHORE */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_kerlonian' WHERE `entry`=11218;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_prospector_remtravel' WHERE `entry`=2917;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_threshwackonator' WHERE `entry`=6669;

/* DARNASSUS */

/* DEADMINES */
UPDATE `instance_template` SET `ScriptName`='instance_deadmines' WHERE `map`=36;
UPDATE `gameobject_template` SET `ScriptName`='go_defias_cannon' WHERE `entry`=16398;
UPDATE `gameobject_template` SET `ScriptName`='go_door_lever_dm' WHERE `entry`=101833;

/* DEADWIND PASS */

/* DESOLACE */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_aged_dying_ancient_kodo' WHERE `entry` IN (4700, 4701, 4702, 11627);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_dalinda_malem' WHERE `entry`=5644;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_melizza_brimbuzzle' WHERE `entry`=12277;
UPDATE `gameobject_template` SET `ScriptName`='go_hand_of_iruxos_crystal' WHERE `entry`=176581;

/* DIRE MAUL */
UPDATE `instance_template` SET `ScriptName`='instance_dire_maul' WHERE `map`=429;
/* EAST */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_alzzin_the_wildshaper' WHERE `entry`=11492;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_hydrospawn' WHERE `entry`=13280;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_isalien' WHERE `entry`=16097;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_lethtendris' WHERE `entry`=14327;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_pusillin' WHERE `entry`=14354;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_zevrim_thornhoof' WHERE `entry`=11490;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_massive_geyser' WHERE `entry`=14122;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_pimgib' WHERE `entry`=14349;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_ironbark_the_redeemed' WHERE `entry`=14241;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_isalien_trigger' WHERE `entry`=16045;
/* NORTH */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_captain_kromcrush' WHERE `entry`=14325;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_guard' WHERE `entry` IN (14326, 14321, 14323);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_chorush_the_observer' WHERE `entry`=14324;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_king_gordok' WHERE `entry`=11501;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_stomper_kreeg' WHERE `entry`=14322;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_knot_thimblejack' WHERE `entry`=14338;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_mizzle_the_crafty' WHERE `entry`=14353;
UPDATE `gameobject_template` SET `ScriptName`='go_broken_trap' WHERE `entry`=179485;
UPDATE `gameobject_template` SET `ScriptName`='go_skeletal_remains_of_kariel_winthalus' WHERE `entry`=179544;
/* WEST */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_illyanna_ravenoak' WHERE `entry`=11488;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_immolthar' WHERE `entry`=11496;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_magister_kalendris' WHERE `entry`=11487;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_prince_tortheldrin' WHERE `entry`=11486;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_tendris_warpwood' WHERE `entry`=11489;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_eye_of_immolthar' WHERE `entry`=14396;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_shendralar_ancient' WHERE `entry`=14358;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lorekeeper_lydros' WHERE `entry`=14368;
UPDATE `gameobject_template` SET `ScriptName` = 'go_prison_pylon' WHERE `entry` IN (177257, 177258, 177259, 179504, 179505);

/* DUN MOROGH */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_narm_faulk' WHERE `entry`=6177;

/* DUROTAR */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lazy_peon' WHERE `entry`=10556;

/* DUSKWOOD */

/* DUSTWALLOW MARSH */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lady_jaina_proudmoore' WHERE `entry`=4968;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_morokk' WHERE `entry`=4500;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_nat_pagle' WHERE `entry`=12919;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_ogron' WHERE `entry`=4983;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_private_hendel' WHERE `entry`=4966;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_stinky_ignatz' WHERE `entry`=4880;

/* EASTERN PLAGUELANDS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mobs_ghoul_flayer' WHERE `entry` IN (8530,8531,8532);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_argent_medic' WHERE `entry`=16284;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_augustus_the_touched' WHERE `entry`=12384;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_betina_bigglezink' WHERE `entry`=11035;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_darrowshire_spirit' WHERE `entry`=11064;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_eris_havenfire' WHERE `entry`=14494;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_infected_peasant' WHERE `entry` IN (14484,14485);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_tirion_fordring' WHERE `entry`=1855;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_william_kielar' WHERE `entry`=17209;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_scourge_archer' WHERE `entry`=14489;


/* ELWYNN FOREST */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_henze_faulk' WHERE `entry`=6172;

/* FELWOOD */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_corrupt_saber' WHERE `entry`=10042;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_kitten' WHERE `entry`=9937;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_kroshius' WHERE `entry`=14467;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_niby_the_almighty' WHERE `entry`=14469;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npcs_riverbreeze_and_silversky' WHERE `entry` IN (9528,9529);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_vartrus_the_ancient' WHERE `entry`=14524;
UPDATE `gameobject_template` SET `ScriptName`='go_cleansed_felwood_flowers' WHERE `entry` BETWEEN 164881 AND 164884;
UPDATE `gameobject_template` SET `ScriptName`='go_felwood_corrupted_flowers' WHERE `entry` BETWEEN 164885 AND 164888;
DELETE FROM `scripted_event_id` WHERE `id`=8328;
INSERT INTO `scripted_event_id` VALUES (8328, 'npc_kroshius');
DELETE FROM `scripted_areatrigger` WHERE `entry`=3587;
INSERT INTO `scripted_areatrigger` VALUES (3587, 'at_irontree_woods');

/* FERALAS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_gregan_brewspewer' WHERE `entry`=7775;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_oox22fe' WHERE `entry`=7807;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_screecher_spirit' WHERE `entry`=8612;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_feero_ironhand' WHERE `entry`=4484;

/* GNOMEREGAN */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_blastmaster_emi_shortfuse' WHERE `entry`=7998;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_kernobee' WHERE `entry`=7850;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_mekgineer_thermaplug' WHERE `entry`=7800;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_walking_bomb' WHERE `entry`=7915;
UPDATE `gameobject_template` SET `ScriptName`='go_matrix_punchograph_3005D' WHERE `entry`=142696;
UPDATE `gameobject_template` SET `ScriptName`='go_thermaplug_button' WHERE `entry` BETWEEN 142214 AND 142219;
UPDATE `instance_template` SET `ScriptName`='instance_gnomeregan' WHERE `map`=90;
DELETE FROM `scripted_areatrigger` WHERE `entry`=1105;
INSERT INTO `scripted_areatrigger` VALUES (1105, 'at_clockwerk_run');

/* HILLSBRAD FOOTHILLS */
UPDATE `gameobject_template` SET `ScriptName`='go_open_to_pass_your_rite' WHERE `entry`=178325;

/* HINTERLANDS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_00x09hl' WHERE `entry`=7806;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_rinji' WHERE `entry`=7780;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_vilebranch_kidnapper' WHERE `entry`=14748;
UPDATE `gameobject_template` SET `ScriptName`='go_lard_picnic_basket' WHERE `entry`=179910;

/* IRONFORGE */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_royal_historian_archesonus' WHERE `entry`=8879;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_deeprun_rat' WHERE `entry`=13016;

/* LOCH MODAN */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_miran' WHERE `entry`=1379;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_mountaineer_pebblebitty' WHERE `entry`=3836;

/* MARAUDON */
UPDATE `instance_template` SET `ScriptName`='instance_maraudon' WHERE `map`=349;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_princess_theradras' WHERE `entry`=12201;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_noxxion' WHERE `entry`=13282;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_landslide' WHERE `entry`=12203;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_celebras_the_cursed' WHERE `entry`=12225;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_celebras_the_redeemed' WHERE `entry`=13716;

/* MOLTEN CORE */
UPDATE `instance_template` SET `ScriptName`='instance_molten_core' WHERE `map`=409;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_lucifron' WHERE `entry`=12118;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_magmadar' WHERE `entry`=11982;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_gehennas' WHERE `entry`=12259;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_garr' WHERE `entry`=12057;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_baron_geddon' WHERE `entry`=12056;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_shazzrah' WHERE `entry`=12264;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_golemagg' WHERE `entry`=11988;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_sulfuron' WHERE `entry`=12098;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_majordomo' WHERE `entry`=12018;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_ragnaros' WHERE `entry`=11502;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_ancient_core_hound' WHERE `entry`=11673;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_firesworn' WHERE `entry`=12099;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_core_rager' WHERE `entry`=11672;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_flamewaker_protector' WHERE `entry`=12119;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_flamewaker_priest' WHERE `entry`=11662;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_flamewaker_healer' WHERE `entry`=11663;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_flamewaker_elite' WHERE `entry`=11664;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_flameguard' WHERE `entry`=11667;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_lava_elemental' WHERE `entry`=12076;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_lava_surger' WHERE `entry`=12101;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_lava_spawn' WHERE `entry`=12265;
UPDATE `gameobject_template` SET `ScriptName`='go_molten_core_rune' WHERE `entry` BETWEEN 176951 AND 176957;

/* MOONGLADE */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_bunthen_plainswind' WHERE `entry`=11798;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_great_bear_spirit' WHERE `entry`=11956;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_silva_filnaveth' WHERE `entry`=11800;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_keeper_remulos' WHERE `entry`=11832;

/* MULGORE */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_skorn_whitecloud' WHERE `entry`=3052;

/* NAXXRAMAS */
UPDATE `instance_template` SET `ScriptName`='instance_naxxramas' WHERE `map`=533;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_anubrekhan' WHERE `entry`=15956;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_faerlina' WHERE `entry`=15953;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_maexxna' WHERE `entry`=15952;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_noth' WHERE `entry`=15954;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_heigan' WHERE `entry`=15936;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_loatheb' WHERE `entry`=16011;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_razuvious' WHERE `entry`=16061;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_gothik' WHERE `entry`=16060;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='spell_anchor' WHERE `entry`=16137;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_thane_korthazz' WHERE `entry`=16064;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_sir_zeliek' WHERE `entry`=16063;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_lady_blaumeux' WHERE `entry`=16065;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_patchwerk' WHERE `entry`=16028;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_grobbulus' WHERE `entry`=15931;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_gluth' WHERE `entry`=15932;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_thaddius' WHERE `entry`=15928;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_stalagg' WHERE `entry`=15929;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fugen' WHERE `entry`=15930;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_sapphiron' WHERE `entry`=15989;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_kelthuzad' WHERE `entry`=15990;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_cryptguards' WHERE `entry`=16573;
DELETE FROM `scripted_areatrigger` WHERE `entry`=4112;
INSERT INTO `scripted_areatrigger` VALUES (4112,'at_naxxramas');

/* ONYXIA'S LAIR */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_onyxia' WHERE `entry`=10184;
UPDATE `instance_template` SET `ScriptName`='instance_onyxias_lair' WHERE `map`=249;

/* ORGRIMMAR */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_neeru_fireblade' WHERE `entry`=3216;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_shenthul' WHERE `entry`=3401;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_thrall_warchief' WHERE `entry`=4949;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_eitrigg' WHERE `entry`=3144;

/* RAGEFIRE CHASM */

/* RAZORFEN DOWNS */
UPDATE `instance_template` SET `ScriptName`='instance_razorfen_downs' WHERE `map`=129;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_amnennar_the_coldbringer' WHERE `entry`=7358;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_belnistrasz' WHERE `entry`=8516;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_henry_stern' WHERE `entry`=8696;
UPDATE `gameobject_template` SET `ScriptName`='go_gong_of_downs' WHERE `entry`=148917;

/* RAZORFEN KRAUL */
UPDATE `instance_template` SET `ScriptName`='instance_razorfen_kraul' WHERE `map`=47;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_deaths_head_ward_keeper' WHERE `entry`=4625;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_willix_the_importer' WHERE `entry`=4508;

/* REDRIDGE MOUNTAINS */

/* RUINS OF AHN'QIRAJ */
UPDATE `instance_template` SET `ScriptName`='instance_ruins_of_ahnqiraj' WHERE `map`=509; 
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_kurinnaxx' WHERE `entry`=15348; 
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_rajaxx' WHERE `entry`=15341;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_moam' WHERE `entry`=15340;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_buru' WHERE `entry`=15370;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_ayamiss' WHERE `entry`=15369;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_ossirian' WHERE `entry`=15339;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_anubisath_guardian' WHERE `entry`=15355;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_buru_egg' WHERE `entry`=15514;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_flesh_hunter' WHERE `entry`=15335;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_hivezara_larva' WHERE `entry` = 15555;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_general_andorov' WHERE `entry`=15471;
UPDATE `gameobject_template` SET `ScriptName`='go_ossirian_crystal' WHERE `entry` = 180619;

/* SCARLET MONASTERY */
UPDATE `instance_template` SET `ScriptName`='instance_scarlet_monastery' WHERE `map`=189;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_arcanist_doan' WHERE `entry`=6487;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_azshir_the_sleepless' WHERE `entry`=6490;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_bloodmage_thalnos' WHERE `entry`=4543;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_herod' WHERE `entry`=3975;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_high_inquisitor_fairbanks' WHERE `entry`=4542;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_high_inquisitor_whitemane' WHERE `entry`=3977;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_houndmaster_loksey' WHERE `entry`=3974;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_interrogator_vishas' WHERE `entry`=3983;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_scarlet_commander_mograine' WHERE `entry`=3976;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_scorn' WHERE `entry`=14693;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_scarlet_trainee' WHERE `entry`=6575;
DELETE FROM `scripted_areatrigger` WHERE `entry`=4089;
INSERT INTO `scripted_areatrigger` VALUES (4089,'at_sm_cathedral_entrance');

/* SCHOLOMANCE */
UPDATE `instance_template` SET `ScriptName`='instance_scholomance' WHERE `map`=289;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_darkmaster_gandling' WHERE `entry`=1853;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_death_knight_darkreaver' WHERE `entry`=14516;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_doctor_theolen_krastinov' WHERE `entry`=11261;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_lady_illucia_barov' WHERE `entry`=10502;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_instructor_malicia' WHERE `entry`=10505;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_jandice_barov' WHERE `entry`=10503;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_kirtonos_the_herald' WHERE `entry`=10506;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_kormok' WHERE `entry`=16118;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_lord_alexei_barov' WHERE `entry`=10504;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_lorekeeper_polkelt' WHERE `entry`=10901;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_marduk_blackpool' WHERE `entry`=10433;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_ras_frostwhisper' WHERE `entry`=10508;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_rattlegore' WHERE `entry`=11622;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_the_ravenian' WHERE `entry`=10507;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_vectus' WHERE `entry`=10432;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_aspect' WHERE `entry` IN (14518,14519,14520,14521);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_illusion_of_jandice_barov' WHERE `entry`=11439;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_reanimated_corpse' WHERE `entry`=10481;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_scholomance_dark_summoner' WHERE `entry`=11582;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_unstable_corpse' WHERE `entry`=10480;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_dark_shade' WHERE `entry`=11284;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_spectral_tutor' WHERE `entry`=10498;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_kormok_trigger' WHERE `entry`=16047;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_scholomance_student' WHERE `entry`=10475;
UPDATE `gameobject_template` SET `ScriptName`='go_viewing_room_door' WHERE `entry`=175167;
UPDATE `gameobject_template` SET `ScriptName`='go_brazier_of_the_herald' WHERE `entry`=175564;
UPDATE `gameobject_template` SET `ScriptName`='go_iron_gate' WHERE `entry` IN (175611, 175612, 175613, 175614, 175615, 175616, 175617, 175618, 175620);
UPDATE `item_template` SET `ScriptName`='item_dawns_gambit' WHERE `entry`=12368;
DELETE FROM `scripted_event_id` WHERE `id`=8436;
INSERT INTO `scripted_event_id` VALUES (8436,'event_spell_place_scryer');

/* SEARING GORGE */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_kalaran_windblade' WHERE `entry`=8479;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lothos_riftwaker' WHERE `entry`=14387;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_zamael_lunthistle' WHERE `entry`=8436;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_dorius_stonetender' WHERE `entry`=8284;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_lathoric_the_black' WHERE `entry`=8391;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_dying_archaeologist' WHERE `entry`=8417;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_obsidion' WHERE `entry`=8400;

/* SHADOWFANG KEEP */
UPDATE `instance_template` SET `ScriptName`='instance_shadowfang_keep' WHERE `map`=33;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_arugal' WHERE `entry`=4275;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_rethilgore' WHERE `entry`=3914;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_arugal_voidwalker' WHERE `entry`=4627;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_arugal' WHERE `entry`=10000;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_deathstalker_vincent' WHERE `entry`=4444;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_shadowfang_prisoner' WHERE `entry` IN (3849,3850);

/* SILITHUS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_abyssal_council' WHERE `entry` IN (15209,15212,15307,15211,15206,15220,15208,15207,15203,15204,15205,15305);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_cenarion_scout' WHERE `entry` IN (15609, 15610, 15611);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_highlord_demitrian' WHERE `entry`=14347;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npcs_rutgar_and_frankal' WHERE `entry` IN (15170,15171);
UPDATE `gameobject_template` SET `ScriptName`='go_hiveashi_pod' WHERE `entry`=178553;
UPDATE `gameobject_template` SET `ScriptName`='go_wind_stone' WHERE `entry` IN (180456,180518,180529,180544,180549,180564,180461,180534,180554,180466,180539,180559);

/* SILVERPINE FOREST */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_astor_hadren' WHERE `entry`=6497;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_deathstalker_erland' WHERE `entry`=1978;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_deathstalker_faerleia' WHERE `entry`=2058;

/* STONETALON MOUNTAINS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_braug_dimspirit' WHERE `entry`=4489;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_kaya' WHERE `entry`=11856;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_piznik' WHERE `entry`=4276;

/* STORMWIND CITY */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_archmage_malin' WHERE `entry`=2708;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_bartleby' WHERE `entry`=6090;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_dashel_stonefist' WHERE `entry`=4961;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lady_katrana_prestor' WHERE `entry`=1749;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lord_gregor_lescovar' WHERE `entry` = 1754;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_tyrion_spybot' WHERE `entry` = 8856;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_tyrion' WHERE `entry` = 7766;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_squire_rowe' WHERE `entry`=17804;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_reginald_windsor' WHERE `entry`=12580;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_rift_spawn' WHERE `entry`=6492;

/* STRANGLETHORN VALE */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_yenniku' WHERE `entry`=2530;

/* STRATHOLME */
UPDATE `instance_template` SET `ScriptName`='instance_stratholme' WHERE `map`=329;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_baron_rivendare' WHERE `entry`=10440;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_baroness_anastari' WHERE `entry`=10436;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_cannon_master_willey' WHERE `entry`=10997;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_dathrohan_balnazzar' WHERE `entry`=10812;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_jarien' WHERE `entry`=16101;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_magistrate_barthilas' WHERE `entry`=10435;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_maleki_the_pallid' WHERE `entry`=10438;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_nerubenkan' WHERE `entry`=10437;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_postmaster_malown' WHERE `entry`=11143;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_ramstein_the_gorger' WHERE `entry`=10439;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_sothos' WHERE `entry`=16102;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_timmy_the_cruel' WHERE `entry`=10808;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_abomination' WHERE `entry` IN (10416,10417);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_freed_soul' WHERE `entry`=11136;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_restless_soul' WHERE `entry`=11122;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mobs_spectral_ghostly_citizen' WHERE `entry` IN (10384,10385);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_the_unforgiven' WHERE `entry`=10516;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_aurius' WHERE `entry`=10917;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_jarien_sothos_trigger' WHERE `entry`=16046;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_stratholme_trigger' WHERE `entry`=14646;
UPDATE `gameobject_template` SET `ScriptName`='go_blacksmithing_plans' WHERE `entry` IN (176325, 176327);
UPDATE `gameobject_template` SET `ScriptName`='go_postbox' WHERE `entry` IN (176346, 176349, 176350, 176351, 176352, 176353);
UPDATE `gameobject_template` SET `ScriptName`='go_stratholme_gate' WHERE `entry` IN (175357, 175368);
DELETE FROM `scripted_areatrigger` WHERE `entry` IN (2209, 2210);
INSERT INTO `scripted_areatrigger` VALUES
(2209, 'at_bastion'),
(2210, 'at_bastion');

/* SUNKEN TEMPLE */
UPDATE `instance_template` SET `ScriptName`='instance_sunken_temple' WHERE `map`=109;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_atalalarion' WHERE `entry`=8580;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_atalai_defender' WHERE `entry` IN (5712, 5713, 5714, 5715, 5716, 5717);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_atalai_dragon' WHERE `entry` IN (5719, 5720, 5721, 5722);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_avatar_of_hakkar' WHERE `entry`=8443;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_jammalan_the_prophet' WHERE `entry`=5710;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_ogom_the_wretched' WHERE `entry`=5711;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_shade_of_eranikus' WHERE `entry`=5709;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_nightmare_suppressor' WHERE `entry`=8497;
UPDATE `creature_template` SET `ScriptName`='npc_malfurion_stormrage' WHERE `entry`=15362;
UPDATE `gameobject_template` SET `ScriptName` = 'go_altar_of_hakkar' WHERE `entry`=148836;
UPDATE `gameobject_template` SET `ScriptName` = 'go_atalai_statue' WHERE `entry` IN (148830, 148831, 148832, 148833, 148834, 148835);
UPDATE `gameobject_template` SET `ScriptName` = 'go_eternal_flame' WHERE `entry` IN (148418, 148419, 148420, 148421);
DELETE FROM `scripted_areatrigger` WHERE `entry`=4016;
INSERT INTO `scripted_areatrigger` VALUES (4016,'at_shade_of_eranikus');
DELETE FROM `scripted_event_id` WHERE `id`=8502;
INSERT INTO `scripted_event_id` VALUES (8502,'event_spell_awaken_the_soulflayer');

/* SWAMP OF SORROWS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_galen_goodward' WHERE `entry`=5391;

/* TANARIS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_aquementas' WHERE `entry`=9453;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_marin_noggenfogger' WHERE `entry`=7564;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_oox17tn' WHERE `entry`=7784;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_stone_watcher_of_norgannon' WHERE `entry`=7918;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_tooga' WHERE `entry`=5955;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_yehkinya' WHERE `entry`=8579;
UPDATE `gameobject_template` SET `ScriptName`='go_landmark_treasure' WHERE `entry`=142189;

/* TELDRASSIL */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_mist' WHERE `entry`=3568;

/* TEMPLE OF AHN'QIRAJ */
UPDATE `instance_template` SET `ScriptName`='instance_temple_of_ahnqiraj' WHERE `map`=531;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_cthun' WHERE `entry`=15727;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_skeram' WHERE `entry`=15263;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_vem' WHERE `entry`=15544;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_yauj' WHERE `entry`=15543;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_kri' WHERE `entry`=15511;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_sartura' WHERE `entry`=15516;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_fankriss' WHERE `entry`=15510;
-- UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_viscidus' WHERE `entry`=15299;
-- UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_glob_of_viscidus' WHERE `entry`=15667;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_huhuran' WHERE `entry`=15509;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_veklor' WHERE `entry`=15276;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_veknilash' WHERE `entry`=15275;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_ouro' WHERE `entry`=15517;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_eye_of_cthun' WHERE `entry`=15589;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_sartura_royal_guard' WHERE `entry`=15984;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_claw_tentacle' WHERE `entry`=15725;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_eye_tentacle' WHERE `entry`=15726;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_giant_claw_tentacle' WHERE `entry`=15728;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_giant_eye_tentacle' WHERE `entry`=15334;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_giant_flesh_tentacle' WHERE `entry`=15802;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_anubisath_sentinel' WHERE `entry`=15264;

/* THOUSAND NEEDLES */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_kanati' WHERE `entry`=10638;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_plucky_johnson' WHERE `entry`=6626;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_paoka_swiftmountain' WHERE `entry`=10427;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lakota_windsong' WHERE `entry`=10646;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_enraged_panther' WHERE `entry`=10992;
UPDATE `gameobject_template` SET `ScriptName`='go_panther_cage' WHERE `entry`=176195;

/* THUNDER BLUFF */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_cairne_bloodhoof' WHERE `entry`=3057;

/* TIRISFAL GLADES */
UPDATE `gameobject_template` SET `ScriptName`='go_mausoleum_trigger' WHERE `entry`=104593;
UPDATE `gameobject_template` SET `ScriptName`='go_mausoleum_door' WHERE `entry`=176594;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_calvin_montague' WHERE `entry`=6784;

/* ULDAMAN */
UPDATE `instance_template` SET `ScriptName`='instance_uldaman' WHERE `map`=70;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_archaedas' WHERE `entry`=2748;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_ironaya' WHERE `entry`=7228;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_jadespine_basilisk' WHERE `entry`=4863;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lore_keeper_of_norgannon' WHERE `entry`=7172;
UPDATE `gameobject_template` SET `ScriptName`='go_keystone_chamber' WHERE `entry`=124371;
UPDATE `gameobject_template` SET `ScriptName`='go_shadowforge_cache' WHERE `entry`=113757;
DELETE FROM `scripted_areatrigger` where `entry` = 822;
INSERT INTO `scripted_areatrigger` (`entry`, `ScriptName`) VALUES (822, 'at_map_chamber');
DELETE FROM scripted_event_id WHERE id IN (2228,2268);
INSERT INTO scripted_event_id VALUES
(2228,'event_spell_altar_boss_aggro'),
(2268,'event_spell_altar_boss_aggro');

/* UN'GORO CRATER */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_ame01' WHERE `entry`=9623;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_ringo' WHERE `entry`=9999;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_larkorwi_mate' WHERE `entry`=9683;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_simone_the_inconspicuous' WHERE `entry`=14527;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_precious' WHERE `entry`=14528;
DELETE FROM `scripted_areatrigger` WHERE `entry` IN (1736, 1740);
INSERT INTO `scripted_areatrigger` (`entry`, `ScriptName`) VALUES
('1736','at_larkorwi_eggs'), ('1740','at_larkorwi_eggs');

/* UNDERCITY */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lady_sylvanas_windrunner' WHERE `entry`=10181;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_parqual_fintallas' WHERE `entry`=4488;

/* WAILING CAVERNS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_disciple_of_naralex' WHERE `entry`=3678;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_mutanus_the_devourer' WHERE `entry`=3654;
UPDATE `instance_template` SET `ScriptName`='instance_wailing_caverns' WHERE `map`=43;

/* WESTERN PLAGUELANDS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_andorhal_tower' WHERE `entry` IN (10902,10903,10904,10905);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npcs_dithers_and_arbington' WHERE `entry` IN (11056,11057);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_eva_sarkhoff' WHERE `entry`=11216;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_myranda_the_hag' WHERE `entry`=11872;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_the_scourge_cauldron' WHERE `entry`=11152;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_highlord_taelan_fordring' WHERE `entry`=1842;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_grand_inquisitor_isillien' WHERE `entry`=1840;
UPDATE `gameobject_template` SET `ScriptName`='go_loose_dirt_mound' WHERE `entry`=177240;
UPDATE `gameobject_template` SET `ScriptName`='go_redpaths_shield_and_davils_libram' WHERE `entry` IN (176206, 176207);

/* WESTFALL */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_daphne_stilwell' WHERE `entry`=6182;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_defias_traitor' WHERE `entry`=467;

/* WETLANDS */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_tapoke_slim_jahn' WHERE `entry`=4962;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_mikhail' WHERE `entry`=4963;

/* WINTERSPRING */
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_lorax' WHERE `entry`=10918;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_rivern_frostwind' WHERE `entry`=10618;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_witch_doctor_mauari' WHERE `entry`=10307;
UPDATE `item_template` SET `ScriptName`='item_sacred_frostsaber_meat' WHERE `entry`=12733;

/* ZUL'FARRAK */
UPDATE `instance_template` SET `ScriptName`='instance_zulfarrak' WHERE `map`=209;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_raven' WHERE `entry`=7605;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_oro_eyegouge' WHERE `entry`=7606;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_murta_grimgut' WHERE `entry`=7608;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_theka_the_martyr' WHERE `entry`=7272;
UPDATE `gameobject_template` SET `ScriptName`='go_troll_cage' WHERE `entry` IN (141070, 141071, 141072, 141073, 141074);
UPDATE `gameobject_template` SET `ScriptName`='go_gong_of_zulfarrak' WHERE `entry`=141832;
UPDATE `gameobject_template` SET `ScriptName`='go_shallow_grave' WHERE `entry` IN (128308,128403);
UPDATE `gameobject_template` SET `ScriptName`='go_table_theka' WHERE `entry`=142715;
DELETE FROM `scripted_areatrigger` WHERE `entry`=962;
INSERT INTO `scripted_areatrigger` (`entry`, `ScriptName`) VALUES('962','at_zumrah');

/* ZUL'GURUB */
UPDATE `instance_template` SET `ScriptName`='instance_zulgurub' WHERE `map`=309;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_jeklik' WHERE `entry`=14517;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_venoxis' WHERE `entry`=14507;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_marli' WHERE `entry`=14510;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_mandokir' WHERE `entry`=11382;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_ohgan' WHERE `entry`=14988;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_gahzranka' WHERE `entry`=15114;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_jindo' WHERE `entry`=11380;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_hakkar' WHERE `entry`=14834;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_thekal' WHERE `entry`=14509;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_arlokk' WHERE `entry`=14515;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_grilek' WHERE `entry`=15082;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_hazzarah' WHERE `entry`=15083;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_renataki' WHERE `entry`=15084;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_wushoolay' WHERE `entry`=15085;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_zealot_lorkhan' WHERE `entry`=11347;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_zealot_zath' WHERE `entry`=11348;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_healing_ward' WHERE `entry`=14987;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_spawn_of_marli' WHERE `entry`=15041;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_gurubashi_bat_rider' WHERE `entry`=14750;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_shade_of_jindo' WHERE `entry`=14986;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_brain_wash_totem' WHERE `entry`=15112;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_razzashi_cobra' WHERE `entry`=11373;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_vilebranch_speaker' WHERE `entry`=11391;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_son_of_hakkar' WHERE `entry`=11357;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_gurubashi_axe_thrower' WHERE `entry`=11350;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_gurubashi_blood_drinker' WHERE `entry`=11353;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_poisonous_cloud' WHERE `entry`=14989;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='mob_zulian_prowler' WHERE `entry`=15101;
UPDATE `gameobject_template` SET `ScriptName`='go_gong_of_bethekk' WHERE `entry`=180526;
DELETE FROM `scripted_areatrigger` WHERE `entry` IN (3956, 3958, 3960, 3964);
INSERT INTO `scripted_areatrigger` VALUES
(3956,'at_zulgurub'),
(3958,'at_zulgurub'),
(3960,'at_zulgurub'),
(3964,'at_zulgurub');

/* EOF */
