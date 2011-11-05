/* UN-CATEGORIZED */
-- --

/* REV 13 */
/* Twilight Aquamancer */
UPDATE `creature_ai_scripts` SET `event_param1`='180000', `event_param2`='180000' WHERE `id`=481102;

/* REV 16 */
/* Fixed stealth NPC */
UPDATE `creature_ai_scripts` SET  `action1_param1` =  '6920' WHERE `id` =94701;
DELETE FROM `creature_ai_scripts` WHERE `id` = '345702';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('345702', '3457', '1', '0', '100', '0', '1000', '1000', '0', '0', '11', '6920', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Razormane Stalker - Cast Stealth on Spawn');
UPDATE `creature_template` SET `flags_extra` = '0' WHERE `entry` =947;

/* REV 23 */
/* #1522 necastil Frostbolt */
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 1522;
DELETE FROM `creature_ai_scripts` WHERE `id` = 152201;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(152201, 1522, 0, 0, 100, 1, 1400, 10800, 10800, 21800, 11, 13322, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkeye Bonecaster - Cast Frostbolt');

/* AZSHARA */
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (8386);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (8386);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(838601, 8386, 0, 0, 100, 2, 2000, 3000, 2000, 3000, 11, 6660, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Horizon Scout Crewman - Cast Shoot');

/* BARRENS */
DELETE FROM `creature_ai_texts` WHERE `entry` IN ('-945701', '-945702', '-945703', '-945704');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('-945702', 'Defend the bunkers!', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 'Common death say of any Horde defender of quest Counterattack!'),
('-945703', 'Our foes will fall!', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 'Common death say of any Horde defender of quest Counterattack!'),
('-945704', 'For the Horde!', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 'Common Aggro say a Horde Defender of quest Counterattack!');

UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (9457, 9458);

DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (9457, 9458);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
-- Horde Defender --
(945701, 9457, 6, 0, 100, 0, 0, 0, 0, 0, 1, -945701, -945702, -945703, 0, 0, 0, 0, 0, 0, 0, 0, 'Horde Defender - Random say on Death'),
(945702, 9457, 4, 0, 70, 0, 0, 0, 0, 0, 1, -945704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Horde Defender - A chance to Say on Aggro'),
-- Horde Axe Thrower --
(945801, 9458, 6, 0, 100, 0, 0, 0, 0, 0, 1, -945701, -945702, -945703, 0, 0, 0, 0, 0, 0, 0, 0, 'Horde Axe Thrower - Random say on Death'),
(945802, 9458, 0, 0, 100, 1, 1000, 1000, 3000, 3000, 11, 10277, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Horde Axe Thrower - Cast Throw');
-- Kolkar Invader, Kolkar Stormseer --
UPDATE `creature_ai_scripts` SET `action2_type`=1, `action2_param1`='-829' WHERE `id`=952401;
UPDATE `creature_ai_scripts` SET `action1_param2`=1 WHERE `id` IN (952402, 952403);
UPDATE `creature_ai_scripts` SET `action1_param2`=1 WHERE `id` IN (952402, 952403);

/* SEARING GORGE */
DELETE FROM `creature_ai_texts` WHERE `entry`='-442105';
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
-- Locheed --
('-442105', 'Ach! Thank you so much I''m free! Finally!', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 'Locheen text when spawned');

UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (9876, 16033);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (9876, 16033);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Locheed -- 
(987601, 9876, 11, 0, 100, 0, 0, 0, 0, 0, 1, -442105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Locheed - Says text when spawned'),
-- Bodley --
(1603301, 16033, 11, 0, 100, 0, 0, 0, 0, 0, 11, 22650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bodley - Cast Ghost Visual when spawned');

/* GNOMEREGAN */
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-736101);
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES
(-736101, 'We come from below! You can never stop us!', 1, '7361');

UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (6206, 6207, 6211, 6218, 6220, 6222, 6223, 6224, 6225, 6226, 6227, 6230, 6232, 6234, 6329, 6392, 6407, 7361, 7603, 7849);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (6206, 6207, 6211, 6218, 6220, 6222, 6223, 6224, 6225, 6226, 6227, 6230, 6232, 6234, 6329, 6392, 6407, 7361, 7603, 7849);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
/* Caverndeep Burrower */
('620601','6206','0','0','100','3','1000','1000','180000','180000','11','7164','0','0','0','0','0','0','0','0','0','0','Caverndeep Burrower - Cast Defensive Stance'),
('620602','6206','0','0','100','3','12000','12000','8000','8000','11','7405','1','0','0','0','0','0','0','0','0','0','Caverndeep Burrower - Cast Sunder Armor'),
/* Caverndeep Ambusher */
('620701','6207','0','0','100','3','2000','2000','9000','9000','11','2590','1','0','0','0','0','0','0','0','0','0','Caverndeep Ambusher - Cast Backstab'),
/* Caverndeep Reaver */
('621101','6211','0','0','100','3','1000','1000','240000','240000','11','7366','0','0','0','0','0','0','0','0','0','0','Caverndeep Reaver - Cast Berserker Stance'),
('621102','6211','0','0','100','3','10000','10000','13000','13000','11','8374','0','0','0','0','0','0','0','0','0','0','Caverndeep Reaver - Cast Arcing Smash'),
('621103','6211','0','0','100','3','3000','3000','7000','7000','11','845','1','0','0','0','0','0','0','0','0','0','Caverndeep Reaver - Cast Cleave'),
/* Irradiated Slime */
('621801','6218','0','0','100','3','7000','7000','13000','13000','11','10341','0','0','0','0','0','0','0','0','0','0','Irradiated Slime - Cast Radiation Cloud'),
/* Irradiated Horror */
('622001','6220','0','0','100','3','8000','8000','16000','16000','11','8211','1','0','0','0','0','0','0','0','0','0','Irradiated Horror - Cast Chain Burn'),
/* Leprous Technician */
('622201','6222','0','0','100','3','1000','1000','24000','24000','11','13398','1','0','0','0','0','0','0','0','0','0','Leprous Technician - Cast Throw Wrench'),
('622202','6222','0','0','100','2','15000','15000','0','0','11','10732','0','0','0','0','0','0','0','0','0','0','Leprous Technician - Cast Supercharge'),
('622203','6222','0','0','100','2','5000','5000','0','0','11','10348','0','0','0','0','0','0','0','0','0','0','Leprous Technician - Cast Tune Up'),
('622204','6222','4','0','50','2','0','0','0','0','1','-190','0','0','0','0','0','0','0','0','0','0','Leprous Technician say'),
/* Leprous Defender */
('622301','6223','0','0','100','3','3000','3000','12000','12000','11','14443','1','0','0','0','0','0','0','0','0','0','Leprous Defender - Cast Multi-Shot'),
('622302','6223','0','0','100','3','1000','1000','5000','5000','11','6660','1','0','0','0','0','0','0','0','0','0','Leprous Defender - Cast Shoot'),
/* Leprous Machinesmith */
('622401','6224','0','0','100','3','1000','1000','24000','24000','11','13398','1','0','0','0','0','0','0','0','0','0','Leprous Machinesmith - Cast Throw Wrench'),
('622402','6224','0','0','100','2','15000','15000','0','0','11','10732','0','0','0','0','0','0','0','0','0','0','Leprous Machinesmith - Cast Supercharge'),
('622403','6224','0','0','100','2','5000','5000','0','0','11','10348','0','0','0','0','0','0','0','0','0','0','Leprous Machinesmith - Cast Tune Up'),
/* Mechano-Tank */
('622501','6225','0','0','100','3','1000','1000','9000','9000','11','10346','1','0','0','0','0','0','0','0','0','0','Mechano-Tank - Cast Machine Gun'),
/* Mechano-Flamewalker */
('622601','6226','0','0','100','3','7000','7000','14000','14000','11','11970','0','0','0','0','0','0','0','0','0','0','Mechano-Flamewalker - Cast Fire Nova'),
('622602','6226','0','0','100','3','3000','3000','8000','8000','11','10733','0','0','0','0','0','0','0','0','0','0','Mechano-Flamewalker - Cast Flame Spray'),
/* Mechano-Frostwalker */
('622701','6227','0','0','100','3','4000','4000','12000','12000','11','11264','0','0','0','0','0','0','0','0','0','0','Mechano-Frostwalker - Cast Ice Blast'),
/* Peacekeeper Security Suit */
('623001','6230','0','0','100','3','3000','3000','9000','9000','11','6533','4','0','0','0','0','0','0','0','0','0','Peacekeeper Security Suit - Cast Net'),
('623002','6230','0','0','100','3','6000','6000','15000','15000','11','10730','1','0','0','0','0','0','0','0','0','0','Peacekeeper Security Suit - Cast Pacify'),
/* Arcane Nullifier X-21 */
('623201','6232','0','0','100','3','12000','12000','20000','20000','11','10832','0','0','0','0','0','0','0','0','0','0','Arcane Nullifier X-21 - Cast Mass Nullify'),
('623202','6232','0','0','100','3','6000','6000','14000','14000','11','10831','0','0','0','0','0','0','0','0','0','0','Arcane Nullifier X-21 - Cast Reflection Field'),
/* Mechanized Guardian */
('623401','6234','0','0','100','3','2000','2000','13000','13000','11','11820','4','0','0','0','0','0','0','0','0','0','Mechanized Guardian - Cast Electrified Net'),
/* Irradiated Pillager */
('632901','6329','0','0','100','3','1000','1000','180000','180000','11','8269','0','0','0','0','0','0','0','0','0','0','Irradiated Pillager - Cast Frenzy'),
('632902','6329','0','0','100','3','10000','10000','13000','13000','11','9798','0','0','0','0','0','0','0','0','0','0','Irradiated Pillager - Cast Radiation'),
('632903','6329','0','0','100','3','3000','3000','7000','7000','11','9771','1','0','0','0','0','0','0','0','0','0','Irradiated Pillager - Cast Radiation Bolt'),
/* Holdout Medic */
('639201','6392','14','0','50','3','800','40','25000','25000','11','22167','6','1','0','0','0','0','0','0','0','0','Holdout Medic - Cast Heal'),
('639202','6392','14','0','100','2','200','40','0','0','11','13864','6','1','0','0','0','0','0','0','0','0','Holdout Medic - Cast Power Word: Fortitude'),
('639203','6392','14','0','50','3','800','40','17000','17000','11','22168','6','1','0','0','0','0','0','0','0','0','Holdout Medic - Cast Renew'),
/* Holdout Technician */
('640701','6407','0','0','100','3','9000','9000','17000','17000','11','8858','5','0','0','0','0','0','0','0','0','0','Holdout Technician - Cast Bomb'),
('640702','6407','0','0','100','3','1000','1000','5000','5000','11','6660','1','0','0','0','0','0','0','0','0','0','Holdout Technician - Cast Shoot'),
/* Grubbis */
('736101','7361','11','0','100','2','0','0','0','0','1','-736101','0','0','0','0','0','0','0','0','0','0','Grubbis say on spawn'),
/* Leprous Assistant */
('760301','7603','4','0','50','2','0','0','0','0','1','-191','-188','-189','0','0','0','0','0','0','0','0','Leprous Assistant random say'),
/* Mobile Alert System */
('784901','7849','0','0','100','3','1000','1000','25000','25000','11','1543','4','0','0','0','0','0','0','0','0','0','Mobile Alert System - Cast Flare');

/* REV 59 */
/* SCARLET MONASTERY */
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='',`AIName` = 'EventAI' WHERE `entry` IN (4287, 4288, 4293, 6488);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (4287, 4288, 4293, 6488);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
/* Scarlet Gallant */
('428701','4287','0','0','100','3','6000','6000','65000','65000','11','5589','1','0','0','0','0','0','0','0','0','0','Scarlet Gallant - Cast Hammer of Justice'),
('428702','4287','0','0','100','3','10000','10000','7000','7000','11','14517','1','0','0','0','0','0','0','0','0','0','Scarlet Gallant - Cast Crusader Strike'),
/* Scarlet Beastmaster */
('428801','4288','0','0','100','3','8000','8000','9000','9000','11','7896','4','0','0','0','0','0','0','0','0','0','Scarlet Beastmaster - Cast Exploding Shot'),
('428802','4288','0','0','100','3','1000','1000','5000','5000','11','6660','1','0','0','0','0','0','0','0','0','0','Scarlet Beastmaster - Cast Shoot'),
/* Scarlet Scryer */
('429301','4293','0','0','100','3','10000','10000','22000','22000','11','1090','4','0','0','0','0','0','0','0','0','0','Scarlet Scryer - Cast Sleep'),
('429302','4293','0','0','100','3','1000','1000','7000','7000','11','9613','1','0','0','0','0','0','0','0','0','0','Scarlet Scryer - Cast Shadow Bolt'),
/* Fallen Champion */
('648801','6488','0','0','100','3','1000','1000','240000','240000','11','7366','0','0','0','0','0','0','0','0','0','0','Fallen Champion - Cast Berserker Stance'),
('648802','6488','0','0','100','3','3000','3000','7000','7000','11','15496','1','0','0','0','0','0','0','0','0','0','Fallen Champion - Cast Cleave');

/* ZUL'FARRAK */
DELETE FROM `creature_ai_texts` WHERE `entry` IN ('-726701', '-726702', '-726703');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) VALUES
('-726701','This desert be mine!','0','0','0','Chief Ukorz Sandscalp Text'),
('-726702','The Sandfury reign supreme!','0','0','0','Chief Ukorz Sandscalp Text'),
('-726703','Feel the fury of the sands!','0','0','0','Chief Ukorz Sandscalp Text');
DELETE FROM `creature_ai_texts` WHERE `entry` IN ('-812701', '-812702');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) VALUES
('-812701','Lunch has arrived my beautiful children. Tear them to pieces!','0','0','0','Antusul Text'),
('-812702','Rise and defend your master!','0','0','0','Antusul Text');

UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (7267, 7273, 7274, 7275, 7795, 7796, 7797, 8127, 10080, 10081, 10082);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (7267, 7273, 7274, 7275, 7795, 7796, 7797, 8127, 10080, 10081, 10082);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
/* Chief Ukorz Sandscalp */
('726701','7267','4','0','100','2','0','0','0','0','1','-726701','0','0','0','0','0','0','0','0','0','0','Chief Ukorz Sandscalp - Yell on Aggro'),
('726702','7267','2','0','100','3','99','16','20000','30000','1','-726702','0','0','0','0','0','0','0','0','0','0','Chief Ukorz Sandscalp - Yell on Health'),
('726703','7267','2','0','100','3','15','1','20000','30000','1','-726703','0','0','0','0','0','0','0','0','0','0','Chief Ukorz Sandscalp - Yell on Low Health'),
('726704','7267','0','0','100','3','1000','1000','240000','240000','11','7366','0','0','0','0','0','0','0','0','0','0','Chief Ukorz Sandscalp - Cast Berserker Stance'),
('726705','7267','0','0','100','3','3000','3000','6000','6000','11','15496','1','0','0','0','0','0','0','0','0','0','Chief Ukorz Sandscalp - Cast Cleave'),
('726706','7267','0','0','100','3','2000','2000','180000','180000','11','8269','0','0','0','0','0','0','0','0','0','0','Chief Ukorz Sandscalp - Cast Frenzy'),
('726707','7267','0','0','100','3','13000','13000','17000','17000','11','11837','0','0','0','0','0','0','0','0','0','0','Chief Ukorz Sandscalp - Cast Wide Slash'),
/* Gahz'rilla */
('727301','7273','0','0','100','3','12000','12000','23000','23000','11','11836','4','0','0','0','0','0','0','0','0','0','Gahzrilla - Cast Freeze Solid'),
('727302','7273','0','0','100','3','10000','10000','13000','13000','11','11902','0','0','0','0','0','0','0','0','0','0','Gahzrilla - Cast Gahzrilla Slam'),
('727303','7273','0','0','100','3','3000','3000','7000','7000','11','11131','1','0','0','0','0','0','0','0','0','0','Gahzrilla - Cast Icicle'),
/* Sandfury Executioner */
('727401','7274','0','0','100','3','1000','1000','240000','240000','11','7366','0','0','0','0','0','0','0','0','0','0','Sandfury Executioner  - Cast Berserker Stance'),
('727402','7274','0','0','100','3','3000','3000','7000','7000','11','15496','1','0','0','0','0','0','0','0','0','0','Sandfury Executioner  - Cast Cleave'),
/* Shadowpriest Sezz'ziz */
('727501','7275','0','0','100','3','12000','12000','30000','30000','11','13704','0','0','0','0','0','0','0','0','0','0','Shadowpriest Sezzziz - Cast Psychic Scream'),
('727502','7275','14','0','70','3','3500','40','20000','20000','11','8362','6','1','0','0','0','0','0','0','0','0','Shadowpriest Sezzziz - Cast Renew'),
('727503','7275','0','0','100','3','3000','3000','7000','7000','11','15537','1','0','0','0','0','0','0','0','0','0','Shadowpriest Sezzziz - Cast Shadow Bolt'),
('727504','7275','14','0','50','3','2500','40','24000','24000','11','12039','6','1','0','0','0','0','0','0','0','0','Shadowpriest Sezzziz - Cast Heal'),
/* Hydromancer Velratha */
('779501','7795','0','0','100','3','12000','12000','30000','30000','11','15245','0','0','0','0','0','0','0','0','0','0','Hydromancer Velratha - Cast Shadow Bolt Volley'),
('779502','7795','14','0','70','3','3500','40','20000','20000','11','12491','6','1','0','0','0','0','0','0','0','0','Hydromancer Velratha - Cast Healing Wave'),
('779503','7795','0','0','100','3','3000','3000','7000','7000','11','12739','1','0','0','0','0','0','0','0','0','0','Hydromancer Velratha - Cast Shadow Bolt'),
/* Nekrum Gutchewer */
('779601','7796','0','0','100','3','2000','2000','10000','10000','11','8600','4','0','0','0','0','0','0','0','0','0','Nekrum Gutchewer - Cast Fevered Plague'),
/* Ruuzlu */
('779701','7797','0','0','100','3','1000','1000','240000','240000','11','7366','0','0','0','0','0','0','0','0','0','0','Ruuzlu  - Cast Berserker Stance'),
('779702','7797','0','0','100','3','3000','3000','7000','7000','11','15496','1','0','0','0','0','0','0','0','0','0','Ruuzlu - Cast Cleave'),
/* Antu'sul */
('812701','8127','4','0','100','2','0','0','0','0','1','-812701','0','0','0','0','0','0','0','0','0','0','Antusul - Yell on Aggro'),
('812702','8127','0','0','100','3','17000','17000','30000','30000','11','11894','0','0','1','-812702','0','0','0','0','0','0','Antusul - Cast Antusuls Minion'),
('812703','8127','0','0','100','3','3000','3000','16000','16000','11','2860','4','0','0','0','0','0','0','0','0','0','Antusul - Cast Chain Lightning'),
('812704','8127','0','0','100','3','10000','10000','23000','23000','11','10413','0','0','0','0','0','0','0','0','0','0','Antusul - Cast Earth Shock'),
('812705','8127','14','0','70','3','3500','40','20000','20000','11','10915','6','1','0','0','0','0','0','0','0','0','Antusul - Cast Flash Heal'),
('812706','8127','0','0','100','3','25000','25000','30000','30000','11','11899','0','0','0','0','0','0','0','0','0','0','Antusul - Cast Healing Ward'),
('812707','8127','2','0','100','3','15','1','10000','20000','11','11895','0','0','0','0','0','0','0','0','0','0','Antusul - Cast Healing Wave of Antusul'),
('812708','8127','0','0','100','3','13000','13000','34000','34000','11','11314','0','0','0','0','0','0','0','0','0','0','Antusul - Cast Fire Nova'), 
/* Sandarr Dunereaver */
('1008001','10080','0','0','100','3','7000','7000','35000','35000','11','13730','0','0','0','0','0','0','0','0','0','0','Sandarr Dunereaver - Cast Demoralizing Shout'),
('1008002','10080','0','0','100','3','5000','25000','10000','10000','11','15615','1','0','0','0','0','0','0','0','0','0','Sandarr Dunereaver - Cast Pummel'),
('1008003','10080','0','0','100','3','1000','1000','7000','7000','11','14516','1','0','0','0','0','0','0','0','0','0','Sandarr Dunereaver - Cast Strike'),
/* Dustwraith */
('1008101','10081','0','0','100','3','3000','3000','13000','13000','11','15667','1','0','0','0','0','0','0','0','0','0','Dustwraith - Cast Sinister Strike'),
/* Zerillis */
('1008201','10082','0','0','100','3','3000','3000','14000','14000','11','6533','4','0','0','0','0','0','0','0','0','0','Zerillis - Cast Net'),
('1008202','10082','0','0','100','3','1000','1000','5000','5000','11','15547','1','0','0','0','0','0','0','0','0','0','Zerillis - Cast Shoot'),
('1008203','10082','0','0','100','3','12000','12000','22000','22000','11','12551','1','0','0','0','0','0','0','0','0','0','Zerillis - Cast Frost Shot');

/* REV 66 */
/* Pridan flee efekt */
DELETE FROM `creature_ai_scripts` WHERE `id` IN (702611, 702612, 702503, 702703, 703711, 703712, 703811, 703812, 703603, 703404, 703504, 86101, 86501, 86701, 86601, 75901, 75902, 75903, 76001, 76202, 76301, 597401, 597511, 597512, 597601, 597811, 597812, 597702, 600504, 766801, 600603);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
/* Blackrock Sorcerer */
('702611','7026','2','0','100','0','15','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Blackrock Sorcerer - Set Phase 2 at 15% HP'),
('702612','7026','2','3','100','0','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Blackrock Sorcerer - Start Combat Movement and Flee at 15% HP (Phase 2)'),
/* Blackrock Soldier */
('702503','7025','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Blackrock Soldier - Flee at 15% HP'),
/* Blackrock Slayer */
('702703','7027','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Blackrock Slayer - Flee at 15% HP'),
/* Thaurissan Firewalker */
('703711','7037','2','0','100','0','15','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Thaurissan Firewalker - Set Phase 2 at 15% HP'),
('703712','7037','2','3','100','0','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Thaurissan Firewalker - Start Combat Movement and Flee at 15% HP (Phase 2)'),
/* Thaurissan Agent */
('703811','7038','2','0','100','0','15','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Thaurissan Agent - Set Phase 2 at 15% HP'),
('703812','7038','2','3','100','0','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Thaurissan Agent - Start Combat Movement and Flee at 15% HP (Phase 2)'),
/* Thaurissan Spy */
('703603','7036','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Thaurissan Spy - Flee at 15% HP'),
/* Firegut Ogre Mage */
('703404','7034','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Firegut Ogre Mage - Flee at 15% HP'),
/* Firegut Brute */
('703504','7035','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Firegut Brute - Flee at 15% HP'),
/* Stonard Scout */
('86101','861','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Stonard Scout - Flee at 15% HP'),
/* Stonard Wayfinder */
('86501','865','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Stonard Wayfinder - Flee at 15% HP'),
/* Stonard Cartographer */
('86701','867','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Stonard Cartographer - Flee at 15% HP'),
/* Stonard Grunt */
('86601','866','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Stonard Grunt - Flee at 15% HP'),
/* Lost One Hunter */
('75901','759','0','0','100','1','8000','8000','9000','9000','11','8806','4','0','0','0','0','0','0','0','0','0','Lost One Hunter - Cast Poisoned Shot'),
('75902','759','0','0','100','1','1000','1000','5000','5000','11','6660','1','0','0','0','0','0','0','0','0','0','Lost One Hunter - Cast Shoot'),
('75903','759','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Lost One Hunter - Flee at 15% HP'),
/* Lost One Muckdweller */
('76001','760','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Lost One Muckdweller - Flee at 15% HP'),
/* Lost One Riftseeker */
('76202','762','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Lost One Riftseeker - Flee at 15% HP'),
/* Lost One Chieftain */
('76301','763','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Lost One Chieftain - Flee at 15% HP'),
/* Dreadmaul Ogre */
('597401','5974','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Dreadmaul Ogre - Flee at 15% HP'),
/* Dreadmaul Ogre Mage */
('597511','5975','2','0','100','0','15','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Dreadmaul Ogre Mage - Set Phase 2 at 15% HP'),
('597512','5975','2','3','100','0','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Dreadmaul Ogre Mage - Start Combat Movement and Flee at 15% HP (Phase 2)'),
/* Dreadmaul Brute */
('597601','5976','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Dreadmaul Brute - Flee at 15% HP'),
/* Dreadmaul Warlock */
('597811','5978','2','0','100','0','15','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Dreadmaul Warlock - Set Phase 2 at 15% HP'),
('597812','5978','2','3','100','0','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Dreadmaul Warlock - Start Combat Movement and Flee at 15% HP (Phase 2)'),
/* Dreadmaul Mauler */
('597702','5977','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Dreadmaul Mauler - Flee at 15% HP'),
/* Shadowsworn Thug */
('600504','6005','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Shadowsworn Thug - Flee at 15% HP'),
/* Servant of Razelikh */
('766801','7668','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Servant of Razelikh - Flee at 15% HP'),
/* Shadowsworn Adept */
('600603','6006','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Shadowsworn Adept - Flee at 15% HP');

/* REV 67 */
UPDATE `creature_template` SET `spell1` = '20825', `spell2` = '11639' WHERE `entry` = 8526;
UPDATE `creature_ai_scripts` SET `action1_param2` = '0' WHERE `id` = 1152001;
DELETE FROM `creature_ai_scripts` WHERE `id` = 166605;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
('166605',  '1666',  '0',  '0',  '100',  '3',  '7000',  '7000',  '23000',  '23000',  '11',  '871',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'Kam Deepfury - Cast Shield Wall');
UPDATE `creature_ai_scripts` SET `event_param2` = '5000', `event_param3` = '35000', `event_param4` = '35000' WHERE `id` = 482901;
UPDATE `creature_ai_scripts` SET `event_param3` = '11000', `event_param4` = '11000' WHERE `id` = 482902;
UPDATE `creature_ai_scripts` SET `action1_param2` = '0' WHERE `id` = 902601;
UPDATE `creature_template` SET `mechanic_immune_mask` = '8388624' WHERE `entry` = 9026;

/* REV 72 */
/* RAZORFEN KRAUL */
DELETE FROM `creature_ai_texts` WHERE `entry` IN ('-442101', '-442102', '-442103');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) VALUES
('-442101','Troublesome whelps. I will teach you to interfere!','0','0','0','Charlga Razorflank Text'),
('-442102','You outsiders will pay for encroaching on our land!','0','0','0','Charlga Razorflank Text'),
('-442103','Bah! My power rules here!','0','0','0','Charlga Razorflank Text');

UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (4420, 4421, 4422, 4424, 4427, 4436, 4437, 4438, 4440, 4442, 4511, 4512, 4514, 4520, 4522, 4523, 4525, 4530, 4531, 4532, 4535, 4541, 4623, 6035, 6168);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (4420, 4421, 4422, 4424, 4427, 4436, 4437, 4438, 4440, 4442, 4511, 4512, 4514, 4520, 4522, 4523, 4525, 4530, 4531, 4532, 4535, 4541, 4623, 6035, 6168);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
/* Overlord Ramtusk */
('442001','4420','0','0','100','3','1000','1000','180000','180000','11','7165','0','0','0','0','0','0','0','0','0','0','Overlord Ramtusk - Cast Battle Stance'),
('442002','4420','0','0','100','3','3000','3000','120000','120000','11','9128','0','0','0','0','0','0','0','0','0','0','Overlord Ramtusk - Cast Battle Shout'),
('442003','4420','0','0','100','3','10000','10000','8000','8000','11','15548','0','0','0','0','0','0','0','0','0','0','Overlord Ramtusk - Cast Thunderclap'),
/* Charlga Razorflank */
('442101','4421','0','0','100','3','13000','13000','25000','25000','11','8361','0','0','0','0','0','0','0','0','0','0','Charlga Razorflank - Cast Purity'),
('442102','4421','3','0','100','3','25','0','40000','40000','11','8358','0','0','0','0','0','0','0','0','0','0','Charlga Razorflank - Cast Mana Spike'),
('442103','4421','0','0','100','3','6000','6000','8000','8000','11','8292','1','0','0','0','0','0','0','0','0','0','Charlga Razorflank - Cast Chain Bolt'),
('442104','4421','14','0','70','3','900','40','20000','20000','11','6077','6','1','0','0','0','0','0','0','0','0','Charlga Razorflank - Cast Renew'),
('442105','4421','4','0','100','2','0','0','0','0','1','-442101','-442102','-442103','0','0','0','0','0','0','0','0','Charlga Razorflank  - Random Say on Aggro'),
/* Agathelos the Raging */
('442201','4422','0','0','100','3','17000','17000','120000','120000','11','8269','0','0','0','0','0','0','0','0','0','0','Agathelos the Raging - Cast Frenzy'),
('442202','4422','0','0','100','3','15000','15000','50000','50000','11','8555','5','0','0','0','0','0','0','0','0','0','Agathelos the Raging - Cast Left for Dead'),
('442203','4422','0','0','100','3','6000','6000','21000','21000','11','8285','1','0','0','0','0','0','0','0','0','0','Agathelos the Raging - Cast Rampage'),
('442204','4422','0','0','100','3','1000','1000','9000','9000','11','8260','0','0','0','0','0','0','0','0','0','0','Agathelos the Raging - Rushing Charge'),
/* Aggem Thorncurse */
('442401','4424','0','0','100','3','1000','1000','180000','180000','11','6192','0','0','0','0','0','0','0','0','0','0','Aggem Thorncurse - Cast Battle Stance'),
('442402','4424','14','0','70','3','900','40','20000','20000','11','14900','6','1','0','0','0','0','0','0','0','0','Aggem Thorncurse - Cast Chain Heal'),
('442403','4424','0','0','100','3','3000','3000','240000','240000','11','8286','0','0','0','0','0','0','0','0','0','0','Aggem Thorncurse - Cast Summon Boar Spirit'),
/* Ward Guardian */
('442701','4427','14','0','70','3','900','40','20000','20000','11','959','6','1','0','0','0','0','0','0','0','0','Ward Guardian - Cast Healing Wave'),
/* Razorfen Quilguard */
('443601','4436','0','0','100','3','1000','1000','180000','180000','11','7165','0','0','0','0','0','0','0','0','0','0','Razorfen Quilguard - Cast Battle Stance'),
('443602','4436','0','0','100','3','3000','3000','240000','240000','11','8258','0','0','0','0','0','0','0','0','0','0','Razorfen Quilguard - Cast Devotion Aura'),
('443603','4436','0','0','100','3','10000','10000','8000','8000','11','15548','0','0','0','0','0','0','0','0','0','0','Razorfen Quilguard - Cast Thunderclap'),
/* Razorfen Warden */
('443701','4437','0','0','100','3','3000','3000','14000','14000','11','6533','4','0','0','0','0','0','0','0','0','0','Razorfen Warden - Cast Net'),
/* Razorfen Spearhide */
('443801','4438','0','0','100','3','1000','1000','8000','8000','11','8259','1','0','0','0','0','0','0','0','0','0','Razorfen Spearhide - Cast Whirling Barrage'),
('443802','4438','0','0','100','3','3000','3000','60000','60000','11','8148','0','0','0','0','0','0','0','0','0','0','Razorfen Spearhide - Cast Thorns Aura'),
/* Razorfen Totemic */
('444001','4440','0','0','100','3','1000','1000','35000','35000','11','8376','0','0','0','0','0','0','0','0','0','0','Razorfen Totemic - Cast Earthgrab Totem'),
('444002','4440','0','0','100','3','3000','3000','32000','32000','11','4971','0','0','0','0','0','0','0','0','0','0','Razorfen Totemic - Cast Healing Ward'),
/* Razorfen Defender */
('444201','4442','0','0','100','3','1000','1000','180000','180000','11','7164','0','0','0','0','0','0','0','0','0','0','Razorfen Defender - Cast Defensive Stance'),
('444202','4442','0','0','100','3','3000','3000','18000','18000','11','3248','0','0','0','0','0','0','0','0','0','0','Razorfen Defender - Cast Improved Blocking'),
('444203','4442','0','0','100','3','10000','10000','8000','8000','11','11972','1','0','0','0','0','0','0','0','0','0','Razorfen Defender - Cast Shield Bash'),
/* Agam'ar */
('451101','4511','0','0','100','3','1000','1000','9000','9000','11','6268','0','0','0','0','0','0','0','0','0','0','Agamar - Rushing Charge'),
/* Rotting Agam'ar */
('451201','4512','0','0','100','3','4000','4000','60000','60000','11','8267','0','0','0','0','0','0','0','0','0','0','Rotting Agamar - Cursed Blood'),
/* Raging Agam'ar */
('451401','4514','0','0','100','3','7000','7000','120000','120000','11','8269','0','0','0','0','0','0','0','0','0','0','Raging Agamar - Cast Frenzy'),
/* Razorfen Geomancer */
('452001','4520','0','0','100','3','2000','2000','8000','8000','11','9532','1','0','0','0','0','0','0','0','0','0','Razorfen Geomancer - Cast Lightning Bolt'),
('452002','4520','0','0','100','2','1000','1000','0','0','11','8270','0','0','0','0','0','0','0','0','0','0','Razorfen Geomancer - Cast Summon Earth Rumbler'),
/* Razorfen Dustweaver */
('452201','4522','0','0','100','3','2000','2000','13000','13000','11','6728','1','0','0','0','0','0','0','0','0','0','Razorfen Dustweaver - Cast Enveloping Winds'),
('452202','4522','0','0','100','2','1000','1000','0','0','11','8271','0','0','0','0','0','0','0','0','0','0','Razorfen Dustweaver - Cast Summon Wind Howler'),
/* Razorfen Groundshaker */
('452301','4523','0','0','100','3','2000','2000','12000','12000','11','8046','1','0','0','0','0','0','0','0','0','0','Razorfen Groundshaker - Cast Earth Shock'),
('452302','4523','0','0','100','3','7000','7000','15000','15000','11','6524','0','0','0','0','0','0','0','0','0','0','Razorfen Groundshaker - Cast Ground Tremor'),
/* Razorfen Earthbreaker */
('452501','4525','0','0','100','3','2000','2000','12000','12000','11','8046','1','0','0','0','0','0','0','0','0','0','Razorfen Earthbreaker - Cast Earth Shock'),
('452502','4525','0','0','100','3','15000','15000','25000','25000','11','8272','4','0','0','0','0','0','0','0','0','0','Razorfen Earthbreaker - Cast Mind Tremor'),
/* Razorfen Handler */
('453001','4530','0','0','100','2','1000','1000','0','0','11','8274','0','0','0','0','0','0','0','0','0','0','Razorfen Handler - Cast Summon Tamed Battleboar'),
('453002','4530','0','0','100','3','3000','3000','5000','5000','11','6660','1','0','0','0','0','0','0','0','0','0','Razorfen Handler - Cast Shoot'),
/* Razorfen Beast Trainer */
('453101','4531','0','0','100','2','1000','1000','0','0','11','8274','0','0','0','0','0','0','0','0','0','0','Razorfen Beast Trainer - Cast Summon Tamed Battleboar'),
('453102','4531','0','0','100','3','3000','3000','5000','5000','11','6660','1','0','0','0','0','0','0','0','0','0','Razorfen Beast Trainer - Cast Shoot'),
('453103','4531','0','0','100','3','12000','12000','22000','22000','11','6984','1','0','0','0','0','0','0','0','0','0','Razorfen Beast Trainer - Cast Frost Shot'),
/* Razorfen Beastmaster */
('453201','4532','0','0','100','2','1000','1000','0','0','11','8276','0','0','0','0','0','0','0','0','0','0','Razorfen Beastmaster - Cast Summon Tamed Hyena'),
('453202','4532','0','0','100','3','8000','8000','9000','9000','11','8275','4','0','0','0','0','0','0','0','0','0','Razorfen Beastmaster - Cast Poisoned Shot'),
('453203','4532','0','0','100','3','3000','3000','5000','5000','11','6660','1','0','0','0','0','0','0','0','0','0','Razorfen Beastmaster - Cast Shoot'),
/* Tamed Battleboar */
('453501','4535','0','0','100','3','1000','1000','9000','9000','11','6268','0','0','0','0','0','0','0','0','0','0','Tamed Battleboar - Rushing Charge'),
/* Blood of Agamaggan */
('454101','4541','0','0','100','3','2000','2000','20000','20000','11','8282','4','0','0','0','0','0','0','0','0','0','Blood of Agamaggan - Curse of Blood'),
/* Quilguard Champion */
('462301','4623','0','0','100','3','1000','1000','180000','180000','11','7164','0','0','0','0','0','0','0','0','0','0','Quilguard Champion - Cast Defensive Stance'),
('462302','4623','0','0','100','3','3000','3000','240000','240000','11','8258','0','0','0','0','0','0','0','0','0','0','Quilguard Champion - Cast Devotion Aura'),
('462303','4623','0','0','100','3','12000','12000','8000','8000','11','15572','1','0','0','0','0','0','0','0','0','0','Quilguard Champion - Cast Sunder Armor'),
/* Razorfen Stalker */
('603501','6035','0','0','100','3','2000','2000','9000','9000','11','7159','1','0','0','0','0','0','0','0','0','0','Razorfen Stalker - Cast Backstab'),
/* Roogug */
('616801','6168','0','0','100','3','2000','2000','8000','8000','11','9532','1','0','0','0','0','0','0','0','0','0','Roogug - Cast Lightning Bolt'),
('616802','6168','0','0','100','2','1000','1000','0','0','11','8270','0','0','0','0','0','0','0','0','0','0','Roogug - Cast Summon Earth Rumbler');

/* REV 73 */
UPDATE `creature_ai_scripts` SET `event_type` = '0' WHERE `id` = 173201;
UPDATE `creature_ai_scripts` SET `action1_param2` = '4' WHERE `id` = 64201;
DELETE FROM `creature_ai_scripts` WHERE `id` = 64203;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
('64203','642','0','0','100','3','12000','12000','25000','25000','11','7399','5','0','0','0','0','0','0','0','0','0','Sneeds Shredder - Cast Terrify');

/* REV 90 */
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (3671,3669,3670,3673) AND (`action1_type` = 34 OR `action2_type` = 34 OR `action3_type` = 34);
INSERT INTO `creature_ai_scripts` (`creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `comment`)  VALUES
('3669','7','0','100','2','0','0','0','0','34','0','0','0','Lord Cobrahn - Data Type 0 on Evade'),
('3669','4','0','100','2','0','0','0','0','34','0','1','0','Lord Cobrahn - Data Type 1 on Aggro'),
('3669','6','0','100','2','0','0','0','0','34','0','3','0','Lord Cobrahn - Data Type 2 on Death'),
('3670','7','0','100','2','0','0','0','0','34','1','0','0','Lord Pythas - Data Type 0 on Evade'),
('3670','4','0','100','2','0','0','0','0','34','1','1','0','Lord Pythas - Data Type 1 on Aggro'),
('3670','6','0','100','2','0','0','0','0','34','1','3','0','Lord Pythas - Data Type 2 on Death'),
('3671','7','0','100','2','0','0','0','0','34','2','0','0','Lady Anacondra - Data Type 0 on Evade'),
('3671','4','0','100','2','0','0','0','0','34','2','1','0','Lady Anacondra - Data Type 1 on Aggro'),
('3671','6','0','100','2','0','0','0','0','34','2','3','0','Lady Anacondra - Data Type 2 on Death'),
('3673','7','0','100','2','0','0','0','0','34','3','0','0','Lord Serpentis - Data Type 0 on Evade'),
('3673','4','0','100','2','0','0','0','0','34','3','1','0','Lord Serpentis - Data Type 1 on Aggro'),
('3673','6','0','100','2','0','0','0','0','34','3','3','0','Lord Serpentis - Data Type 2 on Death');

/* REV 104 */
/* Oprava odevzdani Q Garments of... */
UPDATE `creature_ai_scripts` SET `action1_param2` = '1' WHERE `id` = 167401;

/* REV 134 */
/* Dalaran conjuror v Ambermillu */
UPDATE `creature_ai_scripts` SET `action1_param1` = '12746' WHERE `id` = 191503;

/* FERALAS */
UPDATE `creature_template` SET `spell1`='', `spell2`='', `spell3`='', `spell4`='', `ScriptName`='', `AIName`='EventAI' WHERE `entry` IN (3898, 3899, 3900);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (3898, 3899, 3900);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
-- Aligar the Tormentor --
(NULL, 3898, 4, 0, 100, 0, 0, 0, 0, 0, 11, 7165, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Aligar the Tormentor - Cast Battle Stance'),
(NULL, 3898, 0, 0, 100, 1, 5000, 5000, 10000, 10000, 11, 9080, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Aligar the Tormentor - Cast Hamstring'),
(NULL, 3898, 0, 0, 100, 1, 7000, 7000, 10000, 10000, 11, 25712, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Aligar the Tormentor - Cast Heroic Strike'),
-- Balizar the Umbrage --
(NULL, 3899, 0, 0, 100, 1, 4000, 4000, 40000, 40000, 11, 14868, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Balizar the Umbrage - Cast Curse of Agony'),
(NULL, 3899, 0, 0, 100, 0, 10000, 10000, 0, 0, 11, 11980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Balizar the Umbrage - Cast Curse of Weakness'),
(NULL, 3899, 0, 0, 100, 1, 2500, 2500, 4000, 4000, 11, 20791, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Balizar the Umbrage - Cast Shadow bolt'),
(NULL, 3899, 4, 0, 100, 0, 0, 0, 0, 0, 11, 11939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Balizar the Umbrage - Cast Summon Imp'),
-- Caedakar the Vicious --
(NULL, 3900, 4, 0, 100, 0, 0, 0, 0, 0, 11, 905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Caedakar the Vicious - Cast Lightning Shield'),
(NULL, 3900, 0, 0, 100, 1, 2000, 2000, 4000, 4000, 11, 9532, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Caedakar the Vicious - Cast Lightning Bolt'),
(NULL, 3900, 14, 0, 100, 0, 200, 30, 0, 0, 11, 913, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Caedakar the Vicious - Cast Healing Wave');

/* REV 210 */
/* Spell Baneful Poison */
UPDATE `creature_ai_scripts` SET `action1_param1`='15475' WHERE(`action1_param1`='15478');

/* SUNKEN TEMPLE */
UPDATE `creature_template` SET  `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (8658, 8657, 8438, 5291, 8336, 5256, 5277, 5283, 5280, 8384);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (8658, 8657, 8438, 5291, 8336, 5256, 5277, 5283, 5280, 8384);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
('865801','8658','0','0','100','3','9000','12000','180000','210000','11','11770','0','0','0','0','0','0','0','0','0','0','Hukku\'s Imp - Cast Fire Shield IV'),
('865802','8658','0','0','100','1','1000','2000','2300','2800','11','11762','1','0','0','0','0','0','0','0','0','0','Hukku\'s Imp - Cast Firebolt'),
('865701','8657','0','0','100','3','2000','5000','7000','9000','11','11779','1','0','0','0','0','0','0','0','0','0','Hukku\'s Succubus - Cast Lash of Pain'),
('865702','8657','0','0','100','1','5000','8000','12000','18000','11','6359','1','0','0','0','0','0','0','0','0','0','Hukku\'s Succubus - Cast Seduction'),
('843801','8438','0','0','100','1','1000','5000','15000','20000','11','11671','1','0','0','0','0','0','0','0','0','0','Hakkari Bloodkeeper - Cast Corruption'),
('843802','8438','0','0','100','1','6000','8000','6000','10000','11','12471','1','0','0','0','0','0','0','0','0','0','Hakkari Bloodkeeper - Cast Shadow Bolt'),
('843803','8438','0','0','100','3','10000','10000','10000','10000','11','7741','0','0','0','0','0','0','0','0','0','0','Hakkari Bloodkeeper - Cast Summoned Demon'),
('529101','5291','0','0','100','1','6000','9000','9000','14000','11','11831','0','1','0','0','0','0','0','0','0','0','Hakkari Frostwing - Cast Frost Nova'),
('529102','5291','0','0','100','3','2000','4000','5000','8000','11','8398','4','0','0','0','0','0','0','0','0','0','Hakkari Frostwing - Cast Frostbolt Volley'),
('529103','5291','0','0','100','1','6000','6000','10000','10000','11','5708','1','0','0','0','0','0','0','0','0','0','Hakkari Frostwing - Cast Swoop'),
('833601','8336','0','0','100','1','5000','6000','15000','22000','11','11981','4','0','0','0','0','0','0','0','0','0','Hakkari Sapper - Cast Mana Burn'),
('833602','8336','0','0','100','3','17000','28000','14600','33900','11','11019','0','0','0','0','0','0','0','0','0','0','Hakkari Sapper - Cast Wing Flap'),
('525601','5256','0','0','100','1','5000','5000','15000','20000','11','13445','1','0','0','0','0','0','0','0','0','0','Atal\'ai Warrior - Cast Rend'),
('525602','5256','0','0','100','3','2000','2000','7000','7000','11','13446','1','0','0','0','0','0','0','0','0','0','Atal\'ai Warrior - Cast Strike'),
('527701','5277','0','0','100','1','2000','5000','12000','15000','11','3248','0','1','0','0','0','0','0','0','0','0','Nightmare Scalebane - Cast Improved Blocking'),
('528301','5283','0','0','100','1','4000','6000','20000','26000','11','12097','1','0','0','0','0','0','0','0','0','0','Nightmare Wanderer - Cast Pierce Armor'),
('528302','5283','0','0','100','1','3000','3000','3000','5000','11','11976','1','0','0','0','0','0','0','0','0','0','Nightmare Wanderer - Cast Strike'),
('528001','5280','0','0','100','1','2000','4000','6000','8500','11','9591','4','0','0','0','0','0','0','0','0','0','Nightmare Wyrmkin - Cast Acid Spit'),
('528002','5280','0','0','100','1','7000','9000','30000','35000','11','12098','5','1','0','0','0','0','0','0','0','0','Nightmare Wyrmkin - Cast Sleep'),
('838401','8384','0','0','100','1','2600','3800','6000','10200','11','5568','1','0','0','0','0','0','0','0','0','0','Deep Lurker - Cast Trample');

/* REV 226 */
/* BLACKROCK DEPTHS */
-- Blackrock Depths - Tomb of the Seven Encounter data --
UPDATE `creature_ai_scripts` SET `action1_param1`='7' WHERE `creature_id` IN ( 9034, 9035, 9036, 9038, 9040 ) AND `event_type`='21' AND `action1_type`='34';
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9025 AND `action1_type` = 11 AND `action1_param1` = 6524;
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (8921, 8889, 8890, 8893, 8896, 8892, 8891, 8895, 8902, 8897, 8910, 8909, 8913, 8914, 9541, 8920, 8898, 8899, 8916, 8912, 8900, 8911, 8906, 8907, 8904, 8922, 9029, 9030, 9032, 9956, 8915, 9319, 9398, 8903, 9025);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (8921, 8889, 8890, 8893, 8896, 8892, 8891, 8895, 8902, 8897, 8910, 8909, 8913, 8914, 8909, 9541, 8920, 8898, 8899, 8916, 8912, 8900, 8911, 8906, 8907, 8904, 8922, 9956, 8915, 9398, 8903, 9029, 9030, 9032, 9319, 9025);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
('892101','8921','0','0','100','1','8000','8000','15000','15000','11','13692','1','0','0','0','0','0','0','0','0','0','Bloodhound - Cast Dire Growl'),
('892102','8921','0','0','100','1','4000','7000','15000','20000','11','13445','1','0','0','0','0','0','0','0','0','0','Bloodhound - Cast Rend'),
('888901','8889','2','0','100','2','30','0','0','0','11','13589','0','1','0','0','0','0','0','0','0','0','Anvilrage Overseer - Cast Haste Aura at 30% HP'),
('888902','8889','0','0','100','3','2000','5000','4000','6000','11','15580','1','1','0','0','0','0','0','0','0','0','Anvilrage Footman  - Cast Strike'),
('889001','8890','0','0','100','3','1000','3000','9000','12000','11','13608','1','0','0','0','0','0','0','0','0','0','Anvilrage Warden - Cast Hooked Net'),
('889002','8890','0','0','100','3','6000','9000','12000','15000','11','11972','1','1','0','0','0','0','0','0','0','0','Anvilrage Warden - Cast Shield Bash'),
('889301','8893','0','0','100','1','4000','6000','7000','9000','11','15284','1','0','0','0','0','0','0','0','0','0','Anvilrage Soldier  - Cast Cleave'),
('889302','8893','0','0','100','3','2000','4000','12000','15000','11','9080','1','0','0','0','0','0','0','0','0','0','Anvilrage Soldier - Cast Hamstring'),
('889303','8893','2','0','100','3','30','0','30000','45000','11','13847','0','1','0','0','0','0','0','0','0','0','Anvilrage Soldier - Cast Recklessness at 30% HP'),
('889601','8896','0','0','100','3','5000','7000','11000','14000','11','6713','1','0','0','0','0','0','0','0','0','0','Shadowforge Peasant - Cast Disarm'),
('889602','8896','0','0','100','1','500','6500','4800','13700','11','9053','1','1','0','0','0','0','0','0','0','0','Shadowforge Peasant - Cast Fireball'),
('889603','8896','14','0','100','2','1000','30','0','0','11','11642','6','1','0','0','0','0','0','0','0','0','Shadowforge Peasant - Cast Heal on Friendlies'),
('889604','8896','4','0','100','0','1000','3000','9000','12000','11','6660','1','0','23','1','0','0','0','0','0','0','Shadowforge Peasant - Cast Shoot and Set Phase 1 on Aggro'),
('889605','8896','0','0','100','1','6000','6000','5000','10000','11','13584','1','1','0','0','0','0','0','0','0','0','Shadowforge Peasant - Cast Strike'),
('889606','8896','0','0','100','1','4000','4000','20000','20000','11','3604','1','0','0','0','0','0','0','0','0','0','Shadowforge Peasant  - Cast Tendon Rip'),
('889607','8896','0','0','100','1','2000','2000','2000','2000','11','7978','4','0','0','0','0','0','0','0','0','0','Shadowforge Peasant - Cast Throw Dynamite'),
('889201','8892','0','0','100','3','10000','10000','6000','12000','11','15614','1','0','0','0','0','0','0','0','0','0','Anvilrage Footman - Cast Kick'),
('889202','8892','0','0','100','3','2000','5000','4000','6000','11','15580','1','1','0','0','0','0','0','0','0','0','Anvilrage Footman  - Cast Strike'),
('889101','8891','0','0','100','3','5000','7000','11000','14000','11','6713','1','0','0','0','0','0','0','0','0','0','Anvilrage Guardsman - Cast Disarm'),
('889102','8891','0','0','100','1','5000','7000','7000','10000','11','12169','0','1','0','0','0','0','0','0','0','0','Anvilrage Guardsman - Cast Shield Block'),
('889103','8891','0','0','100','1','6500','10900','5900','11200','11','11971','1','0','0','0','0','0','0','0','0','0','Anvilrage Guardsman - Cast Sunder Armor'),
('889501','8895','0','0','100','1','6000','12000','10000','17000','11','6253','1','0','0','0','0','0','0','0','0','0','Anvilrage Officer - Cast Backhand'),
('889502','8895','0','0','100','0','3000','5000','15000','20000','11','9128','0','0','0','0','0','0','0','0','0','0','Anvilrage Officer - Cast Battle Shout'),
('889503','8895','2','0','100','2','20','0','0','0','11','13874','0','0','0','0','0','0','0','0','0','0','Anvilrage Officer - Cast Divine Shield at 20% HP'),
('889504','8895','2','0','100','1','40','1','15000','25000','11','13952','0','0','0','0','0','0','0','0','0','0','Anvilrage Officer - Cast Holy Light When Below 40% HP'),
('889505','8895','14','0','100','1','4000','250','5000','12000','11','13952','6','0','0','0','0','0','0','0','0','0','Anvilrage Officer - Cast Holy Light on Friendly'),
('889506','8895','4','0','100','2','0','0','0','0','11','15620','1','0','23','1','0','0','0','0','0','0','Anvilrage Officer - Cast Shoot and Set Phase 1 on Aggro'),
('889507','8895','9','0','100','3','5','30','2300','3900','11','15620','1','0','40','2','0','0','0','0','0','0','Anvilrage Officer - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('890201','8902','0','0','100','1','3000','6000','7000','12000','11','15496','1','1','0','0','0','0','0','0','0','0','Shadowforge Citizen - Cast Cleave'),('890202','8902','0','0','100','1','9000','16000','9000','15000','11','13339','1','0','0','0','0','0','0','0','0','0','Shadowforge Citizen - Cast Fire Blast'),
('890203','8902','0','0','100','1','6000','9000','15000','18500','11','11831','0','1','0','0','0','0','0','0','0','0','Shadowforge Citizen - Cast Frost Nova'),
('890204','8902','14','0','100','2','1000','30','0','0','11','11642','6','1','0','0','0','0','0','0','0','0','Shadowforge Citizen - Cast Heal on Friendlies'),
('890205','8902','9','0','100','1','500','1000','3000','4000','11','9613','1','0','0','0','0','0','0','0','0','0','Shadowforge Citizen - Cast Shadow Bolt'),
('890206','8902','4','0','100','2','0','0','0','0','11','15547','1','0','23','1','0','0','0','0','0','0','Shadowforge Citizen - Cast Shoot and Set Phase 1 on Aggro'),
('890207','8902','9','0','100','3','5','30','2300','3900','11','15547','1','0','40','2','0','0','0','0','0','0','Shadowforge Citizen - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('890208','8902','0','0','100','3','5000','7000','4000','6000','11','13446','1','0','0','0','0','0','0','0','0','0','Shadowforge Citizen - Cast Strike'),
('890209','8902','0','0','100','3','8000','8000','10000','16500','11','13444','1','0','0','0','0','0','0','0','0','0','Shadowforge Citizen - Cast Sunder Armor'),
('889701','8897','0','0','100','1','5000','5000','23000','23000','11','9143','1','0','0','0','0','0','0','0','0','0','Doomforge Craftsman - Cast Bomb'),
('889702','8897','0','0','100','1','4000','6000','9000','11000','11','15619','1','0','0','0','0','0','0','0','0','0','Doomforge Craftsman - Cast Throw Wrench'),
('891001','8910','0','0','100','1','9000','12000','8000','12000','11','13341','1','0','0','0','0','0','0','0','0','0','Blazing Fireguard - Cast Fire Blast'),
('891002','8910','0','5','100','1','9000','12000','24000','27000','11','12742','4','1','0','0','0','0','0','0','0','0','Blazing Fireguard - Cast Immolate'),
('891003','8910','0','0','100','3','7500','9000','2400','5500','11','15241','1','0','0','0','0','0','0','0','0','0','Blazing Fireguard - Cast Scorch'),
('890901','8909','4','0','100','0','0','0','0','0','11','15242','1','0','23','1','0','0','0','0','0','0','Fireguard - Cast Fireball and Set Phase 1 on Aggro'),
('890902','8909','9','0','100','1','0','40','3400','4800','11','15242','1','0','0','0','0','0','0','0','0','0','Fireguard - Cast Fireball (Phase 1)'),
('891301','8913','4','0','100','2','0','0','0','0','11','13748','1','0','22','6','0','0','0','0','0','0','Twilight Emissary - Cast Arcane Bolt and Set Phase 1 on Aggro'),
('891302','8913','0','13','100','3','0','0','1100','3000','11','13748','1','0','0','0','0','0','0','0','0','0','Twilight Emissary - Cast Arcane Bolt (Phase 1)'),('891303','8913','0','55','100','3','16000','20000','10000','14000','11','13745','0','1','0','0','0','0','0','0','0','0','Twilight Emissary - Cast Arcane Explosion'),
('891304','8913','9','13','100','3','0','40','2400','3800','11','12466','1','0','0','0','0','0','0','0','0','0','Twilight Emissary - Cast Fireball (Phase 1)'),
('891305','8913','1','0','100','3','1000','1000','1800000','1800000','11','12544','0','1','0','0','0','0','0','0','0','0','Twilight Emissary - Cast Frost Armor'),
('891306','8913','0','0','100','3','12000','16000','18000','22000','11','15063','0','1','0','0','0','0','0','0','0','0','Twilight Emissary - Cast Frost Nova'),
('891307','8913','9','5','100','3','0','40','2400','3800','11','15043','1','0','0','0','0','0','0','0','0','0','Twilight Emissary - Cast Frostbolt'),
('891308','8913','1','0','100','3','1000','1000','1800000','1800000','11','15288','0','1','0','0','0','0','0','0','0','0','Twilight Emissary - Fury of Ragnaros'),
('891401','8914','0','0','100','3','5000','7000','11000','14000','11','13902','1','0','0','0','0','0','0','0','0','0','Twilight Bodyguard - Cast Fist of Ragnaros'),
('891402','8914','0','0','100','3','5000','5000','9000','9000','11','15615','1','0','0','0','0','0','0','0','0','0','Twilight Bodyguard - Cast Pummel'),
('954101','9541','0','0','100','1','5000','7000','8000','12000','11','15583','1','0','0','0','0','0','0','0','0','0','Blackbreath Crony - Cast Rupture'),
('954102','9541','0','0','100','1','3000','5000','5000','7000','11','15581','1','0','0','0','0','0','0','0','0','0','Blackbreath Crony - Cast Sinister Strike'),
('892001','8920','9','0','100','1','3','30','10000','17000','11','7896','4','0','0','0','0','0','0','0','0','0','Weapon Technician - Cast Exploding Shot'),
('892002','8920','9','0','100','1','3','30','9000','15000','11','12551','4','0','0','0','0','0','0','0','0','0','Weapon Technician - Cast Frost Shot'),('892003','8920','9','0','100','1','5','30','6500','10000','11','14443','1','0','40','2','0','0','0','0','0','0','Weapon Technician - Cast Multi-Shot'),
('892004','8920','4','0','100','0','5','30','0','0','11','15620','1','0','23','1','0','0','0','0','0','0','Weapon Technician - Cast Shoot and Set Phase 1 on Aggro'),
('892005','8920','9','0','100','3','5','30','2300','3900','11','15620','1','0','40','2','0','0','0','0','0','0','Weapon Technician - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('889801','8898','4','0','100','2','0','0','0','0','11','8258','0','0','0','0','0','0','0','0','0','0','Anvilrage Marshal - Cast Devotion Aura on Aggro'),
('889802','8898','2','0','100','1','40','1','15000','25000','11','15493','0','0','0','0','0','0','0','0','0','0','Anvilrage Marshal - Cast Holy Light When Below 40% HP'),
('889803','8898','14','0','100','1','4000','40','14000','18000','11','15493','6','1','0','0','0','0','0','0','0','0','Anvilrage Marshal - Cast Holy Light on Friendlies'),
('889804','8898','0','0','100','1','3000','5000','7000','9000','11','13953','1','0','0','0','0','0','0','0','0','0','Anvilrage Marshal - Cast Holy Strike'),
('889901','8899','0','0','100','1','3000','6000','7000','12000','11','15496','1','1','0','0','0','0','0','0','0','0','Anvilrage Marshal - Cast Cleave'),
('889902','8899','0','0','100','1','3','30','9000','15000','11','15495','4','0','0','0','0','0','0','0','0','0','Anvilrage Marshal - Cast Explosive Shot'),
('889903','8899','4','0','100','0','5','30','0','0','11','15620','1','0','23','1','0','0','0','0','0','0','Weapon Technician - Cast Shoot and Set Phase 1 on Aggro'),
('889904','8899','9','0','100','3','5','30','2300','3900','11','15620','1','0','40','2','0','0','0','0','0','0','Weapon Technician - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('891601','8916','0','0','100','0','3000','5000','15000','20000','11','9128','0','0','0','0','0','0','0','0','0','0','Arena Spectator - Cast Battle Shout'),
('891602','8916','0','0','100','1','2600','7300','29100','31300','11','13338','4','33','0','0','0','0','0','0','0','0','Arena Spectator - Cast Curse of Tongues'),
('891603','8916','0','0','100','1','4800','13100','30500','40900','11','13730','0','0','0','0','0','0','0','0','0','0','Arena Spectator - Cast Demoralizing Shout'),
('891604','8916','0','0','100','3','5000','7000','11000','14000','11','6713','1','0','0','0','0','0','0','0','0','0','Arena Spectator - Cast Disarm'),
('891605','8916','0','0','100','1','500','6500','4800','13700','11','9053','1','1','0','0','0','0','0','0','0','0','Arena Spectator - Cast Fireball'),
('891606','8916','14','0','100','2','1000','30','0','0','11','11642','6','1','0','0','0','0','0','0','0','0','Arena Spectator - Cast Heal on Friendlies'),
('891607','8916','9','0','100','1','500','1000','3000','4000','11','9613','1','0','0','0','0','0','0','0','0','0','Arena Spectator - Cast Shadow Bolt'),
('891608','8916','4','0','100','0','1000','3000','9000','12000','11','6660','1','0','23','1','0','0','0','0','0','0','Arena Spectator - Cast Shoot and Set Phase 1 on Aggro'),
('891609','8916','0','0','100','3','5000','7000','4000','6000','11','13446','1','0','0','0','0','0','0','0','0','0','Arena Spectator - Cast Strike'),
('891201','8912','0','0','100','3','6000','9000','23000','28000','11','14032','4','1','0','0','0','0','0','0','0','0','Twilight''s Hammer Torturer - Cast Shadow Word: Pain'),
('890001','8900','4','0','100','2','0','0','0','0','11','13748','1','0','22','6','0','0','0','0','0','0','Doomforge Arcanasmith - Cast Arcane Bolt and Set Phase 1 on Aggro'),
('890002','8900','0','0','100','3','0','0','1100','3000','11','13748','1','0','0','0','0','0','0','0','0','0','Doomforge Arcanasmith - Cast Arcane Bolt (Phase 1)'),('890003','8900','0','0','100','3','16000','20000','10000','14000','11','13745','0','1','0','0','0','0','0','0','0','0','Doomforge Arcanasmith - Cast Arcane Explosion'),
('891101','8911','0','0','100','3','3000','5000','6000','9000','11','15285','1','0','0','0','0','0','0','0','0','0','Fireguard Destroyer - Cast Fireball Volley'),
('890601','8906','2','0','100','2','50','0','0','0','11','12795','0','1','1','-539','0','0','0','0','0','0','Ragereaver Golem - Cast Frenzy at 50% HP'),
('890701','8907','0','0','100','1','2000','5000','6000','9000','11','15575','1','0','22','6','0','0','0','0','0','0','Wrath Hammer Construct - Cast Flame Cannon'),
('890702','8907','0','0','100','1','4000','7000','9000','12000','11','10966','1','0','0','0','0','0','0','0','0','0','Wrath Hammer Construct - Cast Uppercut'),
('890401','8904','0','0','100','1','4000','4000','24000','28000','11','14868','1','0','0','0','0','0','0','0','0','0','Shadowforge Senator - Cast Curse of Agony'),
('890402','8904','4','0','100','2','0','0','0','0','11','2601','0','1','0','0','0','0','0','0','0','0','Shadowforge Senator - Cast Fire Shield III on Aggro'),
('890403','8904','4','0','100','0','0','0','0','0','11','14034','1','0','23','1','0','0','0','0','0','0','Shadowforge Senator - Cast Fireball and Set Phase 1 on Aggro'),
('890404','8904','9','5','100','1','0','40','2400','3800','11','14034','1','0','0','0','0','0','0','0','0','0','Shadowforge Senator - Cast Fireball (Phase 1)'),
('890405','8904','0','0','100','1','6000','9000','15000','18500','11','11831','0','1','0','0','0','0','0','0','0','0','Shadowforge Senator - Cast Frost Nova'),
('890406','8904','0','0','100','1','1000','4000','4000','6000','11','15498','1','0','0','0','0','0','0','0','0','0','Shadowforge Senator - Cast Holy Smite'),
('890407','8904','0','0','100','1','6000','8000','6000','10000','11','12471','1','0','0','0','0','0','0','0','0','0','Shadowforge Senator - Cast Shadowbolt'),
('890408','8904','4','0','100','2','0','0','0','0','11','15547','1','0','23','1','0','0','0','0','0','0','Shadowforge Senator - Cast Shoot and Set Phase 1 on Aggro'),
('890409','8904','9','0','100','3','5','30','2300','3900','11','15547','1','0','40','2','0','0','0','0','0','0','Shadowforge Senator - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('890410','8904','0','0','100','1','4000','6000','20000','25000','11','11436','4','1','0','0','0','0','0','0','0','0','Shadowforge Senator - Cast Slow'),
('892201','8922','0','0','100','1','3000','7000','25000','28000','11','7140','1','0','0','0','0','0','0','0','0','0','Bloodhound Mastiff - Cast Expose Weakness'),
('892202','8922','0','0','100','1','8000','11000','9000','12000','11','15608','1','1','0','0','0','0','0','0','0','0','Bloodhound Mastiff - Cast Ravenous Claw'),
('995601','9956','0','0','100','0','3000','5000','15000','20000','11','9128','0','0','0','0','0','0','0','0','0','0','Shadowforge Flame Keeper - Cast Battle Shout'),
('995602','9956','0','0','100','3','2000','4000','12000','15000','11','9080','1','0','0','0','0','0','0','0','0','0','Shadowforge Flame Keeper - Cast Hamstring'),
('995603','9956','4','0','100','0','1000','3000','9000','12000','11','6660','1','0','23','1','0','0','0','0','0','0','Shadowforge Flame Keeper - Cast Shoot and Set Phase 1 on Aggro'),
('995604','9956','0','0','100','1','3000','3000','3000','5000','11','11976','1','0','0','0','0','0','0','0','0','0','Shadowforge Flame Keeper - Cast Strike'),
('891501','8915','0','0','100','3','6000','10000','7000','14000','11','12248','4','33','0','0','0','0','0','0','0','0','Twilight''s Hammer Ambassador - Cast Amplify Damage'),
('891502','8915','2','0','100','0','30','0','0','0','11','6742','0','1','0','0','0','0','0','0','0','0','Twilight''s Hammer Ambassador - Cast Bloodlust at 30% HP'),
('891503','8915','0','0','100','1','8000','12000','15000','20000','11','11980','1','33','0','0','0','0','0','0','0','0','Twilight''s Hammer Ambassador - Cast Curse of Weakness'),
('891504','8915','0','0','100','1','9000','14000','12000','18000','11','15501','1','0','0','0','0','0','0','0','0','0','Twilight''s Hammer Ambassador - Cast Earth Shock'),
('891505','8915','0','0','100','3','1000','4000','5000','8000','11','15096','4','0','0','0','0','0','0','0','0','0','Twilight''s Hammer Ambassador - Cast Flame Shock'),
('891506','8915','1','0','100','3','1000','1000','1800000','1800000','11','12544','0','1','0','0','0','0','0','0','0','0','Twilight''s Hammer Ambassador - Cast Frost Armor'),
('891507','8915','0','0','100','1','10200','13600','10000','12000','11','15499','1','0','0','0','0','0','0','0','0','0','Twilight''s Hammer Ambassador - Cast Frost Shock'),
('891508','8915','0','0','100','3','15000','15000','8000','8000','11','15500','4','0','0','0','0','0','0','0','0','0','Twilight''s Hammer Ambassador - Cast Shock'),
('939801','9398','0','0','100','1','1000','3600','241000','246000','11','3631','0','0','0','0','0','0','0','0','0','0','Twilight''s Hammer Executioner - Cast Battle Fury'),
('939802','9398','0','0','100','1','28500','31600','70100','74400','11','13459','1','0','0','0','0','0','0','0','0','0','Twilight''s Hammer Executioner - Cast Decimate'),
('890301','8903','0','0','100','1','4800','13100','30500','40900','11','13730','0','0','0','0','0','0','0','0','0','0','Anvilrage Captain - Cast Demoralizing Shout'),
('890302','8903','0','0','100','1','4000','8000','9000','13000','11','13737','1','0','0','0','0','0','0','0','0','0','Anvilrage Captain - Cast Mortal Strike'),
('890303','8903','0','0','100','3','6000','9000','12000','15000','11','11972','1','1','0','0','0','0','0','0','0','0','Anvilrage Captain - Cast Shield Bash'),
('890304','8903','0','0','100','1','5000','7000','7000','10000','11','12169','0','1','0','0','0','0','0','0','0','0','Anvilrage Captain - Cast Shield Block'),
-- Eviscerator --
(902901, 9029, 0, 0, 100, 3, 0, 0, 20000, 20000, 11, 7121, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eviscerator - Cast Anti-Magic Shield'),
(902902, 9029, 0, 0, 100, 3, 1000, 1000, 6000, 10000, 11, 15245, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eviscerator - Cast Shadow Bolt Volley'),
(902903, 9029, 0, 0, 100, 3, 5000, 5000, 15000, 15000, 11, 14331, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eviscerator - Cast Vicious Rend'),
-- Ok'thor the Breaker --
(903001, 9030, 0, 0, 100, 3, 0, 0, 20000, 30000, 11, 13323, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ok''thor the Breaker - Cast Polymorph at random player except tank'),
(903002, 9030, 0, 0, 100, 3, 5000, 5000, 6000, 10000, 11, 15254, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ok''thor the Breaker - Cast Arcane Bolt'),
(903003, 9030, 0, 0, 100, 3, 10000, 10000, 15000, 15000, 11, 15453, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ok''thor the Breaker - Cast Arcane Explosion'),
(903004, 9030, 0, 0, 100, 3, 2000, 3000, 18000, 22000, 11, 13747, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ok''thor the Breaker - Cast Slow'),
-- Hedrum the Creeper --
(903201, 9032, 0, 0, 100, 3, 5000, 5000, 130000, 130000, 11, 15475, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hedrum The Creeper - Cast Baneful Poison'),
(903202, 9032, 0, 0, 100, 3, 10000, 10000, 25000, 25000, 11, 3609, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hedrum The Creeper - Cast Paralyzing Poison'),
(903203, 9032, 0, 0, 100, 3, 20000, 20000, 20000, 20000, 11, 15474, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hedrum The Creeper - Cast Web Explosion'),
-- Houndmaster Grebmar --
(931901, 9319, 4, 0, 100, 2, 0, 0, 0, 0, 11, 21049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Houndmaster Grebmar - Cast Bloodlust'),
(931902, 9319, 0, 0, 100, 3, 5000, 5000, 30000, 30000, 11, 13730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Houndmaster Grebmar - Cast Demoralizing Shout'),
(931903, 9319, 0, 0, 50, 3, 2000, 10000, 10000, 10000, 11, 15615, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Houndmaster Grebmar - Cast Pummel'),
-- Lord Roccor --
('902501' ,  '9025',  '0',  '0',  '100',  '3',  '3000',  '6000',  '10000',  '10000',  '11',  '6524',  '1',  '1',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'Lord Roccor - Cast Ground Tremor');

UPDATE `creature_template` SET `faction_A`=54, `faction_H`=54, `spell1`=0, `spell2`=0, `spell3`=0, `spell4`=0, `AIName`='EventAI', `ScriptName`='' WHERE `entry` IN (16049, 16050, 16051, 16052, 16053, 16054, 16055, 16058, 16059);
-- Theldren --
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (16049, 16050, 16051, 16052, 16053, 16054, 16055, 16058, 16059);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(1605901, 16059, 4, 0, 100, 2, 0, 0, 0, 0, 11, 27578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theldren - Cast Battle Shout on aggro'),
(1605902, 16059, 0, 0, 100, 3, 2000, 2000, 30000, 30000, 11, 27579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theldren - Cast Demoralizing Shout'),
(1605903, 16059, 0, 0, 100, 3, 15000, 15000, 15000, 15000, 11, 27581, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theldren - Cast Disarm'),
(1605904, 16059, 2, 0, 100, 3, 50, 0, 30000, 30000, 11, 15503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theldren - Cast Drink Healing Potion'),
(1605905, 16059, 0, 0, 100, 3, 40000, 60000, 40000, 60000, 11, 19134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theldren - Cast Frightening Shout (Flee)'),
(1605906, 16059, 0, 0, 100, 3, 4000, 6000, 10000, 10000, 11, 27584, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theldren - Cast Hamstring'),
(1605907, 16059, 0, 0, 100, 3, 10000, 20000, 30000, 40000, 11, 27577, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theldren - Cast Intercept'),
(1605908, 16059, 0, 0, 100, 3, 10000, 15000, 30000, 60000, 11, 27580, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theldren - Cast Mortal Strike'),
(1605909, 16059, 4, 0, 100, 2, 0, 0, 0, 0, 1, -160591, -160592, -160593, 0, 0, 0, 0, 0, 0, 0, 0, 'Theldren - Say on aggro'),
/*(1605910, 16059, 21, 0, 100, 2, 0, 0, 0, 0, 34, 14, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theldren - Set Inst data to FAIL on evade'),
(1605911, 16059, 6, 0, 100, 2, 0, 0, 0, 0, 34, 14, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theldren - Set Inst data to DONE on death'),*/
-- Korv --
(1605301, 16053, 2, 0, 100, 3, 50, 0, 20000, 40000, 11, 15503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Korv - Cast Drink Healing Potion'),
(1605302, 16053, 0, 0, 100, 3, 40000, 60000, 60000, 60000, 11, 15786, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Korv - Cast Earthbind Totem'),
(1605303, 16053, 0, 0, 100, 3, 30000, 60000, 60000, 60000, 11, 27623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Korv - Cast Fire Nova Totem'),
(1605304, 16053, 0, 0, 100, 3, 5000, 10000, 10000, 10000, 11, 21401, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Korv - Cast Frost Shock'),
(1605305, 16053, 2, 0, 100, 3, 50, 0, 20000, 40000, 11, 27624, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Korv - Cast Lesser Healing Wave'),
(1605306, 16053, 0, 0, 100, 3, 30000, 30000, 30000, 30000, 11, 27626, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Korv - Cast Purge'),
(1605307, 16053, 0, 0, 100, 3, 30000, 60000, 120000, 120000, 11, 27621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Korv - Cast Windfury Totem'),
-- Va'jashni --
(1605501, 16055, 4, 0, 100, 2, 0, 0, 0, 0, 11, 27607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Va''jashni - Cast Power Word: Shield'),
(1605502, 16055, 0, 0, 100, 3, 2000, 2000, 18000, 18000, 11, 27605, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Va''jashni - Cast Shadow Word: Pain'),
(1605503, 16055, 0, 0, 100, 3, 30000, 30000, 40000, 60000, 11, 27609, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Va''jashni - Cast Dispel Magic'),
(1605504, 16055, 2, 0, 100, 3, 50, 0, 20000, 30000, 11, 15503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Va''jashni - Cast Drink Healing Potion'),
(1605505, 16055, 2, 0, 100, 3, 30, 0, 15000, 25000, 11, 27608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Va''jashni - Cast Flash Heal'),
(1605506, 16055, 2, 0, 100, 3, 80, 50, 60000, 60000, 11, 27606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Va''jashni - Cast Renew'),
-- Rotfang --
(1605001, 16050, 2, 0, 100, 3, 50, 0, 30000, 30000, 11, 15503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rotfang - Cast Drink Healing Potion'),
(1605002, 16050, 0, 0, 100, 3, 10000, 10000, 15000, 20000, 11, 27611, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rotfang - Cast Eviscerate'),
(1605003, 16050, 0, 0, 100, 3, 28000, 32000, 28000, 32000, 11, 12540, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rotfang - Cast Gouge'),
(1605004, 16050, 0, 0, 100, 3, 45000, 50000, 15000, 20000, 11, 27613, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rotfang - Cast Kick'),
(1605005, 16050, 0, 0, 100, 3, 60000, 60000, 60000, 60000, 11, 27615, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rotfang - Cast Kidney Shot'),
(1605006, 16050, 0, 0, 100, 3, 5000, 8000, 7000, 12000, 11, 14873, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rotfang - Cast Sinister Strike'),
/*(1720961, 16050, 0, 0, 100, 3, 120000, 120000, 120000, 120000, 11, 27617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rotfang - Cast Vanish'),*/
-- Snokh Blackspine --
(1605101, 16051, 4, 0, 100, 2, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Snokh Blackspine - Disable combat movement on aggro'),
(1605102, 16051, 0, 0, 100, 3, 15000, 15000, 45000, 45000, 11, 23039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Snokh Blackspine - Cast Blast Wave'),
(1605103, 16051, 0, 0, 100, 3, 60000, 60000, 60000, 60000, 11, 14514, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Snokh Blackspine - Cast Blink'),
(1605104, 16051, 2, 0, 100, 3, 50, 0, 20000, 40000, 11, 15503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Snokh Blackspine - Cast Drink Healing Potion'),
(1605105, 16051, 0, 0, 100, 3, 2000, 5000, 15000, 15000, 11, 15503, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Snokh Blackspine - Cast Flamestrike on random target'),
(1605106, 16051, 0, 0, 100, 3, 25000, 60000, 60000, 60000, 11, 13323, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Snokh Blackspine - Cast Polymorph on random target'),
(1605107, 16051, 0, 0, 100, 3, 10000, 45000, 20000, 45000, 11, 17273, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Snokh Blackspine - Cast Pyroblast'),
(1605108, 16051, 0, 0, 100, 3, 1000, 3000, 3000, 6000, 11, 15241, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Snokh Blackspine - Cast Scorch'),
-- Lefty --
(1604901, 16049, 2, 0, 100, 3, 50, 0, 20000, 40000, 11, 15503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lefty - Cast Drink Healing Potion'),
(1604902, 16049, 0, 0, 100, 3, 30000, 30000, 45000, 60000, 11, 27672, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lefty - Cast Initiate Secret Technique'),
(1604903, 16049, 0, 0, 100, 3, 10000, 10000, 10000, 20000, 11, 11428, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lefty - Cast Knockdown'),
(1604904, 16049, 0, 0, 100, 3, 20000, 25000, 45000, 60000, 11, 27620, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lefty - Cast Snap Kick'),
-- Malgen Longspear --
(1605201, 16052, 4, 0, 100, 2, 0, 0, 0, 0, 21, 0, 0, 0, 11, 27753, 0, 0, 0, 0, 0, 0, 'Malgen Longspear - Prevent combat movement and cast Freezing Trap on aggro'),
(1605202, 16052, 9, 0, 100, 3, 5, 30, 28000, 32000, 11, 27632, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Malgen Longspear - Cast Aimed Shot'),
(1605203, 16052, 9, 0, 100, 3, 5, 30, 30000, 50000, 11, 27634, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Malgen Longspear - Cast Concussive Shot'),
(1605204, 16052, 2, 0, 100, 3, 50, 0, 20000, 40000, 11, 15503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Malgen Longspear - Cast Drink Healing Potion'),
(1605205, 16052, 0, 0, 100, 3, 60000, 60000, 60000, 60000, 11, 27633, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Malgen Longspear - Cast Wing Clip'),
(1605206, 16052, 9, 0, 100, 3, 5, 30, 2500, 3500, 11, 16100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Malgen Longspear - Cast Shoot'),
-- Rezznik --
(1605401, 16054, 2, 0, 100, 3, 50, 0, 20000, 40000, 11, 15503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rezznik - Cast Drink Healing Potion'),
(1605402, 16054, 0, 0, 100, 3, 30000, 30000, 30000, 40000, 11, 19784, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rezznik - Cast Dark Iron Bomb'),
(1605403, 16054, 0, 0, 100, 3, 13000, 13000, 120000, 120000, 11, 8209, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rezznik - Cast Explosive Sheep'),
(1605404, 16054, 0, 0, 100, 2, 60000, 60000, 0, 0, 11, 27603, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rezznik - Cast Goblin Dragon Gun'),
(1605405, 16054, 0, 0, 100, 3, 25000, 45000, 0, 0, 11, 27677, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rezznik - Cast Recombobulate on any friendly target'),
(1605406, 16054, 2, 0, 100, 2, 50, 0, 0, 0, 11, 27602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rezznik - Cast Summon Arcanite Dragonling'),
-- Volida --
(1605801, 16058, 2, 0, 100, 3, 50, 0, 20000, 40000, 11, 15503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Volida - Cast Drink Healing Potion'),
(1605802, 16058, 2, 0, 100, 2, 10, 0, 0, 0, 11, 27619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Volida - Cast Ice Block'),
(1605803, 16058, 0, 0, 100, 3, 3000, 3000, 3000, 3000, 11, 20822, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Volida - Cast Frostbolt'),
(1605804, 16058, 0, 0, 100, 3, 10000, 10000, 40000, 60000, 11, 20828, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Volida - Cast Frostbolt'),
(1605805, 16058, 0, 0, 100, 3, 60000, 60000, 60000, 60000, 11, 15063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Volida - Cast Frost Nova'),
(1605806, 16058, 0, 0, 100, 3, 120000, 120000, 60000, 60000, 11, 27618, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Volida - Cast Blizzard'),
(1605807, 16058, 0, 0, 100, 3, 50000, 70000, 120000, 120000, 11, 14514, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Volida - Cast Blink');

-- Texts for Theldren (Blackrock Depths D2 event in Ring of the Law) --
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-160591, -160592, -160593);
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(-160593, 'I crush weaklings like you every day! Bring it on!', 0, 1, 0, 0, NULL),
(-160592, 'You want a fight? A fight you''ll get!', 0, 1, 0, 0, NULL),
(-160591, 'I''m going to kick yer ugly head in!', 0, 1, 0, 0, NULL);

/* MOLTEN CORE */
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (11658, 11659, 11661, 11665, 11666, 11668, 11669, 13148, 12143);
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName`='EventAI' WHERE `entry` IN (11658, 11659, 11661, 11665, 11666, 11668, 11669, 13148);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
-- Molten Giant --
(1165801, 11658, 0, 0, 100, 3, 7000, 7000, 6000, 6000, 11, 18944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Molten Giant - Cast Smash'),
(1165802, 11658, 0, 0, 100, 3, 12000, 12000, 10000, 10000, 11, 18945, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Molten Giant - Cast Knock Away'),
-- Molten Destroyer --
(1165901, 11659, 0, 0, 100, 3, 10000, 10000, 8000, 8000, 11, 20276, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Molten Destroyer - Cast Knockdown'),
(1165902, 11659, 0, 0, 100, 3, 16000, 16000, 10000, 12000, 11, 19129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Molten Destroyer - Cast Massive Tremor'),
-- Flamewaker --
(1166101, 11661, 0, 0, 100, 3, 7000, 7000, 7000, 7000, 11, 19730, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flamewaker - Cast Strike'),
(1166102, 11661, 0, 0, 100, 3, 11000, 11000, 11000, 11000, 11, 20277, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flamewaker - Cast Fist of Ragnaros'),
(1166103, 11661, 0, 0, 100, 3, 5000, 5000, 15000, 15000, 11, 15502, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flamewaker - Cast Sunder Armor'),
-- Lava Annihilator --
(1166501, 11665, 0, 0, 100, 3, 3000, 3000, 3000, 3000, 14, -100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lava Annihilator - Reduce threat of all enemies by 100 percent'),
-- Firewalker --
(1166601, 11666, 0, 0, 100, 3, 10000, 10000, 8000, 12000, 11, 19635, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Firewalker - Cast Incite Flames'),
(1166602, 11666, 0, 0, 100, 3, 8000, 8000, 15000, 15000, 11, 19636, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Firewalker - Cast Fire Blossom'),
(1166603, 11666, 11, 0, 100, 0, 0, 0, 0, 0, 44, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Firewalker - Set fire immunity on spawn'),
-- Firelord --
(1166801, 11668, 0, 0, 100, 3, 6000, 6000, 13000, 19000, 11, 19393, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Firelord - Cast Soul Burn'),
(1166802, 11668, 0, 0, 100, 3, 10000, 10000, 25000, 25000, 11, 19392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Firelord - Cast Summon Lava Spawn'),
(1166803, 11668, 11, 0, 100, 0, 0, 0, 0, 0, 44, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Firelord - Set fire immunity on spawn'),
-- Flame Imp --
(1166901, 11669, 0, 0, 100, 3, 4000, 12000, 8000, 12000, 11, 20602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flame Imp - Cast Fire Nova'),
-- Flame of Ragnaros --
(1314801, 13148, 11, 0, 100, 1, 0, 0, 0, 0, 11, 21155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flame of Ragnaros - Cast Intense Heat when spawned'),
(1314802, 13148, 0, 0, 100, 1, 1000, 1000, 0, 0, 11, 28748, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flame of Ragnaros - Cast Instakill Self'),
-- Son of Flame --
(4334156, 12143, 4, 0, 100, 3, 0, 0, 0, 0, 11, 21857, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Son of Flame - cast Lava Shield - Mana Burn Aura '),
(4334157, 12143, 4, 0, 100, 3, 0, 0, 0, 0, 44, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Set fire immunity on aggro');

/* REV 227 */
-- Pats Firework Guy
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (15882,15883,15879,15880,15881,15884,15885,15886,15887,15880,15889,15890);
INSERT INTO `creature_ai_scripts` VALUES (1588201, 15882, 1, 0, 100, 0, 0, 0, 0, 0, 11, 26347, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Pats Firework Guy - RED'),(1588301, 15883, 1, 0, 100, 0, 0, 0, 0, 0, 11, 26349, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Pats Firework Guy - YELLOW'),(1587901, 15879, 1, 0, 100, 0, 0, 0, 0, 0, 11, 26344, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Pats Firework Guy - BLUE'),(1588001, 15880, 1, 0, 100, 0, 0, 0, 0, 0, 11, 26345, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Pats Firework Guy - GREEN'),(1588101, 15881, 1, 0, 100, 0, 0, 0, 0, 0, 11, 26346, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Pats Firework Guy - PURPLE'),(1588401, 15884, 1, 0, 100, 0, 0, 0, 0, 0, 11, 26348, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Pats Firework Guy - WHITE'),(1588501, 15885, 1, 0, 100, 0, 0, 0, 0, 0, 11, 26351, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Pats Firework Guy - BLUE BIG'),(1588601, 15886, 1, 0, 100, 0, 0, 0, 0, 0, 11, 26352, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Pats Firework Guy - GREEN BIG'),(1588701, 15887, 1, 0, 100, 0, 0, 0, 0, 0, 11, 26353, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Pats Firework Guy - PURPLE BIG'),(1588801, 15880, 1, 0, 100, 0, 0, 0, 0, 0, 11, 26354, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Pats Firework Guy - RED BIG'),(1588901, 15889, 1, 0, 100, 0, 0, 0, 0, 0, 11, 26355, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Pats Firework Guy - WHITE BIG'),(1589001, 15890, 1, 0, 100, 0, 0, 0, 0, 0, 11, 26356, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Pats Firework Guy - YELLOW BIG');

/* REV 294 */
/* Ironforge and Darnassus bosses */
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (2784, 7999);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (2784, 7999);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
('278401','2784','0','0','100','1','1000','4000','30000','38000','11','19135','0','0','0','0','0','0','0','0','0','0','King Magni Bronzebeard - Cast Avatar'),
('278402','2784','0','0','100','1','11000','15000','12000','17000','11','20686','1','0','0','0','0','0','0','0','0','0','King Magni Bronzebeard - Cast Knock Away'),
('278403','2784','0','0','100','1','0','7000','8000','11000','11','20685','1','0','0','0','0','0','0','0','0','0','King Magni Bronzebeard - Cast Storm Bolt'),
('799901','7999','0','0','100','1','5000','9000','16000','22000','11','20691','1','0','0','0','0','0','0','0','0','0','Tyrande Whisperwind - Cast Cleave'),
('799902','7999','0','0','100','1','7000','12000','20000','26000','11','20690','1','0','0','0','0','0','0','0','0','0','Tyrande Whisperwind - Cast Moonfire'),
('799903','7999','9','5','100','1','8','100','9000','13000','11','20688','1','1','40','2','0','0','0','0','0','0','Tyrande Whisperwind - Cast Searing Arrow'),
('799904','7999','0','0','100','1','10000','20000','10000','20000','11','20687','1','0','0','0','0','0','0','0','0','0','Tyrande Whisperwind- Cast Starfall');

/* SCHOLOMANCE */
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (14513, 14512, 14514, 14511, 16120);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (14513, 14512, 14514, 14511, 16120);
DELETE FROM `creature_ai_scripts` WHERE `id` IN (1047204, 1047205);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
('1047204','10472','0','0','100','7','9000','11000','9500','15000','11','17682','1','1','0','0','0','0','0','0','0','0','Scholomance Occultist - Cast Drain Mana'),
('1047205','10472','2','0','100','6','20','0','0','0','36','11284','0','0','23','1','0','0','0','0','0','0','Scholomance Occultist - Transform to Dark Shade at 20% HP'),
(1451301, 14513, 0, 0, 100, 1, 7000, 9000, 17000, 20000, 11, 13738, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Malicious Spirit - Cast Rend'),
(1451201, 14512, 0, 0, 100, 1, 2700, 4200, 26000, 30000, 11, 18376, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Spirit - Cast Corruption'),
(1451402, 14514, 0, 0, 100, 1, 3000, 5000, 15000, 20000, 11, 23262, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Banal Spirit - Cast Demoralize'),
(1451401, 14514, 0, 0, 100, 1, 12000, 15000, 18000, 21000, 11, 8140, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Banal Spirit - Cast Befuddlement'),
(1451104, 14511, 0, 0, 100, 1, 2000, 3000, 7000, 9000, 11, 17289, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowed Spirit - Cast Shadow Shock'),
(1451103, 14511, 0, 0, 100, 3, 7000, 12000, 38000, 45000, 11, 22417, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowed Spirit - Cast Shadow Shield'),
(1451102, 14511, 0, 0, 100, 3, 500, 1000, 6500, 15600, 11, 17228, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowed Spirit - Cast Shadow Bolt Volley'),
(1451101, 14511, 9, 5, 100, 1, 0, 40, 4800, 6400, 11, 15472, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowed Spirit - Cast Shadow Bolt'),
(1612004, 16120, 9, 13, 100, 3, 0, 40, 3200, 4800, 11, 15043, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bone Mage - Cast Frostbolt (Phase 1)'),
(1612003, 16120, 4, 0, 100, 2, 0, 0, 0, 0, 11, 15043, 1, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Bone Mage - Cast Frostbolt and Set Phase 1 on Aggro'),
(1612002, 16120, 0, 0, 100, 1, 4000, 8000, 14000, 18000, 11, 15063, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bone Mage - Cast Frost Nova'),
(1612001, 16120, 0, 0, 100, 1, 12000, 12000, 20000, 27000, 11, 16102, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bone Mage - Cast Flamestrike');

/* HILLSBRAD FOOTHILLS */
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (2433);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (2433);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Helcular's Remains -- 
(243301, 2433, 0, 0, 100, 0, 3000, 5000, 5000, 7000, 11, 4951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Helcular''s Puppets Passive - Chance on hit to spawn 3 puppets');

/* STRANGLETHORN VALE (jsou tam stale generic_script) */
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (14488, 684, 1488, 1490, 1491, 1489, 14492, 729, 1558, 1494, 2541, 14491, 1516, 11355, 1061, 677, 2522, 1421);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (14488, 684, 1488, 1490, 1491, 1489, 14492, 729, 1558, 1494, 2541, 14491, 1516, 11355, 1061, 677, 2522, 1421);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1448801','14488','0','0','100','1','3000','5000','5000','8000','11','15496','1','0','0','0','0','0','0','0','0','0','Roloch - Cast Cleave'),
('68401','684','1','0','100','0','1000','1000','0','0','11','6920','0','0','0','0','0','0','0','0','0','0','Shadowmaw Panther - Cast Hide on Spawn'),
('148801','1488','0','0','100','1','2200','18500','120200','125700','11','7102','4','0','0','0','0','0','0','0','0','0','Zanzil Zombie - Cast Contagion of Rot'),
('149001','1490','4','0','100','0','0','0','0','0','11','9613','1','0','23','1','0','0','0','0','0','0','Zanzil Witch Doctor - Cast Shadow Bolt and Set Phase 1 on Aggro'),
('149002','1490','9','13','100','1','0','40','3500','4700','11','9613','1','0','0','0','0','0','0','0','0','0','Zanzil Witch Doctor - Cast Shadow Bolt (Phase 1)'),
('149003','1490','0','0','100','1','1000','11700','48000','60000','11','7646','4','32','0','0','0','0','0','0','0','0','Zanzil Witch Doctor - Cast Curse of Weakness'),
('149101','1491','0','0','100','1','2100','13700','10200','20600','11','9080','1','0','0','0','0','0','0','0','0','0','Zanzil Naga - Cast Hamstring'),
('149102','1491','0','0','100','1','1400','2700','7300','15000','11','12555','1','1','0','0','0','0','0','0','0','0','Zanzil Naga - Cast Pummel'),
('148901','1489','4','0','100','0','0','0','0','0','11','10277','1','0','23','1','0','0','0','0','0','0','Zanzil Hunter - Cast Throw and Set Phase 1 on Aggro'),
('148902','1489','9','0','100','1','5','30','3500','4900','11','10277','1','0','40','2','0','0','0','0','0','0','Zanzil Hunter - Cast Throw and Set Ranged Weapon Model (Phase 1)'),
('1449201','14492','0','0','100','1','8000','12000','8000','12000','11','12097','1','32','0','0','0','0','0','0','0','0','Verifonix - Cast Pierce Armor'),
('72901','729','0','0','100','1','2000','5600','10800','18600','11','5164','1','0','0','0','0','0','0','0','0','0','Sin\'Dall - Cast Knockdown'),
('155801','1558','0','0','100','1','6000','12000','10000','17000','11','6253','1','0','0','0','0','0','0','0','0','0','Silverback Patriarch - Cast Backhand'),
('149401','1494','0','0','100','1','2000','5600','10800','18600','11','5164','1','0','0','0','0','0','0','0','0','0','Negolash - Cast Knockdown'),
('254101','2541','0','0','100','1','3000','5000','5000','8000','11','15496','1','0','0','0','0','0','0','0','0','0','Lord Sakrasis - Cast Cleave'),
('254102','2541','0','0','100','1','4000','9000','15000','25000','11','3583','1','32','0','0','0','0','0','0','0','0','Lord Sakrasis - Cast Deadly Poison'),
('1449101','14491','2','0','100','0','30','0','0','0','11','8599','0','0','1','-46','0','0','0','0','0','0','Kurmokk - Cast Enrage at 30% HP'),
('151601','1516','2','0','100','0','30','0','0','0','11','8599','0','0','1','-46','0','0','0','0','0','0','Konda - Cast Enrage at 30% HP'),
('1135501','11355','2','0','100','0','20','0','0','0','11','18501','0','0','1','-46','0','0','0','0','0','0','Gurubashi Warrior - Cast Enrage When Below 20% HP'),
('1135502','11355','0','0','100','1','11800','19700','15500','32600','11','11428','1','0','0','0','0','0','0','0','0','0','Gurubashi Warrior - Cast Knockdown'),
('106101','1061','2','0','100','0','30','0','0','0','11','8599','0','0','1','-46','0','0','0','0','0','0','Gan\'zulah - Cast Enrage at 30% HP'),
('67701','677','4','0','100','0','0','0','0','0','11','7979','0','0','0','0','0','0','0','0','0','0','Venture Co. Tinkerer - Cast Compact Harvest Reaper'),
('67702','677','4','0','100','0','0','0','0','0','11','20823','1','0','23','1','0','0','0','0','0','0','Venture Co. Tinkerer - Cast Fireball and Set Phase 1 on Aggro'),
('67703','677','9','13','100','1','0','40','3600','5900','11','20823','1','0','0','0','0','0','0','0','0','0','Venture Co. Tinkerer - Cast Fireball (Phase 1)'),
('67704','677','1','0','100','1','1000','1000','1800000','1800000','11','12544','0','1','0','0','0','0','0','0','0','0','Venture Co. Tinkerer - Cast Frost Armor on Spawn'),
('252201','2522','1','0','100','0','1000','1000','0','0','11','6920','0','0','0','0','0','0','0','0','0','0','Jaguero Stalker - Cast Hide on Spawn'),
-- Private Merle <Rebel Soldier> --
(142101, 1421, 11, 0, 100, 0, 0, 0, 0, 0, 1, -442104, 0, 0, 2, 32, 0, 0, 0, 0, 0, 0, 'Private Merle - Says text when spawned and set faction neutral');

DELETE FROM `creature_ai_texts` WHERE `entry`='-442104';
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
-- Private Merle <Rebel Soldier> --
('-442104', 'Curse you! One day, vengeance will be mine!', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 'Private Merle text');

/* STRATHOLME */
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (10536, 10461, 10441, 11142);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (10536, 10461, 10441, 11142);
DELETE FROM `creature_ai_scripts` WHERE `id` IN (847702);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1053601','10536','0','0','100','1','4000','7000','8000','12000','11','16449','4','32','0','0','0','0','0','0','0','0','Plagued Maggot - Cast Maggot Slime'),
('1046101','10461','0','0','100','1','4000','7000','8000','12000','11','16460','4','32','0','0','0','0','0','0','0','0','Plagued Insect - Cast Festering Bite'),
('1044101','10441','0','0','100','1','4000','7000','8000','12000','11','16448','4','32','0','0','0','0','0','0','0','0','Plagued Rat - Cast Black Rot'),
('1114201','11142','0','0','100','1','400','8700','2400','17300','11','5137','1','32','0','0','0','0','0','0','0','0','Undead Postman - Cast Call of the Grave'),
('1114202','11142','0','0','100','1','1000','3000','8000','11000','11','7713','0','0','0','0','0','0','0','0','0','0','Undead Postman - Cast Wailing Dead'),
(847702, 8477, 6, 0, 100, 2, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skeletal Servant - Despawn on Death');

/* BLACKROCK SPIRE */
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (10374, 10375);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (10374, 10375);
DELETE FROM `creature_ai_scripts` WHERE `id` IN (926603);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1037401','10374','0','0','100','3','15000','15000','15000','15000','11','16104','1','0','0','0','0','0','0','0','0','0','Spire Spider - Cast Crystallize'),
('1037402','10374','0','0','100','3','10000','20000','30000','30000','11','16103','0','1','0','0','0','0','0','0','0','0','Spire Spider - Cast Summon Spire Spiderling'),
('926603','9266','0','0','100','3','4000','4000','30000','30000','11','8262','1','0','0','0','0','0','0','0','0','0','Smolderthorn Witch Doctor - Cast Elemental Protection Totem');
UPDATE `creature_ai_scripts` SET `event_type`='0' WHERE (`id`='926210');

/* Die or Despawn on Evade or Death */
UPDATE `creature_ai_scripts` SET `event_type`='7', `event_flags`='2',`event_param1`='0', `event_param2`='0' WHERE `id` IN (1026102, 1026301, 1068012, 1068105, 970704, 970801, 847701);
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry` IN (4535, 3450, 2676);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (4535, 3450, 2676);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(453501, 4535, 6, 0, 100, 2, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tamed Battleboar - Despawn on Death'),
(453502, 4535, 9, 0, 100, 1, 6, 15, 6000, 6000, 11, 6268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tamed Battleboar - Cast Rushing Charge'),
(345001, 3450, 6, 0, 100, 2, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Companion - Despawn on Death'),
(267601, 2676, 6, 0, 100, 2, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Compact Harvest Reaper - Despawn on Death');

/* NPC Dragonkins */
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName` = 'EventAI' WHERE `entry` IN (8197, 8196, 8198, 12900, 12497, 12496, 5312, 5718, 10321);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (8197, 8196, 8198, 12900, 12497, 12496, 5312, 5718, 10321);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('819701','8197','0','0','100','1','8000','11000','8000','12000','11','15284','1','0','0','0','0','0','0','0','0','0','Chronalis - Cast Cleave'),
('819702','8197','0','0','100','1','10000','10000','60000','63000','11','20717','1','0','0','0','0','0','0','0','0','0','Chronalis - Cast Sand Breath'),
('819601','8196','0','0','100','1','4100','14500','6600','19400','11','10833','1','1','0','0','0','0','0','0','0','0','Occulus - Cast Arcane Blast'),
('819602','8196','0','0','100','1','10000','10000','60000','63000','11','20717','1','0','0','0','0','0','0','0','0','0','Occulus - Cast Sand Breath'),
('819603','8196','0','0','100','1','10000','16100','9700','33600','11','18144','1','0','0','0','0','0','0','0','0','0','Occulus - Cast Swoop'),
('819801','8198','0','0','100','1','9000','15000','11000','16000','11','21073','0','0','0','0','0','0','0','0','0','0','Occulus - Cast Arcane Explosion'),
('819802','8198','0','0','100','1','10000','10000','60000','63000','11','20717','1','0','0','0','0','0','0','0','0','0','Occulus - Cast Sand Breath'),
('1290001','12900','0','0','100','1','3000','6000','7000','10000','11','20667','1','0','0','0','0','0','0','0','0','0','Somnus - Cast Corrosive Acid Breath'),
('1290002','12900','0','0','100','1','9000','13000','14000','17000','11','20989','5','1','0','0','0','0','0','0','0','0','Somnus - Cast Sleep'),
('1290003','12900','0','0','100','1','3000','5000','5000','7000','11','18368','1','0','0','0','0','0','0','0','0','0','Somnus - Cast Strike'),
('1290004','12900','0','0','100','1','17000','28000','14600','33900','11','12882','0','0','0','0','0','0','0','0','0','0','Somnus - Cast Wing Flap'),
('1249701','12497','0','0','100','1','3000','6000','7000','10000','11','20667','1','0','0','0','0','0','0','0','0','0','Dreamroarer - Cast Corrosive Acid Breath'),
('1249702','12497','0','0','100','1','9000','13000','14000','17000','11','20668','5','1','0','0','0','0','0','0','0','0','Dreamroarer - Cast Sleepwalk'),
('1249601','12496','0','0','100','1','3000','6000','7000','10000','11','20667','1','0','0','0','0','0','0','0','0','0','Dreamtracker - Cast Corrosive Acid Breath'),
('1249602','12496','0','0','100','1','8000','8000','10000','14000','11','6605','0','0','0','0','0','0','0','0','0','0','Dreamtracker - Cast Terrifying Screech'),
('531201','5312','0','0','100','1','3000','6000','7000','10000','11','20667','1','0','0','0','0','0','0','0','0','0','Lethlas - Cast Corrosive Acid Breath'),
('531202','5312','0','0','100','1','17000','28000','14600','33900','11','12882','0','0','0','0','0','0','0','0','0','0','Lethlas - Cast Wing Flap'),
('571801','5718','0','0','100','1','3000','6000','7000','10000','11','20667','1','0','0','0','0','0','0','0','0','0','Rothos - Cast Corrosive Acid Breath'),
('1032101','10321','0','0','100','1','8000','11000','8000','12000','11','15284','1','0','0','0','0','0','0','0','0','0','Chronalis - Cast Cleave'),
('1032102','10321','0','0','100','1','2000','5000','6000','9000','11','9573','1','0','0','0','0','0','0','0','0','0','Emberstrife - Cast Flame Breath'),
('1032103','10321','2','0','100','1','10','0','120000','120000','11','16054','0','0','0','0','0','0','0','0','0','0','Emberstrife - Cast Flames of the Black Flight at 10% HP'),
('1032104','10321','2','0','100','1','30','0','120000','120000','11','8269','0','1','1','-106','0','0','0','0','0','0','Emberstrife - Cast Frenzy at 30% HP');

/* WESTERN PLAGUELANDS */
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName`='EventAI' WHERE `entry` IN (12128);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (12128);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
-- Crimson Elite --
(1212801, 12128, 0, 0, 50, 1, 5000, 10000, 20000, 30000, 11, 14518, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crimson Elite - Cast Crusader Strike'),
(1212802, 12128, 0, 0, 50, 1, 2000, 10000, 10000, 20000, 11, 17143, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crimson Elite - Cast Holy Strike'),
(1212803, 12128, 4, 0, 100, 0, 0, 0, 0, 0, 11, 8990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crimson Elite - Cast Retribution Aura on Aggro');

/* ZUL'GURUB */
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName`='EventAI' WHERE `entry` IN (11338, 11339, 11356, 11359, 14821, 11831, 15068, 15111, 15146);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (15111, 15146, 11338, 11339, 11359, 11831, 11356, 14821, 15068);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
-- Hakkari Shadowcaster --
(1133801, 11338, 0, 0, 100, 3, 6000, 9000, 6000, 10000, 11, 22947, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hakkari Shadowcaster - Cast Mana Burn on random target'),
(1133802, 11338, 0, 0, 100, 3, 0, 2000, 3000, 3000, 11, 15232, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hakkari Shadowcaster - Cast Shadow Bolt'),
(1133803, 11338, 0, 0, 100, 3, 10000, 12000, 10000, 10000, 11, 20741, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hakkari Shadowcaster - Cast Shadow Bolt Volley'),
-- Hakkari Shadow Hunter --
(1133901, 11339, 4, 0, 100, 2, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hakkari Shadow Hunter - Prevent combat movement on Aggro'),
(1133902, 11339, 0, 0, 100, 3, 2000, 5000, 8000, 10000, 11, 21390, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hakkari Shadow Hunter - Cast Multi-Shot'),
(1133903, 11339, 0, 0, 100, 3, 500, 1500, 2000, 2000, 11, 16496, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hakkari Shadow Hunter - Cast Shoot'),
(1133904, 11339, 0, 0, 100, 3, 6000, 7000, 12000, 12000, 11, 22908, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hakkari Shadow Hunter - Cast Volley on random target'),
(1133905, 11339, 0, 0, 100, 3, 8000, 8000, 12000, 12000, 11, 24335, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hakkari Shadow Hunter - Cast Wyvern Sting on random target'),
-- Gurubashi Champion --
(1135601, 11356, 4, 0, 100, 2, 0, 0, 0, 0, 11, 24438, 0, 0, 11, 22886, 1, 0, 0, 0, 0, 0, 'Gurubashi Champion - Cast Battle Shout and Berserker Charge on aggro'),
(1135602, 11356, 0, 0, 100, 3, 10000, 10000, 10000, 10000, 11, 15655, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gurubashi Champion - Cast Shield Slam'),
(1135603, 11356, 0, 0, 100, 3, 3000, 4000, 7000, 10000, 11, 22591, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gurubashi Champion - Cast Strike'),
-- Soulflayer --
(1135901, 11359, 0, 0, 100, 3, 10000, 10000, 10000, 10000, 11, 22678, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Soulflayer - Cast Fear on random target'),
(1135902, 11359, 2, 0, 100, 2, 30, 0, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Soulflayer - Cast Frenzy at 30% HP'),
(1135903, 11359, 0, 0, 100, 3, 4000, 6000, 10000, 10000, 11, 24619, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Soulflayer - Cast Soul Tap on random target'),
-- Razzashi Raptor --
(1482101, 14821, 2, 0, 100, 2, 20, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Razzashi Raptor - Cast Enrage at 20% HP'),
(1482102, 14821, 0, 0, 100, 3, 0, 5000, 10000, 10000, 11, 24339, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Razzashi Raptor - Cast Infected Bite'),
(1482103, 14821, 0, 0, 100, 3, 2000, 2000, 0, 3000, 11, 3391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Razzashi Raptor - Cast Thrash'),
-- Hakkari Witch Doctor --
(1183101, 11831, 0, 0, 100, 3, 2000, 3000, 5000, 5000, 11, 24053, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hakkari Witch Doctor - Cast Hex on random target'),
(1183102, 11831, 0, 0, 100, 3, 6000, 6000, 20000, 20000, 11, 24058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hakkari Witch Doctor - Cast Release Toads'),
(1183103, 11831, 0, 0, 100, 3, 1000, 1000, 3000, 4000, 11, 17289, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hakkari Witch Doctor - Cast Shadow Shock'),
(1183104, 11831, 0, 0, 100, 3, 0, 0, 120000, 120000, 11, 24054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hakkari Witch Doctor - Cast Shrink'),
-- Zulian Guardian --
(1506801, 15068, 0, 0, 100, 3, 2000, 8000, 10000, 10000, 11, 24187, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zulian Guardian - Cast Claw'),
-- Mad Servant --
(1511101, 15111, 4, 0, 100, 2, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mad Servant - Prevent combat movement on Aggro'),
(1511102, 15111, 0, 0, 100, 3, 0, 0, 3000, 3000, 11, 24611, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mad Servant - Cast Fireball'),
(1511103, 15111, 0, 0, 100, 3, 3000, 6000, 10000, 10000, 11, 24612, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mob Servant - Cast Flamestrike'),
(1511104, 15111, 6, 0, 100, 0, 0, 0, 0, 0, 12, 15146, 0, 60000, 12, 15146, 0, 60000, 0, 0, 0, 0, 'Mad Servant - Summon 2 Mad Voidwalker on death'),
-- Mad Voidwalker --
(1514601, 15146, 0, 0, 100, 3, 5000, 5000, 15000, 15000, 11, 24614, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mad Voidwalker - Cast Consuming Shadows on random target'),
(1514602, 15146, 0, 0, 100, 3, 0, 2000, 3000, 4000, 11, 24616, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mad Voidwalker - Cast Shadow Shock');

/* DESOLACE */
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName`='EventAI' WHERE `entry` IN (11876);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11876;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
-- Demon Spirit --
(1187601, 11876, 11, 0, 100, 0, 0, 0, 0, 0, 11, 7741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Spirit - Cast Summoned Demon on spawn');

-- HILLSBRAD FOOTHILLS --
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName`='EventAI' WHERE `entry` IN (13082);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=13082;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
-- Milton Beats --
(1308201, 13082, 0, 0, 100, 1, 1000, 1000, 10000, 10000, 11, 18328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Milton Beats - Cast Incapacitating Shout'),
(1308202, 13082, 0, 0, 100, 1, 10000, 10000, 10000, 10000, 11, 6754, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Milton Beats - Cast Flat!');

/* WAILING CAVERNS */
/* Wailing Caverns Encounters (TYPE_ data) */
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (3671,3669,3670,3673) AND (`action1_type` = 34 OR `action2_type` = 34 OR `action3_type` = 34);
INSERT INTO `creature_ai_scripts` (`creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `comment`)  VALUES
('3669','7','0','100','2','0','0','0','0','34','0','0','0','Lord Cobrahn - Data Type 0 on Evade'),
('3669','4','0','100','2','0','0','0','0','34','0','1','0','Lord Cobrahn - Data Type 1 on Aggro'),
('3669','6','0','100','2','0','0','0','0','34','0','3','0','Lord Cobrahn - Data Type 2 on Death'),

('3670','7','0','100','2','0','0','0','0','34','1','0','0','Lord Pythas - Data Type 0 on Evade'),
('3670','4','0','100','2','0','0','0','0','34','1','1','0','Lord Pythas - Data Type 1 on Aggro'),
('3670','6','0','100','2','0','0','0','0','34','1','3','0','Lord Pythas - Data Type 2 on Death'),

('3671','7','0','100','2','0','0','0','0','34','2','0','0','Lady Anacondra - Data Type 0 on Evade'),
('3671','4','0','100','2','0','0','0','0','34','2','1','0','Lady Anacondra - Data Type 1 on Aggro'),
('3671','6','0','100','2','0','0','0','0','34','2','3','0','Lady Anacondra - Data Type 2 on Death'),

('3673','7','0','100','2','0','0','0','0','34','3','0','0','Lord Serpentis - Data Type 0 on Evade'),
('3673','4','0','100','2','0','0','0','0','34','3','1','0','Lord Serpentis - Data Type 1 on Aggro'),
('3673','6','0','100','2','0','0','0','0','34','3','3','0','Lord Serpentis - Data Type 2 on Death');

/* REV 511 */
/* Dustwallow Marsch */
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `ScriptName`='', `AIName`='EventAI' WHERE `entry` = 4834; 
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 4834;
INSERT INTO `creature_ai_scripts` (`creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(4834, 1, 0, 100, 0, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Theramore Infiltrator - Cast Sneak on Spawn');

/* Ashenvale */
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 3770;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(377001, 3770, 2, 0, 100, 0, 15, 0, 0, 0, 25, 0, 0, 0, 1, -47, 0, 0, 0, 0, 0, 0, 'Bleakheart Shadowstalker - Flee at 15% HP'),
(603, 3770, 1, 0, 100, 0, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bleakheart Shadowstalker - Cast Sneak on Spawn'); 

-- Typo in EventAI
UPDATE `creature_ai_scripts` SET `creature_id`='1157' WHERE `id`='115702';

-- Should be immune to all fire/nature/etc except Holy!
DELETE FROM `creature_ai_scripts` WHERE `id`=1048502 AND `creature_id`=10485;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(1048502, 10485, 11, 0, 100, 0, 0, 0, 0, 0, 44, 124, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Set immunity on spawn');

-- Implenting the spells to creature: Witchwing Slayer
UPDATE `creature_template` SET `ScriptName`='', `AIName`='EventAI' WHERE `entry`='3278';
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=3278;
INSERT INTO `creature_ai_scripts` VALUES 
( 327801, 3278, 0, 0, 100, 1, 1500, 9000, 17300, 33700, 11, 13730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witchwing Slayer - Cast Demoralizing Shout'),
(327802, 3278, 12, 0, 100, 1, 20, 1, 17300, 33700, 11, 7160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witchwing Slayer - Cast Execute');

/* REV 795 */
-- Some startup errors fixed
UPDATE `creature_ai_scripts` SET `action1_param2` = '0' WHERE `id` = '167401';
DELETE FROM `creature_ai_texts` WHERE `entry` IN ('-410', '-311', '-435', '-1055', '-1040', '-1039', '-1038', '-1037', '-1036', '-1035', '-931', '-930', '-929', '-928', '-712', '-711', '-710', '-191', '-188', '-140', '-136', '-135', '-134', '133', '123', '99', '33', '18');
INSERT INTO `creature_ai_texts` VALUES
(-410, 'Hmmm, this one looks like something that would be better off as a windchime. Take notes class... This is NOT what you want to summon in the heat of battle.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Scholomance Dark Summoner Random Say On Aggro'),
(-311, 'Note the weak binding structure of this one. Be sure to finish your incantations or this is what you will end up with.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Scholomance Dark Summoner Random Say On Aggro'),
(-435, 'This one is slightly better than the last. However, it still suffers from the same flimsy bone structure as the others. When you summon one of these, you are on the right path.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Scholomance Dark Summoner Random Say On Aggro');
UPDATE `creature_ai_scripts` SET `action1_param3` = '1000', `action2_param3` = '1001' WHERE `id` = '571010';
DELETE FROM `creature_ai_summons` WHERE `id` IN ('1000', '1001', '12', '13', '14', '15');
INSERT INTO `creature_ai_summons` VALUES
('1000', '-441.484802', '-85.287621', '-90.827461', '3.119550', '180000', '5710'),
('1001', '-441.110229', '-75.287621', '-90.340149', '3.119550', '180000', '5710');

-- Scripts/texts moved to the SD0 --
-- Flamewaker Protector, Flamewaker Elite, Flamewaker Healer, Flameguard, Lava Elemental --
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (7800, 12119, 11663, 11664, 11667, 12076, 12265);
UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0' WHERE `entry` IN (7800, 12119, 11663, 11664, 11667, 12076, 12265);
-- Scholomance Dark Summoner texts --
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-435, -410, -311);
-- Anvilrage Reservist, Chromatic Elite Guard --
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (8901, 10814);
-- Mekgineer Thermaplug's summons --
DELETE FROM `creature_ai_summons` WHERE `id` IN (2, 3);
-- Mutanus the Devourer (entry 3654) --
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=3654;

/* VZDY NA KONCI! */
UPDATE `creature_template` SET ScriptName = 'generic_creature' WHERE AIName != 'EventAI' AND scriptname = '' AND spell1 != '0';
UPDATE `creature_template` SET `ScriptName`='' WHERE `name` LIKE '%totem%' AND `type` = '10' AND `ScriptName` LIKE '%generic%';

UPDATE `db_version` SET `creature_ai_version`='ACID 1.0.2 + Archaica fixes';