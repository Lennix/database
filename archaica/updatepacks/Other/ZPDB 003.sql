/* guards and spirit guide flags */
-- first change guards
UPDATE creature_template SET npcflag = npcflag + 32704 WHERE npcflag & 64;
-- after spirit guid fix
UPDATE creature_template SET npcflag = 64 WHERE entry IN (13116,13117);

-- wisp form fix
DELETE FROM creature_template WHERE entry = 12861;
INSERT INTO creature_template (entry,modelid_1,modelid_2,NAME,minlevel,maxlevel,minhealth,maxhealth,faction_A,faction_H,speed_walk,scale,mindmg,maxdmg,attackpower,TYPE,inhabittype,regenhealth,flags_extra)VALUES (12861,1825,1825,'Wisp (Ghost Visual Only)',1,1,8,8,35,35,1,1,1,1,7,8,3,1,2);

-- missing npc_text
DELETE FROM npc_text WHERE id = 8266;
INSERT INTO npc_text (id,text0_0) VALUES ( 8266,'We orcs are usually a private people, but lately, no one\'s been hiding their feelings.');

-- fix loot condition
UPDATE creature_loot_template SET condition_value2=1 WHERE 
entry IN (7428,7429,7458,7460,7459,7457,7449,7448,7447,7453,7454,7452,7451,7450,7445,7443,7444,7446,7438,7440,7439,7442,7441,10916,10738,7433,7430,7432,7434,7431)
AND item IN (12436,12436,12435,12435,12435,12435,12434,12434,12434,12433,12433,12433,12433,12433,12432,12432,12432,12432,12431,12431,12431,12431,12431,12431,12431,12430,12430,12430,12430,12430);


-- fix ranged weapons

UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2098	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2099	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2100	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2504	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2505	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2506	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2507	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2508	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2509	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2510	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2511	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2773	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2774	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2777	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2778	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2780	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2781	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2782	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2783	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2785	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2786	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2824	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2825	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2903	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	2904	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3021	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3023	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3024	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3025	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3026	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3027	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3036	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3037	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3039	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3040	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3041	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3042	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3078	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3079	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3430	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3493	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3567	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3742	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3778	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	3780	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4025	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4026	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4086	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4087	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4089	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4110	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4111	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4127	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4362	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4369	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4372	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4379	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4383	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4474	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4547	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4576	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4577	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	4931	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5069	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5071	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5092	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5198	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5207	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5208	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5209	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5210	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5211	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5212	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5213	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5214	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5215	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5216	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5236	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5238	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5239	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5240	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5241	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5242	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5243	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5244	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5245	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5246	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5247	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5248	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5249	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5250	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5252	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5253	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5309	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5326	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5346	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5347	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5356	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5596	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5604	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5817	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	5818	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	6315	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	6469	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	6677	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	6696	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	6729	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	6739	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	6797	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	6798	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	6806	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	7001	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	7513	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	7514	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	7607	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	7708	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	7729	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	8071	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	8179	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	8180	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	8181	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	8182	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	8183	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	8184	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	8186	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	8188	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	9381	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	9400	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	9412	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	9422	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	9426	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	9456	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	9483	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	9487	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	9489	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	9654	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	10508	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	10510	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	10567	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	10572	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	10624	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	10704	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	10766	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	10836	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11263	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11287	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11288	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11289	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11290	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11303	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11304	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11305	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11306	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11307	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11308	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11628	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11629	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11748	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	11860	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	12296	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	12446	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	12447	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	12448	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	12449	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	12605	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	12651	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	12653	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	12984	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13004	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13019	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13020	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13021	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13022	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13023	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13037	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13038	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13039	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13040	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13062	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13063	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13064	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13065	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13136	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13137	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13138	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13139	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13146	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13175	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13248	;
UPDATE item_template SET RangedModRange = 	0	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13289	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13380	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13396	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13474	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13534	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13824	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13825	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	13938	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15204	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15205	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15279	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15280	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15281	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15282	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15283	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15284	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15285	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15286	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15287	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15288	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15289	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15291	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15294	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15295	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15296	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15322	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15323	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15324	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15325	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15465	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15691	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15692	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15807	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15808	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15809	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	15995	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	16004	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	16007	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	16622	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	16789	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	16992	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	16993	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	16996	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	16997	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	17042	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	17069	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	17072	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	17077	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	17686	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	17687	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	17717	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	17745	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	17753	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18282	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18301	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18323	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18338	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18388	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18460	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18482	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18483	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18680	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18713	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18729	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18738	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18755	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18761	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18833	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18835	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18836	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18837	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18855	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	18860	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19107	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19108	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19114	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19118	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19130	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19350	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19361	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19367	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19368	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19435	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19558	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19559	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19560	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19561	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19562	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19563	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19564	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19565	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19853	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19861	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19927	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19967	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	19993	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	20038	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	20082	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	20437	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	20438	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	20488	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	20599	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	20646	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	20663	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	20672	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	20722	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	21272	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	21459	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	21478	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	21603	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	21616	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	21800	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	21801	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	22254	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	22318	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	22347	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	0	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	22408	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	22656	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	22810	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	22811	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	22812	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	22820	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	22821	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	23009	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	23177	;
UPDATE item_template SET RangedModRange = 	100	, spellcategorycooldown_1 = 	-1	, spellcategorycooldown_2 = 	-1	, spellcategorycooldown_3 = 	-1	, spellcategorycooldown_4 = 	-1	, spellcategorycooldown_5 = 	-1	 WHERE entry = 	23557	;


-- fix buycount for some items

UPDATE item_template SET buycount = 	5	 WHERE entry = 	117	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	159	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	787	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	1707	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	2070	;
UPDATE item_template SET buycount = 	200	 WHERE entry = 	2512	;
UPDATE item_template SET buycount = 	200	 WHERE entry = 	2516	;
UPDATE item_template SET buycount = 	200	 WHERE entry = 	2947	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	4536	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	4540	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	4592	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	4593	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	4594	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	4604	;
UPDATE item_template SET buycount = 	200	 WHERE entry = 	8067	;
UPDATE item_template SET buycount = 	200	 WHERE entry = 	8068	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	8957	;
UPDATE item_template SET buycount = 	200	 WHERE entry = 	10513	;
UPDATE item_template SET buycount = 	200	 WHERE entry = 	15997	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	16166	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	16167	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	16168	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	16169	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	16170	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	17202	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	17344	;
UPDATE item_template SET buycount = 	200	 WHERE entry = 	18042	;
UPDATE item_template SET buycount = 	1	 WHERE entry = 	18802	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	19060	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	19223	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	19301	;
UPDATE item_template SET buycount = 	20	 WHERE entry = 	19307	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	19318	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	20222	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	20223	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	20224	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	20232	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	20234	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	20235	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	21030	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	21031	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	21033	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	21552	;
UPDATE item_template SET buycount = 	10	 WHERE entry = 	21815	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	23211	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	23246	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	23327	;
UPDATE item_template SET buycount = 	5	 WHERE entry = 	23435	;

--
-- gossip id for creatures
--

UPDATE creature_template SET gossip_menu_id = 	435	 WHERE entry = 	68	;
UPDATE creature_template SET gossip_menu_id = 	4048	 WHERE entry = 	197	;
UPDATE creature_template SET gossip_menu_id = 	1291	 WHERE entry = 	295	;
UPDATE creature_template SET gossip_menu_id = 	704	 WHERE entry = 	352	;
UPDATE creature_template SET gossip_menu_id = 	4666	 WHERE entry = 	376	;
UPDATE creature_template SET gossip_menu_id = 	4666	 WHERE entry = 	377	;
UPDATE creature_template SET gossip_menu_id = 	4004	 WHERE entry = 	384	;
UPDATE creature_template SET gossip_menu_id = 	4107	 WHERE entry = 	491	;
UPDATE creature_template SET gossip_menu_id = 	2744	 WHERE entry = 	514	;
UPDATE creature_template SET gossip_menu_id = 	4106	 WHERE entry = 	523	;
UPDATE creature_template SET gossip_menu_id = 	7577	 WHERE entry = 	715	;
UPDATE creature_template SET gossip_menu_id = 	5483	 WHERE entry = 	716	;
UPDATE creature_template SET gossip_menu_id = 	4680	 WHERE entry = 	837	;
UPDATE creature_template SET gossip_menu_id = 	4649	 WHERE entry = 	914	;
UPDATE creature_template SET gossip_menu_id = 	4659	 WHERE entry = 	915	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	931	;
UPDATE creature_template SET gossip_menu_id = 	4552	 WHERE entry = 	944	;
UPDATE creature_template SET gossip_menu_id = 	1631	 WHERE entry = 	963	;
UPDATE creature_template SET gossip_menu_id = 	4680	 WHERE entry = 	1226	;
UPDATE creature_template SET gossip_menu_id = 	4116	 WHERE entry = 	1246	;
UPDATE creature_template SET gossip_menu_id = 	1297	 WHERE entry = 	1247	;
UPDATE creature_template SET gossip_menu_id = 	685	 WHERE entry = 	1257	;
UPDATE creature_template SET gossip_menu_id = 	686	 WHERE entry = 	1275	;
UPDATE creature_template SET gossip_menu_id = 	685	 WHERE entry = 	1287	;
UPDATE creature_template SET gossip_menu_id = 	685	 WHERE entry = 	1289	;
UPDATE creature_template SET gossip_menu_id = 	685	 WHERE entry = 	1294	;
UPDATE creature_template SET gossip_menu_id = 	686	 WHERE entry = 	1297	;
UPDATE creature_template SET gossip_menu_id = 	688	 WHERE entry = 	1320	;
UPDATE creature_template SET gossip_menu_id = 	688	 WHERE entry = 	1321	;
UPDATE creature_template SET gossip_menu_id = 	702	 WHERE entry = 	1327	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	1387	;
UPDATE creature_template SET gossip_menu_id = 	5902	 WHERE entry = 	1416	;
UPDATE creature_template SET gossip_menu_id = 	3506	 WHERE entry = 	1423	;
UPDATE creature_template SET gossip_menu_id = 	6951	 WHERE entry = 	1432	;
UPDATE creature_template SET gossip_menu_id = 	4044	 WHERE entry = 	1569	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	1571	;
UPDATE creature_template SET gossip_menu_id = 	4358	 WHERE entry = 	1572	;
UPDATE creature_template SET gossip_menu_id = 	4360	 WHERE entry = 	1573	;
UPDATE creature_template SET gossip_menu_id = 	5665	 WHERE entry = 	1651	;
UPDATE creature_template SET gossip_menu_id = 	7690	 WHERE entry = 	1701	;
UPDATE creature_template SET gossip_menu_id = 	4135	 WHERE entry = 	1702	;
UPDATE creature_template SET gossip_menu_id = 	4683	 WHERE entry = 	1901	;
UPDATE creature_template SET gossip_menu_id = 	5782	 WHERE entry = 	2198	;
UPDATE creature_template SET gossip_menu_id = 	4281	 WHERE entry = 	2226	;
UPDATE creature_template SET gossip_menu_id = 	5855	 WHERE entry = 	2326	;
UPDATE creature_template SET gossip_menu_id = 	5855	 WHERE entry = 	2329	;
UPDATE creature_template SET gossip_menu_id = 	1291	 WHERE entry = 	2352	;
UPDATE creature_template SET gossip_menu_id = 	1296	 WHERE entry = 	2388	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	2409	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	2432	;
UPDATE creature_template SET gossip_menu_id = 	699	 WHERE entry = 	2455	;
UPDATE creature_template SET gossip_menu_id = 	699	 WHERE entry = 	2456	;
UPDATE creature_template SET gossip_menu_id = 	699	 WHERE entry = 	2457	;
UPDATE creature_template SET gossip_menu_id = 	4823	 WHERE entry = 	2489	;
UPDATE creature_template SET gossip_menu_id = 	6685	 WHERE entry = 	2496	;
UPDATE creature_template SET gossip_menu_id = 	5263	 WHERE entry = 	2704	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	2835	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	2851	;
UPDATE creature_template SET gossip_menu_id = 	4306	 WHERE entry = 	2859	;
UPDATE creature_template SET gossip_menu_id = 	4783	 WHERE entry = 	2878	;
UPDATE creature_template SET gossip_menu_id = 	7690	 WHERE entry = 	3001	;
UPDATE creature_template SET gossip_menu_id = 	7691	 WHERE entry = 	3013	;
UPDATE creature_template SET gossip_menu_id = 	5851	 WHERE entry = 	3057	;
UPDATE creature_template SET gossip_menu_id = 	2781	 WHERE entry = 	3136	;
UPDATE creature_template SET gossip_menu_id = 	7690	 WHERE entry = 	3137	;
UPDATE creature_template SET gossip_menu_id = 	2910	 WHERE entry = 	3143	;
UPDATE creature_template SET gossip_menu_id = 	1971	 WHERE entry = 	3149	;
UPDATE creature_template SET gossip_menu_id = 	2101	 WHERE entry = 	3150	;
UPDATE creature_template SET gossip_menu_id = 	4506	 WHERE entry = 	3154	;
UPDATE creature_template SET gossip_menu_id = 	2746	 WHERE entry = 	3174	;
UPDATE creature_template SET gossip_menu_id = 	3701	 WHERE entry = 	3216	;
UPDATE creature_template SET gossip_menu_id = 	1951	 WHERE entry = 	3296	;
UPDATE creature_template SET gossip_menu_id = 	1623	 WHERE entry = 	3309	;
UPDATE creature_template SET gossip_menu_id = 	4342	 WHERE entry = 	3310	;
UPDATE creature_template SET gossip_menu_id = 	1624	 WHERE entry = 	3314	;
UPDATE creature_template SET gossip_menu_id = 	4010	 WHERE entry = 	3352	;
UPDATE creature_template SET gossip_menu_id = 	1012	 WHERE entry = 	3355	;
UPDATE creature_template SET gossip_menu_id = 	7690	 WHERE entry = 	3357	;
UPDATE creature_template SET gossip_menu_id = 	3161	 WHERE entry = 	3362	;
UPDATE creature_template SET gossip_menu_id = 	4209	 WHERE entry = 	3365	;
UPDATE creature_template SET gossip_menu_id = 	7691	 WHERE entry = 	3404	;
UPDATE creature_template SET gossip_menu_id = 	4506	 WHERE entry = 	3406	;
UPDATE creature_template SET gossip_menu_id = 	4506	 WHERE entry = 	3407	;
UPDATE creature_template SET gossip_menu_id = 	4148	 WHERE entry = 	3412	;
UPDATE creature_template SET gossip_menu_id = 	980	 WHERE entry = 	3413	;
UPDATE creature_template SET gossip_menu_id = 	2883	 WHERE entry = 	3429	;
UPDATE creature_template SET gossip_menu_id = 	4043	 WHERE entry = 	3448	;
UPDATE creature_template SET gossip_menu_id = 	2783	 WHERE entry = 	3478	;
UPDATE creature_template SET gossip_menu_id = 	4324	 WHERE entry = 	3483	;
UPDATE creature_template SET gossip_menu_id = 	4341	 WHERE entry = 	3489	;
UPDATE creature_template SET gossip_menu_id = 	1630	 WHERE entry = 	3516	;
UPDATE creature_template SET gossip_menu_id = 	685	 WHERE entry = 	3518	;
UPDATE creature_template SET gossip_menu_id = 	3580	 WHERE entry = 	3571	;
UPDATE creature_template SET gossip_menu_id = 	4697	 WHERE entry = 	3593	;
UPDATE creature_template SET gossip_menu_id = 	4691	 WHERE entry = 	3595	;
UPDATE creature_template SET gossip_menu_id = 	4697	 WHERE entry = 	3598	;
UPDATE creature_template SET gossip_menu_id = 	4691	 WHERE entry = 	3600	;
UPDATE creature_template SET gossip_menu_id = 	4174	 WHERE entry = 	3605	;
UPDATE creature_template SET gossip_menu_id = 	5665	 WHERE entry = 	3607	;
UPDATE creature_template SET gossip_menu_id = 	4323	 WHERE entry = 	3615	;
UPDATE creature_template SET gossip_menu_id = 	4783	 WHERE entry = 	3620	;
UPDATE creature_template SET gossip_menu_id = 	4783	 WHERE entry = 	3622	;
UPDATE creature_template SET gossip_menu_id = 	4783	 WHERE entry = 	3624	;
UPDATE creature_template SET gossip_menu_id = 	4783	 WHERE entry = 	3688	;
UPDATE creature_template SET gossip_menu_id = 	4302	 WHERE entry = 	3838	;
UPDATE creature_template SET gossip_menu_id = 	4301	 WHERE entry = 	3841	;
UPDATE creature_template SET gossip_menu_id = 	4697	 WHERE entry = 	4087	;
UPDATE creature_template SET gossip_menu_id = 	4691	 WHERE entry = 	4090	;
UPDATE creature_template SET gossip_menu_id = 	4691	 WHERE entry = 	4091	;
UPDATE creature_template SET gossip_menu_id = 	4691	 WHERE entry = 	4092	;
UPDATE creature_template SET gossip_menu_id = 	2404	 WHERE entry = 	4155	;
UPDATE creature_template SET gossip_menu_id = 	4349	 WHERE entry = 	4159	;
UPDATE creature_template SET gossip_menu_id = 	4576	 WHERE entry = 	4163	;
UPDATE creature_template SET gossip_menu_id = 	4821	 WHERE entry = 	4165	;
UPDATE creature_template SET gossip_menu_id = 	5853	 WHERE entry = 	4210	;
UPDATE creature_template SET gossip_menu_id = 	4762	 WHERE entry = 	4211	;
UPDATE creature_template SET gossip_menu_id = 	4163	 WHERE entry = 	4213	;
UPDATE creature_template SET gossip_menu_id = 	4576	 WHERE entry = 	4214	;
UPDATE creature_template SET gossip_menu_id = 	4576	 WHERE entry = 	4215	;
UPDATE creature_template SET gossip_menu_id = 	1403	 WHERE entry = 	4217	;
UPDATE creature_template SET gossip_menu_id = 	4571	 WHERE entry = 	4218	;
UPDATE creature_template SET gossip_menu_id = 	4571	 WHERE entry = 	4219	;
UPDATE creature_template SET gossip_menu_id = 	7690	 WHERE entry = 	4254	;
UPDATE creature_template SET gossip_menu_id = 	593	 WHERE entry = 	4258	;
UPDATE creature_template SET gossip_menu_id = 	10265	 WHERE entry = 	4262	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	4312	;
UPDATE creature_template SET gossip_menu_id = 	6023	 WHERE entry = 	4314	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	4321	;
UPDATE creature_template SET gossip_menu_id = 	4307	 WHERE entry = 	4551	;
UPDATE creature_template SET gossip_menu_id = 	7690	 WHERE entry = 	4598	;
UPDATE creature_template SET gossip_menu_id = 	7691	 WHERE entry = 	4614	;
UPDATE creature_template SET gossip_menu_id = 	3185	 WHERE entry = 	4730	;
UPDATE creature_template SET gossip_menu_id = 	4018	 WHERE entry = 	4732	;
UPDATE creature_template SET gossip_menu_id = 	4020	 WHERE entry = 	4752	;
UPDATE creature_template SET gossip_menu_id = 	4019	 WHERE entry = 	4753	;
UPDATE creature_template SET gossip_menu_id = 	4576	 WHERE entry = 	4794	;
UPDATE creature_template SET gossip_menu_id = 	3664	 WHERE entry = 	4949	;
UPDATE creature_template SET gossip_menu_id = 	345	 WHERE entry = 	5111	;
UPDATE creature_template SET gossip_menu_id = 	7691	 WHERE entry = 	5137	;
UPDATE creature_template SET gossip_menu_id = 	4680	 WHERE entry = 	5141	;
UPDATE creature_template SET gossip_menu_id = 	4680	 WHERE entry = 	5142	;
UPDATE creature_template SET gossip_menu_id = 	4680	 WHERE entry = 	5143	;
UPDATE creature_template SET gossip_menu_id = 	4552	 WHERE entry = 	5144	;
UPDATE creature_template SET gossip_menu_id = 	4552	 WHERE entry = 	5145	;
UPDATE creature_template SET gossip_menu_id = 	4552	 WHERE entry = 	5146	;
UPDATE creature_template SET gossip_menu_id = 	4762	 WHERE entry = 	5150	;
UPDATE creature_template SET gossip_menu_id = 	4345	 WHERE entry = 	5153	;
UPDATE creature_template SET gossip_menu_id = 	597	 WHERE entry = 	5164	;
UPDATE creature_template SET gossip_menu_id = 	4667	 WHERE entry = 	5173	;
UPDATE creature_template SET gossip_menu_id = 	4123	 WHERE entry = 	5177	;
UPDATE creature_template SET gossip_menu_id = 	7690	 WHERE entry = 	5392	;
UPDATE creature_template SET gossip_menu_id = 	2242	 WHERE entry = 	5411	;
UPDATE creature_template SET gossip_menu_id = 	4649	 WHERE entry = 	5479	;
UPDATE creature_template SET gossip_menu_id = 	4649	 WHERE entry = 	5480	;
UPDATE creature_template SET gossip_menu_id = 	688	 WHERE entry = 	5483	;
UPDATE creature_template SET gossip_menu_id = 	4666	 WHERE entry = 	5489	;
UPDATE creature_template SET gossip_menu_id = 	4485	 WHERE entry = 	5497	;
UPDATE creature_template SET gossip_menu_id = 	688	 WHERE entry = 	5565	;
UPDATE creature_template SET gossip_menu_id = 	643	 WHERE entry = 	5566	;
UPDATE creature_template SET gossip_menu_id = 	900	 WHERE entry = 	5594	;
UPDATE creature_template SET gossip_menu_id = 	2121	 WHERE entry = 	5595	;
UPDATE creature_template SET gossip_menu_id = 	4323	 WHERE entry = 	5637	;
UPDATE creature_template SET gossip_menu_id = 	1296	 WHERE entry = 	5688	;
UPDATE creature_template SET gossip_menu_id = 	1290	 WHERE entry = 	5814	;
UPDATE creature_template SET gossip_menu_id = 	64	 WHERE entry = 	5882	;
UPDATE creature_template SET gossip_menu_id = 	64	 WHERE entry = 	5883	;
UPDATE creature_template SET gossip_menu_id = 	64	 WHERE entry = 	5884	;
UPDATE creature_template SET gossip_menu_id = 	64	 WHERE entry = 	5885	;
UPDATE creature_template SET gossip_menu_id = 	3285	 WHERE entry = 	5953	;
UPDATE creature_template SET gossip_menu_id = 	4762	 WHERE entry = 	6094	;
UPDATE creature_template SET gossip_menu_id = 	5853	 WHERE entry = 	6286	;
UPDATE creature_template SET gossip_menu_id = 	83	 WHERE entry = 	6491	;
UPDATE creature_template SET gossip_menu_id = 	1291	 WHERE entry = 	6727	;
UPDATE creature_template SET gossip_menu_id = 	1297	 WHERE entry = 	6734	;
UPDATE creature_template SET gossip_menu_id = 	1581	 WHERE entry = 	6735	;
UPDATE creature_template SET gossip_menu_id = 	1293	 WHERE entry = 	6736	;
UPDATE creature_template SET gossip_menu_id = 	1296	 WHERE entry = 	6739	;
UPDATE creature_template SET gossip_menu_id = 	342	 WHERE entry = 	6740	;
UPDATE creature_template SET gossip_menu_id = 	1296	 WHERE entry = 	6741	;
UPDATE creature_template SET gossip_menu_id = 	1291	 WHERE entry = 	6790	;
UPDATE creature_template SET gossip_menu_id = 	349	 WHERE entry = 	6791	;
UPDATE creature_template SET gossip_menu_id = 	349	 WHERE entry = 	6807	;
UPDATE creature_template SET gossip_menu_id = 	1290	 WHERE entry = 	6928	;
UPDATE creature_template SET gossip_menu_id = 	1290	 WHERE entry = 	6929	;
UPDATE creature_template SET gossip_menu_id = 	1290	 WHERE entry = 	6930	;
UPDATE creature_template SET gossip_menu_id = 	64	 WHERE entry = 	7311	;
UPDATE creature_template SET gossip_menu_id = 	4552	 WHERE entry = 	7312	;
UPDATE creature_template SET gossip_menu_id = 	4697	 WHERE entry = 	7315	;
UPDATE creature_template SET gossip_menu_id = 	1467	 WHERE entry = 	7406	;
UPDATE creature_template SET gossip_menu_id = 	922	 WHERE entry = 	7564	;
UPDATE creature_template SET gossip_menu_id = 	1290	 WHERE entry = 	7731	;
UPDATE creature_template SET gossip_menu_id = 	2890	 WHERE entry = 	7733	;
UPDATE creature_template SET gossip_menu_id = 	942	 WHERE entry = 	7763	;
UPDATE creature_template SET gossip_menu_id = 	1404	 WHERE entry = 	7771	;
UPDATE creature_template SET gossip_menu_id = 	1802	 WHERE entry = 	7775	;
UPDATE creature_template SET gossip_menu_id = 	1142	 WHERE entry = 	7804	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	7823	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	7824	;
UPDATE creature_template SET gossip_menu_id = 	1482	 WHERE entry = 	7916	;
UPDATE creature_template SET gossip_menu_id = 	1468	 WHERE entry = 	7944	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	8020	;
UPDATE creature_template SET gossip_menu_id = 	4746	 WHERE entry = 	8125	;
UPDATE creature_template SET gossip_menu_id = 	7691	 WHERE entry = 	8146	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	8609	;
UPDATE creature_template SET gossip_menu_id = 	1561	 WHERE entry = 	8879	;
UPDATE creature_template SET gossip_menu_id = 	1663	 WHERE entry = 	8888	;
UPDATE creature_template SET gossip_menu_id = 	1721	 WHERE entry = 	9099	;
UPDATE creature_template SET gossip_menu_id = 	2184	 WHERE entry = 	9117	;
UPDATE creature_template SET gossip_menu_id = 	2424	 WHERE entry = 	9270	;
UPDATE creature_template SET gossip_menu_id = 	2423	 WHERE entry = 	9271	;
UPDATE creature_template SET gossip_menu_id = 	2422	 WHERE entry = 	9272	;
UPDATE creature_template SET gossip_menu_id = 	3802	 WHERE entry = 	9298	;
UPDATE creature_template SET gossip_menu_id = 	1290	 WHERE entry = 	9356	;
UPDATE creature_template SET gossip_menu_id = 	1844	 WHERE entry = 	9467	;
UPDATE creature_template SET gossip_menu_id = 	2076	 WHERE entry = 	9500	;
UPDATE creature_template SET gossip_menu_id = 	2283	 WHERE entry = 	9502	;
UPDATE creature_template SET gossip_menu_id = 	1963	 WHERE entry = 	9547	;
UPDATE creature_template SET gossip_menu_id = 	1969	 WHERE entry = 	9564	;
UPDATE creature_template SET gossip_menu_id = 	1971	 WHERE entry = 	9566	;
UPDATE creature_template SET gossip_menu_id = 	2081	 WHERE entry = 	9618	;
UPDATE creature_template SET gossip_menu_id = 	2188	 WHERE entry = 	9619	;
UPDATE creature_template SET gossip_menu_id = 	9821	 WHERE entry = 	9989	;
UPDATE creature_template SET gossip_menu_id = 	2852	 WHERE entry = 	9997	;
UPDATE creature_template SET gossip_menu_id = 	4783	 WHERE entry = 	10088	;
UPDATE creature_template SET gossip_menu_id = 	4783	 WHERE entry = 	10089	;
UPDATE creature_template SET gossip_menu_id = 	4783	 WHERE entry = 	10090	;
UPDATE creature_template SET gossip_menu_id = 	2747	 WHERE entry = 	10266	;
UPDATE creature_template SET gossip_menu_id = 	2761	 WHERE entry = 	10276	;
UPDATE creature_template SET gossip_menu_id = 	2742	 WHERE entry = 	10277	;
UPDATE creature_template SET gossip_menu_id = 	3761	 WHERE entry = 	10301	;
UPDATE creature_template SET gossip_menu_id = 	6837	 WHERE entry = 	10305	;
UPDATE creature_template SET gossip_menu_id = 	2703	 WHERE entry = 	10307	;
UPDATE creature_template SET gossip_menu_id = 	6162	 WHERE entry = 	10378	;
UPDATE creature_template SET gossip_menu_id = 	3985	 WHERE entry = 	10431	;
UPDATE creature_template SET gossip_menu_id = 	7339	 WHERE entry = 	10540	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	10583	;
UPDATE creature_template SET gossip_menu_id = 	2984	 WHERE entry = 	10637	;
UPDATE creature_template SET gossip_menu_id = 	2911	 WHERE entry = 	10667	;
UPDATE creature_template SET gossip_menu_id = 	3042	 WHERE entry = 	10838	;
UPDATE creature_template SET gossip_menu_id = 	3383	 WHERE entry = 	10840	;
UPDATE creature_template SET gossip_menu_id = 	3421	 WHERE entry = 	10856	;
UPDATE creature_template SET gossip_menu_id = 	5782	 WHERE entry = 	10877	;
UPDATE creature_template SET gossip_menu_id = 	5782	 WHERE entry = 	10878	;
UPDATE creature_template SET gossip_menu_id = 	5782	 WHERE entry = 	10879	;
UPDATE creature_template SET gossip_menu_id = 	5782	 WHERE entry = 	10880	;
UPDATE creature_template SET gossip_menu_id = 	5782	 WHERE entry = 	10881	;
UPDATE creature_template SET gossip_menu_id = 	4151	 WHERE entry = 	11017	;
UPDATE creature_template SET gossip_menu_id = 	4142	 WHERE entry = 	11025	;
UPDATE creature_template SET gossip_menu_id = 	4137	 WHERE entry = 	11028	;
UPDATE creature_template SET gossip_menu_id = 	7109	 WHERE entry = 	11033	;
UPDATE creature_template SET gossip_menu_id = 	3651	 WHERE entry = 	11035	;
UPDATE creature_template SET gossip_menu_id = 	3181	 WHERE entry = 	11038	;
UPDATE creature_template SET gossip_menu_id = 	3184	 WHERE entry = 	11053	;
UPDATE creature_template SET gossip_menu_id = 	3228	 WHERE entry = 	11056	;
UPDATE creature_template SET gossip_menu_id = 	3864	 WHERE entry = 	11063	;
UPDATE creature_template SET gossip_menu_id = 	4155	 WHERE entry = 	11070	;
UPDATE creature_template SET gossip_menu_id = 	349	 WHERE entry = 	11118	;
UPDATE creature_template SET gossip_menu_id = 	9821	 WHERE entry = 	11119	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	11138	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	11139	;
UPDATE creature_template SET gossip_menu_id = 	3182	 WHERE entry = 	11145	;
UPDATE creature_template SET gossip_menu_id = 	3201	 WHERE entry = 	11146	;
UPDATE creature_template SET gossip_menu_id = 	3203	 WHERE entry = 	11177	;
UPDATE creature_template SET gossip_menu_id = 	6090	 WHERE entry = 	11191	;
UPDATE creature_template SET gossip_menu_id = 	6089	 WHERE entry = 	11192	;
UPDATE creature_template SET gossip_menu_id = 	6091	 WHERE entry = 	11193	;
UPDATE creature_template SET gossip_menu_id = 	4691	 WHERE entry = 	11401	;
UPDATE creature_template SET gossip_menu_id = 	4680	 WHERE entry = 	11406	;
UPDATE creature_template SET gossip_menu_id = 	3461	 WHERE entry = 	11536	;
UPDATE creature_template SET gossip_menu_id = 	3624	 WHERE entry = 	11556	;
UPDATE creature_template SET gossip_menu_id = 	3603	 WHERE entry = 	11610	;
UPDATE creature_template SET gossip_menu_id = 	3821	 WHERE entry = 	11616	;
UPDATE creature_template SET gossip_menu_id = 	5102	 WHERE entry = 	11801	;
UPDATE creature_template SET gossip_menu_id = 	6646	 WHERE entry = 	11811	;
UPDATE creature_template SET gossip_menu_id = 	5271	 WHERE entry = 	11867	;
UPDATE creature_template SET gossip_menu_id = 	5221	 WHERE entry = 	11868	;
UPDATE creature_template SET gossip_menu_id = 	3801	 WHERE entry = 	11872	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	11899	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	11901	;
UPDATE creature_template SET gossip_menu_id = 	3841	 WHERE entry = 	12136	;
UPDATE creature_template SET gossip_menu_id = 	1969	 WHERE entry = 	12137	;
UPDATE creature_template SET gossip_menu_id = 	1290	 WHERE entry = 	12196	;
UPDATE creature_template SET gossip_menu_id = 	4085	 WHERE entry = 	12384	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	12596	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	12617	;
UPDATE creature_template SET gossip_menu_id = 	4343	 WHERE entry = 	12658	;
UPDATE creature_template SET gossip_menu_id = 	5382	 WHERE entry = 	12920	;
UPDATE creature_template SET gossip_menu_id = 	4781	 WHERE entry = 	12944	;
UPDATE creature_template SET gossip_menu_id = 	5103	 WHERE entry = 	13220	;
UPDATE creature_template SET gossip_menu_id = 	5750	 WHERE entry = 	14387	;
UPDATE creature_template SET gossip_menu_id = 	5753	 WHERE entry = 	14394	;
UPDATE creature_template SET gossip_menu_id = 	6028	 WHERE entry = 	14721	;
UPDATE creature_template SET gossip_menu_id = 	6043	 WHERE entry = 	14723	;
UPDATE creature_template SET gossip_menu_id = 	6042	 WHERE entry = 	14724	;
UPDATE creature_template SET gossip_menu_id = 	6044	 WHERE entry = 	14725	;
UPDATE creature_template SET gossip_menu_id = 	6092	 WHERE entry = 	14742	;
UPDATE creature_template SET gossip_menu_id = 	6094	 WHERE entry = 	14743	;
UPDATE creature_template SET gossip_menu_id = 	6231	 WHERE entry = 	14860	;
UPDATE creature_template SET gossip_menu_id = 	6235	 WHERE entry = 	14875	;
UPDATE creature_template SET gossip_menu_id = 	6321	 WHERE entry = 	14902	;
UPDATE creature_template SET gossip_menu_id = 	6322	 WHERE entry = 	14903	;
UPDATE creature_template SET gossip_menu_id = 	6341	 WHERE entry = 	14904	;
UPDATE creature_template SET gossip_menu_id = 	6422	 WHERE entry = 	14910	;
UPDATE creature_template SET gossip_menu_id = 	6381	 WHERE entry = 	14921	;
UPDATE creature_template SET gossip_menu_id = 	6519	 WHERE entry = 	15076	;
UPDATE creature_template SET gossip_menu_id = 	6588	 WHERE entry = 	15169	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	15177	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	15178	;
UPDATE creature_template SET gossip_menu_id = 	6598	 WHERE entry = 	15350	;
UPDATE creature_template SET gossip_menu_id = 	6597	 WHERE entry = 	15351	;
UPDATE creature_template SET gossip_menu_id = 	6800	 WHERE entry = 	15395	;
UPDATE creature_template SET gossip_menu_id = 	6658	 WHERE entry = 	15526	;
UPDATE creature_template SET gossip_menu_id = 	6786	 WHERE entry = 	15708	;
UPDATE creature_template SET gossip_menu_id = 	6803	 WHERE entry = 	15762	;
UPDATE creature_template SET gossip_menu_id = 	6804	 WHERE entry = 	15763	;
UPDATE creature_template SET gossip_menu_id = 	6805	 WHERE entry = 	15764	;
UPDATE creature_template SET gossip_menu_id = 	6806	 WHERE entry = 	15766	;
UPDATE creature_template SET gossip_menu_id = 	7034	 WHERE entry = 	16070	;
UPDATE creature_template SET gossip_menu_id = 	7034	 WHERE entry = 	16076	;
UPDATE creature_template SET gossip_menu_id = 	7104	 WHERE entry = 	16135	;
UPDATE creature_template SET gossip_menu_id = 	6944	 WHERE entry = 	16227	;
UPDATE creature_template SET gossip_menu_id = 	7238	 WHERE entry = 	16416	;
UPDATE creature_template SET gossip_menu_id = 	7394	 WHERE entry = 	17249	;
UPDATE creature_template SET gossip_menu_id = 	7480	 WHERE entry = 	17804	;


