DELETE FROM `gameobject_loot_template` WHERE `entry` IN (9597, 13960) AND (`item`='12363');
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (22342, 9933, 9932) AND `item` IN (12364, 12800);
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (22342, 22984, 9933, 9932, 9931) AND `item` IN (12361, 12799);
UPDATE gameobject_loot_template SET ChanceOrQuestChance = ChanceOrQuestChance / 10 WHERE item IN (12363, 12800, 12364, 12361, 12799, 11382, 19774, 7910, 7909, 7971, 3864, 13926, 24478, 24479, 1529, 1705, 5500, 1206, 1210, 5498, 818, 774);