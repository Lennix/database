-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wowc_world
-- ------------------------------------------------------
-- Server version	5.1.49-3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `event_scripts`
--

DROP TABLE IF EXISTS `event_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `datalong3` int(10) unsigned NOT NULL DEFAULT '0',
  `datalong4` int(10) unsigned NOT NULL DEFAULT '0',
  `data_flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `dataint2` int(11) NOT NULL DEFAULT '0',
  `dataint3` int(11) NOT NULL DEFAULT '0',
  `dataint4` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  `comments` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_scripts`
--

LOCK TABLES `event_scripts` WRITE;
/*!40000 ALTER TABLE `event_scripts` DISABLE KEYS */;
INSERT INTO `event_scripts` VALUES
(259,2,10,1770,300000,0,0,0,0,0,0,0,881.63,1230.37,47.83,3.1,''),
(264,3,10,2044,300000,0,0,0,0,0,0,0,-9548.42,-1440.2,62.29,2.19,''),
(364,5,10,2624,900000,0,0,0,0,0,0,0,-12179.4,644.22,-67.1,5.18,''),
(415,3,10,2569,300000,0,0,0,0,0,0,0,-1777.64,-1513.58,75.51,5.28,''),
(415,3,10,2570,300000,0,0,0,0,0,0,0,-1778.46,-1510.57,75.17,5.22,''),
(416,3,10,2569,300000,0,0,0,0,0,0,0,-1797.32,-1504.7,99.39,5.14,''),
(416,3,10,2570,300000,0,0,0,0,0,0,0,-1789.8,-1499.9,99.38,4.6,''),
(417,3,10,2569,300000,0,0,0,0,0,0,0,-1772.93,-1505.9,91.87,5.7,''),
(417,3,10,2570,300000,0,0,0,0,0,0,0,-1774.76,-1495.07,90.6,5.27,''),
(420,0,10,2755,3000000,0,0,0,0,0,0,0,-931.73,-3111.81,48.517,3.27404,''),
(452,0,10,2937,3000000,0,0,0,0,0,0,0,-2360.55,-4102.38,6.93,2.25,''),
(498,3,10,3129,300000,0,0,0,0,0,0,0,-228.09,-5115.08,49.32,1.28,''),
(619,3,10,634,300000,0,0,0,0,0,0,0,-18.44,-617.46,14.12,0.08,''),
(664,3,10,3946,60000,0,0,0,0,0,0,0,-11142.5,-1151.78,43.61,5.28,''),
(727,0,10,4504,3000000,0,0,0,0,0,0,0,264.94,-264.13,145.03,3.41,''),
(747,5,10,4100,900000,0,0,0,0,0,0,0,-5587.69,-1571.45,11.21,6.14,''),
(747,25,10,4100,900000,0,0,0,0,0,0,0,-5587.69,-1571.45,11.21,6.14,''),
(747,25,10,4100,900000,0,0,0,0,0,0,0,-5589.63,-1575.89,11.75,6.02,''),
(747,40,10,4100,900000,0,0,0,0,0,0,0,-5587.69,-1571.45,11.21,6.14,''),
(747,40,10,4490,900000,0,0,0,0,0,0,0,-5589.63,-1575.89,11.75,6.02,''),
(1033,0,10,6069,3000000,0,0,0,0,0,0,0,-1126.97,2901.03,194.33,3.45,''),
(1033,0,10,6069,3000000,0,0,0,0,0,0,0,-1123.14,2892.65,194.96,3.11,''),
(1033,40,10,6070,3000000,0,0,0,0,0,0,0,-1129.04,2895.67,195.7,3.11,''),
(1033,40,10,6069,3000000,0,0,0,0,0,0,0,-1130.01,2901.11,195.35,3.35,''),
(1033,40,10,6069,3000000,0,0,0,0,0,0,0,-1125.46,2890.14,195.27,2.9,''),
(1033,100,10,5402,3000000,0,0,0,0,0,0,0,-1129.9,2896.08,195.91,3.15,''),
(1033,100,10,6070,3000000,0,0,0,0,0,0,0,-1130.26,2894.02,196.27,3.15,''),
(1033,100,10,6069,3000000,0,0,0,0,0,0,0,-1134.43,2902.35,196.56,3.85,''),
(1033,100,10,6069,3000000,0,0,0,0,0,0,0,-1131.98,2886.77,197.59,2.55,''),
(1131,0,10,5676,360000,0,0,0,0,0,0,0,-8973.17,1043.26,52.863,0.67,''),
(1134,0,10,5677,360000,0,0,0,0,0,0,0,-8973.17,1043.26,52.863,0.67,''),
(1370,0,10,6239,300000,0,0,0,0,0,0,0,332.821,-1473.05,42.2658,3.99963,''),
(1449,0,10,6268,360000,0,0,0,0,0,0,0,-770.29,-3720.32,42.453,2.81,''),
(1785,0,10,5676,360000,0,0,0,0,0,0,0,1704.61,41.9147,-63.8433,0.435896,''),
(1786,0,10,5677,360000,0,0,0,0,0,0,0,1704.61,41.9147,-63.8433,0.435896,''),
(1787,0,10,5676,360000,0,0,0,0,0,0,0,1806.16,-4373.75,-17.495,4.387,''),
(1788,0,10,5677,360000,0,0,0,0,0,0,0,1806.16,-4373.75,-17.495,4.387,''),
(2048,0,10,3456,3000000,0,0,0,0,0,0,0,-3592.45,-1872.06,91.62,0.19,''),
(2153,5,10,7167,900000,0,0,0,0,0,0,0,-1456.55,-3959.53,0.24,1.99,''),
(2313,0,10,7411,3000000,0,0,0,0,0,0,0,9600.86,2495.87,1334.94,3.91,''),
(2488,2,10,7273,300000,0,0,0,0,0,0,0,1665.56,1187.32,6.64,3.9,''),
(2609,0,11,27089,9000000,0,0,0,0,0,0,0,0,0,0,0,''),
(2609,0,11,27090,9000000,0,0,0,0,0,0,0,0,0,0,0,''),
(2609,0,11,27091,9000000,0,0,0,0,0,0,0,0,0,0,0,''),
(2609,0,11,27092,9000000,0,0,0,0,0,0,0,0,0,0,0,''),
(2609,0,11,27093,9000000,0,0,0,0,0,0,0,0,0,0,0,''),
(2609,0,10,7789,9000000,0,0,0,0,0,0,0,1902.83,1223.41,8.96,3.95,''),
(2609,0,10,7789,9000000,0,0,0,0,0,0,0,1894.64,1206.29,8.87,2.22,''),
(2609,0,10,7789,9000000,0,0,0,0,0,0,0,1874.45,1204.44,8.87,0.88,''),
(2609,0,10,7789,9000000,0,0,0,0,0,0,0,1874.18,1221.24,9.21,0.84,''),
(2609,0,10,7787,9000000,0,0,0,0,0,0,0,1879.02,1223.06,9.12,5.91,''),
(2609,0,10,7787,9000000,0,0,0,0,0,0,0,1882.07,1225.7,9.32,5.69,''),
(2609,0,10,7787,9000000,0,0,0,0,0,0,0,1886.97,1225.86,9.85,5.79,''),
(2609,0,10,7787,9000000,0,0,0,0,0,0,0,1892.28,1225.49,9.57,5.63,''),
(2609,0,10,7787,9000000,0,0,0,0,0,0,0,1894.72,1221.91,8.87,2.34,''),
(2609,0,10,7787,9000000,0,0,0,0,0,0,0,1890.08,1218.68,8.87,1.59,''),
(2609,0,10,7787,9000000,0,0,0,0,0,0,0,1883.5,1218.25,8.9,0.67,''),
(2609,0,10,7787,9000000,0,0,0,0,0,0,0,1886.93,1221.4,8.94,1.6,''),
(2609,0,10,8876,9000000,0,0,0,0,0,0,0,1883.76,1222.3,9.11,6.26,''),
(2609,0,10,8876,9000000,0,0,0,0,0,0,0,1889.82,1222.51,9.03,0.97,''),
(2609,0,10,8876,9000000,0,0,0,0,0,0,0,1898.23,1217.97,8.87,3.42,''),
(2609,0,10,8876,9000000,0,0,0,0,0,0,0,1877.4,1216.41,8.97,0.37,''),
(2609,0,10,7788,9000000,0,0,0,0,0,0,0,1893.07,1215.26,8.87,3.08,''),
(2609,0,10,7788,9000000,0,0,0,0,0,0,0,1878.57,1214.16,8.87,3.12,''),
(2609,0,10,7788,9000000,0,0,0,0,0,0,0,1889.94,1212.21,8.87,1.59,''),
(2609,0,10,7788,9000000,0,0,0,0,0,0,0,1883.74,1212.35,8.87,1.59,''),
(2609,0,10,8877,9000000,0,0,0,0,0,0,0,1877,1207.27,8.87,3.8,''),
(2609,0,10,8877,9000000,0,0,0,0,0,0,0,1873.63,1204.65,8.87,0.61,''),
(2609,0,10,8877,9000000,0,0,0,0,0,0,0,1896.46,1205.62,8.87,5.72,''),
(2609,0,10,8877,9000000,0,0,0,0,0,0,0,1899.63,1202.52,8.87,2.46,''),
(2609,300,10,7789,9000000,0,0,0,0,0,0,0,1902.83,1223.41,8.96,3.95,''),
(2609,300,10,7789,9000000,0,0,0,0,0,0,0,1894.64,1206.29,8.87,2.22,''),
(2609,300,10,7789,9000000,0,0,0,0,0,0,0,1874.45,1204.44,8.87,0.88,''),
(2609,300,10,7789,9000000,0,0,0,0,0,0,0,1874.18,1221.24,9.21,0.84,''),
(2609,300,10,7787,9000000,0,0,0,0,0,0,0,1879.02,1223.06,9.12,5.91,''),
(2609,300,10,7787,9000000,0,0,0,0,0,0,0,1882.07,1225.7,9.32,5.69,''),
(2609,300,10,7787,9000000,0,0,0,0,0,0,0,1886.97,1225.86,9.85,5.79,''),
(2609,300,10,7787,9000000,0,0,0,0,0,0,0,1892.28,1225.49,9.57,5.63,''),
(2609,300,10,7787,9000000,0,0,0,0,0,0,0,1894.72,1221.91,8.87,2.34,''),
(2609,300,10,7787,9000000,0,0,0,0,0,0,0,1890.08,1218.68,8.87,1.59,''),
(2609,300,10,7787,9000000,0,0,0,0,0,0,0,1883.5,1218.25,8.9,0.67,''),
(2609,300,10,7787,9000000,0,0,0,0,0,0,0,1886.93,1221.4,8.94,1.6,''),
(2609,300,10,8876,9000000,0,0,0,0,0,0,0,1883.76,1222.3,9.11,6.26,''),
(2609,300,10,8876,9000000,0,0,0,0,0,0,0,1889.82,1222.51,9.03,0.97,''),
(2609,300,10,8876,9000000,0,0,0,0,0,0,0,1898.23,1217.97,8.87,3.42,''),
(2609,300,10,8876,9000000,0,0,0,0,0,0,0,1877.4,1216.41,8.97,0.37,''),
(2609,300,10,7788,9000000,0,0,0,0,0,0,0,1893.07,1215.26,8.87,3.08,''),
(2609,300,10,7788,9000000,0,0,0,0,0,0,0,1878.57,1214.16,8.87,3.12,''),
(2609,300,10,7788,9000000,0,0,0,0,0,0,0,1889.94,1212.21,8.87,1.59,''),
(2609,300,10,7788,9000000,0,0,0,0,0,0,0,1883.74,1212.35,8.87,1.59,''),
(2609,300,10,8877,9000000,0,0,0,0,0,0,0,1877,1207.27,8.87,3.8,''),
(2609,300,10,8877,9000000,0,0,0,0,0,0,0,1873.63,1204.65,8.87,0.61,''),
(2609,300,10,8877,9000000,0,0,0,0,0,0,0,1896.46,1205.62,8.87,5.72,''),
(2609,300,10,8877,9000000,0,0,0,0,0,0,0,1899.63,1202.52,8.87,2.46,''),
(2609,300,10,7275,9000000,0,0,0,0,0,0,0,1889.23,1207.72,8.87,1.47,''),
(2609,300,10,7796,9000000,0,0,0,0,0,0,0,1879.77,1207.96,8.87,1.55,''),
(2609,600,11,27086,9000000,0,0,0,0,0,0,0,0,0,0,0,''),
(2648,0,10,2707,9000000,0,0,0,0,0,0,0,-407,-2862,77.31,5.87,''),
(2980,0,10,3475,180000,0,0,0,0,0,0,0,436.258,-3058,92.434,3.952,''),
(2998,0,10,3257,180000,0,0,0,0,0,0,0,-435,-3428,91.75,5.323,''),
(3084,0,10,8392,9000000,0,0,0,0,0,0,0,2249,-7221.97,13.82,1.02,''),
(3201,2,9,16736,600,0,0,0,0,0,0,0,0,0,0,0,''),
(3201,2,9,16741,600,0,0,0,0,0,0,0,0,0,0,0,''),
(3202,2,9,16737,600,0,0,0,0,0,0,0,0,0,0,0,''),
(3202,2,9,16742,600,0,0,0,0,0,0,0,0,0,0,0,''),
(3203,2,9,16738,600,0,0,0,0,0,0,0,0,0,0,0,''),
(3203,2,9,16743,600,0,0,0,0,0,0,0,0,0,0,0,''),
(3204,2,9,16735,600,0,0,0,0,0,0,0,0,0,0,0,''),
(3204,2,9,16740,600,0,0,0,0,0,0,0,0,0,0,0,''),
(3241,5,10,8581,600000,0,0,0,0,0,0,0,4279.11,-6295.57,95.56,0.05,''),
(3241,20,10,8578,900000,0,0,0,0,0,0,0,4279.11,-6295.57,95.56,0.05,''),
(3301,2,10,7664,900000,0,0,0,0,0,0,0,-11234.4,-2842.68,157.92,1.42,''),
(3708,3,10,9453,300000,0,0,0,0,0,0,0,-8170.74,-5078.13,15.83,4.83,''),
(3718,10,11,17428,180000,0,0,0,0,0,0,0,0,0,0,0,''),
(3839,0,10,9598,3000000,0,0,0,0,0,0,0,5998.7,-1208,377.75,0.36,''),
(3938,0,10,10373,3000000,0,0,0,0,0,0,0,6881.64,-506.63,40.14,2.02,''),
(3973,0,10,8075,9000000,0,0,0,0,0,0,0,-2764.68,2623.21,70.4204,2.33578,''),
(3980,0,9,27142,180,0,0,0,0,0,0,0,0,0,0,0,''),
(3981,0,10,9684,3000000,0,0,0,0,0,0,0,-7196.45,-2405.63,-217.28,4.8,''),
(4338,0,10,10040,3000000,0,0,0,0,0,0,0,-7968.53,-1097.05,-327.09,3.3,''),
(4338,0,10,10040,3000000,0,0,0,0,0,0,0,-7979.87,-1095.38,-327.55,5.94,''),
(4338,40,10,10040,3000000,0,0,0,0,0,0,0,-7976.31,-1101.03,-328.11,6.1,''),
(4338,40,10,10040,3000000,0,0,0,0,0,0,0,-7969.05,-1102.24,-329.02,3.36,''),
(4338,40,10,10040,3000000,0,0,0,0,0,0,0,-7987.08,-1096.74,-329.16,5.55,''),
(4338,90,10,10040,3000000,0,0,0,0,0,0,0,-7977.93,-1079.71,-329.1,4.5,''),
(4338,90,10,10040,3000000,0,0,0,0,0,0,0,-7963.49,-1081.18,-328.64,4.32,''),
(4338,90,10,10041,3000000,0,0,0,0,0,0,0,-7969.74,-1077.94,-328.73,4.54,''),
(4845,0,10,10584,300000,0,0,0,0,0,0,0,-13.62,-395.96,48.73,2.61,'summon urok (not proper, event need script)'),
(4884,0,10,9816,9000000,0,0,0,0,0,0,0,144.32,-258.16,96.32,5.11,''),
(4975,0,10,10737,3000000,0,0,0,0,0,0,0,8072.38,-3833.81,690.03,4.56,''),
(5225,5,10,11058,900000,0,0,0,0,0,0,0,3487.05,-3289.75,131.79,4.69,''),
(5246,0,10,12319,3000000,0,0,0,0,0,0,0,331.5,-2272.41,241.82,5.23,''),
(5300,5,10,11120,900000,0,0,0,0,0,0,0,3589.51,-2991.87,125.18,3.35,''),
(5301,5,10,11121,900000,0,0,0,0,0,0,0,3818.7,-3730.37,141.88,1.86,''),
(5618,2,10,16119,300000,0,0,0,0,0,0,0,254.232,0.3417,84.8407,0,'Scholo - Summons in Polkelt Room, uncertain'),
(5618,2,10,16119,300000,0,0,0,0,0,0,0,257.713,4.0226,84.8407,0,'Scholo - Summons in Polkelt Room, uncertain'),
(5618,2,10,16119,300000,0,0,0,0,0,0,0,258.67,-2.60656,84.8407,0,'Scholo - Summons in Polkelt Room, uncertain'),
(5619,2,10,16119,300000,0,0,0,0,0,0,0,184.052,-73.5649,84.8407,0,'Scholo - Summons in Theolen Room, uncertain'),
(5619,2,10,16119,300000,0,0,0,0,0,0,0,179.595,-73.7045,84.8407,0,'Scholo - Summons in Theolen Room, uncertain'),
(5619,2,10,16119,300000,0,0,0,0,0,0,0,180.645,-78.2143,84.8407,0,'Scholo - Summons in Theolen Room, uncertain'),
(5619,3,10,16119,300000,0,0,0,0,0,0,0,183.227,-78.1518,84.8407,0,'Scholo - Summons in Theolen Room, uncertain'),
(5620,2,10,16119,300000,0,0,0,0,0,0,0,100.94,-1.8016,85.2289,0,'Scholo - Summons in Malicia Room, uncertain'),
(5620,2,10,16119,300000,0,0,0,0,0,0,0,101.373,0.4882,85.2289,0,'Scholo - Summons in Malicia Room, uncertain'),
(5620,2,10,16119,300000,0,0,0,0,0,0,0,101.46,-4.474,85.2289,0,'Scholo - Summons in Malicia Room, uncertain'),
(5621,2,10,16119,300000,0,0,0,0,0,0,0,240.345,0.7368,72.6722,0,'Scholo - Summons in Illucia Room, uncertain'),
(5621,2,10,16119,300000,0,0,0,0,0,0,0,240.363,-2.952,72.6722,0,'Scholo - Summons in Illucia Room, uncertain'),
(5621,2,10,16119,300000,0,0,0,0,0,0,0,240.67,3.34949,72.6722,0,'Scholo - Summons in Illucia Room, uncertain'),
(5622,2,10,16119,300000,0,0,0,0,0,0,0,184.052,-73.5649,70.7734,0,'Scholo - Summons in Barov Room, uncertain'),
(5622,2,10,16119,300000,0,0,0,0,0,0,0,179.595,-73.7045,70.7734,0,'Scholo - Summons in Barov Room, uncertain'),
(5622,2,10,16119,300000,0,0,0,0,0,0,0,180.645,-78.2143,70.7734,0,'Scholo - Summons in Barov Room, uncertain'),
(5622,3,10,16119,300000,0,0,0,0,0,0,0,183.227,-78.1518,70.7734,0,'Scholo - Summons in Barov Room, uncertain'),
(5623,2,10,16119,300000,0,0,0,0,0,0,0,115.395,-1.5555,75.3663,0,'Scholo - Summons in Ravenian Room, uncertain'),
(5623,2,10,16119,300000,0,0,0,0,0,0,0,117.713,1.8066,75.3663,0,'Scholo - Summons in Ravenian Room, uncertain'),
(5623,2,10,16119,300000,0,0,0,0,0,0,0,118.67,-5.1001,75.3663,0,'Scholo - Summons in Ravenian Room, uncertain'),
(5759,2,10,11886,600000,0,0,0,0,0,0,0,1571.63,-3276,88.88,6.05,''),
(5759,6,10,11887,600000,0,0,0,0,0,0,0,1569.4,-3272,88.15,0.28,''),
(5759,6,10,11887,600000,0,0,0,0,0,0,0,1572.08,-3278,89.31,0.34,''),
(5759,6,10,11887,600000,0,0,0,0,0,0,0,1576.6,-3275,89.08,0.16,''),
(5991,0,10,12138,180000,0,0,0,0,0,0,0,6331.9,93.3575,21.4216,1.1349,''),
(6028,0,10,12138,180000,0,0,0,0,0,0,0,-2500.89,-1628.45,91.7042,6.01041,''),
(6138,0,10,2179,3000000,0,0,0,0,0,0,0,6873.65,-659.95,84.16,0.76,''),
(6138,0,10,12321,3000000,0,0,0,0,0,0,0,6881.62,-651.81,84.59,1.05,''),
(6721,5,10,3743,180000,0,0,0,0,0,0,0,2202.16,-1544.48,87.796,0,''),
(6721,5,10,3749,180000,0,0,0,0,0,0,0,2237.48,-1524.45,89.7827,0,''),
(6721,25,10,3743,180000,0,0,0,0,0,0,0,2260.9,-1547.91,89.1733,0,''),
(6721,25,10,3749,180000,0,0,0,0,0,0,0,2235.44,-1578.43,86.4944,0,''),
(6721,25,10,3750,180000,0,0,0,0,0,0,0,2208.93,-1567.59,87.2283,0,''),
(6721,55,10,3749,180000,0,0,0,0,0,0,0,2202.16,-1544.48,87.796,0,''),
(6721,55,10,3750,180000,0,0,0,0,0,0,0,2237.48,-1524.45,89.7827,0,''),
(6721,75,10,3749,180000,0,0,0,0,0,0,0,2260.9,-1547.91,89.1733,0,''),
(6721,75,10,3750,180000,0,0,0,0,0,0,0,2235.44,-1578.43,86.4944,0,''),
(6721,75,10,3743,180000,0,0,0,0,0,0,0,2208.93,-1567.59,87.2283,0,''),
(6721,105,10,3750,180000,0,0,0,0,0,0,0,2202.16,-1544.48,87.796,0,''),
(6721,105,10,3743,180000,0,0,0,0,0,0,0,2237.48,-1524.45,89.7827,0,''),
(6721,125,10,3750,180000,0,0,0,0,0,0,0,2260.9,-1547.91,89.1733,0,''),
(6721,125,10,3743,180000,0,0,0,0,0,0,0,2235.44,-1578.43,86.4944,0,''),
(6721,125,10,3749,180000,0,0,0,0,0,0,0,2208.93,-1567.59,87.2283,0,''),
(6721,155,10,3743,180000,0,0,0,0,0,0,0,2202.16,-1544.48,87.796,0,''),
(6721,155,10,3749,180000,0,0,0,0,0,0,0,2237.48,-1524.45,89.7827,0,''),
(6721,180,10,12918,180000,0,0,0,0,0,0,0,2208.93,-1567.59,87.2283,0,''),
(8175,5,10,14351,900000,0,0,0,0,0,0,0,588.44,606.87,-4.75,5.62,''),
(8328,0,10,14467,3000000,0,0,0,0,0,0,0,5803.74,-986,409.76,3.08,''),
(8420,0,10,14500,60000,0,0,0,0,0,0,0,-38.8,812.69,-29.53,0,''),
(8420,5,10,14482,1000000,0,0,0,0,0,0,0,-46.09,835.36,-29.53,0,''),
(8420,5,10,14482,1000000,0,0,0,0,0,0,0,-42.93,836.33,-29.53,0,''),
(8420,5,10,14482,1000000,0,0,0,0,0,0,0,-38.99,836.11,-29.53,0,''),
(8420,5,10,14482,1000000,0,0,0,0,0,0,0,-34.41,835.52,-29.53,0,''),
(8420,5,10,14482,1000000,0,0,0,0,0,0,0,-18.06,824.63,-29.53,0,''),
(8420,5,10,14482,1000000,0,0,0,0,0,0,0,-16.21,820.88,-29.53,0,''),
(8420,5,10,14482,1000000,0,0,0,0,0,0,0,-14.66,817.02,-29.53,0,''),
(8420,5,10,14482,1000000,0,0,0,0,0,0,0,-15.42,812.75,-29.53,0,''),
(8420,8,9,99782,900,0,0,0,0,0,0,0,0,0,0,0,''),
(8420,10,10,14482,1000000,0,0,0,0,0,0,0,-61.79,816.85,-29.53,0,''),
(8420,10,10,14482,1000000,0,0,0,0,0,0,0,-60.93,820.51,-29.53,0,''),
(8420,10,10,14482,1000000,0,0,0,0,0,0,0,-59.12,824.9,-29.53,0,''),
(8420,10,10,14482,1000000,0,0,0,0,0,0,0,-57.25,827.99,-29.53,0,''),
(8420,30,9,99781,900,0,0,0,0,0,0,0,0,0,0,0,''),
(8420,30,10,14483,3000000,0,0,0,0,0,0,0,-16.21,820.88,-29.53,0,''),
(8420,40,10,14482,1000000,0,0,0,0,0,0,0,-49.92,799.51,-29.53,0,''),
(8420,40,10,14482,1000000,0,0,0,0,0,0,0,-53.75,794.28,-29.53,0,''),
(8420,40,10,14482,1000000,0,0,0,0,0,0,0,-56.91,797.55,-29.53,0,''),
(8420,40,10,14482,1000000,0,0,0,0,0,0,0,-59.82,800.75,-29.53,0,''),
(8420,100,10,14483,3000000,0,0,0,0,0,0,0,-57.25,827.99,-29.53,0,''),
(8420,110,10,14482,1000000,0,0,0,0,0,0,0,-14.66,817.02,-29.53,0,''),
(8420,110,10,14482,1000000,0,0,0,0,0,0,0,-15.42,812.75,-29.53,0,''),
(8420,110,9,99780,900,0,0,0,0,0,0,0,0,0,0,0,''),
(8420,120,10,14482,1000000,0,0,0,0,0,0,0,-38.99,836.11,-29.53,0,''),
(8420,120,10,14482,1000000,0,0,0,0,0,0,0,-34.41,835.52,-29.53,0,''),
(8420,120,10,14482,1000000,0,0,0,0,0,0,0,-18.06,824.63,-29.53,0,''),
(8420,120,10,14482,1000000,0,0,0,0,0,0,0,-16.21,820.88,-29.53,0,''),
(8420,160,10,14482,1000000,0,0,0,0,0,0,0,-59.12,824.9,-29.53,0,''),
(8420,160,10,14482,1000000,0,0,0,0,0,0,0,-57.25,827.99,-29.53,0,''),
(8420,160,10,14482,1000000,0,0,0,0,0,0,0,-46.09,835.36,-29.53,0,''),
(8420,160,10,14482,1000000,0,0,0,0,0,0,0,-42.93,836.33,-29.53,0,''),
(8420,180,9,99779,900,0,0,0,0,0,0,0,0,0,0,0,''),
(8420,200,10,14483,3000000,0,0,0,0,0,0,0,-57.25,827.99,-29.53,0,''),
(8420,210,10,14482,1000000,0,0,0,0,0,0,0,-59.82,800.75,-29.53,0,''),
(8420,210,10,14482,1000000,0,0,0,0,0,0,0,-61.79,816.85,-29.53,0,''),
(8420,210,10,14482,1000000,0,0,0,0,0,0,0,-60.93,820.51,-29.53,0,''),
(8420,260,9,99778,900,0,0,0,0,0,0,0,0,0,0,0,''),
(8420,270,10,14482,1000000,0,0,0,0,0,0,0,-16.21,820.88,-29.53,0,''),
(8420,270,10,14482,1000000,0,0,0,0,0,0,0,-14.66,817.02,-29.53,0,''),
(8420,270,10,14482,1000000,0,0,0,0,0,0,0,-15.42,812.75,-29.53,0,''),
(8420,270,10,14482,1000000,0,0,0,0,0,0,0,-49.92,799.51,-29.53,0,''),
(8420,270,10,14482,1000000,0,0,0,0,0,0,0,-53.75,794.28,-29.53,0,''),
(8420,270,10,14482,1000000,0,0,0,0,0,0,0,-56.91,797.55,-29.53,0,''),
(8420,300,9,99777,900,0,0,0,0,0,0,0,0,0,0,0,''),
(8420,300,10,14482,1000000,0,0,0,0,0,0,0,-18.06,824.63,-29.53,0,''),
(8420,310,10,14482,1000000,0,0,0,0,0,0,0,-46.09,835.36,-29.53,0,''),
(8420,310,10,14482,1000000,0,0,0,0,0,0,0,-42.93,836.33,-29.53,0,''),
(8420,310,10,14482,1000000,0,0,0,0,0,0,0,-38.99,836.11,-29.53,0,''),
(8420,310,10,14482,1000000,0,0,0,0,0,0,0,-34.41,835.52,-29.53,0,''),
(8420,310,10,14483,3000000,0,0,0,0,0,0,0,-16.21,820.88,-29.53,0,''),
(8420,370,9,99776,900,0,0,0,0,0,0,0,0,0,0,0,''),
(8420,380,10,14482,1000000,0,0,0,0,0,0,0,-49.92,799.51,-29.53,0,''),
(8420,380,10,14482,1000000,0,0,0,0,0,0,0,-53.75,794.28,-29.53,0,''),
(8420,380,10,14482,1000000,0,0,0,0,0,0,0,-56.91,797.55,-29.53,0,''),
(8420,380,10,14482,1000000,0,0,0,0,0,0,0,-59.82,800.75,-29.53,0,''),
(8420,380,10,14482,1000000,0,0,0,0,0,0,0,-61.79,816.85,-29.53,0,''),
(8420,380,10,14482,1000000,0,0,0,0,0,0,0,-60.93,820.51,-29.53,0,''),
(8420,380,10,14482,1000000,0,0,0,0,0,0,0,-59.12,824.9,-29.53,0,''),
(8420,380,10,14482,1000000,0,0,0,0,0,0,0,-57.25,827.99,-29.53,0,''),
(8420,460,10,14482,1000000,0,0,0,0,0,0,0,-18.06,824.63,-29.53,0,''),
(8420,460,10,14482,1000000,0,0,0,0,0,0,0,-16.21,820.88,-29.53,0,''),
(8420,460,10,14482,1000000,0,0,0,0,0,0,0,-14.66,817.02,-29.53,0,''),
(8420,460,10,14483,3000000,0,0,0,0,0,0,0,-42.93,836.33,-29.53,0,''),
(8420,460,9,99775,900,0,0,0,0,0,0,0,0,0,0,0,''),
(8420,460,10,14482,1000000,0,0,0,0,0,0,0,-15.42,812.75,-29.53,0,''),
(8420,520,10,14482,1000000,0,0,0,0,0,0,0,-42.93,836.33,-29.53,0,''),
(8420,520,10,14482,1000000,0,0,0,0,0,0,0,-38.99,836.11,-29.53,0,''),
(8420,520,10,14482,1000000,0,0,0,0,0,0,0,-34.41,835.52,-29.53,0,''),
(8420,530,10,14482,1000000,0,0,0,0,0,0,0,-46.09,835.36,-29.53,0,''),
(8420,530,10,14483,3000000,0,0,0,0,0,0,0,-57.25,827.99,-29.53,0,''),
(8420,550,10,14483,3000000,0,0,0,0,0,0,0,-57.25,827.99,-29.53,0,''),
(8420,600,9,99774,900,0,0,0,0,0,0,0,0,0,0,0,''),
(8420,620,10,14482,1000000,0,0,0,0,0,0,0,-57.25,827.99,-29.53,0,''),
(8420,630,10,14482,1000000,0,0,0,0,0,0,0,-59.12,824.9,-29.53,0,''),
(8420,640,10,14482,1000000,0,0,0,0,0,0,0,-60.93,820.51,-29.53,0,''),
(8420,650,10,14482,1000000,0,0,0,0,0,0,0,-61.79,816.85,-29.53,0,''),
(8420,660,10,14482,1000000,0,0,0,0,0,0,0,-59.82,800.75,-29.53,0,''),
(8420,660,10,14482,1000000,0,0,0,0,0,0,0,-56.91,797.55,-29.53,0,''),
(8420,660,10,14482,1000000,0,0,0,0,0,0,0,-53.75,794.28,-29.53,0,''),
(8420,660,10,14482,1000000,0,0,0,0,0,0,0,-49.92,799.51,-29.53,0,''),
(8420,750,9,99784,900,0,0,0,0,0,0,0,0,0,0,0,''),
(8420,750,9,99896,900,0,0,0,0,0,0,0,0,0,0,0,''),
(8428,0,9,99783,15,0,0,0,0,0,0,0,0,0,0,0,''),
(8428,10,10,14502,9000000,0,0,0,0,0,0,0,-35.712,796.486,-29.5359,1.90495,''),
(8436,3,10,14514,3000000,0,0,0,0,0,0,0,145.4,184.14,94.31,4.19,''),
(8436,3,10,14514,3000000,0,0,0,0,0,0,0,150.32,172.59,93.7,3.12,''),
(8436,20,10,14518,3000000,0,0,0,0,0,0,0,144.35,159.2,93.07,2.36,''),
(8436,60,10,14513,3000000,0,0,0,0,0,0,0,145.4,184.14,94.31,4.19,''),
(8436,60,10,14513,3000000,0,0,0,0,0,0,0,150.32,172.59,93.7,3.12,''),
(8436,80,10,14520,3000000,0,0,0,0,0,0,0,144.35,159.2,93.07,2.36,''),
(8436,120,10,14512,3000000,0,0,0,0,0,0,0,145.4,184.14,94.31,4.19,''),
(8436,120,10,14512,3000000,0,0,0,0,0,0,0,150.32,172.59,93.7,3.12,''),
(8436,140,10,14519,3000000,0,0,0,0,0,0,0,144.35,159.2,93.07,2.36,''),
(8436,200,10,14511,3000000,0,0,0,0,0,0,0,145.4,184.14,94.31,4.19,''),
(8436,200,10,14511,3000000,0,0,0,0,0,0,0,150.32,172.59,93.7,3.12,''),
(8436,200,10,14511,3000000,0,0,0,0,0,0,0,144.35,159.2,93.07,2.36,''),
(8436,230,10,14521,3000000,0,0,0,0,0,0,0,144.35,159.2,93.07,2.36,''),
(8436,300,10,14516,9000000,0,0,0,0,0,0,0,135.46,155.2,92.21,2.49,''),
(8438,0,10,14500,180000,0,0,0,0,0,0,0,38.62,161.78,83.5456,4.69993,''),
(8605,2,10,14748,600000,0,0,0,0,0,0,0,414.5,-4812.67,12.54,4.48,''),
(8605,2,10,14748,600000,0,0,0,0,0,0,0,417.09,-4817.01,12.06,4.58,''),
(9066,10,10,14515,900000,0,0,0,0,0,0,0,-11540.7,-1627.71,41.27,0.1,''),
(9104,0,10,15114,9000000,0,0,0,0,0,0,0,-11685.9,-1781.48,12.59,1.43,''),
(9208,0,10,14862,9000000,0,0,0,0,0,0,0,-7276.38,852.34,3.64,0.5,''),
(9425,2,12,600016,76,0,0,0,0,0,0,0,0,0,0,0,'Close the AQ gate'),
(9426,2,12,600017,72,0,0,0,0,0,0,0,0,0,0,0,'Close the AQ roots'),
(9427,2,12,600015,60,0,0,0,0,0,0,0,0,0,0,0,'Close the AQ runes'),
(9527,5,10,15554,3000000,0,0,0,0,0,0,0,5100.93,-5104.51,924.57,2.69,''),
(9542,0,10,15571,9000000,0,0,0,0,0,0,0,3483,-6692.79,-2.43,0.8,''),
(9571,0,10,15623,3000000,0,0,0,0,0,0,0,6724.96,-5275.13,778.23,1.82,''),
(10015,0,10,16387,9000000,0,0,0,0,0,0,0,3644,-3473.77,138.56,4.47,'');
/*!40000 ALTER TABLE `event_scripts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