-- fill all gossip tables ( not completed cleaned, more data should be removed/added)


delete from gossip_menu;
insert  into gossip_menu(entry,text_id,cond_1,cond_1_val_1,cond_1_val_2,cond_2,cond_2_val_1,cond_2_val_2) values
(64,565,0,0,0,0,0,0),
(83,580,0,0,0,0,0,0),
(265,764,0,0,0,0,0,0),
(342,820,0,0,0,0,0,0),
(345,823,0,0,0,0,0,0),
(349,825,0,0,0,0,0,0),
(382,879,0,0,0,0,0,0),
(383,882,0,0,0,0,0,0),
(401,898,0,0,0,0,0,0),
(402,899,0,0,0,0,0,0),
(403,900,0,0,0,0,0,0),
(404,901,0,0,0,0,0,0),
(405,902,0,0,0,0,0,0),
(406,903,0,0,0,0,0,0),
(407,904,0,0,0,0,0,0),
(408,905,0,0,0,0,0,0),
(409,906,0,0,0,0,0,0),
(410,4797,0,0,0,0,0,0),
(421,918,0,0,0,0,0,0),
(422,919,0,0,0,0,0,0),
(423,920,0,0,0,0,0,0),
(424,921,0,0,0,0,0,0),
(425,922,0,0,0,0,0,0),
(426,923,0,0,0,0,0,0),
(427,924,0,0,0,0,0,0),
(428,925,0,0,0,0,0,0),
(430,927,0,0,0,0,0,0),
(431,928,0,0,0,0,0,0),
(432,929,0,0,0,0,0,0),
(435,933,0,0,0,0,0,0),
(436,4794,0,0,0,0,0,0),
(441,938,0,0,0,0,0,0),
(443,940,0,0,0,0,0,0),
(444,941,0,0,0,0,0,0),
(523,1040,0,0,0,0,0,0),
(581,1118,0,0,0,0,0,0),
(593,1261,0,0,0,0,0,0),
(597,1135,0,0,0,0,0,0),
(643,1202,0,0,0,0,0,0),
(685,1235,0,0,0,0,0,0),
(686,1236,0,0,0,0,0,0),
(688,1238,0,0,0,0,0,0),
(699,1250,0,0,0,0,0,0),
(702,1254,0,0,0,0,0,0),
(704,1256,0,0,0,0,0,0),
(721,1272,0,0,0,0,0,0),
(900,1471,0,0,0,0,0,0),
(922,1493,0,0,0,0,0,0),
(942,1519,0,0,0,0,0,0),
(980,1571,0,0,0,0,0,0),
(1012,1606,0,0,0,0,0,0),
(1041,1133,0,0,0,0,0,0),
(1142,1758,0,0,0,0,0,0),
(1221,1853,0,0,0,0,0,0),
(1290,938,0,0,0,0,0,0),
(1291,820,0,0,0,0,0,0),
(1293,824,0,0,0,0,0,0),
(1296,821,0,0,0,0,0,0),
(1297,823,0,0,0,0,0,0),
(1403,2037,0,0,0,0,0,0),
(1404,2038,0,0,0,0,0,0),
(1405,2039,0,0,0,0,0,0),
(1423,2055,0,0,0,0,0,0),
(1467,2135,0,0,0,0,0,0),
(1467,2136,0,0,0,0,0,0),
(1468,2137,0,0,0,0,0,0),
(1470,2140,0,0,0,0,0,0),
(1481,2154,0,0,0,0,0,0),
(1482,2153,0,0,0,0,0,0),
(1561,2234,0,0,0,0,0,0),
(1581,824,0,0,0,0,0,0),
(1623,2275,0,0,0,0,0,0),
(1624,2278,0,0,0,0,0,0),
(1630,2285,0,0,0,0,0,0),
(1631,2286,0,0,0,0,0,0),
(1662,2313,0,0,0,0,0,0),
(1663,2315,0,0,0,0,0,0),
(1721,2355,0,0,0,0,0,0),
(1761,2393,0,0,0,0,0,0),
(1781,2414,0,0,0,0,0,0),
(1801,2434,0,0,0,0,0,0),
(1802,2433,0,0,0,0,0,0),
(1844,2496,0,0,0,0,0,0),
(1901,2554,0,0,0,0,0,0),
(1902,2555,0,0,0,0,0,0),
(1903,2556,0,0,0,0,0,0),
(1904,2557,0,0,0,0,0,0),
(1905,2558,0,0,0,0,0,0),
(1914,2568,0,0,0,0,0,0),
(1915,2570,0,0,0,0,0,0),
(1922,2575,0,0,0,0,0,0),
(1951,2593,0,0,0,0,0,0),
(1961,2633,0,0,0,0,0,0),
(1961,2634,0,0,0,0,0,0),
(1963,2637,0,0,0,0,0,0),
(1965,2639,0,0,0,0,0,0),
(1969,2642,0,0,0,0,0,0),
(1971,2644,0,0,0,0,0,0),
(2075,2728,0,0,0,0,0,0),
(2076,2729,0,0,0,0,0,0),
(2076,2727,0,0,0,0,0,0),
(2081,2734,0,0,0,0,0,0),
(2101,2753,0,0,0,0,0,0),
(2121,2760,0,0,0,0,0,0),
(2141,2761,0,0,0,0,0,0),
(2142,2762,0,0,0,0,0,0),
(2143,2764,0,0,0,0,0,0),
(2144,2766,0,0,0,0,0,0),
(2145,2768,0,0,0,0,0,0),
(2146,2769,0,0,0,0,0,0),
(2147,2770,0,0,0,0,0,0),
(2148,2771,0,0,0,0,0,0),
(2149,2772,0,0,0,0,0,0),
(2150,2773,0,0,0,0,0,0),
(2151,2774,0,0,0,0,0,0),
(2152,2775,0,0,0,0,0,0),
(2153,2776,0,0,0,0,0,0),
(2161,2794,0,0,0,0,0,0),
(2162,2795,0,0,0,0,0,0),
(2163,2796,0,0,0,0,0,0),
(2164,2797,0,0,0,0,0,0),
(2165,2798,0,0,0,0,0,0),
(2166,2799,0,0,0,0,0,0),
(2167,2800,0,0,0,0,0,0),
(2168,2793,0,0,0,0,0,0),
(2169,2801,0,0,0,0,0,0),
(2170,2802,0,0,0,0,0,0),
(2172,2804,0,0,0,0,0,0),
(2173,2805,0,0,0,0,0,0),
(2175,2807,0,0,0,0,0,0),
(2184,2817,0,0,0,0,0,0),
(2188,2821,0,0,0,0,0,0),
(2188,2816,0,0,0,0,0,0),
(2221,2873,0,0,0,0,0,0),
(2242,2954,0,0,0,0,0,0),
(2283,2973,0,0,0,0,0,0),
(2321,3014,0,0,0,0,0,0),
(2322,3017,0,0,0,0,0,0),
(2324,3019,0,0,0,0,0,0),
(2325,3020,0,0,0,0,0,0),
(2326,3021,0,0,0,0,0,0),
(2327,3023,0,0,0,0,0,0),
(2328,3024,0,0,0,0,0,0),
(2341,3026,0,0,0,0,0,0),
(2342,3033,0,0,0,0,0,0),
(2343,3022,0,0,0,0,0,0),
(2344,3035,0,0,0,0,0,0),
(2345,3036,0,0,0,0,0,0),
(2347,3337,0,0,0,0,0,0),
(2348,3037,0,0,0,0,0,0),
(2349,3038,0,0,0,0,0,0),
(2351,3034,0,0,0,0,0,0),
(2352,3016,0,0,0,0,0,0),
(2354,3040,0,0,0,0,0,0),
(2356,3042,0,0,0,0,0,0),
(2358,3044,0,0,0,0,0,0),
(2403,3075,0,0,0,0,0,0),
(2404,3076,0,0,0,0,0,0),
(2422,3094,0,0,0,0,0,0),
(2423,3095,0,0,0,0,0,0),
(2424,3096,0,0,0,0,0,0),
(2441,3133,0,0,0,0,0,0),
(2562,3234,0,0,0,0,0,0),
(2703,3375,0,0,0,0,0,0),
(2742,3398,0,0,0,0,0,0),
(2744,3405,0,0,0,0,0,0),
(2745,3406,0,0,0,0,0,0),
(2746,3409,0,0,0,0,0,0),
(2747,3412,0,0,0,0,0,0),
(2761,3456,0,0,0,0,0,0),
(2781,3461,0,0,0,0,0,0),
(2783,3471,0,0,0,0,0,0),
(2852,3546,0,0,0,0,0,0),
(2883,3559,0,0,0,0,0,0),
(2890,3566,0,0,0,0,0,0),
(2910,3583,0,0,0,0,0,0),
(2911,3585,0,0,0,0,0,0),
(2911,3584,0,0,0,0,0,0),
(2921,3634,0,0,0,0,0,0),
(2984,3673,0,0,0,0,0,0),
(3042,3754,0,0,0,0,0,0),
(3081,3813,0,0,0,0,0,0),
(3082,3814,0,0,0,0,0,0),
(3101,3833,0,0,0,0,0,0),
(3102,3834,0,0,0,0,0,0),
(3126,3860,0,0,0,0,0,0),
(3130,3854,0,0,0,0,0,0),
(3131,4788,0,0,0,0,0,0),
(3131,3866,0,0,0,0,0,0),
(3141,3873,0,0,0,0,0,0),
(3161,3893,0,0,0,0,0,0),
(3181,3935,0,0,0,0,0,0),
(3182,3937,0,0,0,0,0,0),
(3184,4039,0,0,0,0,0,0),
(3184,3940,0,0,0,0,0,0),
(3185,5844,0,0,0,0,0,0),
(3186,3945,0,0,0,0,0,0),
(3201,3959,0,0,0,0,0,0),
(3203,3961,0,0,0,0,0,0),
(3228,3985,0,0,0,0,0,0),
(3228,3984,0,0,0,0,0,0),
(3241,3999,0,0,0,0,0,0),
(3285,4037,0,0,0,0,0,0),
(3383,4135,0,0,0,0,0,0),
(3421,4173,0,0,0,0,0,0),
(3461,4213,0,0,0,0,0,0),
(3506,4259,0,0,0,0,0,0),
(3507,4260,0,0,0,0,0,0),
(3508,4261,0,0,0,0,0,0),
(3509,4262,0,0,0,0,0,0),
(3510,4263,0,0,0,0,0,0),
(3511,4265,0,0,0,0,0,0),
(3512,4266,0,0,0,0,0,0),
(3519,4264,0,0,0,0,0,0),
(3520,4274,0,0,0,0,0,0),
(3521,4275,0,0,0,0,0,0),
(3526,4280,0,0,0,0,0,0),
(3532,4273,0,0,0,0,0,0),
(3533,4287,0,0,0,0,0,0),
(3534,4288,0,0,0,0,0,0),
(3535,4289,0,0,0,0,0,0),
(3536,4290,0,0,0,0,0,0),
(3537,4291,0,0,0,0,0,0),
(3538,4293,0,0,0,0,0,0),
(3539,4294,0,0,0,0,0,0),
(3540,4295,0,0,0,0,0,0),
(3541,4296,0,0,0,0,0,0),
(3542,4297,0,0,0,0,0,0),
(3543,4298,0,0,0,0,0,0),
(3544,4299,0,0,0,0,0,0),
(3545,4292,0,0,0,0,0,0),
(3546,4301,0,0,0,0,0,0),
(3547,4302,0,0,0,0,0,0),
(3548,4303,0,0,0,0,0,0),
(3549,4304,0,0,0,0,0,0),
(3550,4305,0,0,0,0,0,0),
(3551,4306,0,0,0,0,0,0),
(3552,4307,0,0,0,0,0,0),
(3553,4308,0,0,0,0,0,0),
(3554,4310,0,0,0,0,0,0),
(3556,4312,0,0,0,0,0,0),
(3557,4313,0,0,0,0,0,0),
(3558,4300,0,0,0,0,0,0),
(3560,4317,0,0,0,0,0,0),
(3561,4318,0,0,0,0,0,0),
(3562,4319,0,0,0,0,0,0),
(3563,4320,0,0,0,0,0,0),
(3564,4322,0,0,0,0,0,0),
(3565,4323,0,0,0,0,0,0),
(3566,4324,0,0,0,0,0,0),
(3567,4325,0,0,0,0,0,0),
(3568,4326,0,0,0,0,0,0),
(3569,4327,0,0,0,0,0,0),
(3570,4329,0,0,0,0,0,0),
(3571,4330,0,0,0,0,0,0),
(3572,4328,0,0,0,0,0,0),
(3573,4331,0,0,0,0,0,0),
(3574,4332,0,0,0,0,0,0),
(3575,4333,0,0,0,0,0,0),
(3576,4334,0,0,0,0,0,0),
(3577,4335,0,0,0,0,0,0),
(3578,4336,0,0,0,0,0,0),
(3579,4337,0,0,0,0,0,0),
(3580,4316,0,0,0,0,0,0),
(3603,4355,0,0,0,0,0,0),
(3623,4396,0,0,0,0,0,0),
(3624,4395,0,0,0,0,0,0),
(3626,4401,0,0,0,0,0,0),
(3642,4436,0,0,0,0,0,0),
(3651,4450,0,0,0,0,0,0),
(3664,4477,0,0,0,0,0,0),
(3701,4513,0,0,0,0,0,0),
(3721,4516,0,0,0,0,0,0),
(3722,4517,0,0,0,0,0,0),
(3723,4518,0,0,0,0,0,0),
(3724,4519,0,0,0,0,0,0),
(3761,4573,0,0,0,0,0,0),
(3801,4633,0,0,0,0,0,0),
(3802,4634,0,0,0,0,0,0),
(3821,4357,0,0,0,0,0,0),
(3841,4693,0,0,0,0,0,0),
(3842,4694,0,0,0,0,0,0),
(3864,4716,0,0,0,0,0,0),
(3924,4781,0,0,0,0,0,0),
(3985,4841,0,0,0,0,0,0),
(4004,4859,0,0,0,0,0,0),
(4008,4993,0,0,0,0,0,0),
(4009,4993,0,0,0,0,0,0),
(4010,5003,0,0,0,0,0,0),
(4013,5004,0,0,0,0,0,0),
(4016,5860,0,0,0,0,0,0),
(4018,4876,0,0,0,0,0,0),
(4019,5862,0,0,0,0,0,0),
(4020,4879,0,0,0,0,0,0),
(4022,5865,0,0,0,0,0,0),
(4043,4933,0,0,0,0,0,0),
(4044,4934,0,0,0,0,0,0),
(4048,4938,0,0,0,0,0,0),
(4085,4979,0,0,0,0,0,0),
(4106,5009,0,0,0,0,0,0),
(4107,5010,0,0,0,0,0,0),
(4116,5031,0,0,0,0,0,0),
(4123,5054,0,0,0,0,0,0),
(4135,5112,0,0,0,0,0,0),
(4137,5118,0,0,0,0,0,0),
(4142,5133,0,0,0,0,0,0),
(4147,5152,0,0,0,0,0,0),
(4148,5157,0,0,0,0,0,0),
(4150,5167,0,0,0,0,0,0),
(4151,5172,0,0,0,0,0,0),
(4155,5187,0,0,0,0,0,0),
(4160,5202,0,0,0,0,0,0),
(4163,5213,0,0,0,0,0,0),
(4174,5265,0,0,0,0,0,0),
(4209,5350,0,0,0,0,0,0),
(4281,5453,0,0,0,0,0,0),
(4282,5454,0,0,0,0,0,0),
(4301,5473,0,0,0,0,0,0),
(4302,5474,0,0,0,0,0,0),
(4303,5475,0,0,0,0,0,0),
(4306,5479,0,0,0,0,0,0),
(4307,5454,0,0,0,0,0,0),
(4323,5495,0,0,0,0,0,0),
(4324,5496,0,0,0,0,0,0),
(4326,5500,0,0,0,0,0,0),
(4341,5515,0,0,0,0,0,0),
(4342,5516,0,0,0,0,0,0),
(4343,5517,0,0,0,0,0,0),
(4345,5524,0,0,0,0,0,0),
(4349,5540,0,0,0,0,0,0),
(4358,5580,0,0,0,0,0,0),
(4360,5582,0,0,0,0,0,0),
(4362,5584,0,0,0,0,0,0),
(4463,5674,0,0,0,0,0,0),
(4485,538,0,0,0,0,0,0),
(4506,5004,0,0,0,0,0,0),
(4509,1040,0,0,0,0,0,0),
(4511,1040,0,0,0,0,0,0),
(4551,4999,0,0,0,0,0,0),
(4552,561,0,0,0,0,0,0),
(4558,4436,0,0,0,0,0,0),
(4571,4781,0,0,0,0,0,0),
(4572,4437,0,0,0,0,0,0),
(4573,4437,0,0,0,0,0,0),
(4576,4794,0,0,0,0,0,0),
(4649,5721,0,0,0,0,0,0),
(4659,4835,0,0,0,0,0,0),
(4660,538,0,0,0,0,0,0),
(4661,538,0,0,0,0,0,0),
(4664,3976,0,0,0,0,0,0),
(4666,4434,0,0,0,0,0,0),
(4667,5722,0,0,0,0,0,0),
(4680,4435,0,0,0,0,0,0),
(4683,5724,0,0,0,0,0,0),
(4689,5740,0,0,0,0,0,0),
(4691,4437,0,0,0,0,0,0),
(4697,5725,0,0,0,0,0,0),
(4743,5816,0,0,0,0,0,0),
(4743,5795,0,0,0,0,0,0),
(4743,5817,0,0,0,0,0,0),
(4746,5798,0,0,0,0,0,0),
(4762,7026,0,0,0,0,0,0),
(4781,5834,0,0,0,0,0,0),
(4783,5839,0,0,0,0,0,0),
(4783,5838,0,0,0,0,0,0),
(4821,5873,0,0,0,0,0,0),
(4822,5876,0,0,0,0,0,0),
(4823,5877,0,0,0,0,0,0),
(4826,5884,0,0,0,0,0,0),
(4902,5974,0,0,0,0,0,0),
(4921,5980,0,0,0,0,0,0),
(4923,5982,0,0,0,0,0,0),
(4924,5983,0,0,0,0,0,0),
(4925,5984,0,0,0,0,0,0),
(4926,5985,0,0,0,0,0,0),
(4927,5986,0,0,0,0,0,0),
(5102,6154,0,0,0,0,0,0),
(5103,6155,0,0,0,0,0,0),
(5221,6233,0,0,0,0,0,0),
(5262,6277,0,0,0,0,0,0),
(5263,6275,0,0,0,0,0,0),
(5270,6290,0,0,0,0,0,0),
(5271,6289,0,0,0,0,0,0),
(5382,6415,0,0,0,0,0,0),
(5382,6414,0,0,0,0,0,0),
(5483,6535,0,0,0,0,0,0),
(5665,6960,0,0,0,0,0,0),
(5665,6961,0,0,0,0,0,0),
(5741,6917,0,0,0,0,0,0),
(5750,6933,0,0,0,0,0,0),
(5751,6934,0,0,0,0,0,0),
(5753,6936,0,0,0,0,0,0),
(5782,6957,0,0,0,0,0,0),
(5851,7013,0,0,0,0,0,0),
(5853,7017,0,0,0,0,0,0),
(5853,7021,0,0,0,0,0,0),
(5855,7028,0,0,0,0,0,0),
(5882,7046,0,0,0,0,0,0),
(5883,7047,0,0,0,0,0,0),
(5902,7055,0,0,0,0,0,0),
(5967,7122,0,0,0,0,0,0),
(6023,7175,0,0,0,0,0,0),
(6028,7179,0,0,0,0,0,0),
(6042,7194,0,0,0,0,0,0),
(6043,7195,0,0,0,0,0,0),
(6044,7193,0,0,0,0,0,0),
(6094,7251,0,0,0,0,0,0),
(6162,7315,0,0,0,0,0,0),
(6231,7390,0,0,0,0,0,0),
(6235,7454,0,0,0,0,0,0),
(6321,7514,0,0,0,0,0,0),
(6322,7515,0,0,0,0,0,0),
(6341,7534,0,0,0,0,0,0),
(6381,7574,0,0,0,0,0,0),
(6422,7615,0,0,0,0,0,0),
(6441,7634,0,0,0,0,0,0),
(6442,7707,0,0,0,0,0,0),
(6496,7693,0,0,0,0,0,0),
(6515,7713,0,0,0,0,0,0),
(6519,7720,0,0,0,0,0,0),
(6563,7778,0,0,0,0,0,0),
(6585,7804,0,0,0,0,0,0),
(6586,7803,0,0,0,0,0,0),
(6587,7802,0,0,0,0,0,0),
(6588,7801,0,0,0,0,0,0),
(6597,7818,0,0,0,0,0,0),
(6598,7819,0,0,0,0,0,0),
(6599,7824,0,0,0,0,0,0),
(6602,7829,0,0,0,0,0,0),
(6603,7831,0,0,0,0,0,0),
(6604,7833,0,0,0,0,0,0),
(6605,7835,0,0,0,0,0,0),
(6606,7837,0,0,0,0,0,0),
(6607,7840,0,0,0,0,0,0),
(6608,7843,0,0,0,0,0,0),
(6609,7845,0,0,0,0,0,0),
(6610,7847,0,0,0,0,0,0),
(6612,7851,0,0,0,0,0,0),
(6613,7853,0,0,0,0,0,0),
(6614,7856,0,0,0,0,0,0),
(6615,7859,0,0,0,0,0,0),
(6616,7861,0,0,0,0,0,0),
(6646,7902,0,0,0,0,0,0),
(6658,7916,0,0,0,0,0,0),
(6665,7942,0,0,0,0,0,0),
(6671,8209,0,0,0,0,0,0),
(6672,7944,0,0,0,0,0,0),
(6673,7945,0,0,0,0,0,0),
(6674,7946,0,0,0,0,0,0),
(6675,7947,0,0,0,0,0,0),
(6676,7948,0,0,0,0,0,0),
(6685,7965,0,0,0,0,0,0),
(6696,8070,0,0,0,0,0,0),
(6700,8072,0,0,0,0,0,0),
(6702,8072,0,0,0,0,0,0),
(6704,8070,0,0,0,0,0,0),
(6708,8072,0,0,0,0,0,0),
(6710,8070,0,0,0,0,0,0),
(6712,8072,0,0,0,0,0,0),
(6714,8070,0,0,0,0,0,0),
(6716,8070,0,0,0,0,0,0),
(6718,8070,0,0,0,0,0,0),
(6720,8072,0,0,0,0,0,0),
(6722,8072,0,0,0,0,0,0),
(6724,8070,0,0,0,0,0,0),
(6726,8070,0,0,0,0,0,0),
(6771,8071,0,0,0,0,0,0),
(6772,8082,0,0,0,0,0,0),
(6773,8087,0,0,0,0,0,0),
(6774,8088,0,0,0,0,0,0),
(6775,8089,0,0,0,0,0,0),
(6776,8090,0,0,0,0,0,0),
(6777,8091,0,0,0,0,0,0),
(6785,8101,0,0,0,0,0,0),
(6786,8103,0,0,0,0,0,0),
(6800,8123,0,0,0,0,0,0),
(6801,8124,0,0,0,0,0,0),
(6803,8126,0,0,0,0,0,0),
(6804,8128,0,0,0,0,0,0),
(6805,8129,0,0,0,0,0,0),
(6806,8130,0,0,0,0,0,0),
(6837,8143,0,0,0,0,0,0),
(6944,7778,0,0,0,0,0,0),
(6951,8238,0,0,0,0,0,0),
(7034,8269,0,0,0,0,0,0),
(7071,8333,0,0,0,0,0,0),
(7104,8358,0,0,0,0,0,0),
(7109,8366,0,0,0,0,0,0),
(7149,8413,0,0,0,0,0,0),
(7238,8538,0,0,0,0,0,0),
(7301,8658,0,0,0,0,0,0),
(7306,8672,0,0,0,0,0,0),
(7307,8673,0,0,0,0,0,0),
(7329,8713,0,0,0,0,0,0),
(7331,8715,0,0,0,0,0,0),
(7332,8716,0,0,0,0,0,0),
(7339,8733,0,0,0,0,0,0),
(7341,8750,0,0,0,0,0,0),
(7343,8754,0,0,0,0,0,0),
(7346,8759,0,0,0,0,0,0),
(7350,8770,0,0,0,0,0,0),
(7352,9938,0,0,0,0,0,0),
(7352,9939,0,0,0,0,0,0),
(7352,9944,0,0,0,0,0,0),
(7360,8792,0,0,0,0,0,0),
(7379,8834,0,0,0,0,0,0),
(7385,8964,0,0,0,0,0,0),
(7385,8846,0,0,0,0,0,0),
(7391,8852,0,0,0,0,0,0),
(7393,8854,0,0,0,0,0,0),
(7394,8855,0,0,0,0,0,0),
(7396,8858,0,0,0,0,0,0),
(7419,8961,0,0,0,0,0,0),
(7448,9021,0,0,0,0,0,0),
(7468,9051,0,0,0,0,0,0),
(7469,9052,0,0,0,0,0,0),
(7470,9053,0,0,0,0,0,0),
(7480,9063,0,0,0,0,0,0),
(7488,9074,0,0,0,0,0,0),
(7495,9085,0,0,0,0,0,0),
(7496,9086,0,0,0,0,0,0),
(7497,9051,0,0,0,0,0,0),
(7515,9112,0,0,0,0,0,0),
(7524,9124,0,0,0,0,0,0),
(7525,9125,0,0,0,0,0,0),
(7529,9131,0,0,0,0,0,0),
(7550,9167,0,0,0,0,0,0),
(7559,9176,0,0,0,0,0,0),
(7560,9177,0,0,0,0,0,0),
(7569,9196,0,0,0,0,0,0),
(7571,9199,0,0,0,0,0,0),
(7574,9203,0,0,0,0,0,0),
(7577,9218,0,0,0,0,0,0),
(7596,9243,0,0,0,0,0,0),
(7620,9274,0,0,0,0,0,0),
(7632,9315,0,0,0,0,0,0),
(7690,9384,0,0,0,0,0,0),
(7691,9385,0,0,0,0,0,0),
(7696,9391,0,0,0,0,0,0),
(7706,9410,0,0,0,0,0,0),
(7713,9417,0,0,0,0,0,0),
(7808,9567,0,0,0,0,0,0),
(7815,10846,0,0,0,0,0,0),
(7817,9546,0,0,0,0,0,0),
(7818,9546,0,0,0,0,0,0),
(7826,9575,0,0,0,0,0,0),
(7842,9599,0,0,0,0,0,0),
(7854,9615,0,0,0,0,0,0),
(7861,9625,0,0,0,0,0,0),
(7865,9631,0,0,0,0,0,0),
(7865,9632,0,0,0,0,0,0),
(7879,9546,0,0,0,0,0,0),
(7884,9647,0,0,0,0,0,0),
(7896,9051,0,0,0,0,0,0),
(7939,9935,0,0,0,0,0,0),
(7939,9991,0,0,0,0,0,0),
(7939,10052,0,0,0,0,0,0),
(7947,11947,0,0,0,0,0,0),
(7952,9766,0,0,0,0,0,0),
(7953,9769,0,0,0,0,0,0),
(7954,9770,0,0,0,0,0,0),
(7961,9784,0,0,0,0,0,0),
(7964,9787,0,0,0,0,0,0),
(7970,9801,0,0,0,0,0,0),
(7982,9832,0,0,0,0,0,0),
(8000,9854,0,0,0,0,0,0),
(8050,9942,0,0,0,0,0,0),
(8072,9977,0,0,0,0,0,0),
(8095,10010,0,0,0,0,0,0),
(8096,10010,0,0,0,0,0,0),
(8103,10022,0,0,0,0,0,0),
(8117,10051,0,0,0,0,0,0),
(8125,10063,0,0,0,0,0,0),
(8161,10103,0,0,0,0,0,0),
(8162,10104,0,0,0,0,0,0),
(8163,10105,0,0,0,0,0,0),
(8164,10106,0,0,0,0,0,0),
(8218,10215,0,0,0,0,0,0),
(8220,10216,0,0,0,0,0,0),
(8222,10218,0,0,0,0,0,0),
(8224,10221,0,0,0,0,0,0),
(8241,10253,0,0,0,0,0,0),
(8241,10255,0,0,0,0,0,0),
(8254,10275,0,0,0,0,0,0),
(8377,10452,0,0,0,0,0,0),
(8382,10458,0,0,0,0,0,0),
(8462,10571,0,0,0,0,0,0),
(8533,10675,0,0,0,0,0,0),
(8538,10682,0,0,0,0,0,0),
(8538,10801,0,0,0,0,0,0),
(8539,10683,0,0,0,0,0,0),
(8554,10706,0,0,0,0,0,0),
(8558,7778,0,0,0,0,0,0),
(8569,10745,0,0,0,0,0,0),
(8572,10748,0,0,0,0,0,0),
(8575,10751,0,0,0,0,0,0),
(8578,10755,0,0,0,0,0,0),
(8619,10797,0,0,0,0,0,0),
(8629,10818,0,0,0,0,0,0),
(8661,10889,0,0,0,0,0,0),
(8764,11170,0,0,0,0,0,0),
(8764,11169,0,0,0,0,0,0),
(8764,11167,0,0,0,0,0,0),
(8764,11172,0,0,0,0,0,0),
(8765,11174,0,0,0,0,0,0),
(8765,11175,0,0,0,0,0,0),
(8765,11173,0,0,0,0,0,0),
(8765,11165,0,0,0,0,0,0),
(8766,11181,0,0,0,0,0,0),
(8767,11189,0,0,0,0,0,0),
(8770,11209,0,0,0,0,0,0),
(8771,11210,0,0,0,0,0,0),
(8772,11211,0,0,0,0,0,0),
(8782,11224,0,0,0,0,0,0),
(8783,11226,0,0,0,0,0,0),
(8846,11469,0,0,0,0,0,0),
(8880,11590,0,0,0,0,0,0),
(8891,11645,0,0,0,0,0,0),
(8934,11945,0,0,0,0,0,0),
(8947,12044,0,0,0,0,0,0),
(8948,12046,0,0,0,0,0,0),
(8953,12076,0,0,0,0,0,0),
(8958,12083,0,0,0,0,0,0),
(8988,12134,0,0,0,0,0,0),
(8989,12137,0,0,0,0,0,0),
(8989,12138,0,0,0,0,0,0),
(8994,12152,0,0,0,0,0,0),
(8995,12154,0,0,0,0,0,0),
(8997,12156,0,0,0,0,0,0),
(9025,12195,0,0,0,0,0,0),
(9037,12215,0,0,0,0,0,0),
(9046,12227,0,0,0,0,0,0),
(9089,12288,0,0,0,0,0,0),
(9090,12290,0,0,0,0,0,0),
(9091,12292,0,0,0,0,0,0),
(9092,12289,0,0,0,0,0,0),
(9095,12291,0,0,0,0,0,0),
(9105,12309,0,0,0,0,0,0),
(9106,12314,0,0,0,0,0,0),
(9107,12315,0,0,0,0,0,0),
(9108,12316,0,0,0,0,0,0),
(9109,12317,0,0,0,0,0,0),
(9110,12318,0,0,0,0,0,0),
(9116,12327,0,0,0,0,0,0),
(9117,12328,0,0,0,0,0,0),
(9119,12330,0,0,0,0,0,0),
(9120,12331,0,0,0,0,0,0),
(9121,12332,0,0,0,0,0,0),
(9122,12333,0,0,0,0,0,0),
(9123,12334,0,0,0,0,0,0),
(9205,12507,0,0,0,0,0,0),
(9454,12709,0,0,0,0,0,0),
(9481,12744,0,0,0,0,0,0),
(9558,12873,0,0,0,0,0,0),
(9637,13044,0,0,0,0,0,0),
(9656,13079,0,0,0,0,0,0),
(9726,3173,0,0,0,0,0,0),
(9768,13441,0,0,0,0,0,0),
(9769,13444,0,0,0,0,0,0),
(9780,13458,0,0,0,0,0,0),
(9868,11714,0,0,0,0,0,0),
(10265,3016,0,0,0,0,0,0),
(10364,10652,0,0,0,0,0,0),
(10365,10651,0,0,0,0,0,0),
(2329,3025,0,0,0,0,0,0),
(2350,3039,0,0,0,0,0,0),
(6089,7243,0,0,0,0,0,0),
(6090,7245,0,0,0,0,0,0),
(6091,7247,0,0,0,0,0,0),
(6092,7249,0,0,0,0,0,0),
(7465,9076,0,0,0,0,0,0),
(7481,9051,0,0,0,0,0,0),
(7489,9107,0,0,0,0,0,0),
(7517,9130,0,0,0,0,0,0),
(7531,9134,0,0,0,0,0,0),
(7777,9551,0,0,0,0,0,0),
(7778,9528,0,0,0,0,0,0),
(7779,9529,0,0,0,0,0,0),
(7780,9530,0,0,0,0,0,0),
(7781,9539,0,0,0,0,0,0),
(7782,9545,0,0,0,0,0,0),
(7783,10254,0,0,0,0,0,0),
(7784,9558,0,0,0,0,0,0),
(7785,9565,0,0,0,0,0,0),
(7787,9533,0,0,0,0,0,0),
(7788,9555,0,0,0,0,0,0),
(7789,9534,0,0,0,0,0,0),
(7790,9544,0,0,0,0,0,0),
(7791,9550,0,0,0,0,0,0),
(7792,9553,0,0,0,0,0,0),
(7793,9554,0,0,0,0,0,0),
(7794,9556,0,0,0,0,0,0),
(7795,9562,0,0,0,0,0,0),
(7796,9527,0,0,0,0,0,0),
(7797,9532,0,0,0,0,0,0),
(7798,9535,0,0,0,0,0,0),
(7799,9536,0,0,0,0,0,0),
(7800,9537,0,0,0,0,0,0),
(7801,9538,0,0,0,0,0,0),
(7802,9543,0,0,0,0,0,0),
(7803,9547,0,0,0,0,0,0),
(7804,9549,0,0,0,0,0,0),
(7805,9552,0,0,0,0,0,0),
(7806,9557,0,0,0,0,0,0),
(7807,9559,0,0,0,0,0,0),
(7832,9584,0,0,0,0,0,0),
(8129,10066,0,0,0,0,0,0),
(8130,10067,0,0,0,0,0,0),
(8133,10071,0,0,0,0,0,0),
(8134,10073,0,0,0,0,0,0),
(8135,10074,0,0,0,0,0,0),
(8136,10075,0,0,0,0,0,0),
(8137,10076,0,0,0,0,0,0),
(8138,10087,0,0,0,0,0,0),
(8139,10077,0,0,0,0,0,0),
(8141,10078,0,0,0,0,0,0),
(8142,10081,0,0,0,0,0,0),
(8143,10083,0,0,0,0,0,0),
(8144,10084,0,0,0,0,0,0),
(8145,10085,0,0,0,0,0,0),
(8146,10086,0,0,0,0,0,0),
(8147,10088,0,0,0,0,0,0),
(8148,10089,0,0,0,0,0,0),
(8149,10090,0,0,0,0,0,0),
(8150,10091,0,0,0,0,0,0),
(8151,10092,0,0,0,0,0,0),
(8152,10093,0,0,0,0,0,0),
(8153,10094,0,0,0,0,0,0),
(8154,10095,0,0,0,0,0,0),
(8155,10096,0,0,0,0,0,0),
(8156,10097,0,0,0,0,0,0),
(8157,10098,0,0,0,0,0,0),
(8158,10099,0,0,0,0,0,0),
(8159,10100,0,0,0,0,0,0),
(8399,10501,0,0,0,0,0,0),
(9457,12714,0,0,0,0,0,0),
(9589,12942,0,0,0,0,0,0),
(9605,12976,0,0,0,0,0,0);

