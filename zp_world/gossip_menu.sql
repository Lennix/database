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
-- Table structure for table `gossip_menu`
--

DROP TABLE IF EXISTS `gossip_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gossip_menu` (
  `entry` smallint(6) unsigned NOT NULL DEFAULT '0',
  `text_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cond_1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cond_1_val_1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cond_1_val_2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cond_2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cond_2_val_1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cond_2_val_2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`text_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gossip_menu`
--

LOCK TABLES `gossip_menu` WRITE;
/*!40000 ALTER TABLE `gossip_menu` DISABLE KEYS */;
INSERT INTO `gossip_menu` VALUES
(23,523,0,0,0,0,0,0),
(24,522,0,0,0,0,0,0),
(64,565,0,0,0,0,0,0),
(83,580,0,0,0,0,0,0),
(126,623,0,0,0,0,0,0),
(141,4793,0,0,0,0,0,0),
(264,761,0,0,0,0,0,0),
(265,764,0,0,0,0,0,0),
(268,766,0,0,0,0,0,0),
(342,820,0,0,0,0,0,0),
(344,822,0,0,0,0,0,0),
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
(443,940,0,0,0,0,0,0),
(444,941,0,0,0,0,0,0),
(523,1040,0,0,0,0,0,0),
(593,1261,0,0,0,0,0,0),
(597,1135,0,0,0,0,0,0),
(643,1202,0,0,0,0,0,0),
(655,4973,0,0,0,0,0,0),
(657,1221,0,0,0,0,0,0),
(684,1234,0,0,0,0,0,0),
(685,1235,0,0,0,0,0,0),
(686,1236,0,0,0,0,0,0),
(688,1238,0,0,0,0,0,0),
(692,1242,0,0,0,0,0,0),
(699,1250,0,0,0,0,0,0),
(702,1254,0,0,0,0,0,0),
(703,1255,0,0,0,0,0,0),
(704,1256,0,0,0,0,0,0),
(721,1272,0,0,0,0,0,0),
(740,1300,0,0,0,0,0,0),
(742,1291,0,0,0,0,0,0),
(743,1292,0,0,0,0,0,0),
(744,1293,0,0,0,0,0,0),
(745,1294,0,0,0,0,0,0),
(746,1295,0,0,0,0,0,0),
(747,1296,0,0,0,0,0,0),
(748,1297,0,0,0,0,0,0),
(749,1298,0,0,0,0,0,0),
(750,1299,0,0,0,0,0,0),
(751,1301,0,0,0,0,0,0),
(780,1332,0,0,0,0,0,0),
(781,1333,0,0,0,0,0,0),
(782,1334,0,0,0,0,0,0),
(783,1335,0,0,0,0,0,0),
(784,1336,0,0,0,0,0,0),
(785,1337,0,0,0,0,0,0),
(786,1338,0,0,0,0,0,0),
(787,1339,0,0,0,0,0,0),
(788,1340,0,0,0,0,0,0),
(789,1341,0,0,0,0,0,0),
(791,1343,0,0,0,0,0,0),
(900,1471,0,0,0,0,0,0),
(922,1493,0,0,0,0,0,0),
(942,1519,0,0,0,0,0,0),
(980,1571,0,0,0,0,0,0),
(1012,1606,0,0,0,0,0,0),
(1022,1619,0,0,0,0,0,0),
(1042,1635,0,0,0,0,0,0),
(1043,1640,0,0,0,0,0,0),
(1120,1734,0,0,0,0,0,0),
(1142,1758,0,0,0,0,0,0),
(1221,1853,0,0,0,0,0,0),
(1262,1914,0,0,0,0,0,0),
(1290,938,0,0,0,0,0,0),
(1291,820,0,0,0,0,0,0),
(1293,824,0,0,0,0,0,0),
(1294,822,0,0,0,0,0,0),
(1296,821,0,0,0,0,0,0),
(1297,823,0,0,0,0,0,0),
(1403,2037,0,0,0,0,0,0),
(1404,2038,0,0,0,0,0,0),
(1423,2055,0,0,0,0,0,0),
(1467,2135,0,0,0,0,0,0),
(1467,2136,0,0,0,0,0,0),
(1468,2137,0,0,0,0,0,0),
(1481,2154,0,0,0,0,0,0),
(1482,2153,0,0,0,0,0,0),
(1503,5722,0,0,0,0,0,0),
(1561,2234,0,0,0,0,0,0),
(1581,824,0,0,0,0,0,0),
(1623,2275,0,0,0,0,0,0),
(1624,2278,0,0,0,0,0,0),
(1629,2284,0,0,0,0,0,0),
(1630,2285,0,0,0,0,0,0),
(1631,2286,0,0,0,0,0,0),
(1663,2315,0,0,0,0,0,0),
(1701,2353,0,0,0,0,0,0),
(1721,2355,0,0,0,0,0,0),
(1761,2393,0,0,0,0,0,0),
(1781,2414,0,0,0,0,0,0),
(1802,2433,0,0,0,0,0,0),
(1844,2496,0,0,0,0,0,0),
(1845,2497,0,0,0,0,0,0),
(1846,2499,0,0,0,0,0,0),
(1861,2500,0,0,0,0,0,0),
(1862,2501,0,0,0,0,0,0),
(1863,2502,0,0,0,0,0,0),
(1864,2503,0,0,0,0,0,0),
(1865,2504,0,0,0,0,0,0),
(1866,2513,0,0,0,0,0,0),
(1868,2515,0,0,0,0,0,0),
(1869,2516,0,0,0,0,0,0),
(1871,2518,0,0,0,0,0,0),
(1901,2554,0,0,0,0,0,0),
(1902,2555,0,0,0,0,0,0),
(1903,2556,0,0,0,0,0,0),
(1904,2557,0,0,0,0,0,0),
(1905,2558,0,0,0,0,0,0),
(1906,2559,0,0,0,0,0,0),
(1907,2560,0,0,0,0,0,0),
(1908,2561,0,0,0,0,0,0),
(1909,2562,0,0,0,0,0,0),
(1910,2563,0,0,0,0,0,0),
(1911,2564,0,0,0,0,0,0),
(1912,2565,0,0,0,0,0,0),
(1942,2594,0,0,0,0,0,0),
(1949,2599,0,0,0,0,0,0),
(1951,2593,0,0,0,0,0,0),
(1963,2637,0,0,0,0,0,0),
(1969,2642,0,0,0,0,0,0),
(1971,2644,0,0,0,0,0,0),
(1981,2653,0,0,0,0,0,0),
(2021,2676,0,0,0,0,0,0),
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
(2242,2954,0,0,0,0,0,0),
(2283,2973,0,0,0,0,0,0),
(2321,3014,0,0,0,0,0,0),
(2322,3017,0,0,0,0,0,0),
(2324,3019,0,0,0,0,0,0),
(2325,3020,0,0,0,0,0,0),
(2326,3021,0,0,0,0,0,0),
(2327,3023,0,0,0,0,0,0),
(2328,3024,0,0,0,0,0,0),
(2329,3025,0,0,0,0,0,0),
(2341,3026,0,0,0,0,0,0),
(2342,3033,0,0,0,0,0,0),
(2343,3022,0,0,0,0,0,0),
(2344,3035,0,0,0,0,0,0),
(2345,3036,0,0,0,0,0,0),
(2347,3337,0,0,0,0,0,0),
(2348,3037,0,0,0,0,0,0),
(2349,3038,0,0,0,0,0,0),
(2350,3039,0,0,0,0,0,0),
(2351,3034,0,0,0,0,0,0),
(2354,3040,0,0,0,0,0,0),
(2356,3042,0,0,0,0,0,0),
(2358,3044,0,0,0,0,0,0),
(2383,5715,0,0,0,0,0,0),
(2403,3075,0,0,0,0,0,0),
(2404,3076,0,0,0,0,0,0),
(2422,3094,0,0,0,0,0,0),
(2423,3095,0,0,0,0,0,0),
(2424,3096,0,0,0,0,0,0),
(2461,3153,0,0,0,0,0,0),
(2462,3154,0,0,0,0,0,0),
(2463,3155,0,0,0,0,0,0),
(2481,3173,0,0,0,0,0,0),
(2562,3234,0,0,0,0,0,0),
(2703,3375,0,0,0,0,0,0),
(2741,3395,0,0,0,0,0,0),
(2742,3398,0,0,0,0,0,0),
(2744,3405,0,0,0,0,0,0),
(2746,3409,0,0,0,0,0,0),
(2747,3412,0,0,0,0,0,0),
(2750,3421,0,0,0,0,0,0),
(2761,3456,0,0,0,0,0,0),
(2781,3461,0,0,0,0,0,0),
(2782,3466,0,0,0,0,0,0),
(2783,3471,0,0,0,0,0,0),
(2821,3513,0,0,0,0,0,0),
(2822,3514,0,0,0,0,0,0),
(2823,3515,0,0,0,0,0,0),
(2824,3516,0,0,0,0,0,0),
(2825,3517,0,0,0,0,0,0),
(2826,3518,0,0,0,0,0,0),
(2827,3519,0,0,0,0,0,0),
(2828,3520,0,0,0,0,0,0),
(2829,3521,0,0,0,0,0,0),
(2830,3524,0,0,0,0,0,0),
(2832,3526,0,0,0,0,0,0),
(2833,3527,0,0,0,0,0,0),
(2834,3528,0,0,0,0,0,0),
(2835,3529,0,0,0,0,0,0),
(2836,3530,0,0,0,0,0,0),
(2837,3531,0,0,0,0,0,0),
(2838,3532,0,0,0,0,0,0),
(2839,3533,0,0,0,0,0,0),
(2840,3534,0,0,0,0,0,0),
(2841,3535,0,0,0,0,0,0),
(2842,3536,0,0,0,0,0,0),
(2843,3537,0,0,0,0,0,0),
(2844,3538,0,0,0,0,0,0),
(2845,3539,0,0,0,0,0,0),
(2847,3541,0,0,0,0,0,0),
(2848,3542,0,0,0,0,0,0),
(2849,3543,0,0,0,0,0,0),
(2852,3546,0,0,0,0,0,0),
(2883,3559,0,0,0,0,0,0),
(2890,3566,0,0,0,0,0,0),
(2901,3573,0,0,0,0,0,0),
(2910,3583,0,0,0,0,0,0),
(2911,3585,0,0,0,0,0,0),
(2911,3584,0,0,0,0,0,0),
(2952,3666,0,0,0,0,0,0),
(2984,3673,0,0,0,0,0,0),
(3042,3754,0,0,0,0,0,0),
(3062,3794,0,0,0,0,0,0),
(3081,3813,0,0,0,0,0,0),
(3082,3814,0,0,0,0,0,0),
(3101,3833,0,0,0,0,0,0),
(3102,3834,0,0,0,0,0,0),
(3126,3860,0,0,0,0,0,0),
(3141,3873,0,0,0,0,0,0),
(3161,3893,0,0,0,0,0,0),
(3162,3896,0,0,0,0,0,0),
(3181,3935,0,0,0,0,0,0),
(3182,3937,0,0,0,0,0,0),
(3184,4039,0,0,0,0,0,0),
(3184,3940,0,0,0,0,0,0),
(3185,5844,0,0,0,0,0,0),
(3187,3954,0,0,0,0,0,0),
(3201,3959,0,0,0,0,0,0),
(3202,3960,0,0,0,0,0,0),
(3203,3961,0,0,0,0,0,0),
(3228,3985,0,0,0,0,0,0),
(3228,3984,0,0,0,0,0,0),
(3261,4013,0,0,0,0,0,0),
(3262,4014,0,0,0,0,0,0),
(3263,4015,0,0,0,0,0,0),
(3264,4016,0,0,0,0,0,0),
(3265,4017,0,0,0,0,0,0),
(3266,4018,0,0,0,0,0,0),
(3267,4019,0,0,0,0,0,0),
(3268,4020,0,0,0,0,0,0),
(3269,4021,0,0,0,0,0,0),
(3270,4022,0,0,0,0,0,0),
(3271,4023,0,0,0,0,0,0),
(3272,4024,0,0,0,0,0,0),
(3273,4025,0,0,0,0,0,0),
(3274,4026,0,0,0,0,0,0),
(3275,4027,0,0,0,0,0,0),
(3276,4028,0,0,0,0,0,0),
(3277,4029,0,0,0,0,0,0),
(3278,4030,0,0,0,0,0,0),
(3279,4031,0,0,0,0,0,0),
(3280,4032,0,0,0,0,0,0),
(3281,4033,0,0,0,0,0,0),
(3282,4034,0,0,0,0,0,0),
(3283,4035,0,0,0,0,0,0),
(3284,4036,0,0,0,0,0,0),
(3285,4037,0,0,0,0,0,0),
(3311,4051,0,0,0,0,0,0),
(3312,4052,0,0,0,0,0,0),
(3313,4053,0,0,0,0,0,0),
(3314,4054,0,0,0,0,0,0),
(3315,4055,0,0,0,0,0,0),
(3316,4056,0,0,0,0,0,0),
(3317,4057,0,0,0,0,0,0),
(3318,4058,0,0,0,0,0,0),
(3319,4059,0,0,0,0,0,0),
(3320,4060,0,0,0,0,0,0),
(3321,4061,0,0,0,0,0,0),
(3322,4062,0,0,0,0,0,0),
(3323,4063,0,0,0,0,0,0),
(3324,4064,0,0,0,0,0,0),
(3325,4065,0,0,0,0,0,0),
(3326,4066,0,0,0,0,0,0),
(3327,4067,0,0,0,0,0,0),
(3328,4068,0,0,0,0,0,0),
(3329,4069,0,0,0,0,0,0),
(3330,4070,0,0,0,0,0,0),
(3331,4072,0,0,0,0,0,0),
(3334,4074,0,0,0,0,0,0),
(3335,4075,0,0,0,0,0,0),
(3336,4076,0,0,0,0,0,0),
(3337,4077,0,0,0,0,0,0),
(3338,4078,0,0,0,0,0,0),
(3339,4079,0,0,0,0,0,0),
(3340,4080,0,0,0,0,0,0),
(3341,4081,0,0,0,0,0,0),
(3342,4082,0,0,0,0,0,0),
(3343,4083,0,0,0,0,0,0),
(3344,4084,0,0,0,0,0,0),
(3345,4085,0,0,0,0,0,0),
(3346,4086,0,0,0,0,0,0),
(3347,4087,0,0,0,0,0,0),
(3348,4088,0,0,0,0,0,0),
(3349,4089,0,0,0,0,0,0),
(3350,4090,0,0,0,0,0,0),
(3351,4091,0,0,0,0,0,0),
(3352,4092,0,0,0,0,0,0),
(3353,4093,0,0,0,0,0,0),
(3354,4095,0,0,0,0,0,0),
(3355,4096,0,0,0,0,0,0),
(3356,4097,0,0,0,0,0,0),
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
(3513,4267,0,0,0,0,0,0),
(3514,4268,0,0,0,0,0,0),
(3515,4269,0,0,0,0,0,0),
(3516,4270,0,0,0,0,0,0),
(3517,4271,0,0,0,0,0,0),
(3518,4272,0,0,0,0,0,0),
(3519,4264,0,0,0,0,0,0),
(3520,4274,0,0,0,0,0,0),
(3521,4275,0,0,0,0,0,0),
(3522,4276,0,0,0,0,0,0),
(3523,4277,0,0,0,0,0,0),
(3524,4278,0,0,0,0,0,0),
(3525,4279,0,0,0,0,0,0),
(3526,4280,0,0,0,0,0,0),
(3527,4281,0,0,0,0,0,0),
(3528,4282,0,0,0,0,0,0),
(3529,4283,0,0,0,0,0,0),
(3530,4284,0,0,0,0,0,0),
(3531,4285,0,0,0,0,0,0),
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
(3555,4311,0,0,0,0,0,0),
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
(3625,4399,0,0,0,0,0,0),
(3626,4401,0,0,0,0,0,0),
(3644,4440,0,0,0,0,0,0),
(3646,4443,0,0,0,0,0,0),
(3651,4450,0,0,0,0,0,0),
(3661,4473,0,0,0,0,0,0),
(3664,4477,0,0,0,0,0,0),
(3701,4513,0,0,0,0,0,0),
(3721,4516,0,0,0,0,0,0),
(3722,4517,0,0,0,0,0,0),
(3723,4518,0,0,0,0,0,0),
(3724,4519,0,0,0,0,0,0),
(3725,4520,0,0,0,0,0,0),
(3726,4521,0,0,0,0,0,0),
(3761,4573,0,0,0,0,0,0),
(3801,4633,0,0,0,0,0,0),
(3802,4634,0,0,0,0,0,0),
(3821,4357,0,0,0,0,0,0),
(3841,4693,0,0,0,0,0,0),
(3864,4716,0,0,0,0,0,0),
(3921,4774,0,0,0,0,0,0),
(3926,4785,0,0,0,0,0,0),
(3985,4841,0,0,0,0,0,0),
(4004,4859,0,0,0,0,0,0),
(4005,5840,0,0,0,0,0,0),
(4006,4862,0,0,0,0,0,0),
(4010,5003,0,0,0,0,0,0),
(4011,4998,0,0,0,0,0,0),
(4012,4998,0,0,0,0,0,0),
(4017,4888,0,0,0,0,0,0),
(4018,4876,0,0,0,0,0,0),
(4019,5862,0,0,0,0,0,0),
(4020,4879,0,0,0,0,0,0),
(4021,4874,0,0,0,0,0,0),
(4022,5865,0,0,0,0,0,0),
(4023,4996,0,0,0,0,0,0),
(4043,4933,0,0,0,0,0,0),
(4044,4934,0,0,0,0,0,0),
(4048,4938,0,0,0,0,0,0),
(4085,4979,0,0,0,0,0,0),
(4090,4990,0,0,0,0,0,0),
(4103,5005,0,0,0,0,0,0),
(4104,5005,0,0,0,0,0,0),
(4106,5009,0,0,0,0,0,0),
(4107,5010,0,0,0,0,0,0),
(4116,5031,0,0,0,0,0,0),
(4118,5037,0,0,0,0,0,0),
(4123,5054,0,0,0,0,0,0),
(4126,5069,0,0,0,0,0,0),
(4130,5089,0,0,0,0,0,0),
(4135,5112,0,0,0,0,0,0),
(4137,5118,0,0,0,0,0,0),
(4142,5133,0,0,0,0,0,0),
(4143,5136,0,0,0,0,0,0),
(4148,5157,0,0,0,0,0,0),
(4151,5172,0,0,0,0,0,0),
(4155,5187,0,0,0,0,0,0),
(4158,5196,0,0,0,0,0,0),
(4163,5213,0,0,0,0,0,0),
(4174,5265,0,0,0,0,0,0),
(4183,5279,0,0,0,0,0,0),
(4185,5285,0,0,0,0,0,0),
(4187,5291,0,0,0,0,0,0),
(4207,5340,0,0,0,0,0,0),
(4209,5350,0,0,0,0,0,0),
(4241,5397,0,0,0,0,0,0),
(4242,5398,0,0,0,0,0,0),
(4266,5428,0,0,0,0,0,0),
(4281,5453,0,0,0,0,0,0),
(4283,5455,0,0,0,0,0,0),
(4301,5473,0,0,0,0,0,0),
(4302,5474,0,0,0,0,0,0),
(4305,5477,0,0,0,0,0,0),
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
(4351,5551,0,0,0,0,0,0),
(4358,5580,0,0,0,0,0,0),
(4360,5582,0,0,0,0,0,0),
(4469,3976,0,0,0,0,0,0),
(4470,3976,0,0,0,0,0,0),
(4471,3976,0,0,0,0,0,0),
(4485,538,0,0,0,0,0,0),
(4506,5004,0,0,0,0,0,0),
(4516,5005,0,0,0,0,0,0),
(4524,4998,0,0,0,0,0,0),
(4525,4973,0,0,0,0,0,0),
(4526,4973,0,0,0,0,0,0),
(4527,4973,0,0,0,0,0,0),
(4528,5005,0,0,0,0,0,0),
(4529,5005,0,0,0,0,0,0),
(4530,5005,0,0,0,0,0,0),
(4534,563,0,0,0,0,0,0),
(4537,563,0,0,0,0,0,0),
(4538,563,0,0,0,0,0,0),
(4539,563,0,0,0,0,0,0),
(4552,561,0,0,0,0,0,0),
(4571,4781,0,0,0,0,0,0),
(4576,4794,0,0,0,0,0,0),
(4606,5717,0,0,0,0,0,0),
(4607,5717,0,0,0,0,0,0),
(4609,5720,0,0,0,0,0,0),
(4641,5715,0,0,0,0,0,0),
(4645,4973,0,0,0,0,0,0),
(4647,4998,0,0,0,0,0,0),
(4648,4987,0,0,0,0,0,0),
(4649,5721,0,0,0,0,0,0),
(4650,5721,0,0,0,0,0,0),
(4657,5002,0,0,0,0,0,0),
(4659,4835,0,0,0,0,0,0),
(4660,538,0,0,0,0,0,0),
(4661,538,0,0,0,0,0,0),
(4663,3976,0,0,0,0,0,0),
(4666,4434,0,0,0,0,0,0),
(4667,5722,0,0,0,0,0,0),
(4675,5000,0,0,0,0,0,0),
(4676,4833,0,0,0,0,0,0),
(4677,3974,0,0,0,0,0,0),
(4678,3974,0,0,0,0,0,0),
(4680,4435,0,0,0,0,0,0),
(4681,5723,0,0,0,0,0,0),
(4682,5722,0,0,0,0,0,0),
(4683,5724,0,0,0,0,0,0),
(4684,5724,0,0,0,0,0,0),
(4685,559,0,0,0,0,0,0),
(4690,4795,0,0,0,0,0,0),
(4691,4437,0,0,0,0,0,0),
(4697,5725,0,0,0,0,0,0),
(4741,5793,0,0,0,0,0,0),
(4742,6793,0,0,0,0,0,0),
(4746,5798,0,0,0,0,0,0),
(4762,7026,0,0,0,0,0,0),
(4781,5834,0,0,0,0,0,0),
(4783,5839,0,0,0,0,0,0),
(4783,5838,0,0,0,0,0,0),
(4821,5873,0,0,0,0,0,0),
(4822,5876,0,0,0,0,0,0),
(4823,5877,0,0,0,0,0,0),
(4826,5884,0,0,0,0,0,0),
(4827,5885,0,0,0,0,0,0),
(4901,5973,0,0,0,0,0,0),
(4902,5974,0,0,0,0,0,0),
(4903,5976,0,0,0,0,0,0),
(4904,5977,0,0,0,0,0,0),
(4905,5978,0,0,0,0,0,0),
(4906,5979,0,0,0,0,0,0),
(4921,5980,0,0,0,0,0,0),
(4923,5982,0,0,0,0,0,0),
(4924,5983,0,0,0,0,0,0),
(4925,5984,0,0,0,0,0,0),
(4926,5985,0,0,0,0,0,0),
(4927,5986,0,0,0,0,0,0),
(5102,6154,0,0,0,0,0,0),
(5103,6155,0,0,0,0,0,0),
(5123,5005,0,0,0,0,0,0),
(5221,6233,0,0,0,0,0,0),
(5222,6235,0,0,0,0,0,0),
(5262,6277,0,0,0,0,0,0),
(5263,6275,0,0,0,0,0,0),
(5265,6281,0,0,0,0,0,0),
(5266,6279,0,0,0,0,0,0),
(5268,6287,0,0,0,0,0,0),
(5269,6286,0,0,0,0,0,0),
(5270,6290,0,0,0,0,0,0),
(5271,6289,0,0,0,0,0,0),
(5382,6415,0,0,0,0,0,0),
(5382,6414,0,0,0,0,0,0),
(5461,6513,0,0,0,0,0,0),
(5483,6535,0,0,0,0,0,0),
(5602,6695,0,0,0,0,0,0),
(5665,6960,0,0,0,0,0,0),
(5665,6961,0,0,0,0,0,0),
(5708,6876,0,0,0,0,0,0),
(5708,6895,0,0,0,0,0,0),
(5715,6882,0,0,0,0,0,0),
(5721,6894,0,0,0,0,0,0),
(5727,6898,0,0,0,0,0,0),
(5728,6897,0,0,0,0,0,0),
(5729,6896,0,0,0,0,0,0),
(5739,6914,0,0,0,0,0,0),
(5740,6916,0,0,0,0,0,0),
(5742,6918,0,0,0,0,0,0),
(5744,6920,0,0,0,0,0,0),
(5746,6922,0,0,0,0,0,0),
(5750,6933,0,0,0,0,0,0),
(5752,6935,0,0,0,0,0,0),
(5753,6936,0,0,0,0,0,0),
(5782,6957,0,0,0,0,0,0),
(5819,6992,0,0,0,0,0,0),
(5848,7010,0,0,0,0,0,0),
(5849,7011,0,0,0,0,0,0),
(5851,7013,0,0,0,0,0,0),
(5853,7017,0,0,0,0,0,0),
(5853,7021,0,0,0,0,0,0),
(5854,7021,0,0,0,0,0,0),
(5855,7028,0,0,0,0,0,0),
(5856,7028,0,0,0,0,0,0),
(5882,7046,0,0,0,0,0,0),
(5883,7047,0,0,0,0,0,0),
(5902,7055,0,0,0,0,0,0),
(6023,7175,0,0,0,0,0,0),
(6028,7179,0,0,0,0,0,0),
(6037,7190,0,0,0,0,0,0),
(6042,7194,0,0,0,0,0,0),
(6043,7195,0,0,0,0,0,0),
(6044,7193,0,0,0,0,0,0),
(6089,7243,0,0,0,0,0,0),
(6090,7245,0,0,0,0,0,0),
(6091,7247,0,0,0,0,0,0),
(6092,7249,0,0,0,0,0,0),
(6094,7251,0,0,0,0,0,0),
(6161,7314,0,0,0,0,0,0),
(6162,7315,0,0,0,0,0,0),
(6181,7336,0,0,0,0,0,0),
(6182,7334,0,0,0,0,0,0),
(6183,7337,0,0,0,0,0,0),
(6184,7338,0,0,0,0,0,0),
(6185,7340,0,0,0,0,0,0),
(6186,7339,0,0,0,0,0,0),
(6187,7341,0,0,0,0,0,0),
(6201,7382,0,0,0,0,0,0),
(6202,7355,0,0,0,0,0,0),
(6203,7357,0,0,0,0,0,0),
(6204,7358,0,0,0,0,0,0),
(6205,7359,0,0,0,0,0,0),
(6206,7360,0,0,0,0,0,0),
(6207,7356,0,0,0,0,0,0),
(6208,7361,0,0,0,0,0,0),
(6209,7362,0,0,0,0,0,0),
(6210,7363,0,0,0,0,0,0),
(6223,7383,0,0,0,0,0,0),
(6224,7395,0,0,0,0,0,0),
(6225,7397,0,0,0,0,0,0),
(6227,7400,0,0,0,0,0,0),
(6230,7404,0,0,0,0,0,0),
(6231,7390,0,0,0,0,0,0),
(6233,7389,0,0,0,0,0,0),
(6234,7387,0,0,0,0,0,0),
(6235,7454,0,0,0,0,0,0),
(6321,7514,0,0,0,0,0,0),
(6322,7515,0,0,0,0,0,0),
(6341,7534,0,0,0,0,0,0),
(6381,7574,0,0,0,0,0,0),
(6422,7615,0,0,0,0,0,0),
(6475,7668,0,0,0,0,0,0),
(6519,7720,0,0,0,0,0,0),
(6565,7780,0,0,0,0,0,0),
(6574,7790,0,0,0,0,0,0),
(6575,7789,0,0,0,0,0,0),
(6577,7793,0,0,0,0,0,0),
(6578,7794,0,0,0,0,0,0),
(6579,7795,0,0,0,0,0,0),
(6581,7799,0,0,0,0,0,0),
(6582,7792,0,0,0,0,0,0),
(6588,7801,0,0,0,0,0,0),
(6597,7818,0,0,0,0,0,0),
(6598,7819,0,0,0,0,0,0),
(6646,7902,0,0,0,0,0,0),
(6658,7916,0,0,0,0,0,0),
(6685,7965,0,0,0,0,0,0),
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
(7070,8332,0,0,0,0,0,0),
(7071,8333,0,0,0,0,0,0),
(7093,8347,0,0,0,0,0,0),
(7095,8349,0,0,0,0,0,0),
(7104,8358,0,0,0,0,0,0),
(7109,8366,0,0,0,0,0,0),
(7238,8538,0,0,0,0,0,0),
(7339,8733,0,0,0,0,0,0),
(7394,8855,0,0,0,0,0,0),
(7480,9063,0,0,0,0,0,0),
(7577,9218,0,0,0,0,0,0),
(7690,9384,0,0,0,0,0,0),
(7691,9385,0,0,0,0,0,0),
(8085,9995,0,0,0,0,0,0),
(8089,10004,0,0,0,0,0,0),
(8090,10003,0,0,0,0,0,0),
(8165,10107,0,0,0,0,0,0),
(8166,10108,0,0,0,0,0,0),
(8217,10212,0,0,0,0,0,0),
(8220,10216,0,0,0,0,0,0),
(8221,10217,0,0,0,0,0,0),
(8222,10218,0,0,0,0,0,0),
(8223,10220,0,0,0,0,0,0),
(8224,10221,0,0,0,0,0,0),
(8225,10222,0,0,0,0,0,0),
(8572,10748,0,0,0,0,0,0),
(8574,10750,0,0,0,0,0,0),
(8575,10751,0,0,0,0,0,0),
(8577,10754,0,0,0,0,0,0),
(8578,10755,0,0,0,0,0,0),
(8582,10759,0,0,0,0,0,0),
(8592,10770,0,0,0,0,0,0),
(8593,10771,0,0,0,0,0,0),
(8594,10772,0,0,0,0,0,0),
(8595,10773,0,0,0,0,0,0),
(8596,10774,0,0,0,0,0,0),
(8597,10775,0,0,0,0,0,0),
(8598,10776,0,0,0,0,0,0),
(8599,10777,0,0,0,0,0,0),
(8600,10778,0,0,0,0,0,0),
(8601,10779,0,0,0,0,0,0),
(8602,10780,0,0,0,0,0,0),
(8603,10781,0,0,0,0,0,0),
(8604,10782,0,0,0,0,0,0),
(8605,10783,0,0,0,0,0,0),
(8606,10784,0,0,0,0,0,0),
(8607,10785,0,0,0,0,0,0),
(8608,10786,0,0,0,0,0,0),
(8609,10787,0,0,0,0,0,0),
(8610,10788,0,0,0,0,0,0),
(8634,10834,0,0,0,0,0,0),
(8635,10832,0,0,0,0,0,0),
(8636,10833,0,0,0,0,0,0),
(8637,10831,0,0,0,0,0,0),
(8764,11170,0,0,0,0,0,0),
(8764,11169,0,0,0,0,0,0),
(8764,11167,0,0,0,0,0,0),
(8764,11172,0,0,0,0,0,0),
(8765,11174,0,0,0,0,0,0),
(8765,11175,0,0,0,0,0,0),
(8765,11173,0,0,0,0,0,0),
(8765,11165,0,0,0,0,0,0),
(8846,11469,0,0,0,0,0,0),
(8848,11472,0,0,0,0,0,0),
(9767,13439,0,0,0,0,0,0),
(9821,13584,0,0,0,0,0,0),
(9821,13557,0,0,0,0,0,0),
(9832,13583,0,0,0,0,0,0),
(10265,3016,0,0,0,0,0,0),
(10266,14254,0,0,0,0,0,0),
(10775,14940,0,0,0,0,0,0),
(11073,15400,0,0,0,0,0,0),
(1080,1693,0,0,0,0,0,0),
(1962,2636,0,0,0,0,0,0),
(1966,2758,0,0,0,0,0,0),
(4654,563,0,0,0,0,0,0),
(6343,7536,0,0,0,0,0,0),
(8453,10560,0,0,0,0,0,0),
(8463,10572,0,0,0,0,0,0),
(9148,12376,0,0,0,0,0,0),
(11390,15863,0,0,0,0,0,0),
(11393,15868,0,0,0,0,0,0),
(11393,15870,0,0,0,0,0,0),
(20011,1041,0,0,0,0,0,0);
/*!40000 ALTER TABLE `gossip_menu` ENABLE KEYS */;
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
