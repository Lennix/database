-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wowc_characters
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
-- Table structure for table `character_ticket`
--

DROP TABLE IF EXISTS `character_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_ticket` (
  `ticket_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `ticket_text` text,
  `response_text` text,
  `ticket_lastchange` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticket_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8782 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_ticket`
--

LOCK TABLES `character_ticket` WRITE;
/*!40000 ALTER TABLE `character_ticket` DISABLE KEYS */;
INSERT INTO `character_ticket` VALUES
(8657,93926,'I would like to buy my Riding training for Skill 75, please, and my First Aid 225. Thank you.','','2010-12-17 08:38:24'),
(8727,95925,'The quest \"Deeprun Rat Roundup\" in Deeprun Tram doesn\'t work, I can\'t get the rats to following me for some reason. Like as if the flute is not working.\nAnd the quest \"The Attack!\" doesn\'t work either, Spybot won\'t disguise himself and walk away...','','2010-12-14 22:21:37'),
(8705,96928,'Cunable to train sunder armor (rank 1) for level 20 dwarf warrior','','2010-12-13 02:31:07'),
(8662,94955,'BMoin\nIch habe ein problem mit dem reitskill, der npc dafür ist verbugt. Man kann nichts von ihm lehren\n\nI have a problem with the riding skill, the npc is bugged it. You can teach anything from him\n\nGreetings pheno\n','','2010-12-12 09:38:52'),
(8775,96722,'That\'s my second ticket about the mount trainer bug. It\'s starting to bug me to be honest. Please take care of this situation immediately, the newcomers on the server would even leave the server because of this bug, mount is really vital as you know.','','2010-12-18 02:49:38'),
(8766,96967,'BHallo, \nich stehe gerade im Elwynnforest und versuche Reiten (75) auszubilden.\nIch bin Mensch Krieger und mein Ruf bei Stormwind ist auf \"wohlwollend\"\nleider kann mir der reitlehrr nicht mehr helfen als mir zu sagen das ich genug geld mitbringen soll (hab ich natürlich) - eine option zum ausbilden fehlt leider.\nwäre dankbar für problemlösung und der damit verbundenen \"ich muss nicht mehr laufen - jihu\" - Haltung.\nim forum steht das auch in orgrimma der reitlerher buggt.\nvielen dank, Tueravou =)','','2010-12-16 16:07:55'),
(8728,96569,'The troll riding trainer will not give me the option to buy the training i was hoping you could Cash of Delivery it to me.\n\nThe quest all along the watch towers does not work, i was hoping it could be completed for me','','2010-12-18 02:20:08'),
(8750,86374,'AHello, I was wondering if the problem with the mount trainers will be fixed soon and how can i get my lvl 40 mount? running everywhere is just a pain hehehe.\n\nThank you for this wonderfull server\nAlatorus','','2010-12-15 00:54:01'),
(8755,88073,'@unable to learn riding in darnassus.\nI hope you are able to teach me 150 riding','','2010-12-15 19:29:06'),
(8710,89620,'?Quest:The Scarlet Oracle, Demetria , she doesent exist me and friends kill all Scarlet members and curiers but Demetria doesent exist ... quest is chain so i need this so i can pick others from NPC','','2010-12-13 13:23:22'),
(8735,96263,'BHallo sehr geehrter GM!\n\nIch möchte First Aid auf 300 skillen - kann das Buch für 300 jedoch nicht kaufen.\n\nVon Mitspielern wurde mir geraten, mich an Sie zu wenden. Bin Momentan auf 225/225 und hoffe, dass Sie mir weiterhelfen können.\n\nLiebe Grüße,\nConstantin\n\n\nKommt schon.... ehm ja, gibts überhaupt noch nen GM...?!','','2010-12-17 12:36:52'),
(8697,95724,'I Cant Buy first level of mount training. please take care of this for me. tyvm just remove the gold needed for  the expence of the training.\n','','2010-12-14 23:29:35'),
(8723,94388,'AHalihalo, \nhabe das Problem das ich mit keinen meiner 4 60iger das epische reiten holen kann,\nhilfe wäre nett.\nVielen Dank\nJoe:)','','2010-12-13 23:39:53'),
(8721,95406,'Can\'t train my riding skill...','','2010-12-19 02:17:43'),
(8778,91874,'CI dont know where to wriet it and what can u do with it but \n[Enchant Cloak - Minor Agility] - is bugged. i can\'t use it on cloaks, i dont know why\ni says you must have the %s equipped','','2010-12-18 16:32:03'),
(8731,93892,'Bcant complete The Battle of Darrowshire because Relic Bundle not usable\nThe Smoldering Ruins of Thaurissan dont work too','','2010-12-14 11:43:12'),
(8730,96924,'B when using the spell heal character will often  heal it\'s self when other party members are targeted. even within range','','2010-12-14 05:37:28'),
(8700,92299,'CAccidentally purchased epic mount, now I cannot train the riding skill','','2010-12-12 23:32:50'),
(8732,85141,'I am level 60 and i cant learn expert riding skill.','','2010-12-18 15:08:36'),
(8713,94636,'AI Cant train riding with my own race,it says i need to be exhalted -.-\ni need to get 150 riding and cant do it on this acc','','2010-12-13 14:06:59'),
(8714,96640,'Ddiese qests sind schwer denn ich hab mal auf denn offizellen server gespielt aber\nda steh dann auf der karte dran wo ich die qest items oder vicher finde warum hier nicht','','2010-12-18 08:56:23'),
(8745,97279,'HI, i just payed 3 times for my eviscerate rank 2 and i lost all my money and im still at rank 1 eviscerate. please help me.\n\n/edit i eventually went to orgrimmar and got rank 2 but i had to pay twice for it then too. im still out of some money.','','2010-12-14 20:44:01'),
(8749,96557,'AGuten Tag,\nich hab versucht in der ranch in meinem startgebiet reiten zu skillen aber das funktioniert nich, ích habe auch genug gold, daran liegts nich','','2010-12-14 22:39:00'),
(8726,93689,'Bhey! i want some clarity in this server mumbo jumbo going on, id appreciate ur time :-)','','2010-12-14 00:48:52'),
(8733,94555,'Sehr geehrter gamemaster,\nda ich nun genug geld für das reiten zusammen gefarmt habe wollte ich nun reiten lernen allerdings funktioniert dies nicht.\n\nMit freundlichen Grüßen\n\nPunish','','2010-12-14 14:54:28'),
(8739,92611,'Hallo,\n\nich konnte die Quest \"Triage\" nicht abschließen. Bitte um hilfe, vielen Dank im Voraus.\n\n-Tanzwut','','2010-12-18 08:35:08'),
(8744,72862,'DHallo ich will mich beschwerden weil der Reitlehrer in Darnassus will das ich ehefürchtig bin dabei muss ich im eigenen Volk das ja eigentlich nicht sein.Ich bräuchte hilfe. :\'(','','2010-12-14 19:11:46'),
(8741,90960,'Zone: Ashenvale\nQuest: Raene\'s Cleansing\nQuest #: 1026\n\nItem required will not drop from mobs.\nItem: Wooden Key\nItem #: 5475\nMobs: Crazed Ancient / Withered Ancient\nMob #s: 3834 / 3919','','2010-12-15 01:57:24'),
(8742,92302,'CBroly, a level 51 human paladin, just told me through a whisper that he hopes i get raped.  is this the kind of behavior you tolerate here?','','2010-12-14 18:16:49'),
(8779,93411,'AI am unable to acquire the Triage quest from Doctor Gustaf VanHowzen.  Without this quest I cannot achieve artisan First Aid.','','2010-12-18 13:05:37'),
(8777,90874,'BI was wondering if a GM could check the drop rate for the Shadowcraft Shoulders off of Cannon Master Willy in Live Stratholme.  I\'ve heard from a friend of mine that for some reason the default drop rate for them on private servers is 0%.','','2010-12-18 04:10:20'),
(8747,96725,'BHai!\nNow I know you guys are trying to do everything you can to help the server, but by some chance do you think you can help a person out with their mount training, courtesy the rude trainers that won\'t train?  Tyvm! ^_^\n\n*Edit*  Apparently I need one of you guys to help me out with the First Aid quest to get to 300.  Thanks again :)','','2010-12-17 05:18:30'),
(8751,83185,'Hello.  I recently finished the third part of the dungeon set upgrade quest chain (for shoulders, boots, and legs).   I turned the un-upgraded items in.  I received an in-game message stating that I had received the beastmaster\'s mantle, boots, and leggings.  However, when I looked in my inventory the mantle was not present.  The quest is shown as complete, and I was able to pick up the next quest in the chain.  Please advise - and thanks for your time!','','2010-12-18 21:34:23'),
(8754,77409,'Ckann kein mount kaufen..','','2010-12-15 16:48:34'),
(8758,88076,'AHello dear gm, can you tell me please can i find red winter hat on this server(i mean is it enabled) ?  Or what i need to do so you give me that hat? ','','2010-12-15 20:07:43'),
(8759,91271,'AHallo, ich kann die \"Triage\" Quest nicht abschließen da sich die verwundeten nicht verbinden lassen (First Aid 225+) danke für die Hilfe im vorraus (:','','2010-12-15 20:09:00'),
(8761,96949,'CHello,\n\nI know there is a lot of stuff going on at the moment... but i am making this in the hopes that it will eventually get seen top.\n\nI am not able to start the aquatic-form quest.\n\nI started it and then abandoned it by accident and then couldnt start it again. Tried restarting wow... its been a few days now.\n\nAnything that can be done?\n\nAlso mount training? Anything with that can be done?\n\nThanks.','','2010-12-17 13:20:37'),
(8769,96494,'Hello,\ni\'ve got 2 problems : 1) i cant reset my petskills\n                             2) i bought the swift raptor but the ridingskill trainer is buggy','','2010-12-17 17:59:56'),
(8780,96932,'BI am unable to obtain my Riding Skill (75) from Ultham Ironhorn in Dun Morogh.  I have enough money and I meet the level requirement, but he does not give me the option to train.','','2010-12-18 13:11:29'),
(8781,78219,'CEs geht um die Quest Raenes Säuberung.\nDer schlüssel wird immernoch nicht gedroppt','','2010-12-18 18:11:18');
/*!40000 ALTER TABLE `character_ticket` ENABLE KEYS */;
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