delete from gossip_menu_option;

insert  into gossip_menu_option(menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,cond_1,cond_1_val_1,cond_1_val_2,cond_2,cond_2_val_1,cond_2_val_2,cond_3,cond_3_val_1,cond_3_val_2) values 
(0,11,6,'Auction!',13,4096,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,10,9,'I wish to join the battle!',12,2048,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,8,7,'How do I form a guild?',10,512,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,7,6,'I would like to check my deposit box.',9,256,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,6,5,'Make this inn your home.',8,128,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,5,4,'Revive me',7,64,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,4,4,'Return me to life.',6,32,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,3,3,'Train me.',5,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,2,2,'I need a ride.',4,8,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,1,1,'I want to browse your goods.',3,4,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,0,0,'Do quests',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(83,0,4,'Return me to life.',6,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(342,0,0,'Trick or Treat!',1,1,0,0,0,0,0,'',12,12,0,11,24755,0,0,0,0),
(342,2,5,'Make this inn your home.',8,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(342,3,1,'Let me browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(345,2,5,'Make this inn your home.',8,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(345,3,1,'Let me browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(401,0,0,'Druid',1,1,405,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(401,1,0,'Hunter',1,1,408,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(401,2,0,'Mage',1,1,402,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(401,3,0,'Paladin',1,1,407,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(401,4,0,'Priest',1,1,406,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(401,5,0,'Rogue',1,1,403,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(401,6,0,'Shaman',1,1,8164,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(401,7,0,'Warlock',1,1,409,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(401,8,0,'Warrior',1,1,404,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(421,0,0,'Alchemy',1,1,422,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(421,1,0,'Blacksmithing',1,1,423,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(421,2,0,'Cooking',1,1,424,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(421,3,0,'Enchanting',1,1,444,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(421,4,0,'Engineering',1,1,425,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(421,5,0,'First Aid',1,1,426,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(421,6,0,'Fishing',1,1,443,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(421,7,0,'Herbalism',1,1,427,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(421,8,0,'Inscription',1,1,10010,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(421,9,0,'Leatherworking',1,1,428,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(421,10,0,'Mining',1,1,430,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(421,11,0,'Skinning',1,1,431,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(421,12,0,'Tailoring',1,1,432,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,0,0,'Auction House',1,1,3102,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,1,0,'Bank of Stormwind',1,1,265,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,2,0,'Stormwind Harbor',1,1,9767,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,3,0,'Deeprun Tram',1,1,3081,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,4,0,'The Inn',1,1,3126,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,5,0,'Gryphon Master',1,1,382,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,6,0,'Guild Master',1,1,383,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,7,0,'Locksmith',1,1,10260,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,8,0,'Stable Master',1,1,4925,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,9,0,'Weapons Trainer',1,1,3721,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,10,0,'Officers\' Lounge',1,1,5883,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,11,0,'Battlemaster',1,1,8222,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,12,0,'Barber',1,1,10011,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,14,0,'Class Trainer',1,1,401,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,15,0,'Profession Trainer',1,1,421,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(435,13,0,'Lexicon of Power',1,1,10205,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(581,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(593,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(643,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(685,0,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(686,0,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(688,0,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(704,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(704,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(721,0,0,'The bank',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(721,1,0,'The wind rider master',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(721,2,0,'The guild master',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(721,3,0,'The inn',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(721,4,0,'The mailbox',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(721,5,0,'The auction house',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(721,6,0,'The weapon master',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(721,7,0,'The stable master',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(721,8,0,'The battlemaster',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(721,9,0,'A class trainer',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(721,10,0,'A profession trainer',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(721,11,0,'Lexicon of Power',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(721,12,0,'The zeppelin master',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(922,1,0,'Seen any strange things in the desert lately?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(922,2,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(922,3,0,'GOSSIP_OPTION_VENDOR',3,4,0,0,0,0,0,NULL,8,2662,0,0,0,0,0,0,0),
(1291,1,5,'Make this inn your home.',8,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1291,2,0,'What can I do at an inn?',1,1,1221,0,0,0,0,'',13,1048576,0,0,0,0,0,0,0),
(1291,3,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1291,4,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(1291,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,12,12,0,11,24755,0,0,0,0),
(1293,1,5,'Make this inn your home.',8,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1293,2,0,'What can I do at an inn?',1,1,1221,0,0,0,0,'',13,1048576,0,0,0,0,0,0,0),
(1293,3,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1293,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,12,12,0,11,24755,0,0,0,0),
(1296,1,5,'Make this inn your home.',8,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1296,2,1,'Let me browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1296,3,0,'What can I do at an inn?',1,1,1221,0,0,0,0,'',13,1048576,0,0,0,0,0,0,0),
(1296,4,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(1296,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,12,12,0,11,24755,0,0,0,0),
(1297,1,5,'Make this inn your home.',8,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1297,2,1,'Let me browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1297,3,0,'What can I do at an inn?',1,1,1221,0,0,0,0,'',13,1048576,0,0,0,0,0,0,0),
(1297,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,12,12,0,11,24755,0,0,0,0),
(1482,0,0,'Tell me more about these hippogryphs.',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1482,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(1581,2,5,'Make this inn your home.',8,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1581,3,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1581,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,12,12,0,11,24755,0,0,0,0),
(1623,0,6,'I would like to check my deposit box.',9,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1623,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(1624,0,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1721,0,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1781,0,1,'I\'d like to see what you have to sell.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,0,0,'The bank',1,1,1901,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,1,0,'The wind rider master',1,1,1902,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,2,0,'The guild master',1,1,1903,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,3,0,'The inn',1,1,1904,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,4,0,'The mailbox',1,1,1905,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,5,0,'The auction house',1,1,2403,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,6,0,'The zeppelin master',1,1,9727,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,7,0,'The weapon master',1,1,3724,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,8,0,'The stable master',1,1,4902,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,9,0,'The officers\' lounge',1,1,5882,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,10,0,'The battlemaster',1,1,8224,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,11,0,'Barber',1,1,10018,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,12,0,'A class trainer',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,13,0,'A profession trainer',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1951,14,0,'Lexicon of Power',1,1,10205,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1969,0,0,'Where is the zeppelin now?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(1971,0,0,'Where is the zeppelin now?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2101,0,0,'Where is the zeppelin now?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,0,0,'Auction House',1,1,2321,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,1,0,'Bank of Ironforge',1,1,2141,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,2,0,'Deeprun Tram',1,1,3082,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,3,0,'Gryphon Master',1,1,2142,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,4,0,'Guild Master',1,1,2143,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,5,0,'The Inn',1,1,2145,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,6,0,'Mailbox',1,1,2146,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,7,0,'Stable Master',1,1,4927,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,8,0,'Weapons Trainer',1,1,3723,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,9,0,'Battlemaster',1,1,8220,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,10,0,'Barber',1,1,10014,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,11,0,'Class Trainer',1,1,2144,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,12,0,'Profession Trainer',1,1,2168,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2121,13,0,'Lexicon of Power',1,1,10205,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2144,0,0,'Hunter',1,1,2147,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2144,1,0,'Mage',1,1,2148,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2144,2,0,'Paladin',1,1,2150,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2144,3,0,'Priest',1,1,2149,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2144,4,0,'Rogue',1,1,2151,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2144,5,0,'Warlock',1,1,2152,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2144,6,0,'Warrior',1,1,2153,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2144,7,0,'Shaman',1,1,8643,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2168,0,0,'Alchemy',1,1,2161,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2168,1,0,'Blacksmithing',1,1,2162,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2168,2,0,'Cooking',1,1,2163,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2168,3,0,'Enchanting',1,1,2164,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2168,4,0,'Engineering',1,1,2165,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2168,5,0,'First Aid',1,1,2166,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2168,6,0,'Fishing',1,1,2167,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2168,7,0,'Herbalism',1,1,2169,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2168,8,0,'Inscription',1,1,10013,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2168,9,0,'Leatherworking',1,1,2170,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2168,10,0,'Mining',1,1,2172,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2168,11,0,'Skinning',1,1,2173,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2168,12,0,'Tailoring',1,1,2175,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2343,0,0,'Druid',1,1,2328,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2343,1,0,'Hunter',1,1,2327,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2343,2,0,'Priest',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2343,3,0,'Rogue',1,1,2341,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2343,4,0,'Warrior',1,1,2342,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2351,0,0,'Alchemy',1,1,2344,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2351,1,0,'Cooking',1,1,2345,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2351,2,0,'Enchanting',1,1,2347,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2351,3,0,'First Aid',1,1,2348,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2351,4,0,'Fishing',1,1,2349,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2351,5,0,'Herbalism',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2351,6,0,'Inscription',1,1,10015,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2351,7,0,'Leatherworking',1,1,2354,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2351,8,0,'Skinning',1,1,2356,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2351,9,0,'Tailoring',1,1,2358,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2352,0,0,'Auction House',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2352,1,0,'The Bank',1,1,2322,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2352,2,0,'Hippogryph Master',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2352,3,0,'Guild Master',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2352,4,0,'The Inn',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2352,5,0,'Mailbox',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2352,6,0,'Stable Master',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2352,7,0,'Weapons Trainer',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2352,8,0,'Battlemaster',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2352,9,0,'Class Trainer',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2352,10,0,'Profession Trainer',1,1,2351,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2352,11,0,'Lexicon of Power',1,1,10205,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2441,0,0,'Where is the zeppelin now?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2744,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2744,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(2890,1,5,'Make this inn your home.',8,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2890,5,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(2890,2,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(2890,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,12,12,0,11,24755,0,0,0,0),
(3421,0,0,'I need another Argent Dawn Commission.',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3421,1,1,'I would like to buy from you.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3506,0,0,'Bank',1,1,3507,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3506,1,0,'Gryphon Master',1,1,3508,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3506,2,0,'Guild Master',1,1,3509,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3506,3,0,'Inn',1,1,3510,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3506,4,0,'Stable Master',1,1,4924,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3506,5,0,'Class Trainer',1,1,3519,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3506,6,0,'Profession Trainer',1,1,3532,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3519,0,0,'Druid',1,1,3511,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3519,1,0,'Hunter',1,1,3512,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3519,2,0,'Mage',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3519,3,0,'Paladin',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3519,4,0,'Priest',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3519,5,0,'Rogue',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3519,6,0,'Shaman',1,1,8160,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3519,7,0,'Warlock',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3519,8,0,'Warrior',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3532,0,0,'Alchemy',1,1,3520,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3532,1,0,'Blacksmithing',1,1,3521,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3532,2,0,'Cooking',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3532,3,0,'Enchanting',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3532,4,0,'Engineering',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3532,5,0,'First Aid',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3532,6,0,'Fishing',1,1,3526,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3532,7,0,'Herbalism',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3532,8,0,'Inscription',1,1,10010,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3532,9,0,'Leatherworking',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3532,10,0,'Mining',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3532,11,0,'Skinning',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3532,12,0,'Tailoring',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3533,0,0,'Bank',1,1,3534,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3533,1,0,'Gryphon Master',1,1,3535,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3533,2,0,'Guild Master',1,1,3536,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3533,3,0,'The Inn',1,1,3537,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3533,4,0,'Stable Master',1,1,4926,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3533,5,0,'Class Trainer',1,1,3545,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3533,6,0,'Profession Trainer',1,1,3558,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3545,0,0,'Hunter',1,1,3538,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3545,1,0,'Mage',1,1,3539,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3545,2,0,'Paladin',1,1,3540,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3545,3,0,'Priest',1,1,3541,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3545,4,0,'Rogue',1,1,3542,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3545,5,0,'Warlock',1,1,3543,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3545,6,0,'Warrior',1,1,3544,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3558,0,0,'Alchemy',1,1,3546,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3558,1,0,'Blacksmithing',1,1,3547,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3558,2,0,'Cooking',1,1,3548,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3558,3,0,'Enchanting',1,1,3549,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3558,4,0,'Engineering',1,1,3550,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3558,5,0,'First Aid',1,1,3551,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3558,6,0,'Fishing',1,1,3552,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3558,7,0,'Herbalism',1,1,3553,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3558,8,0,'Inscription',1,1,10013,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3558,9,0,'Leatherworking',1,1,3554,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3558,10,0,'Mining',1,1,3555,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3558,11,0,'Skinning\n',1,1,3556,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3558,12,0,'Tailoring',1,1,3557,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3564,0,0,'Druid',1,1,3565,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3564,1,0,'Hunter',1,1,3566,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3564,2,0,'Priest',1,1,3567,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3564,3,0,'Rogue',1,1,3568,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3564,4,0,'Warrior',1,1,3569,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3572,0,0,'Alchemy',1,1,3570,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3572,1,0,'Cooking',1,1,3571,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3572,2,0,'Enchanting',1,1,3573,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3572,3,0,'First Aid',1,1,3574,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3572,4,0,'Fishing',1,1,3575,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3572,5,0,'Herbalism',1,1,3576,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3572,6,0,'Inscription',1,1,10015,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3572,7,0,'Leatherworking',1,1,3577,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3572,8,0,'Skinning',1,1,3578,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3572,9,0,'Tailoring',1,1,3579,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3580,0,0,'The Bank',1,1,3560,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3580,1,0,'Rut\'theran Ferry',1,1,3561,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3580,2,0,'The Guild Master.',1,1,3562,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3580,3,0,'The Inn',1,1,3563,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3580,4,0,'Stable Master',1,1,4923,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3580,5,0,'Class Trainer',1,1,3564,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3580,6,0,'Profession Trainer',1,1,3572,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3841,0,0,'Where is the zeppelin now?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3842,0,0,'Where is the zeppelin now?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4106,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4106,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(4107,0,1,'I would like to buy from you.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4107,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(4123,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4135,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4150,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4163,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4174,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4209,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4281,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4281,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(4282,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4301,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4302,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4302,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(4303,0,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4307,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4307,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(4323,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4323,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(4326,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4342,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4342,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(4360,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4360,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(4485,0,3,'I am interested in mage training.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4485,1,0,'I wish to unlearn my talents.',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4485,2,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(4659,0,3,'Can you train me how to use rogue skills?',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4659,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(4660,0,3,'I am interested in mage training.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4661,0,3,'I am interested in mage training.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4664,0,3,'I would like to train further in the ways of the Light.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4746,0,1,'I wish to browse your goods, Dirge.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4746,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(4822,0,3,'Please teach me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(4826,0,3,'Please teach me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(5270,0,0,'Axe',1,1,8577,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(5270,1,0,'Bow',1,1,8572,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(5270,2,0,'Fist Weapon',1,1,8574,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(5270,3,0,'Gun',1,1,8575,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(5270,4,0,'Mace',1,1,8578,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(5270,5,0,'Thrown',1,1,8582,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(5271,0,3,'I\'d like some weapon training',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(5271,1,0,'What can other weapon masters teach?',1,1,5270,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(5665,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(5853,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(5853,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(5855,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6023,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6162,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6586,0,0,'And what do you say?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6587,0,0,'What do they say?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6588,0,0,'How do you know?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6599,0,0,'What is an Alliance Commendation Signet?',1,1,6700,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6602,0,0,'What is an Alliance Commendation Signet?',1,1,6702,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6603,0,0,'What is an Alliance Commendation Signet?',1,1,6704,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6604,0,0,'What is an Alliance Commendation Signet?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6605,0,0,'What is an Alliance Commendation Signet?',1,1,6708,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6606,0,0,'What is an Alliance Commendation Signet?',1,1,6710,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6607,0,0,'What is an Alliance Commendation Signet?',1,1,6696,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6608,0,0,'What is an Alliance Commendation Signet?',1,1,6712,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6609,0,0,'What is an Alliance Commendation Signet?',1,1,6714,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6610,0,0,'What is an Alliance Commendation Signet?',1,1,6716,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6612,0,0,'What is an Alliance Commendation Signet?',1,1,6718,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6613,0,0,'What is an Alliance Commendation Signet?',1,1,6720,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6614,0,0,'What is an Alliance Commendation Signet?',1,1,6722,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6615,0,0,'What is an Alliance Commendation Signet?',1,1,6724,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6616,0,0,'What is an Alliance Commendation Signet?',1,1,6726,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6665,0,0,'What is the Ahn\'Qiraj war effort?',1,1,6671,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6665,1,0,'How many metal bars have the Horde collected so far?',1,1,6672,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6665,2,0,'How many herbs have the Horde collected so far?',1,1,6673,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6665,3,0,'How many leather skins have the Horde collected so far?',1,1,6674,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6665,4,0,'How many bandages have the Horde collected so far?',1,1,6675,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6665,5,0,'How many cooked goods have the Horde collected so far?',1,1,6676,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6671,0,0,'I want to ask you about something else.',1,1,6665,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6672,0,0,'I want to ask you about something else.',1,1,6665,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6673,0,0,'I want to ask you about something else.',1,1,6665,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6674,0,0,'I want to ask you about something else.',1,1,6665,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6675,0,0,'I want to ask you about something else.',1,1,6665,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6676,0,0,'I want to ask you about something else.',1,1,6665,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6696,0,0,'I want to ask you about something else.',1,1,6607,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6700,0,0,'I want to ask you about something else.',1,1,6599,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6702,0,0,'I want to ask you about something else.',1,1,6602,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6704,0,0,'I want to ask you about something else.',1,1,6603,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6708,0,0,'I want to ask you about something else.',1,1,6605,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6710,0,0,'I want to ask you about something else.',1,1,6606,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6712,0,0,'I want to ask you about something else.',1,1,6608,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6714,0,0,'I want to ask you about something else.',1,1,6609,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6716,0,0,'I want to ask you about something else.',1,1,6610,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6718,0,0,'I want to ask you about something else.',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6720,0,0,'I want to ask you about something else.',1,1,6613,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6722,0,0,'I want to ask you about something else.',1,1,6614,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6724,0,0,'I want to ask you about something else.',1,1,6615,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6726,0,0,'I want to ask you about something else.',1,1,6616,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6771,0,0,'I want to ask you about something else.',1,1,6772,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6772,0,0,'What is the Ahn\'Qiraj war effort?',1,1,6771,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6772,1,0,'How many metal bars have the Alliance collected so far?',1,1,6773,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6772,2,0,'How many herbs have the Alliance collected so far?',1,1,6774,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6772,3,0,'How many leather skins have the Alliance collected so far?',1,1,6775,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6772,4,0,'How many bandages have the Alliance collected so far?',1,1,6776,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6772,5,0,'How many cooked goods have the Alliance collected so far?',1,1,6777,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6773,0,0,'I want to ask you about something else.',1,1,6772,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6774,0,0,'I want to ask you about something else.',1,1,6772,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6775,0,0,'I want to ask you about something else.',1,1,6772,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6776,0,0,'I want to ask you about something else.',1,1,6772,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6777,0,0,'I want to ask you about something else.',1,1,6772,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6944,0,2,'Show me where I can fly.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(6944,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7149,0,2,'Yes, I\'d like to purchase a ride down to the Ghostlands.',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(7149,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7596,0,0,'I\'ve heard your name spoken only in whispers, mage.  Who are you?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(7596,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7690,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(7690,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7691,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(7691,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8462,0,9,'I wish to join the battle!',12,2048,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(8629,0,1,'Let me see the wyverns, Dama.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(8629,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8763,0,0,'Who is the Headless Horseman?',1,1,8880,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(8767,0,0,'Where is the zeppelin to Undercity right now?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(8767,1,0,'Where is the zeppelin to Grom\'gol right now?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9245,0,5,'Make this inn your home.',8,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9245,1,1,'Let me browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9245,3,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9245,2,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,12,12,0,11,24755,0,0,0,0),
(9253,0,0,'What is the cause of this conflict?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9283,0,0,'Who is Malygos?',1,1,9284,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9472,0,0,'I\'d like passage to the Transitus Shield.',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9472,1,2,'May I use a drake to fly elsewhere?',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9472,2,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9495,0,1,'Let me browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9574,0,0,'What should we do next?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9574,1,0,'I want to fly on the wings of the Bronze Flight.',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9574,4,0,'What abilities do Amber Drakes have?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9586,0,0,'Why have I been sent back to this particular place and time?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9594,0,0,'What was this decision?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9595,0,0,'So how does the Infinite Dragonflight plan to interfere?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9626,0,0,'Teleport me to Amber Ledge, please.',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9683,0,2,'Do you think I could take a ride on one of those flying machines?',4,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9691,0,3,'I seek training, Lady Alistra.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9691,1,0,'I wish to unlearn my talents.',16,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9692,0,3,'I seek training, Lord Thorval.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9692,1,0,'I wish to unlearn my talents.',16,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9693,0,3,'I seek training, Amal\'thazad.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9693,1,0,'I wish to unlearn my talents.',16,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9708,0,0,'So where do we go from here?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9727,0,0,'The eastern zeppelin tower',1,1,2481,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9727,1,0,'The western zeppelin tower',1,1,9726,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9733,1,5,'Make this inn your home.',8,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9733,2,1,'Let me browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9733,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,12,12,0,11,24755,0,0,0,0),
(9739,0,0,'Salanar, I must return to the Realm of Shadows.',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9754,0,0,'Noth, where is Heigan?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9765,0,0,'I challenge you, death knight!',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9768,0,0,'I would like to whisper my secret code to you to receive Tyrael\'s Hilt.',1,1,0,0,0,1,0,'',0,0,0,0,0,0,0,0,0),
(9795,0,0,'I am ready, Highlord. Let the siege of Light\'s Hope begin!',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9833,0,3,'Train me.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9833,1,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9833,2,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9868,1,5,'Make this inn your home.',8,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9868,2,1,'Let me browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(9868,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,12,12,0,11,24755,0,0,0,0),
(10025,2,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(10027,0,3,'I require training, Highlord.',5,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,0,0,'Arena',1,1,10057,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,1,0,'Auction House',1,1,10092,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,2,0,'Bank',1,1,10089,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,3,0,'Barber',1,1,10085,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,4,0,'Battlemasters',1,1,10058,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,5,0,'Capital Portals',1,1,10058,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,6,0,'Flight Master',1,1,10086,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,7,0,'Guild Master',1,1,10095,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,8,0,'Inn',1,1,10084,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,9,0,'Locksmith',1,1,10262,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,10,0,'Mailbox',1,1,14008,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,11,0,'Points of Interest',1,1,10056,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,12,0,'Stable Master',1,1,10083,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,13,0,'Trainers',1,1,10082,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10043,14,0,'Vendors',1,1,10173,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10055,0,0,'Eastern Sewer Entrance',1,1,10045,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10055,1,0,'Western Sewer Entrance',1,1,10044,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10055,2,0,'Well Entrance',1,1,10050,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10056,0,0,'The Alliance Quarter',1,1,10054,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10056,1,0,'The Horde Quarter',1,1,10053,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10056,2,0,'The Violet Citadel',1,1,10052,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10056,3,0,'The Violet Hold',1,1,10051,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10056,4,0,'Sewers',1,1,10055,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10056,5,0,'Trade District',1,1,10062,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10056,6,0,'Krasus\' Landing',1,1,10091,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10056,7,0,'Antonidas Memorial',1,1,10049,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10056,8,0,'Runeweaver Square',1,1,10048,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10056,9,0,'The Eventide',1,1,10047,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10056,10,0,'Cemetery',1,1,10046,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10056,11,0,'Lexicon of Power',1,1,10205,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10057,0,0,'Eastern Sewer Entrance',1,1,10045,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10057,1,0,'Western Sewer Entrance',1,1,10044,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10057,2,0,'Well Entrance',1,1,10050,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10058,0,0,'The Alliance Quarter',1,1,10054,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10058,1,0,'The Horde Quarter',1,1,10053,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10073,0,0,'Alliance Inn',1,1,10074,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10073,1,0,'Horde Inn',1,1,10075,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,0,0,'Alchemy',1,1,10077,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,1,0,'Blacksmithing',1,1,10076,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,2,0,'Cooking',1,1,10073,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,3,0,'Enchanting',1,1,10072,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,4,0,'Engineering',1,1,10071,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,5,0,'First Aid',1,1,10070,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,6,0,'Fishing',1,1,10069,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,7,0,'Herbalism',1,1,10068,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,8,0,'Inscription',1,1,10067,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,9,0,'Jewelcrafting',1,1,10066,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,10,0,'Leatherworking',1,1,10064,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,11,0,'Mining',1,1,10065,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,12,0,'Skinning',1,1,10064,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10078,13,0,'Tailoring',1,1,10063,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10082,1,0,'Class Trainer',1,1,10097,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10082,2,0,'Cold Weather Flying Trainer',1,1,10080,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10082,3,0,'Portal Trainer',1,1,10081,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10082,4,0,'Profession Trainer',1,1,10078,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10084,0,0,'Alliance Inn',1,1,10074,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10084,1,0,'Horde Inn',1,1,10075,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10084,2,0,'Sewers',1,1,10055,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10089,0,0,'Northern Bank',1,1,10088,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10089,1,0,'Southern Bank',1,1,10087,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10089,2,0,'Sewers',1,1,10055,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10090,0,0,'Inn',1,1,10084,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10090,1,0,'Bank',1,1,10089,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10090,2,0,'Krasus\' Landing',1,1,10091,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10092,0,0,'The Alliance Quarter',1,1,10054,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10092,1,0,'The Horde Quarter',1,1,10053,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10097,0,0,'The Alliance Quarter',1,1,10054,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10097,1,0,'The Horde Quarter',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10153,0,0,'Profession Trainer',1,1,10078,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10160,0,0,'The Alliance Quarter',1,1,10054,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10160,1,0,'The Horde Quarter',1,1,10053,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10168,0,0,'Melee Weapons',1,1,10151,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10168,1,0,'Ranged & Thrown Weapons',1,1,10150,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10168,2,0,'Staves & Wands',1,1,10149,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10170,0,0,'Cloth Armor',1,1,10166,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10170,1,0,'Leather Armor',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10170,2,0,'Mail Armor',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10170,3,0,'Plate Armor',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10170,4,0,'Shields',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,0,0,'Armor',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,1,0,'Clothing',1,1,10167,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,2,0,'Emblem Gear',1,1,10160,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,3,0,'Flowers',1,1,10159,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,4,0,'Fruit',1,1,10158,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,5,0,'General Goods',1,1,10157,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,6,0,'Jewelry',1,1,10169,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,7,0,'Pet Supplies & Exotic Mounts',1,1,10155,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,8,0,'Pie, Pastry & Cakes',1,1,10154,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,9,0,'Reagents & Magical Goods',1,1,10156,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,10,0,'Toys',1,1,10152,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,11,0,'Trade Supplies',1,1,10153,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,12,0,'Trinkets, Relics & Off-hand Items',1,1,10162,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,13,0,'Weapons',1,1,10168,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10173,14,0,'Wine & Cheese',1,1,10148,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10179,0,0,'Alexstrasza, can you show me what happened here?',1,1,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10265,0,0,'Auction House',1,1,3101,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10265,1,0,'The Bank',1,1,2322,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10265,2,0,'Hippogryph Master',1,1,10266,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10265,3,0,'Guild Master',1,1,2324,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10265,4,0,'The Inn',1,1,2325,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10265,5,0,'Mailbox',1,1,2326,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10265,6,0,'Stable Master',1,1,4921,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10265,7,0,'Weapons Trainer',1,1,3722,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10265,8,0,'Battlemaster',1,1,8221,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10265,9,0,'Class Trainer',1,1,2343,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10265,10,0,'Profession Trainer',1,1,2351,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(10265,11,0,'Lexicon of Power',1,1,10205,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(0,12,0,'I\'d like to stable my pet here.',14,8192,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(20000,1,1,'Let me browse your goods.',3,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(20000,2,1,'GOSSIP_OPTION_ARMORER',15,4096,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0),
(3185,1,1,'I would like to buy from you.',3,4,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(3185,2,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(3624,0,0,'What about the Winterfall furbolg?',1,1,3623,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(3624,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7469,0,2,'I desire to travel by hippogryph.',4,8,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7469,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7470,0,2,'I wish to travel by hippogryph.',4,8,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7470,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7481,1,5,'Make this inn your home.',8,128,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7481,2,1,'I want to browse your goods.',3,4,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7481,3,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7777,0,0,'Auction House',1,1,7778,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7777,1,0,'The Bank',1,1,7779,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7777,2,0,'Hippogryph Master',1,1,7780,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7777,3,0,'Guild Master',1,1,7781,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7777,4,0,'The Inn',1,1,7782,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7777,5,0,'Mailbox',1,1,7783,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7777,6,0,'Stable Master',1,1,7784,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7777,7,0,'Weapon Master',1,1,7785,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7777,8,0,'Battlemasters',1,1,7786,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7777,9,0,'Class Trainer',1,1,7787,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7777,10,0,'Profession Trainer',1,1,7788,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7787,0,0,'Druid',1,1,7789,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7787,1,0,'Hunter',1,1,7790,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7787,2,0,'Mage',1,1,7791,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7787,3,0,'Paladin',1,1,7792,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7787,4,0,'Priest',1,1,7793,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7787,5,0,'Shaman',1,1,7794,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7787,6,0,'Warrior',1,1,7795,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,0,0,'Alchemy',1,1,7796,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,1,0,'Blacksmithing',1,1,7797,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,2,0,'Enchanting',1,1,7798,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,3,0,'Engineering',1,1,7799,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,4,0,'First Aid',1,1,7800,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,5,0,'Fishing',1,1,7801,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,6,0,'Herbalism',1,1,7802,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,7,0,'Inscription',1,1,10016,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,8,0,'Jewelcrafting',1,1,7803,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,9,0,'Leatherworking',1,1,7804,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,10,0,'Mining',1,1,7805,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,11,0,'Skinning',1,1,7806,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,12,0,'Tailoring',1,1,7807,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(7788,13,0,'Cooking',1,1,8399,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8129,0,0,'Bank',1,1,8130,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8129,1,0,'Hippogryph Master',1,1,8133,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8129,2,0,'Guild Master',1,1,8134,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8129,3,0,'Inn',1,1,8135,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8129,4,0,'Stable Master',1,1,8136,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8129,5,0,'Class Trainer',1,1,8137,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8129,6,0,'Profession Trainer',1,1,8138,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8137,0,0,'Druid',1,1,8139,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8137,1,0,'Hunter',1,1,8141,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8137,2,0,'Mage',1,1,8142,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8137,3,0,'Paladin',1,1,8143,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8137,4,0,'Priest',1,1,8144,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8137,5,0,'Shaman',1,1,8145,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8137,6,0,'Warrior',1,1,8146,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,0,0,'Alchemy',1,1,8147,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,1,0,'Blacksmithing',1,1,8148,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,2,0,'Cooking',1,1,8149,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,3,0,'Enchanting',1,1,8150,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,4,0,'Engineering',1,1,8151,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,5,0,'First Aid',1,1,8152,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,6,0,'Fishing',1,1,8153,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,7,0,'Herbalism',1,1,8154,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,8,0,'Inscription',1,1,10016,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,9,0,'Jewelcrafting',1,1,8159,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,10,0,'Leatherworking',1,1,8155,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,11,0,'Mining',1,1,8156,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,12,0,'Skinning',1,1,8157,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8138,13,0,'Tailoring',1,1,8158,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8982,0,0,'Um... what was that?',1,1,8983,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(8982,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9457,0,0,'Yes, please, I would like to return to the ground level of the temple.',1,1,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9457,1,0,'I would like to go to Lord Afrasastrasz in the middle of the temple.',1,1,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,13,1,'GOSSIP_OPTION_ARMORER',15,16384,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9498,1,5,'Make this inn your home.',8,128,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9498,2,1,'I would like to browse your goods, Illusia.',3,4,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9763,1,5,'Make this inn your home.',8,128,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9763,2,1,'Let me browse your goods.',3,4,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9804,0,1,'Show me what you have for sale.',3,4,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9804,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9873,0,3,'Train me.',5,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9873,1,1,'May I browse your epic gem recipes?',3,4,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9873,2,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9997,0,0,'Activate the crystals when we get in trouble, right.',1,1,9998,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(9998,0,0,'Get your people to safety, we\'ll keep the Blue Dragonflight\'s forces at bay.',1,1,10275,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(10275,0,0,'I\'m not fighting, so send me in now!',1,1,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(10614,0,0,'I am ready.',1,1,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(10723,0,3,'I seek training to ride a steed.',5,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(10723,1,1,'Let me browse your goods.',3,4,0,0,0,0,0,NULL,15,60,1,0,0,0,0,0,0),
(10845,0,0,'I believe in you.',1,1,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(10929,0,0,'I have a rocket here with your mark on it, Snivel.',1,1,10945,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(10945,0,0,'There\'s a chemical inside the rocket. What is it?',1,1,10946,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,14,2,'I wish to unlearn my talents.',16,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,15,2,'I wish to unlearn my pet\'s skills.',17,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(10948,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(10976,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,9,8,'I want to create a guild crest.',11,1024,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0);


-- POI

delete from points_of_interest;
insert  into points_of_interest(entry,x,y,icon,flags,data,icon_name) values 
(1,-9459,42.0805,7,99,0,'Lion\'s Pride Inn'),
(2,-9471,33.4441,7,99,0,'Zaldimar Wefhellt'),
(3,-9469,108.053,7,99,0,'Brother Wilhelm'),
(4,-9461,32.996,7,99,0,'Priestess Josetta'),
(5,-9465,13.2936,7,99,0,'Keryn Sylvius'),
(6,-9473,-4.08464,7,99,0,'Maximillian Crowe'),
(7,-9461,109.505,7,99,0,'Lyria Du Lac'),
(8,-9057,153.637,7,99,0,'Alchemist Mallory'),
(9,-9456,87.9022,7,99,0,'Smith Argus'),
(10,-9467,-3.16732,7,99,0,'Tomas'),
(11,-9456,30.4947,7,99,0,'Michelle Belle'),
(12,-9386,-118.731,7,99,0,'Lee Brown'),
(13,-8851,856.599,7,99,0,'Stormwind Inscription'),
(14,-9376,-75.2306,7,99,0,'Adele Fielder'),
(15,-9381,-70.1127,7,99,0,'Helene Peltskinner'),
(16,-9536,-1212.76,7,99,0,'Eldrin'),
(17,-9466,45.8709,7,99,0,'Erma'),
(18,-8812,666.354,7,99,0,'Stormwind Auction House'),
(19,-8885,640.052,7,99,0,'Stormwind Bank'),
(20,-8573,990.095,7,0,0,'Stormwind Harbor'),
(21,-8387,565.012,7,99,0,'The Deeprun Tram'),
(22,-8867,673.634,7,99,0,'The Gilded Rose'),
(23,-8839,487.546,7,99,0,'Stormwind Gryphon Master'),
(24,-8886,595.38,7,99,0,'Stormwind Visitor\'s Center'),
(25,-8425,627.621,7,39,0,'Stormwind Locksmith'),
(26,-8432,555.121,7,99,0,'Jenova Stoneshield'),
(27,-8796,613.098,7,99,0,'Woo Ping'),
(28,-8762,401.972,7,99,0,'Champions\' Hall'),
(29,-8392,272.087,7,99,0,'Battlemasters Stormwind'),
(30,-8755,657.7,7,99,0,'Stormwind Barber'),
(31,-8851,856.599,7,99,0,'Stormwind Inscription'),
(32,-8749,1075.78,7,99,0,'The Park'),
(33,-8430,559.87,7,99,0,'Hunter Lodge'),
(34,-9008,857.193,7,99,0,'Wizard\'s Sanctum'),
(35,-8621,777.189,7,99,0,'Cathedral Of Light'),
(36,-8782,353.099,7,99,0,'Stormwind - Rogue House'),
(37,-9031,549.835,7,99,0,'Farseer Umbrua'),
(38,-8938,986.894,7,99,0,'The Slaughtered Lamb'),
(39,-8714,342.761,7,99,0,'Stormwind Barracks'),
(40,-8975,778.865,7,99,0,'Alchemy Needs'),
(41,-8433,610.413,7,99,0,'Therum Deepforge'),
(42,-8641,423.502,7,99,0,'Pig and Whistle Tavern'),
(43,-8838,782.35,7,99,0,'Lucan Cordell'),
(44,-8348,640.412,7,99,0,'Lilliam Sparkspindle'),
(45,-8515,804.505,7,99,0,'Shaina Fuller'),
(46,-8793,741.886,7,99,0,'Arnold Leland'),
(47,-8707,462.037,7,99,0,'The Protective Hide'),
(48,-8416,672.791,7,99,0,'Gelman Stonehand'),
(49,-8940,771.346,7,99,0,'Duncan\'s Textiles'),
(50,-4957,-911.604,7,99,0,'Ironforge Auction House'),
(51,-4891,-991.48,7,99,0,'The Vault'),
(52,-4835,-1294.7,7,99,0,'Deeprun Tram'),
(53,-4821,-1152.3,7,99,0,'Ironforge Gryphon Master'),
(54,-5021,-996.453,7,99,0,'Ironforge Visitor\'s Center'),
(55,-4850,-872.571,7,99,0,'Stonefire Tavern'),
(56,-4845,-880.552,7,99,0,'Ironforge Mailbox'),
(57,-5010,-1262.03,7,99,0,'Ulbrek Firehand'),
(58,-5040,-1201.88,7,99,0,'Bixi and Buliwyf'),
(59,-5042,-1269.78,7,99,0,'Battlemasters Ironforge'),
(60,-4839,-917.295,7,99,0,'Ironforge Barber'),
(61,-5023,-1253.68,7,99,0,'Hall of Arms'),
(62,-4627,-926.459,7,99,0,'Hall of Mysteries'),
(63,-4647,-1124,7,99,0,'Ironforge Rogue Trainer'),
(64,-4605,-1110.46,7,99,0,'Ironforge Warlock Trainer'),
(65,-4722,-1151.39,7,99,0,'Ironforge Shaman Trainer'),
(66,-4858,-1241.84,7,99,0,'Berryfizz\'s Potions and Mixed Drinks'),
(67,-4796,-1110.17,7,99,0,'The Great Forge'),
(68,-4767,-1184.6,7,99,0,'The Bronze Kettle'),
(69,-4803,-1196.53,7,99,0,'Thistlefuzz Arcanery'),
(70,-4881,-1153.13,7,99,0,'Ironforge Physician'),
(71,-4597,-1091.93,7,99,0,'Traveling Fisherman'),
(72,-4801,-1189.09,7,99,0,'Ironforge Inscription'),
(73,-4745,-1027.58,7,99,0,'Finespindle\'s Leather Goods'),
(74,-4705,-1116.43,7,99,0,'Deepmountain Mining Guild'),
(75,-4719,-1056.97,7,99,0,'Stonebrow\'s Clothier'),
(76,-5584,-510.862,7,99,0,'Thunderbrew Distillery'),
(77,-5606,-513.008,7,99,0,'Shelby Stoneflint'),
(78,-5618,-453.72,7,99,0,'Grif Wildheart'),
(79,-5587,-539.037,7,99,0,'Magis Sparkmantle'),
(80,-5584,-542.492,7,99,0,'Azar Stronghammer'),
(81,-5589,-530.288,7,99,0,'Maxan Anvol'),
(82,-5604,-540.089,7,99,0,'Hogral Bakkan'),
(83,-5639,-528.501,7,99,0,'Gimrizz Shadowcog'),
(84,-5605,-530.145,7,99,0,'Granis Swiftaxe'),
(85,-5582,-430.441,7,99,0,'Tognus Flintfire'),
(86,-5594,-544.573,7,99,0,'Gremlock Pilsnor'),
(87,-5604,-521.037,7,99,0,'Thamner Pol'),
(88,-5198,53.3649,7,99,0,'Paxton Ganter'),
(89,9862,2339.19,7,99,0,'Darnassus Auction House'),
(90,9938,2512.35,7,99,0,'Darnassus Bank'),
(91,8645,835.104,7,99,0,'Darnassus Hippogryph Master'),
(92,10076,2199.59,7,99,0,'Darnassus Guild Master'),
(93,10133,2222.52,7,99,0,'Darnassus Inn'),
(94,9942,2495.49,7,99,0,'Darnassus Mailbox'),
(95,10167,2522.67,7,99,0,'Alassin'),
(96,9907,2329.71,7,99,0,'Ilyenia Moonfire'),
(97,9982,2319.79,7,99,0,'Battlemasters Darnassus'),
(98,10186,2570.47,7,99,0,'Darnassus Druid Trainer'),
(99,10177,2511.1,7,99,0,'Darnassus Hunter Trainer'),
(100,10122,2599.13,7,99,0,'Darnassus Rogue Trainer'),
(101,9951,2280.39,7,99,0,'Warrior\'s Terrace'),
(102,10075,2356.76,7,99,0,'Darnassus Alchemy Trainer'),
(103,10088,2419.22,7,99,0,'Darnassus Cooking Trainer'),
(104,10146,2313.43,7,99,0,'Darnassus Enchanting Trainer'),
(105,10150,2390.44,7,99,0,'Darnassus First Aid Trainer'),
(106,9836,2432.18,7,99,0,'Darnassus Fishing Trainer'),
(107,10131,2323.74,7,99,0,'Darnassus Inscription'),
(108,10086,2255.77,7,99,0,'Darnassus Leatherworking Trainer'),
(109,10081,2257.19,7,99,0,'Darnassus Skinning Trainer'),
(110,10079,2268.2,7,99,0,'Darnassus Tailor'),
(111,9821,960.138,7,99,0,'Dolanaar Inn'),
(112,9808,931.106,7,99,0,'Seriadne'),
(113,9741,963.705,7,99,0,'Kal'),
(114,9815,926.283,7,99,0,'Dazalar'),
(115,9906,986.636,7,99,0,'Laurna Morninglight'),
(116,9789,942.865,7,99,0,'Jannok Breezesong'),
(117,9821,950.616,7,99,0,'Kyra Windblade'),
(118,9767,878.817,7,99,0,'Cyndra Kindwhisper'),
(119,9751,906.132,7,99,0,'Zarrin'),
(120,10677,1946.56,7,99,0,'Alanna Raveneye'),
(121,9903,999.095,7,99,0,'Byancie'),
(122,9773,875.884,7,99,0,'Malorne Bladeleaf'),
(123,10152,1681.47,7,99,0,'Nadyia Maneweaver'),
(124,10135,1673.18,7,99,0,'Radnaal Maneweaver'),
(125,10152,1681.47,7,99,0,'Nadyia Maneweaver'),
(126,5802,552.28,7,99,0,'Dalaran Eastern Sewer Entrance'),
(127,5816,760.085,7,99,0,'Dalaran Western Sewer Entrance'),
(128,5879,652.782,7,99,0,'Dalaran Well'),
(129,5758,715.641,7,99,0,'Dalaran Silver Enclave'),
(130,5857,595.421,7,99,0,'Dalaran Sunreaver\'s Sanctuary'),
(131,5966,613.917,7,99,0,'Dalaran Northern Bank'),
(132,5640,687.532,7,99,0,'Dalaran Southern Bank'),
(133,5889,622.227,7,99,0,'Dalaran Barber'),
(134,5813,449.107,7,99,0,'Dalaran Flight Master'),
(135,5756,620.785,7,99,0,'Dalaran Visitor Center'),
(136,5848,636.675,7,99,0,'Dalaran Inn'),
(137,5731,678.199,7,99,0,'Dalaran Alliance Inn'),
(138,5885,521.776,7,99,0,'Dalaran Horde Inn'),
(139,5934,575.626,7,99,0,'Dalaran Locksmith'),
(140,5831,508.617,7,99,0,'Dalaran Krasus\' Landing'),
(141,5797,794.906,7,99,0,'Dalaran Violet Citadel'),
(142,5691,500.56,7,99,0,'Dalaran Violet Hold'),
(143,5899,728.851,7,99,0,'Dalaran Trade District'),
(144,5952,674.611,7,99,0,'Dalaran Antonidas Memorial'),
(145,5804,639.554,7,99,0,'Dalaran Runeweaver Square'),
(146,5710,645.397,7,99,0,'Dalaran Eventide'),
(147,5851,766.287,7,99,0,'Dalaran Cemetary'),
(148,5860,702.517,7,99,0,'Dalaran Inscription Trainer'),
(149,5859,557.745,7,99,0,'Dalaran Stable Master'),
(150,5808,581.308,7,99,0,'Dalaran Mage Trainer'),
(151,5890,704.071,7,99,0,'Dalaran Alchemy Trainer'),
(152,5904,680.889,7,99,0,'Dalaran Blacksmithing Trainer'),
(153,5837,722.8,7,99,0,'Dalaran Enchanting Trainer'),
(154,5920,728.168,7,99,0,'Dalaran Engineering Trainer'),
(155,5862,743.351,7,99,0,'Dalaran First Aid Trainer'),
(156,5704,613.969,7,99,0,'Dalaran Fishing Fountain'),
(157,5875,691.28,7,99,0,'Dalaran Herbalism Trainer'),
(158,5873,721.729,7,99,0,'Dalaran Jewelcrafting Trainer'),
(159,5903,750.206,7,99,0,'Dalaran Leatherworking Trainer'),
(160,5919,709.664,7,99,0,'Dalaran Mining Trainer'),
(161,5903,750.314,7,99,0,'Dalaran Skinning Trainer'),
(162,5882,745.847,7,99,0,'Dalaran Tailoring Trainer'),
(163,5790,689.124,7,99,0,'Dalaran Cloth Armor & Clothing'),
(164,5773,576.271,7,99,0,'Dalaran Flowers'),
(165,5750,695.409,7,99,0,'Dalaran Fruit Vendor'),
(166,5684,617.319,7,99,0,'Dalaran General & Trade Store'),
(167,5847,567.15,7,99,0,'Dalaran Pet Store'),
(168,5906,628.194,7,99,0,'Dalaran Pie, Pastry & Cake'),
(169,5765,734.329,7,99,0,'Dalaran Reagents'),
(170,5814,690.78,7,99,0,'Dalaran Toy Store'),
(171,5752,645.427,7,99,0,'Dalaran Trinkets'),
(172,5727,603.694,7,99,0,'Dalaran Melee Weapons'),
(173,5780,558.349,7,99,0,'Dalaran Ranged Weapons'),
(174,5667,645.391,7,99,0,'Dalaran Staves & Wands'),
(175,5884,608.281,7,99,0,'Dalaran Wine & Cheese'),
(176,1631,-4375.33,7,99,0,'Bank of Orgrimmar'),
(177,1676,-4332.72,7,99,0,'The Sky Tower'),
(178,1576,-4294.75,7,99,0,'Horde Embassy'),
(179,1644,-4447.28,7,99,0,'Orgrimmar Inn'),
(180,1622,-4388.8,7,99,0,'Orgrimmar Mailbox'),
(181,1679,-4450.11,7,99,0,'Orgrimmar Auction House'),
(182,1337,-4632.7,7,99,0,'Orgrimmar Eastern Zeppelin Tower'),
(183,1172,-4169.5,7,99,0,'Orgrimmar Western Zeppelin Tower'),
(184,2092,-4823.95,7,99,0,'Sayoc & Hanashi'),
(185,2133,-4663.93,7,99,0,'Xon\'cha'),
(186,1633,-4249.37,7,99,0,'Hall of Legends'),
(187,1989,-4796.6,7,99,0,'Battlemasters Orgrimmar'),
(188,1764,-4343.83,7,99,0,'Orgrimmar Barber'),
(189,1842,-4477.72,7,99,0,'Orgrimmar Inscription'),
(190,-4020,-11733.5,7,99,0,'Exodar, Auctioneer'),
(191,-3918,-11550.1,7,99,0,'Exodar, bank'),
(192,-4053,-11787.7,7,99,0,'Exodar, Hippogryph Master'),
(193,-4099,-11630,7,99,0,'Exodar, Guild Master'),
(194,-3761,-11696.2,7,99,0,'Exodar, Inn'),
(195,-3913,-11607.6,7,99,0,'Exodar, Mailbox'),
(196,-3792,-11703.7,7,99,0,'Exodar, Stable Master'),
(197,-4214,-11630,7,99,0,'Exodar, Weapon Master'),
(198,-4272,-11495.5,7,99,0,'Exodar, Druid Trainer'),
(199,-4239,-11558.2,7,99,0,'Exodar, Hunter Trainers'),
(200,-4048,-11559.9,7,99,0,'Exodar, Mage Trainers'),
(201,-4178,-11477,7,99,0,'Exodar, Paladin Trainers'),
(202,-3975,-11486.1,7,99,0,'Exodar, Priest Trainers'),
(203,-3848,-11392.7,7,99,0,'Exodar, Shaman Trainer'),
(204,-4194,-11649.1,7,99,0,'Exodar, Warrior Trainers'),
(205,-4043,-11364.8,7,99,0,'Exodar, Alchemist Trainers'),
(206,-4241,-11713.5,7,99,0,'Exodar, Blacksmithing Trainers'),
(207,-3887,-11493.7,7,99,0,'Exodar, Enchanters'),
(208,-4259,-11643.8,7,99,0,'Exodar, Engineering'),
(209,-3766,-11477.7,7,99,0,'Exodar, First Aid Trainer'),
(210,-3726,-11387.1,7,99,0,'Exodar, Fishing Trainer'),
(211,-4050,-11360,7,99,0,'Exodar, Herbalist Trainer'),
(212,-3887,-11485,7,99,0,'Exodar Inscription'),
(213,-3785,-11544,7,99,0,'Exodar, Jewelcrafters'),
(214,-4138,-11768.5,7,99,0,'Exodar, Leatherworking'),
(215,-4223,-11694.7,7,99,0,'Exodar, Mining Trainers'),
(216,-4137,-11761.8,7,99,0,'Exodar, Skinning Trainer'),
(217,-4092,-11743.8,7,99,0,'Exodar, Tailors'),
(218,-3798,-11654.5,7,99,0,'Exodar, Cook'),
(219,-4127,-12467.4,7,583,0,'Azure Watch, Innkeeper'),
(220,-4146,-12492.7,7,583,0,'Azure Watch, Stable Master'),
(221,-4203,-12526.5,7,583,0,'Azure Watch, Hunter Trainer'),
(222,-4149,-12530,7,583,0,'Azure Watch, Mage Trainer'),
(223,-4138,-12468.5,7,583,0,'Azure Watch, Paladin Trainer'),
(224,-4131,-12478.7,7,583,0,'Azure Watch, Priest Trainer'),
(225,-4162,-12456,7,583,0,'Azure Watch, Shaman Trainer'),
(226,-4165,-12536.4,7,583,0,'Azure Watch, Warrior Trainer'),
(227,-4191,-12469.6,7,583,0,'Azure Watch, Alchemist'),
(228,-4726,-12386.9,7,583,0,'Odesyus\' Landing, Blacksmith'),
(229,-4708,-12400.1,7,583,0,'Odesyus\' Landing, Cook'),
(230,-4157,-12470.4,7,583,0,'Azure Watch, Engineering Trainer'),
(231,-4199,-12469.9,7,583,0,'Azure Watch, First Aid Trainer'),
(232,-4266,-12985.4,7,583,0,'Ammen Ford, Fisherwoman'),
(233,-4189,-12459.5,7,583,0,'Azure Watch, Herbalist'),
(234,-3442,-12322.4,7,583,0,'Stillpine Hold, Leatherworker'),
(235,-4179,-12493.1,7,583,0,'Azure Watch, Mining Trainer'),
(236,-3431,-12316.5,7,583,0,'Stillpine Hold, Skinner'),
(237,-4711,-12386.7,7,583,0,'Odesyus\' Landing, Tailor');


-- missing values for npc_gossip

insert ignore into npc_gossip (npc_guid, textid) values(79862,9063);
insert ignore into npc_gossip (npc_guid, textid) values(52416,7395);
insert ignore into npc_gossip (npc_guid, textid) values(56625,7390);
insert ignore into npc_gossip (npc_guid, textid) values(8219,823);
insert ignore into npc_gossip (npc_guid, textid) values(87045,580);
insert ignore into npc_gossip (npc_guid, textid) values(29802,580);
insert ignore into npc_gossip (npc_guid, textid) values(7716,580);
insert ignore into npc_gossip (npc_guid, textid) values(9386,580);
insert ignore into npc_gossip (npc_guid, textid) values(40519,580);
insert ignore into npc_gossip (npc_guid, textid) values(40520,580);
insert ignore into npc_gossip (npc_guid, textid) values(40521,580);
insert ignore into npc_gossip (npc_guid, textid) values(40522,580);
insert ignore into npc_gossip (npc_guid, textid) values(40523,580);
insert ignore into npc_gossip (npc_guid, textid) values(40524,580);
insert ignore into npc_gossip (npc_guid, textid) values(40525,580);
insert ignore into npc_gossip (npc_guid, textid) values(40528,580);
insert ignore into npc_gossip (npc_guid, textid) values(40529,580);
insert ignore into npc_gossip (npc_guid, textid) values(40533,580);
insert ignore into npc_gossip (npc_guid, textid) values(40535,580);
insert ignore into npc_gossip (npc_guid, textid) values(40536,580);
insert ignore into npc_gossip (npc_guid, textid) values(40537,580);
insert ignore into npc_gossip (npc_guid, textid) values(40538,580);
insert ignore into npc_gossip (npc_guid, textid) values(40539,580);
insert ignore into npc_gossip (npc_guid, textid) values(40540,580);
insert ignore into npc_gossip (npc_guid, textid) values(40541,580);
insert ignore into npc_gossip (npc_guid, textid) values(40542,580);
insert ignore into npc_gossip (npc_guid, textid) values(40543,580);
insert ignore into npc_gossip (npc_guid, textid) values(40544,580);
insert ignore into npc_gossip (npc_guid, textid) values(40545,580);
insert ignore into npc_gossip (npc_guid, textid) values(40546,580);
insert ignore into npc_gossip (npc_guid, textid) values(40547,580);
insert ignore into npc_gossip (npc_guid, textid) values(40548,580);
insert ignore into npc_gossip (npc_guid, textid) values(40549,580);
insert ignore into npc_gossip (npc_guid, textid) values(40550,580);
insert ignore into npc_gossip (npc_guid, textid) values(40551,580);
insert ignore into npc_gossip (npc_guid, textid) values(40553,580);
insert ignore into npc_gossip (npc_guid, textid) values(40554,580);
insert ignore into npc_gossip (npc_guid, textid) values(40555,580);
insert ignore into npc_gossip (npc_guid, textid) values(40556,580);
insert ignore into npc_gossip (npc_guid, textid) values(40557,580);
insert ignore into npc_gossip (npc_guid, textid) values(40559,580);
insert ignore into npc_gossip (npc_guid, textid) values(40560,580);
insert ignore into npc_gossip (npc_guid, textid) values(40561,580);
insert ignore into npc_gossip (npc_guid, textid) values(40562,580);
insert ignore into npc_gossip (npc_guid, textid) values(40565,580);
insert ignore into npc_gossip (npc_guid, textid) values(40566,580);
insert ignore into npc_gossip (npc_guid, textid) values(40567,580);
insert ignore into npc_gossip (npc_guid, textid) values(40568,580);
insert ignore into npc_gossip (npc_guid, textid) values(40569,580);
insert ignore into npc_gossip (npc_guid, textid) values(40570,580);
insert ignore into npc_gossip (npc_guid, textid) values(40571,580);
insert ignore into npc_gossip (npc_guid, textid) values(40572,580);
insert ignore into npc_gossip (npc_guid, textid) values(40573,580);
insert ignore into npc_gossip (npc_guid, textid) values(40574,580);
insert ignore into npc_gossip (npc_guid, textid) values(40575,580);
insert ignore into npc_gossip (npc_guid, textid) values(40576,580);
insert ignore into npc_gossip (npc_guid, textid) values(40577,580);
insert ignore into npc_gossip (npc_guid, textid) values(40578,580);
insert ignore into npc_gossip (npc_guid, textid) values(40579,580);
insert ignore into npc_gossip (npc_guid, textid) values(40580,580);
insert ignore into npc_gossip (npc_guid, textid) values(40581,580);
insert ignore into npc_gossip (npc_guid, textid) values(40582,580);
insert ignore into npc_gossip (npc_guid, textid) values(40583,580);
insert ignore into npc_gossip (npc_guid, textid) values(40584,580);
insert ignore into npc_gossip (npc_guid, textid) values(40585,580);
insert ignore into npc_gossip (npc_guid, textid) values(40586,580);
insert ignore into npc_gossip (npc_guid, textid) values(40587,580);
insert ignore into npc_gossip (npc_guid, textid) values(40591,580);
insert ignore into npc_gossip (npc_guid, textid) values(40593,580);
insert ignore into npc_gossip (npc_guid, textid) values(17649,580);
insert ignore into npc_gossip (npc_guid, textid) values(2065,580);
insert ignore into npc_gossip (npc_guid, textid) values(87044,580);
insert ignore into npc_gossip (npc_guid, textid) values(5752,580);
insert ignore into npc_gossip (npc_guid, textid) values(79628,580);
insert ignore into npc_gossip (npc_guid, textid) values(12783,580);
insert ignore into npc_gossip (npc_guid, textid) values(87046,580);
insert ignore into npc_gossip (npc_guid, textid) values(87047,580);
insert ignore into npc_gossip (npc_guid, textid) values(87048,580);
insert ignore into npc_gossip (npc_guid, textid) values(87049,580);
insert ignore into npc_gossip (npc_guid, textid) values(87050,580);
insert ignore into npc_gossip (npc_guid, textid) values(84656,580);
insert ignore into npc_gossip (npc_guid, textid) values(84826,580);
insert ignore into npc_gossip (npc_guid, textid) values(17650,580);
insert ignore into npc_gossip (npc_guid, textid) values(5721,580);
insert ignore into npc_gossip (npc_guid, textid) values(5719,580);
insert ignore into npc_gossip (npc_guid, textid) values(5718,580);
insert ignore into npc_gossip (npc_guid, textid) values(5717,580);
insert ignore into npc_gossip (npc_guid, textid) values(5729,580);
insert ignore into npc_gossip (npc_guid, textid) values(5749,580);
insert ignore into npc_gossip (npc_guid, textid) values(5723,580);
insert ignore into npc_gossip (npc_guid, textid) values(5724,580);
insert ignore into npc_gossip (npc_guid, textid) values(5725,580);
insert ignore into npc_gossip (npc_guid, textid) values(7715,580);
insert ignore into npc_gossip (npc_guid, textid) values(6876,580);
insert ignore into npc_gossip (npc_guid, textid) values(6875,580);
insert ignore into npc_gossip (npc_guid, textid) values(6858,580);
insert ignore into npc_gossip (npc_guid, textid) values(6849,580);
insert ignore into npc_gossip (npc_guid, textid) values(5715,580);
insert ignore into npc_gossip (npc_guid, textid) values(39063,5943);
insert ignore into npc_gossip (npc_guid, textid) values(36537,5473);
insert ignore into npc_gossip (npc_guid, textid) values(49938,5474);
insert ignore into npc_gossip (npc_guid, textid) values(37102,10555);
insert ignore into npc_gossip (npc_guid, textid) values(8259,5580);
insert ignore into npc_gossip (npc_guid, textid) values(11263,7778);
insert ignore into npc_gossip (npc_guid, textid) values(15326,820);
insert ignore into npc_gossip (npc_guid, textid) values(188,907);
insert ignore into npc_gossip (npc_guid, textid) values(8742,2289);
insert ignore into npc_gossip (npc_guid, textid) values(86166,6194);
insert ignore into npc_gossip (npc_guid, textid) values(86180,6194);
insert ignore into npc_gossip (npc_guid, textid) values(79823,1234);
insert ignore into npc_gossip (npc_guid, textid) values(15324,7778);
insert ignore into npc_gossip (npc_guid, textid) values(79728,1238);
insert ignore into npc_gossip (npc_guid, textid) values(51780,2496);
insert ignore into npc_gossip (npc_guid, textid) values(13419,5495);
insert ignore into npc_gossip (npc_guid, textid) values(6598,2275);
insert ignore into npc_gossip (npc_guid, textid) values(1795,5524);
insert ignore into npc_gossip (npc_guid, textid) values(9448,7778);
insert ignore into npc_gossip (npc_guid, textid) values(81389,4876);
insert ignore into npc_gossip (npc_guid, textid) values(81393,4859);
insert ignore into npc_gossip (npc_guid, textid) values(189,933);
insert ignore into npc_gossip (npc_guid, textid) values(190,933);
insert ignore into npc_gossip (npc_guid, textid) values(79664,933);
insert ignore into npc_gossip (npc_guid, textid) values(79666,933);
insert ignore into npc_gossip (npc_guid, textid) values(79669,933);
insert ignore into npc_gossip (npc_guid, textid) values(79671,933);
insert ignore into npc_gossip (npc_guid, textid) values(79674,933);
insert ignore into npc_gossip (npc_guid, textid) values(79679,933);
insert ignore into npc_gossip (npc_guid, textid) values(79687,933);
insert ignore into npc_gossip (npc_guid, textid) values(79689,933);
insert ignore into npc_gossip (npc_guid, textid) values(79704,933);
insert ignore into npc_gossip (npc_guid, textid) values(79730,933);
insert ignore into npc_gossip (npc_guid, textid) values(79731,933);
insert ignore into npc_gossip (npc_guid, textid) values(79732,933);
insert ignore into npc_gossip (npc_guid, textid) values(79733,933);
insert ignore into npc_gossip (npc_guid, textid) values(79819,933);
insert ignore into npc_gossip (npc_guid, textid) values(79840,933);
insert ignore into npc_gossip (npc_guid, textid) values(79857,933);
insert ignore into npc_gossip (npc_guid, textid) values(79859,933);
insert ignore into npc_gossip (npc_guid, textid) values(79861,933);
insert ignore into npc_gossip (npc_guid, textid) values(79863,933);
insert ignore into npc_gossip (npc_guid, textid) values(79864,933);
insert ignore into npc_gossip (npc_guid, textid) values(79865,933);
insert ignore into npc_gossip (npc_guid, textid) values(2473,933);
insert ignore into npc_gossip (npc_guid, textid) values(19272,933);
insert ignore into npc_gossip (npc_guid, textid) values(19273,933);
insert ignore into npc_gossip (npc_guid, textid) values(26833,933);
insert ignore into npc_gossip (npc_guid, textid) values(79834,5019);
insert ignore into npc_gossip (npc_guid, textid) values(79832,5016);
insert ignore into npc_gossip (npc_guid, textid) values(79833,1233);
insert ignore into npc_gossip (npc_guid, textid) values(79825,1202);
insert ignore into npc_gossip (npc_guid, textid) values(79831,1231);
insert ignore into npc_gossip (npc_guid, textid) values(45440,3668);
insert ignore into npc_gossip (npc_guid, textid) values(45453,3584);
insert ignore into npc_gossip (npc_guid, textid) values(4152,4855);
insert ignore into npc_gossip (npc_guid, textid) values(4150,4871);
insert ignore into npc_gossip (npc_guid, textid) values(14740,7818);
insert ignore into npc_gossip (npc_guid, textid) values(86263,7818);
insert ignore into npc_gossip (npc_guid, textid) values(90462,538);
insert ignore into npc_gossip (npc_guid, textid) values(89432,8076);
insert ignore into npc_gossip (npc_guid, textid) values(89440,8076);
insert ignore into npc_gossip (npc_guid, textid) values(5363,2315);
insert ignore into npc_gossip (npc_guid, textid) values(46619,2643);
insert ignore into npc_gossip (npc_guid, textid) values(46615,2973);
insert ignore into npc_gossip (npc_guid, textid) values(79788,4837);
insert ignore into npc_gossip (npc_guid, textid) values(53174,4979);
insert ignore into npc_gossip (npc_guid, textid) values(35885,3801);
insert ignore into npc_gossip (npc_guid, textid) values(37608,4893);
insert ignore into npc_gossip (npc_guid, textid) values(8461,7778);
insert ignore into npc_gossip (npc_guid, textid) values(37294,769);
insert ignore into npc_gossip (npc_guid, textid) values(37097,3334);
insert ignore into npc_gossip (npc_guid, textid) values(26558,4935);

-- ========================
--  updates.sql Yenza
-- ========================

-- [FIX] [NPC/Objects] Alterac Valley 
-- All spawns and object compared to SDB and UDB 
-- Ivus the Forest Lord shouldn't be spawned, not neutral 
DELETE FROM `creature` WHERE (`guid`='53619'); 
UPDATE `creature_template` SET `faction_A`='69', `faction_H`='69' WHERE (`entry`='13419'); 

-- Double spawn of Captain Balinda Stonehearth 
DELETE FROM `creature` WHERE (`guid`=51868); 

-- Double spawn of Vanndar Stormpike 
DELETE FROM `creature` WHERE (`guid`=51867); 

-- Double spawn of Drek'Thar 
DELETE FROM `creature` WHERE (`guid`=51865); 

-- Gate at Alliance/Horde start area shouldn't be clickable 
UPDATE `gameobject_template` SET `flags`='4'  WHERE (`entry`='180424'); 

-- Move Horde gate to right location and with right state 
UPDATE `gameobject` SET `position_x`='-880.353', `position_y`='-545.418', `position_z`='57.2647', `orientation`='5.35249', `spawntimesecs`='60', `state`='1' WHERE (`GUID`='90226');

-- Correct size of Black Dragon Eggs (by pomser) Eggs shouldn't be clickable/destroyable unless you are controling Razor 
UPDATE `gameobject_template` SET `size`='2', `flags`='4' WHERE `entry`='177807'; 


-- [FIX] [Objects] Black Dragon Eggs Spawn Location 
-- Correct location of Black Dragon Eggs with correct size 
DELETE FROM `gameobject` WHERE `id`=177807; 
INSERT INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(232228, 177807, 469, -7549.48, -1069.96, 408.49, -0.523599, 0, 0, 0, 0, 300, 100, 1), 
(232229, 177807, 469, -7554.42, -1061.5, 408.49, -2.28638, 0, 0, 0, 0, 300, 100, 1), 
(232230, 177807, 469, -7566, -1045.93, 408.49, 3.05433, 0, 0, 0, 0, 300, 100, 1), 
(232231, 177807, 469, -7564.89, -1058.87, 408.49, 2.28638, 0, 0, 0, 0, 300, 100, 1), 
(232232, 177807, 469, -7577.84, -1035.97, 408.49, -1.11701, 0, 0, 0, 0, 300, 100, 1), 
(232233, 177807, 469, -7626.69, -1011.71, 413.381, 0.226893, 0, 0, 0, 0, 300, 100, 1), 
(232234, 177807, 469, -7611.6, -1020.32, 413.381, 3.08923, 0, 0, 0, 0, 300, 100, 1), 
(232235, 177807, 469, -7592.35, -1010.84, 408.49, -2.54818, 0, 0, 0, 0, 300, 100, 1), 
(232236, 177807, 469, -7628.32, -1044.57, 408.49, -0.174533, 0, 0, 0, 0, 300, 100, 1), 
(232237, 177807, 469, -7609.94, -1035.11, 408.49, -1.93731, 0, 0, 0, 0, 300, 100, 1), 
(232238, 177807, 469, -7586.36, -1024.43, 408.49, -2.93215, 0, 0, 0, 0, 300, 100, 1), 
(232239, 177807, 469, -7619.76, -1058.94, 408.49, 1.81514, 0, 0, 0, 0, 300, 100, 1), 
(232240, 177807, 469, -7618.1, -1069.33, 408.49, -1.32645, 0, 0, 0, 0, 300, 100, 1), 
(232241, 177807, 469, -7604.36, -1060.25, 408.157, -2.77507, 0, 0, 0, 0, 300, 100, 1), 
(232242, 177807, 469, -7599, -1044.77, 408.157, -1.02974, 0, 0, 0, 0, 300, 100, 1), 
(232243, 177807, 469, -7601.14, -1077.11, 408.218, -1.27409, 0, 0, 0, 0, 300, 100, 1), 
(232244, 177807, 469, -7584.68, -1075.84, 408.49, 3.01942, 0, 0, 0, 0, 300, 100, 1), 
(232245, 177807, 469, -7594.37, -1102.9, 408.49, -0.907571, 0, 0, 0, 0, 300, 100, 1), 
(232246, 177807, 469, -7597.53, -1094.54, 408.49, 2.37365, 0, 0, 0, 0, 300, 100, 1), 
(232247, 177807, 469, -7588.84, -1053.79, 408.157, -1.72788, 0, 0, 0, 0, 300, 100, 1), 
(232248, 177807, 469, -7592.38, -1035.68, 408.157, 1.62316, 0, 0, 0, 0, 300, 100, 1), 
(232249, 177807, 469, -7580.8, -1067.29, 408.49, -2.98451, 0, 0, 0, 0, 300, 100, 1), 
(232250, 177807, 469, -7576.92, -1083.69, 413.381, -2.89725, 0, 0, 0, 0, 300, 100, 1), 
(232251, 177807, 469, -7569.38, -1079.73, 413.381, -2.68781, 0, 0, 0, 0, 300, 100, 1), 
(232252, 177807, 469, -7572.49, -1095.03, 413.381, -2.86234, 0, 0, 0, 0, 300, 100, 1), 
(232253, 177807, 469, -7568.62, -1086.58, 413.381, 0.855211, 0, 0, 0, 0, 300, 100, 1), 
(232254, 177807, 469, -7578.64, -1089.95, 413.381, 2.21657, 0, 0, 0, 0, 300, 100, 1), 
(232255, 177807, 469, -7568.27, -1097.68, 413.381, 2.79253, 0, 0, 0, 0, 300, 100, 1), 
(232256, 177807, 469, -7563.15, -1088.71, 413.381, -0.453786, 0, 0, 0, 0, 300, 100, 1), 
(232257, 177807, 469, -7579.49, -1051.48, 408.157, 0.523599, 0, 0, 0, 0, 300, 100, 1); 

-- [FIX] [Objects] Ahn'Qiraj Gates 
-- Gate at AQ not spawned 
DELETE FROM `gameobject` WHERE `id`=176146; 
DELETE FROM `gameobject` WHERE `id`=176147; 
DELETE FROM `gameobject` WHERE `id`=176148; 
INSERT INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(66334, 176146, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0, 0, 0.00107995, -0.999999, 600, 100, 1), 
(66335, 176147, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0, 0, 0.00107995, -0.999999, 600, 100, 1), 
(66336, 176148, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0, 0, 0.00107995, -0.999999, 600, 100, 1); 

-- Gate shouldn't be clickable 
UPDATE `gameobject_template` SET `flags`='4' WHERE `entry` IN ('176146', '176147', '176148'); 

-- [FIX] [NPC & Object] Lord Victor Nefarius Location

-- Nefarius throne were not spawned 
DELETE FROM `gameobject` WHERE `id`=179118; 
INSERT INTO `gameobject` (`guid`,`id`,`map`, `position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(232303, 179118, 469, -7588.27, -1261.92, 482.03, 0.610865, 0, 0, 0, 0, 300, 0, 1); 

-- "portal" gameobject at Nef shouldn't be visible (remove it?) 
UPDATE `gameobject_template` SET `displayID`='0' WHERE `entry`='200000'; 

-- Nefarius doesn't have correct Unit_flags (data taken from latest UDB) 
UPDATE `creature_template` SET `unit_flags`='33088' WHERE `entry`='10162'; 


-- Alterac Valley NPC's and Quests Redone 
-- patch by Yenza 
-- 
-- NPC Part 

-- 
-- Alliance Side 
-- 

-- Wrong Family, data taken from UDB 
UPDATE `creature_template` SET `family`='0' WHERE `entry` IN ('4257', '13216', '5135', '5139', '5134', '4255'); 

-- Double spawns 
DELETE FROM `creature` WHERE `guid` IN ('53836', '53835', '29882', '53160', '53648', '51958', '53154', '34053', '29880', '34058', '34054', '53635', '53667', '53681', '53732', '53640'); 

-- Wrong faction of Icewing Marshal, Commander Randolph, Lieutenant Stouthandle, Lieutenant Mancuso, Champion Mountaineer 
UPDATE `creature_template` SET `faction_A`='1216', `faction_H`='1216' WHERE `entry` IN ('14764', '13139', '13297', '13300', '13426'); 

-- Vendors did not have any items to sell, data taken from YTDB 
-- Lana Thunderbrew 
DELETE FROM `npc_vendor` WHERE (`entry`=4257); 
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES 
(4257, 2880, 0, 0), 
(4257, 2901, 0, 0), 
(4257, 3466, 0, 0), 
(4257, 3857, 0, 0), 
(4257, 5956, 0, 0), 
(4257, 18567, 0, 0); 

-- Kurdrum Barleybeard 
DELETE FROM `npc_vendor` WHERE (`entry`=5139); 
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES 
(5139, 2892, 0, 0), 
(5139, 2893, 0, 0), 
(5139, 2928, 0, 0), 
(5139, 3371, 0, 0), 
(5139, 3372, 0, 0), 
(5139, 3775, 0, 0), 
(5139, 5060, 0, 0), 
(5139, 5237, 0, 0), 
(5139, 5565, 0, 0), 
(5139, 6947, 0, 0), 
(5139, 6949, 0, 0), 
(5139, 6950, 0, 0), 
(5139, 8925, 0, 0), 
(5139, 8926, 0, 0), 
(5139, 8927, 0, 0), 
(5139, 8928, 0, 0), 
(5139, 8984, 0, 0), 
(5139, 8985, 0, 0), 
(5139, 10918, 0, 0), 
(5139, 10920, 0, 0), 
(5139, 10921, 0, 0), 
(5139, 10922, 0, 0), 
(5139, 16583, 0, 0), 
(5139, 17020, 0, 0), 
(5139, 17021, 0, 0), 
(5139, 17026, 0, 0), 
(5139, 17028, 0, 0), 
(5139, 17029, 0, 0), 
(5139, 17030, 0, 0), 
(5139, 17031, 0, 0), 
(5139, 17032, 0, 0), 
(5139, 17033, 0, 0), 
(5139, 17034, 0, 0), 
(5139, 17035, 0, 0), 
(5139, 17036, 0, 0), 
(5139, 17037, 0, 0), 
(5139, 17038, 0, 0), 
(5139, 20844, 0, 0), 
(5139, 21177, 0, 0); 

-- Svalbrad Farmountain 
DELETE FROM `npc_vendor` WHERE (`entry`=5135); 
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES 
(5135, 2320, 0, 0), 
(5135, 2321, 0, 0), 
(5135, 2324, 0, 0), 
(5135, 2325, 0, 0), 
(5135, 2604, 0, 0), 
(5135, 2605, 0, 0), 
(5135, 2678, 0, 0), 
(5135, 2692, 0, 0), 
(5135, 2880, 0, 0), 
(5135, 2901, 0, 0), 
(5135, 2928, 0, 0), 
(5135, 3371, 0, 0), 
(5135, 3372, 0, 0), 
(5135, 3466, 0, 0), 
(5135, 3713, 0, 0), 
(5135, 3857, 0, 0), 
(5135, 4289, 0, 0), 
(5135, 4291, 0, 0), 
(5135, 4340, 0, 0), 
(5135, 4341, 0, 0), 
(5135, 4342, 0, 0), 
(5135, 4399, 0, 0), 
(5135, 4400, 0, 0), 
(5135, 5956, 0, 0), 
(5135, 6217, 0, 0), 
(5135, 6256, 0, 0), 
(5135, 6260, 0, 0), 
(5135, 6529, 0, 0), 
(5135, 6530, 0, 0), 
(5135, 6532, 0, 0), 
(5135, 7005, 0, 0), 
(5135, 8343, 0, 0), 
(5135, 8925, 0, 0), 
(5135, 14341, 0, 0), 
(5135, 18256, 0, 0); 

-- Jonivera Farmountain 
DELETE FROM `npc_vendor` WHERE (`entry`=5134); 
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES 
(5134, 159, 0, 0), 
(5134, 1205, 0, 0), 
(5134, 1645, 0, 0), 
(5134, 1708, 0, 0), 
(5134, 2515, 0, 0), 
(5134, 2519, 0, 0), 
(5134, 3030, 0, 0), 
(5134, 3033, 0, 0), 
(5134, 4470, 0, 0), 
(5134, 4471, 0, 0), 
(5134, 4497, 0, 0), 
(5134, 4498, 0, 0), 
(5134, 11284, 0, 0), 
(5134, 11285, 0, 0); 

-- Brogus Thunderbrew 
DELETE FROM `npc_vendor` WHERE (`entry`=4255); 
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES 
(4255, 117, 0, 0), 
(4255, 159, 0, 0), 
(4255, 414, 0, 0), 
(4255, 422, 0, 0), 
(4255, 787, 0, 0), 
(4255, 1179, 0, 0), 
(4255, 1205, 0, 0), 
(4255, 1645, 0, 0), 
(4255, 1707, 0, 0), 
(4255, 1708, 0, 0), 
(4255, 2070, 0, 0), 
(4255, 2287, 0, 0), 
(4255, 3770, 0, 0), 
(4255, 3771, 0, 0), 
(4255, 3927, 0, 0), 
(4255, 4536, 0, 0), 
(4255, 4537, 0, 0), 
(4255, 4538, 0, 0), 
(4255, 4539, 0, 0), 
(4255, 4540, 0, 0), 
(4255, 4541, 0, 0), 
(4255, 4542, 0, 0), 
(4255, 4544, 0, 0), 
(4255, 4592, 0, 0), 
(4255, 4593, 0, 0), 
(4255, 4594, 0, 0), 
(4255, 4599, 0, 0), 
(4255, 4601, 0, 0), 
(4255, 4602, 0, 0), 
(4255, 8766, 0, 0), 
(4255, 8932, 0, 0), 
(4255, 8950, 0, 0), 
(4255, 8952, 0, 0), 
(4255, 8953, 0, 0), 
(4255, 8957, 0, 0), 
(4255, 21552, 0, 0); 

-- Gaelden Hammersmith 
DELETE FROM `npc_vendor` WHERE (`entry`=13216); 
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES 
(13216, 17348, 0, 0), 
(13216, 17349, 0, 0), 
(13216, 17351, 0, 0), 
(13216, 17352, 0, 0), 
(13216, 19030, 0, 0), 
(13216, 19032, 0, 0), 
(13216, 19045, 0, 0), 
(13216, 19084, 0, 0), 
(13216, 19086, 0, 0), 
(13216, 19091, 0, 0), 
(13216, 19092, 0, 0), 
(13216, 19093, 0, 0), 
(13216, 19094, 0, 0), 
(13216, 19097, 0, 0), 
(13216, 19098, 0, 0), 
(13216, 19100, 0, 0), 
(13216, 19102, 0, 0), 
(13216, 19104, 0, 0), 
(13216, 19301, 0, 0), 
(13216, 19307, 0, 0), 
(13216, 19308, 0, 0), 
(13216, 19309, 0, 0), 
(13216, 19310, 0, 0), 
(13216, 19311, 0, 0), 
(13216, 19312, 0, 0), 
(13216, 19315, 0, 0), 
(13216, 19316, 0, 0), 
(13216, 19317, 0, 0), 
(13216, 19318, 0, 0), 
(13216, 19319, 0, 0), 
(13216, 19320, 0, 0), 
(13216, 19321, 0, 0), 
(13216, 19323, 0, 0), 
(13216, 19324, 0, 0), 
(13216, 19325, 0, 0), 
(13216, 21563, 0, 0); 

-- 
-- Horde Side 
-- 

-- Double spawns 
DELETE FROM `creature` WHERE `guid` IN ('53733', '53159', '53834', '53833', '14241', '26169', '53156', '53135', '25100', '47642', '47646', '53137', '51959', '51886'); 

-- Vendors did not have any items to sell, data taken from YTDB 
-- Zora Guthrek 
DELETE FROM `npc_vendor` WHERE (`entry`=2225); 
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES 
(2225, 2320, 0, 0), 
(2225, 2321, 0, 0), 
(2225, 2324, 0, 0), 
(2225, 2325, 0, 0), 
(2225, 2604, 0, 0), 
(2225, 2605, 0, 0), 
(2225, 2678, 0, 0), 
(2225, 2692, 0, 0), 
(2225, 2880, 0, 0), 
(2225, 2901, 0, 0), 
(2225, 2928, 0, 0), 
(2225, 3371, 0, 0), 
(2225, 3372, 0, 0), 
(2225, 3466, 0, 0), 
(2225, 3713, 0, 0), 
(2225, 3857, 0, 0), 
(2225, 4289, 0, 0), 
(2225, 4291, 0, 0), 
(2225, 4340, 0, 0), 
(2225, 4341, 0, 0), 
(2225, 4342, 0, 0), 
(2225, 4399, 0, 0), 
(2225, 4400, 0, 0), 
(2225, 5956, 0, 0), 
(2225, 6217, 0, 0), 
(2225, 6256, 0, 0), 
(2225, 6260, 0, 0), 
(2225, 6529, 0, 0), 
(2225, 6530, 0, 0), 
(2225, 6532, 0, 0), 
(2225, 7005, 0, 0), 
(2225, 8343, 0, 0), 
(2225, 8925, 0, 0), 
(2225, 14341, 0, 0), 
(2225, 18256, 0, 0); 

-- Rarck 
DELETE FROM `npc_vendor` WHERE (`entry`=3625); 
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES 
(3625, 159, 0, 0), 
(3625, 1205, 0, 0), 
(3625, 1645, 0, 0), 
(3625, 1708, 0, 0), 
(3625, 2515, 0, 0), 
(3625, 2519, 0, 0), 
(3625, 3030, 0, 0), 
(3625, 3033, 0, 0), 
(3625, 4470, 0, 0), 
(3625, 4471, 0, 0), 
(3625, 4497, 0, 0), 
(3625, 4498, 0, 0), 
(3625, 11284, 0, 0), 
(3625, 11285, 0, 0); 

-- Grelkor 
DELETE FROM `npc_vendor` WHERE (`entry`=3343); 
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES 
(3343, 2880, 0, 0), 
(3343, 2901, 0, 0), 
(3343, 3466, 0, 0), 
(3343, 3857, 0, 0), 
(3343, 5956, 0, 0), 
(3343, 18567, 0, 0); 

-- Grunnda Wolfheart 
DELETE FROM `npc_vendor` WHERE (`entry`=13218); 
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES 
(13218, 17348, 0, 0), 
(13218, 17349, 0, 0), 
(13218, 17351, 0, 0), 
(13218, 17352, 0, 0), 
(13218, 19029, 0, 0), 
(13218, 19031, 0, 0), 
(13218, 19046, 0, 0), 
(13218, 19083, 0, 0), 
(13218, 19085, 0, 0), 
(13218, 19087, 0, 0), 
(13218, 19088, 0, 0), 
(13218, 19089, 0, 0), 
(13218, 19090, 0, 0), 
(13218, 19095, 0, 0), 
(13218, 19096, 0, 0), 
(13218, 19099, 0, 0), 
(13218, 19101, 0, 0), 
(13218, 19103, 0, 0), 
(13218, 19301, 0, 0), 
(13218, 19307, 0, 0), 
(13218, 19308, 0, 0), 
(13218, 19309, 0, 0), 
(13218, 19310, 0, 0), 
(13218, 19311, 0, 0), 
(13218, 19312, 0, 0), 
(13218, 19315, 0, 0), 
(13218, 19316, 0, 0), 
(13218, 19317, 0, 0), 
(13218, 19318, 0, 0), 
(13218, 19319, 0, 0), 
(13218, 19320, 0, 0), 
(13218, 19321, 0, 0), 
(13218, 19323, 0, 0), 
(13218, 19324, 0, 0), 
(13218, 19325, 0, 0), 
(13218, 21563, 0, 0); 

-- Shrye Ragefist 
DELETE FROM `npc_vendor` WHERE (`entry`=10367); 
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES 
(10367, 117, 0, 0), 
(10367, 159, 0, 0), 
(10367, 414, 0, 0), 
(10367, 422, 0, 0), 
(10367, 787, 0, 0), 
(10367, 1179, 0, 0), 
(10367, 1205, 0, 0), 
(10367, 1645, 0, 0), 
(10367, 1707, 0, 0), 
(10367, 1708, 0, 0), 
(10367, 2070, 0, 0), 
(10367, 2287, 0, 0), 
(10367, 3770, 0, 0), 
(10367, 3771, 0, 0), 
(10367, 3927, 0, 0), 
(10367, 4540, 0, 0), 
(10367, 4541, 0, 0), 
(10367, 4542, 0, 0), 
(10367, 4544, 0, 0), 
(10367, 4592, 0, 0), 
(10367, 4593, 0, 0), 
(10367, 4594, 0, 0), 
(10367, 4599, 0, 0), 
(10367, 4601, 0, 0), 
(10367, 4604, 0, 0), 
(10367, 4605, 0, 0), 
(10367, 4606, 0, 0), 
(10367, 4607, 0, 0), 
(10367, 4608, 0, 0), 
(10367, 8766, 0, 0), 
(10367, 8932, 0, 0), 
(10367, 8948, 0, 0), 
(10367, 8950, 0, 0), 
(10367, 8952, 0, 0), 
(10367, 8957, 0, 0), 
(10367, 21552, 0, 0); 

-- Yaelika Farclaw 
DELETE FROM `npc_vendor` WHERE (`entry`=10364); 
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES 
(10364, 2892, 0, 0), 
(10364, 2893, 0, 0), 
(10364, 2928, 0, 0), 
(10364, 3371, 0, 0), 
(10364, 3372, 0, 0), 
(10364, 3775, 0, 0), 
(10364, 5060, 0, 0), 
(10364, 5237, 0, 0), 
(10364, 5565, 0, 0), 
(10364, 6947, 0, 0), 
(10364, 6949, 0, 0), 
(10364, 6950, 0, 0), 
(10364, 8925, 0, 0), 
(10364, 8926, 0, 0), 
(10364, 8927, 0, 0), 
(10364, 8928, 0, 0), 
(10364, 8984, 0, 0), 
(10364, 8985, 0, 0), 
(10364, 10918, 0, 0), 
(10364, 10920, 0, 0), 
(10364, 10921, 0, 0), 
(10364, 10922, 0, 0), 
(10364, 16583, 0, 0), 
(10364, 17020, 0, 0), 
(10364, 17021, 0, 0), 
(10364, 17026, 0, 0), 
(10364, 17028, 0, 0), 
(10364, 17029, 0, 0), 
(10364, 17030, 0, 0), 
(10364, 17031, 0, 0), 
(10364, 17032, 0, 0), 
(10364, 17033, 0, 0), 
(10364, 17034, 0, 0), 
(10364, 17035, 0, 0), 
(10364, 17036, 0, 0), 
(10364, 17037, 0, 0), 
(10364, 17038, 0, 0), 
(10364, 20844, 0, 0), 
(10364, 21177, 0, 0); 


-- 
-- Trash/Both sides 
-- 

-- Master Engineer Zinfizzlex 
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE `entry`='13377'; 

-- Move him to right location, data taken from allakhazam 
DELETE FROM `creature` WHERE `id`=13377; 
INSERT INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(53614, 13377, 30, 0, 0, -150.556, 42.9303, 77.2074, 4.22692, 6300, 0, 0, 24775, 0, 0, 0); 

-- Guards walks in the air 
UPDATE `creature_template` SET `inhabitType`='1' WHERE `entry` IN ('14284', '12053'); 


-- Alterac Valley NPC's and Quests Redone 
-- patch by Yenza 
-- 
-- Quest Part 

-- 
-- Alliance Side 
-- 

-- Shouldn't be repeatable 
UPDATE `quest_template` SET `SpecialFlags`='0' WHERE `entry` IN ('7301', '7367', '7223', '7402'); 

-- Quest: Ram Riding Harnesses 
UPDATE `quest_template` SET `method`='2', `objectives`='null', `RequestItemsText`='Slaying the frostwolves they use as mounts and return their hides to me.' WHERE `entry`='7026'; 

-- Quest: What the Hoof? 
UPDATE `quest_template` SET `method`='0', `details`='null', `RequestItemsText`='Give \'em a limp, $N. They must learn that the gnomish people won\'t take to being bullied!' WHERE `entry`='7424'; 

-- Quest: Crystal Cluster 
UPDATE `quest_template` SET `objectives`='null', `RequestItemsText`='The Frostwolf soldiers carry elemental charms called storm crystals. We can use the charms to conjure Ivus. Venture forth and claim the crystals, $N!' WHERE `entry`='7386'; 

-- No questgiver/taker of quest: 7402 
DELETE FROM `gameobject_questrelation` WHERE `quest` = 7402; 
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7402; 
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES 
(179437, 7402); 
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(13447, 7402); 

-- No questgiver/taker of quest: 7428 
DELETE FROM `creature_questrelation` WHERE `quest` = 7428; 
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7428; 
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(13447, 7428); 
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(13447, 7428); 

-- Quest: Zinfizzlex\'s Portable Shredder Unit 
UPDATE `quest_template` SET `details`='null', `objectives`='null', `RequestItemsText`='I\'m as anxious as you are to try out my portable shredder unit, $r, but before I can make the kit, I\'m going to need materials - lots of materials! 

To be exact, I\'m going to need a mountain of thorium, mithril, and iron. I will also need one steamsaw per unit. You\'ll have to get those at the lumber mill. 

When I was nosing around in here (before my capture) I noticed a pile of steamsaws at the Stormpike lumber camp. 

Master Engineer Zinfizzlex wants you to bring him the following:' WHERE `entry`='6862'; 


-- 
-- Horde Side 
-- 

-- Shouldn't be repeatable 
UPDATE `quest_template` SET `SpecialFlags`='0' WHERE `entry` IN ('7224', '7302', '7368', '7401'); 

-- Quest: Ram Hide Harnesses 
UPDATE `quest_template` SET `method`='2', `objectives`='null', `RequestItemsText`='Slay them and return to me with their hides. The same rams that the Stormpike cavalry uses as mounts!' WHERE `entry`='7002'; 

-- Quest: A Gallon of Blood 
UPDATE `quest_template` SET `objectives`='null', `RequestItemsText`='You must strike down our enemies and bring to me their blood.' WHERE `entry`='7385'; 

-- Quest: Zinfizzlex\'s Portable Shredder Unit 
UPDATE `quest_template` SET `details`='null', `objectives`='null', `RequestItemsText`='I\'m as anxious as you are to try out my portable shredder unit, $r, but before I can make the kit, I\'m going to need materials - lots of materials! 

To be exact, I\'m going to need a mountain of thorium, mithril, and iron. I will also need one steamsaw per unit. You\'ll have to get those at the lumber mill. 

When I was nosing around in here (before my capture) I noticed a pile of steamsaws at the Stormpike lumber camp. 

Master Engineer Zinfizzlex wants you to bring him the following:' WHERE `entry`='6861'; 

-- No questgiver/taker of quest: 7427 
DELETE FROM `creature_questrelation` WHERE `quest` = 7427; 
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(13448, 7427); 
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7427; 
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(13448, 7427); 

-- [FIX] [Objects] Gates In Blackwing Lair 

-- Delete all gates in gameobject 
DELETE FROM `gameobject` WHERE `id` IN ('179115', '179116', '179365', '176966', '179117', '179364', '176964', '176965'); 

-- Correction of sizes of the gates 
UPDATE `gameobject_template` SET `size`='3.5' WHERE `entry` IN ('179115', '179116', '179117'); 
UPDATE `gameobject_template` SET `size`='4.33333' WHERE `entry`='179365'; 
UPDATE `gameobject_template` SET `size`='3.62593' WHERE `entry`='176966'; 
UPDATE `gameobject_template` SET `size`='3.38607' WHERE `entry`='179364'; 
UPDATE `gameobject_template` SET `size`='1.82091' WHERE `entry` IN ('176964', '176965'); 

-- Set all gates untargetable except the one infront of Chrom. -- Each gate should open when boss is slain, just like in the -- Deadmines (needs scripting) 
UPDATE `gameobject_template` SET `flags`='4' WHERE `entry` IN ('179115', '179365', '176966', '179117', '179364', '176964', '176965'); 

-- Spawn the gates 
INSERT INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(232295, 179115, 469, -7455.24, -1051.71, 480.03, 2.18166, 0, 0, 0, 0, 300, 100, 0), 
(232296, 179116, 469, -7506.29, -1043.16, 480.03, 0.610865, 0, 0, 0, 0, 300, 100, 1), 
(232297, 179365, 469, -7568.43, -1031.59, 449.109, -2.53073, 0, 0, 0, 0, 300, 100, 1), 
(232298, 176966, 469, -7488.17, -1150.54, 476.712, 0.610865, 0, 0, 0, 0, 300, 100, 0), 
(232299, 179117, 469, -7464, -1103.55, 480.03, 0.610865, 0, 0, 0, 0, 300, 100, 1), 
(232300, 179364, 469, -7531.22, -956.411, 428.252, -0.95993, 0, 0, 0, 0, 300, 100, 1), 
(232301, 176964, 469, -7639.43, -1083.94, 408.528, -2.53073, 0, 0, 0, 0, 300, 100, 0), 
(232302, 176965, 469, -7552.37, -1022.98, 408.528, -2.53073, 0, 0, 0, 0, 300, 100, 1); 

-- [FIX] Spawns In Egg Chamber

-- Remove the NPCs around Razor 
DELETE FROM `creature` WHERE `guid` IN (84484, 84444, 84439, 84437, 84436, 84432, 84406, 84404, 84405, 84392, 84403, 84393, 84496, 84503, 84511, 84495, 84494, 84510, 84489, 84509, 84493, 84487, 84505, 84486);

-- Script target for the orb to control Razor 
DELETE FROM `spell_script_target` WHERE `entry` IN (23018,19832,19873,23014); 
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES 
(23018, 0, 177808), 
(19832, 1, 12435), 
(19873, 0, 177807), 
(23014, 1, 12435);

-- Correction of the spawnlocation of the Orb 
DELETE FROM `gameobject` WHERE `id`=177808; 
INSERT INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(67867, 177808, 469, -7615.05, -1026.24, 413.381, -0.959931, 0, 0, 0, 0, 300, 100, 1);

-- Change size from 1 to 1.5 of the Orb 
UPDATE `gameobject_template` SET `size`='1.5'  WHERE `entry`='177808'; 


-- Missing spawn of: Suppression Device in BWL 
-- Data taken from YTDB 
DELETE FROM `gameobject` WHERE `id`=179784; 
INSERT INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(232793, 179784, 469, -7626.95, -981.359, 440.023, 0.15708, 0, 0, 0, 0, 300, 0, 1), 
(232794, 179784, 469, -7637.64, -965.023, 440.275, 0.017453, 0, 0, 0, 0, 300, 0, 1), 
(232795, 179784, 469, -7650.9, -975.792, 440.263, 0.226893, 0, 0, 0, 0, 300, 0, 1), 
(232796, 179784, 469, -7640.29, -991.302, 440.263, 0.453786, 0, 0, 0, 0, 300, 0, 1), 
(232797, 179784, 469, -7653.69, -999.919, 439.986, 0.506145, 0, 0, 0, 0, 300, 0, 1), 
(232798, 179784, 469, -7677.63, -994.426, 440.259, 0.383972, 0, 0, 0, 0, 300, 0, 1), 
(232799, 179784, 469, -7630.29, -1005.49, 440.262, 0.401426, 0, 0, 0, 0, 300, 0, 1), 
(232800, 179784, 469, -7616.21, -997.084, 440.282, 0.20944, 0, 0, 0, 0, 300, 0, 1), 
(232801, 179784, 469, -7664.82, -984.057, 440.247, 0.314159, 0, 0, 0, 0, 300, 0, 1), 
(232802, 179784, 469, -7667.54, -1008.34, 440.259, 0.523599, 0, 0, 0, 0, 300, 0, 1), 
(232803, 179784, 469, -7642.73, -1015.65, 440.245, 0.471239, 0, 0, 0, 0, 300, 0, 1), 
(232804, 179784, 469, -7680.51, -1018.7, 439.983, 0.558505, 0, 0, 0, 0, 300, 0, 1), 
(232805, 179784, 469, -7656.67, -1024.32, 440.257, 0.506145, 0, 0, 0, 0, 300, 0, 1), 
(232806, 179784, 469, -7691.26, -1002.38, 440.244, 0.418879, 0, 0, 0, 0, 300, 0, 1), 
(232807, 179784, 469, -7595.27, -1030.42, 449.164, 0.314159, 0, 0, 0, 0, 300, 0, 1), 
(232808, 179784, 469, -7605.95, -1045.06, 449.164, 0.645772, 0, 0, 0, 0, 300, 0, 1), 
(232809, 179784, 469, -7669.46, -1034.21, 440.244, 0.541052, 0, 0, 0, 0, 300, 0, 1), 
(232810, 179784, 469, -7709.17, -1017, 440.446, 0.471239, 0, 0, 0, 0, 300, 0, 1), 
(232811, 179784, 469, -7699.2, -1030.98, 440.588, 0.558505, 0, 0, 0, 0, 300, 0, 1), 
(232812, 179784, 469, -7637.93, -1081.13, 449.164, 0.453786, 0, 0, 0, 0, 300, 0, 1), 
(232813, 179784, 469, -7651.32, -1103.53, 449.164, 0.523599, 0, 0, 0, 0, 300, 0, 1), 
(232814, 179784, 469, -7593.78, -1063.45, 449.164, 0.471239, 0, 0, 0, 0, 300, 0, 1), 
(232815, 179784, 469, -7665.26, -1113.61, 449.164, 0.523599, 0, 0, 0, 0, 300, 0, 1), 
(232816, 179784, 469, -7572.59, -1062.57, 449.164, 0.541052, 0, 0, 0, 0, 300, 0, 1), 
(232817, 179784, 469, -7691.97, -1105.4, 449.13, 0.628319, 0, 0, 0, 0, 300, 0, 1), 
(232818, 179784, 469, -7677.68, -1095.24, 449.135, 0.628319, 0, 0, 0, 0, 300, 0, 1), 
(232819, 179784, 469, -7663.99, -1084.89, 449.164, 0.628319, 0, 0, 0, 0, 300, 0, 1), 
(232820, 179784, 469, -7680.11, -1123.29, 449.105, 0.523599, 0, 0, 0, 0, 300, 0, 1), 
(232821, 179784, 469, -7647.78, -1066.97, 449.164, 0.558505, 0, 0, 0, 0, 300, 0, 1), 
(232822, 179784, 469, -7716.1, -1077.45, 445.176, 0.872665, 0, 0, 0, 0, 300, 0, 1), 
(232823, 179784, 469, -7713.14, -1060.04, 445.176, -1.18682, 0, 0, 0, 0, 300, 0, 1), 
(232824, 179784, 469, -7620.09, -1075.73, 449.164, 0.471239, 0, 0, 0, 0, 300, 0, 1), 
(232825, 179784, 469, -7627.98, -1095.31, 449.164, 0.541052, 0, 0, 0, 0, 300, 0, 1), 
(232826, 179784, 469, -7595.77, -1080, 449.164, 0.558505, 0, 0, 0, 0, 300, 0, 1), 
(232827, 179784, 469, -7619.15, -1047.15, 449.164, 0.506145, 0, 0, 0, 0, 300, 0, 1), 
(232828, 179784, 469, -7686.85, -1047.04, 440.371, 0.558505, 0, 0, 0, 0, 300, 0, 1), 
(232829, 179784, 469, -7609.89, -1061.46, 449.164, 0.418879, 0, 0, 0, 0, 300, 0, 1), 
(232830, 179784, 469, -7629.78, -1061.48, 449.164, 0.628319, 0, 0, 0, 0, 300, 0, 1); 

-- The device shouldn't spam the spell and should have a radius of 20 
UPDATE `gameobject_template` SET `data2`='20', `data5`='6' WHERE `entry`='179784'; 


-- Mobs around Vael shouldn't exist 
DELETE FROM `creature` WHERE `guid` IN ('84513', '84518', '84514', '84516', '84517', '84515'); 

-- Mobs at Suppression Room (drakonids) shouldn't be there 
-- Should be whelps instead 
-- Replacing Bronze Drakonids with Corrupted Bronze Whelps 
UPDATE `creature` SET `id`='14025', `modelid`='14720' WHERE `guid` IN ('85836', '85834', '85837', '85838'); 


-- Replacing Red Drakonids with Corrupted Red Whelps 
UPDATE `creature` SET `id`='14022', `modelid`='956' WHERE `guid` IN ('85822', '85821', '85813', '85808', '85824', '85823', '85825'); 


-- Replacing Green Drakonids with Corrupted Green Whelps 
UPDATE `creature` SET `id`='14023', `modelid`='694' WHERE `guid` IN ('85832', '85830', '85829', '85828', '85827'); 

/* ########### GENERAL CLEANUP QUERIES ###########
UPDATE gameobject SET state = 0 WHERE id IN (SELECT entry FROM gameobject_template WHERE type = 0 AND data0 = 1);
UPDATE creature, creature_template SET creature.curhealth=creature_template.minhealth,creature.curmana=creature_template.minmana WHERE creature.id=creature_template.entry AND creature_template.RegenHealth = '1';
UPDATE gameobject_template SET flags=flags&~4 WHERE type IN (2,19,17);
UPDATE creature SET MovementType = 0 WHERE spawndist = 0 AND MovementType=1;
UPDATE creature SET spawndist=0 WHERE MovementType=0;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
DELETE FROM go,gt USING gameobject go LEFT JOIN gameobject_template gt ON go.id=gt.entry WHERE gt.entry IS NULL;
DELETE FROM gi,gt USING gameobject_involvedrelation gi LEFT JOIN gameobject_template gt ON gi.id=gt.entry WHERE gt.entry IS NULL;
DELETE FROM gqr,gt USING gameobject_questrelation gqr LEFT JOIN gameobject_template gt ON gqr.id=gt.entry WHERE gt.entry IS NULL;
DELETE FROM ge,go USING game_event_gameobject ge LEFT JOIN gameobject go ON ge.guid=go.guid WHERE go.guid IS NULL;
DELETE FROM gameobject_scripts WHERE id NOT IN (SELECT guid FROM gameobject);
DELETE FROM gameobject_scripts WHERE command IN (11, 12) AND datalong NOT IN (SELECT guid FROM gameobject);
DELETE FROM creature WHERE id NOT IN (SELECT entry FROM creature_template);
DELETE FROM creature_addon WHERE guid NOT IN (SELECT guid FROM creature);
DELETE FROM creature_template_addon WHERE entry NOT IN (SELECT entry FROM creature_template);
DELETE FROM npc_gossip WHERE npc_guid NOT IN (SELECT guid FROM creature);
DELETE FROM game_event_creature WHERE guid NOT IN (SELECT guid FROM creature);
DELETE FROM creature_questrelation WHERE id NOT IN (SELECT entry FROM creature_template);
DELETE FROM creature_onkill_reputation WHERE creature_id NOT IN (SELECT entry FROM creature_template);
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry IN (SELECT id FROM creature_questrelation UNION SELECT id FROM creature_involvedrelation);


Autoincrement setted at 500000 for custom spawns

ALTER TABLE creature AUTO_INCREMENT = 500000;
ALTER TABLE gameobject AUTO_INCREMENT = 500000;*/