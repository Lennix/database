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
-- Table structure for table `guild`
--

DROP TABLE IF EXISTS `guild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild` (
  `guildid` int(6) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `leaderguid` int(6) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` int(5) NOT NULL DEFAULT '0',
  `EmblemColor` int(5) NOT NULL DEFAULT '0',
  `BorderStyle` int(5) NOT NULL DEFAULT '0',
  `BorderColor` int(5) NOT NULL DEFAULT '0',
  `BackgroundColor` int(5) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT '',
  `createdate` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild`
--

LOCK TABLES `guild` WRITE;
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
INSERT INTO `guild` VALUES
(1,'Tote Kekse',8,164,14,0,14,45,'Willkommen zu den toten Keksen,\ndies ist die erste Gilde des Servers und wir hoffen auch die erfolgreichste zu werden\n\nEveryone is welcome.','Jeder ist herzlich Willkommen! :)',2009),
(2,'Latratores Comati',65,0,0,0,0,0,'Gründung: 17.10.09\nGründer: Sandorlin','',2009),
(42,'Milchreis',57472,68,14,1,0,2,'Man nehme:\n\n2L       Milch\n500g   Reis\nEin wenig Zucker\n\nAlles aufkochen lassen bis der Reis schön weich ist und dann mit ein wenig Zimt und Zucker verfeinern =)','\"Du bist das süßeste auf der gaaanzen großen weiten Welt..\"           - Ode an den Milchreis ',1267182122),
(43,'Kings Of Hun',55785,14,14,5,14,5,'','',1267187256),
(5,'Molten Core Support',2,6,14,0,12,9,'1) Don\'t add items!\n2) Quest\'s can be completed, if you checked out before that the quest is not able to do for the players!\n3) Don\'t answer to obscene messages in the World-channel!\n4) Please delete tickets, which are online since 3 days and weren\'t able to do, because there was no one to talk about the problem. Send the player a message to rewrite his ticket after!\n5) Stay all time in Invisible-Mode!\n6) Don\'t use your commands to change the status of players!\n7) Stay all time polite!','After this great news of development we have to retake our work.  know its hard in the prechristmas time but i think well do it',2009),
(169,'Night vesituppa',58312,0,0,0,0,0,'1212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212','12121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212',1288465889),
(32,'Akatsuki',2711,70,14,4,14,32,'more spam','Willkommen!! habt Spaß am spielen und streitet nicht',1264688474),
(8,'Fyhrte Ruith',1140,0,0,0,0,0,'Knutschen','Liebe dich auch noch wenn du 40 bist, ella bätsch',2009),
(7,'The ScreweD',1154,0,0,0,0,0,'                 ....::::::::RULES!:::::::::......\n\nLanguage:English\n\nGuild Chat: No spam and No Other Language Than the One Above.\n\n Ventrilo: CominG SooN\n\n  Guild Site: CominG SooN\n\n','Welcome.',2009),
(6,'Nachthauch',718,0,0,0,0,0,'','Willkommen! :D',2009),
(9,'Dark Evolution',3220,168,16,5,15,45,'Ts:188.40.114.72:11044 (Freizeit-Ts) \nTs: paris021.server4you.de:1337 (Raid-Ts)\npw: evopw\n\nHp:  http://darkevolution-wow.forencity.eu/\n\nDkp: www.element-vi.de\n\nTransfer page: http://www.mystiq.org/wow/archaica_eng/?p=character_transfer','Guildtransfer to another server !!!! read the news on the guildforum, our new name will be \"Insanity\" !!!!!! Link in ginfo!!!',2009),
(60,'Hordentlich aufs Mowl',60142,126,14,4,3,41,'Wir sind eine Gilde mit ausrichtung auf PvE welches wir auch  betreiben werden, wenn wir eine standfähige Raidgruppe zusammen haben\n\nHP: www.hordentlichaufsmowl-moltencore.de.tl\n\nAt the Forum it haves a link to a AddOn-Package with more than 250 Addons for 1.12\n\nMfg Gildenleiter und Offis.\n--------------------------------------\nWe are a Fun-Guild which would like to make PvE and a little of PvP between the raidtimes.\n\nTS3 IP: Evil.Silentrunners.de Port:9987','',1271005269),
(31,'BULGARIA OFF WAR',2174,12,10,2,16,21,'ZA VS KOITO SA V GUILDA NEKA NE BADEM EGOISTI I DA SI POMAGAME VS ISKAME ITEMI I LVL NO BEZ HELP NQMA DA STANE\n:p','',1264279613),
(10,'ViSiON',1781,103,16,0,2,5,'Lbrs:    clear\nUbrs:   6/6 clear\nZG:      3/12\nAQ20: 0/6\nMC:     0/10\nBWL:   0/8\nAQ40: 0/5\nNaxx:  0/15\n','Raidplaner: http://vision.host.allvatar.com - - -',2009),
(11,'Hardcore',1593,126,14,4,14,45,'','',2009),
(12,'Fate',1782,111,16,0,16,32,'Lbrs:    clear\nUbrs:   clear\nZG:        /\n \n\n\nhttp://vision.host.allvatar.com\nTS (MC-WoW): 62.75.165.157:8767','Pls alle Spieler , Freunde bei Dopefox melden und Freunde/Hordler können sich bei Dark Evolution melden. Danke',1261860492),
(13,'Hüter der Wahrheit',573,164,14,0,14,2,'','No message set.',1262468574),
(19,'Gods of War',3551,12,14,0,14,5,'Sholomance.\nObecnie w imieniu Plagi wladze nad tym miejscem sprawuje potezny lisz, Ras Frostwhisper, zas nikczemny nekromanta Mroczny Mistrz Gandling, pelni funkcje dyrektora szkoly.','',1263674752),
(27,'We Eat Onyxia',2758,42,14,1,3,44,'','Onyxia is only for lunch!',1259008072),
(28,'The Chosen Ones',2996,97,4,3,4,49,'','We are The Chosen Ones, invite, play, and have fun! we are chosen, lets show everyone why!',1262379656),
(29,'Warsong Warriors',5247,38,16,1,16,45,'Leader:                     Warlord\nCoLead:                   Guardian\nProVeteran:             Knight\nVeteran:                   Gladiator\nMitglied:                  Fighter\nProbe:                       Scout\n\nAktuelle Infos:\nWir haben jetzt einen Gildenbank-charakter namens \" Tara\". Bei ihm könnt ihr seltene Gegenstände für Twinks von euch und der Gilde bunkern. Wollt ihr welche abheben, so kontaktiert die Gildenleitung.\n\nTS² ip: 62.75.165.157:8767\n','',1263935679),
(30,'OE reloadet',3398,40,14,4,14,45,'','Gildenforum: http://www.odins-erbe.tk/ --- Raidbündnis: /join Dawn&OE',1264012090),
(33,'WOW Endziel',3787,0,0,0,0,0,'','qq--94589844    wanshang8:00-10:00',1264796688),
(35,'Destinity',3947,0,0,0,0,0,'Hallo Leute \n\nGründung am 8.02.2010\n\nRangliste:\n\nAnfänger = Testzeit \nBeamter  =  Mitglied \nRatsbeamter = Ehrenmitglied \nCo-Leader = Milka\nChef = Xellos \n\nRegeln:\n\n1. beleidigung ist in der gilde untersagt wer es nicht versteht der     \nkann sich ne andere gilde suchen.\n\n2. Spam in chat ist verboten.\n\n3.  Undentschuldigte Abwesenheit über 7 Tage wird mit Ausschluss geahndet.\n\n4.Hilfsbereitschaft, höflichkeit und nett sein bring euch allen plus punkte.\n\nViel Spaß beim spielen Mfg team Destinity\n\n','',1265654327),
(39,'Cheeseburgers',1000,80,16,0,16,35,'Trial:\nFor 1-2 weeks to get known.\n(+inactives)\n\nAlt:\nFor Alts of Members.\n\nMember:\nEnough said.\n\nAlt+:\nFor Alts of Officers and above.\n\nOfficer:\nManager for the Guild.\n\nHochgeschlafen:\n\"Honoary\" Members.\n\nCheesemaster:\nSee \"Officer\".\n\n\nAbout:\nFriends and PvP, \'nuff said.\n\n\nIMPORTANT FOR PVP:\nLook for the Battlegroundquest for 398 Honor, its the Quest with the most Honor for Warsong/Arathi!','Improve your equipment , Kill Hordes , Win Battlegrounds And Get High Ranks!',1266526259),
(41,'Bloody Revenge',1831,168,1,0,14,49,'Please register and create your character at our homepage:\n\nhttp://mchardcore.host.allvatar.com\n---\nPlease use Mumble (Voicetool) for raids:\n http://mumble.sourceforge.net/\n Version: 1.2.2(stable)\n Adress: mumble.mc-wow.eu\n Port: 64738\n---\nNew guildbank: Bloody\nZG Guildbank: Bloodyzg\n---\nTalent Calculator:\nhttp://www.wowprovider.com/?talent=11205595_1\n---\nAddons required for raids:\nKTM\nCT_Raid\nDecursive\n---\n/join bloody HulK\n---\nAsk an officer to move your twinks to the new twink and ','epic PvP of the Server-Team',1267117583),
(91,'Core',69141,0,0,0,0,0,'','',1276800636),
(40,'Bankhaus Orgrimmar',5190,26,2,0,2,49,'','No message set.',1267032499),
(44,'Ukraine',3520,75,4,0,4,29,'','? ???? ???? ??? ????? ????????. . . ????????? ?  Zetsubou.? ??? 100 ??????? ? ??????????? ?? ??? ????????????!??????-??????? ???',1267356089),
(37,'Legend of the Alliance',3752,128,16,0,16,31,'','Wir sind die neue Allianz Gilde, den bald werden Horde und Allianz getrennt.',1266344216),
(36,'Allimania',4857,167,4,0,16,0,'','Pls alle 1g für wappenrock',1266059954),
(45,'Himmel der Flammen',5546,62,16,3,16,2,'Forum:\nhttp://playerhost.net/himmel_der_flammen/forum/\n\nGroupCalender:\nhttp://www.file-upload.net/download-2609809/Groupcalendar.rar.html\n\nDKP:\nhttp://playerhost.net/himmel_der_flammen/dkp/viewnews.php\n\nmumble:\nmumble.mc-wow.eu\nport:64738','Viel Spass allen hier ;)',1267557065),
(47,'Wajinsky',73873,0,0,0,0,0,'Welcome\n','',1269211171),
(48,'MMONerds',56444,0,0,0,0,0,'www.mmonerds.de <- best site ever. :D','MMONerds Gilde gegründet! Wuhu! :D',1269279927),
(49,'Disturbed',56979,0,0,0,0,0,'Willkommen bei der Pve/PvP Gilde \"Disturbed\".\n\nBei Fragen könnt ihr euch an den Gildenmeister wenden.\n\n-----------\n\nWelcome to the Pve/PvP guild \"Disturbed\".\n\nYou can wsp me if you have a question.','No message set.',1269635056),
(50,'Pamperz',56757,0,0,0,0,0,'Vart finns blöjjor när man behöver dom ?  JO HÄR!','The way of life!',1269639255),
(53,'Fellowship of the Ring',57619,112,1,1,15,29,'People offline for 10 days with no reason will be kicked. (20 for officers , 15 for veterans)\n\n\nOnly lvl 40+s will be allowed to join this guild now. Exceptions will exist always. (The req will rise by 5 every week.)\n\nGonna be a rough profession check.\n\nYou must attend all guildruns , or at least the progress ones (\"Cleansings\").\n','Forming new guild \"The Inner Circle\" due to Sauron has left the server. /w Consequence or Eisaari for inv. EVERYONE are welcome',1269966617),
(59,'Forbidden Champs',63815,89,4,4,16,32,'Ranks:\n6. General\n5. Major\n4. Colonel\n3. Captain\n2. Segeant\n1. Specialist\n\nRank is getting by teamworking in Guild and beeing active.\n\n-------------  Please Read  ---------------\n1. Do not spam to much at Guild Channel.\n\n2. Try to be Active\n\n3. Our Guild needs to become most respective Guild on Molten Core! Cheers!\n\n4. Speak English at Channel\n---------------------------------------------\nThx by: Gen. Grief','This guild isnt alive anymore.i couldnt keep it alive becouse i wasnt online for long time...leave guild.have fun guys.by:Grief',1270796265),
(90,'The Lost Expedition',70275,0,0,0,0,0,'','Co dela lenochod, kdyz hori les? Hori taky.',1276725827),
(84,'WE R irunfurg',67349,0,0,0,0,0,'?','This is for Deshawn, Eshlawn, Lil Mama, an her friends; Lisa, Teresa, Maria, Tia, Lia and Kim',1276198891),
(54,'Old Century',57497,0,0,0,0,0,'Unsere HP: Old-Century.net\n\nTS:         000.000.000.000\nTSPW:   ausgeschrieben: \"keins\"','||||||Wir wachsen :D||||||Ich stelle jetzt einen TS Server auf||||||',1270058453),
(57,'Legion of Hellspawn',5755,24,14,0,14,5,'ts3server: ts3.internetfreaks.net port: 9993','Hi! Somehow I became the leader of this guild, but I dont see anybody online anytime. Feel free to leave us...',1270411692),
(55,'Sunshine',55924,100,16,0,16,2,'Wahhhh!\n\nwir san so richtige Bayern, \nwir stingan noch Kuahstoi und Schnopps\nwir saufan wia die Lecha\nund 60er Fans san ma ah!\n\n','Makro mit \"/say .save\" schreiben und des olle 2min spamen, dann gibts keine Rollbacks mehr ',1270211500),
(58,'Graf Zahl',66807,90,4,3,3,44,'Homepage Endzeit : www.EndzeitWoW.de.vu \n\nGemeinsamer Alli Channel : gzez\n\n\nhttp://www.schlossfest-neufahrn.de/schlossfest-home.html\n\n','HI ihrs :D ^^ ich bin vorerst mal bei incoming untergekommen werd aber wieder Gz joinen wenn wieder mehr betrieb hier ist^^ ',1270481422),
(61,'The Inner Circle',4174,97,14,3,3,45,'Ventrilo download latest version\n IP :dallas.maxfrag.net\nport : 4583\n\nAddons: Get CT raid assist\nalso the Groupcalendar\n\nGuildsite: \n\nhttp://innercirclethe.guildlaunch.com/index.php?gid=169694\n','Mats and raid stuff send to Innercircle ZG Saturday 11:00 Every1 should get better geared if you want to raid.',1272306063),
(77,'Spielen mit Lenkrad',1534,83,16,3,16,33,'','I\'am on a horse.',1274132375),
(75,'Do NOT Complain In WORLD',61665,69,16,0,16,45,'','',1274070720),
(62,'Zetsubou',60883,12,10,0,10,45,'http://zetsubou.hx0.ru/ \n##???####\nMost players moved to international guild <Nightshade>,\nGM: Lightwarden\n######\nWoW1.12.1 AddOn pack:\nhttp://rghost.ru/1807311\n######\nGuild Bank, login - Agb, password \n??######\nGuild enchanter: Tia. /w Watch','Most of active players moved to int. guild <Molten Core Swimteam>. /w Edenspring /w Watch /w Eric',1272376418),
(65,'Sarganash',60950,132,14,2,14,45,'','Guilda se premestva v drug server. Za pove4e informaciq tyrsete Belfa',1272463307),
(63,'Die Hard',60567,0,0,0,0,0,'=)','',1272396073),
(66,'The All Seeing Eye',68269,40,14,0,0,29,'Willkommen bei \nThe All Seeing Eye,\n\nWir sind eine Pve Raidgilde!\nGildenhompage :\n\nwww.tase.dyndns.org\n\nBitte Gilden und Dkp regeln lesen!\n\n\nNach einer unentschuldigten Offllinezeit von 4 Wochen erfolgt der Kick durch die Gildenleitung.\n','Gildenpage ist fertig! www.tase.dyndns.org ! Bitte anmelden und im Forum Gilden und Dkp Regeln lesen! Viel Spaß bei TASE',1272550604),
(69,'Dark Ronin',66764,13,14,3,3,2,'Wir haben einen Kostenfreien Teamspeak3 Server.Würde uns freuen wenn der eine oder andere sich da mal blicken läßt ;)\nts3.internetfreaks.net  port: 9993 \n\nSind gerade erst im Aufbau,also nicht wundern das wir noch nicht soviele Member haben.Wollen auch nicht 30 Leute täglich inviten sondern einen festen und mit der Zeit eingespielten Kern an Membern haben der nicht mit Masse,sondern Klasse überwiegt ;)\n\nHaben einen neuen Bankchar für Items. Wenn ihr was habt einfach zu Items schicken!!!','Ein paar sind jetzt zu Legion of Hellspawn gewechselt.Könnt gerne nachkommen,schreibt mir einfach.lg Bleedin',1273236408),
(68,'Has a Deathwish',56504,168,9,0,9,32,'PvP Movies :\n\n||_Wed_||\n\nWed Anthology I : http://www.warcraftmovies.com/movieview.php?id=146697\n\nWed\'s Filefront Page (all the other movies) : http://www.filefront.com/user/Wedx\n\n||_Helamen_||\n\nHelamen Has a Deathwish : http://www.warcraftmovies.com/movieview.php?id=94257\n\nHelamen 2 : http://www.warcraftmovies.com/movieview.php?id=109217\n','Welcome to Has a Deathwish',1273076886),
(70,'For the Horde',62620,164,1,1,1,45,'UsuALLY we used to play hord, but one failbob wants a pala, so we have to play ally now :D\nOn the one side it\'s kinda ROFLMAO  to play Dwarfs, Humans, Nightelfs or Gnomes after kickin their asses for such a long time. But on the other side it\'s a good new experience ...the quest are different and there is no addon tellin you how to kill such mobs ... we are on our own :D ','',1273241771),
(74,'Lords of Ironforge',63492,0,0,0,0,0,'Click here to set message','Üdv mindenkit :)',1273765134),
(78,'Bloody Revenge TnT',2655,38,14,2,14,2,'Please register and create your character at our homepage:\n\nhttp://mchardcore.host.allvatar.com\n---\nPlease use Mumble (Voicetool) for raids:\n http://mumble.sourceforge.net/\n Version: 1.2.2(stable)\n Adress: mumble.mc-wow.eu\n Port: 64738 (atm down)\n---\nguildbank: Bloody\nZG Guildbank: Bloodyzg\n---\nTalent Calculator:\nhttp://www.wowprovider.com/?talent=11205595_1\n---\nAddons required for raids:\nKTM\nCT_Raid\nDecursive\n---\n/join bloody','Hey Leute wer wieder aktiv spielen möchte kann gerne eine Anfrage bei Eternity machen /w einfach Shalin,Mamadee oder Bofrost!',1274818034),
(73,'Horde Suess Sauer',63390,0,0,0,0,0,'','',1273675334),
(83,'Archrival',65600,0,0,0,0,0,'\n\nBlack List:\nAbele=Being a BR and a Dick-Tanth\nLalayia= Druids can blink\nRich Bellemare- stop adding your friends to the guild','Hello there true Beliebers',1275538100),
(79,'Endzeit',58990,168,14,0,14,35,'Unser Forum findet ihr unter dem Link www.EndzeitWoW.de.vu! Es besteht Anmeldepflicht, da wir Raidtermine ausschließlich über den Forumweg regeln werden.\n\nUnseren Teamspeak² Server findet ihr unter der folgenden IP Adresse: 92.51.141.153! \n\nAbsofort haben wir ein neues Raidplaner System. Den Link findet ihr im Forum unter \'Raidplaner und mehr\'\n\nDie Gilde Graf Zahl ist unsere nette Partnergilde die uns vorallem in Zul\'gurub unterstützt. Graf Zahl Member findet ihr ebenfalls im Endzeit Forum.','Graf Zahl Spieler sind absofort auch im Endzeit Forum anzutreffen! Weitere Infos bitte aus den \'Gildeninformation\'en entnehmen.',1274915145),
(81,'Unknown',65445,6,14,4,14,33,'','SERAFIN? :D wenn du weiterhin pvp machen möchtest sag mir bescheit, ich bin in einer bereits bestehenden PvP-Gilde',1275063588),
(101,'Ruin Them',61080,70,12,4,0,29,'','No message set.',1278028085),
(82,'Saunaclub Silvermoon',66935,148,14,3,14,45,'Gildenränge:\nLevel 01-09 = Zivilist\nLevel 10-19 = Rekrut\nLevel 20-29 = Abenteurer\nLevel 30-39 = Kopfgeldjäger\nLevel 40-49 = Söldner\nLevel 50-59 = Reiter\nLevel 60-60 = Champion \nOffizier/Gildenmeister: kümmert euch erstmal um die anderen Ränge ;)','Dicke drops euch allen :)                                                                   Bitte tragt eure Berufe ein :)',1275497871),
(86,'Deus Mortalis',73014,97,11,0,11,49,'','Merging under Cheeseburgers guild for Battlegrounds and whatever comes in the near future (MC / ZG ) , whisper Athus for invite',1276446328),
(97,'Random Raiders',70633,6,14,0,14,50,'Invite everyone who needs a guild. This guild is for leveling and finding groups.\n\nGrades:\nnot active\nBe silent (warning grade)\nTwink\nNew (1-29)\nAdvanced (30-59)\nSecondary offii (60)\nOfficer (special people)\nSecondary Lead Rawr\nGuild Leader  Krenl (raktar)\n\n\n','Go fucking asshols and fuck your moms and have fun',1277215639),
(87,'Ballaststoffe',65228,97,14,0,14,45,'','',1276622179),
(131,'Immortal',4586,166,14,1,14,45,'teamspeak server \nAddress : 62.104.20.138\nPort : 10020\npassword : muha\nts3\n\nBlacklisted Players: (Ninja Etc)\nRendrand\n\n\nplease visit marvs wifes blues music site at www.clarefree.co.uk brilliant guy, fantastic blues lady\n\ninner circle vent raiding channel for our community raiding is dallas.maxfrag.netport :4583','guild forum http://classicimmortals.webs.com.. cross guild channel with our horde guild is /join immortaltribe.. :D',1281374533),
(130,'Children of Church',78136,100,16,0,14,29,'Welcome Children of Church may we all bask in the glory\n','Have a look on wowwiki.com or similar to find out what gear you want from 5 man instances ask if you need advice.',1281262271),
(132,'Szupercsapat',79423,0,0,0,0,0,'Üdv mindenkinek a Szupercsapatban! \nJelenleg fejl??ödünk, 60 on tervezünk 5 f?ös illetve raid instákat. Valami problémád van, keress meg engem (Nod), vagy az egyik tisztet! Segítünk ahol tudunk, kérj és megadatik :)\n------------------RANGOK------------------\nMr T: SHUT UP FOOL!\nTiszt: Mr T helyettes, jobb keze\nRégi tag: egyértelm???ü\nTag: a klán teljes érték?ü tagja\nPróbaidös: jó magaviselettel 2 hét mulva szabadulsz :) (tag leszel)\nMute: bünti rang\n-----------------PROGRESS-----------------\n','Szép napot mindenkinek! TS3 at töltsétek le!',1281442610),
(134,'Converge',80185,60,16,1,3,49,'TS3 INFO:  tx.teamspeak.cc , 9069\n---------------------------------------\nOk guys email this guy:\n\nazeem@mc-wow.eu\n\nThe email must contain why you LEFT feenix and why your JOINING mc - wow. 2-3 sentances nothing too long. Act mature. Also that you are a member of converge!\n\n1 EMAIL ONLY!!!!!!\n\nYour email MUST be the email you used to create the account!!!!! Once the email is sent and the admin has it, he will credit your account with 1200points. Goo buy the instant 60 pish, you will get a goodie','Sign the charters in IF, Orbital has it. Whisper Emeriss for any needed info.',1281570079),
(85,'Bad Guys',64663,69,15,0,15,12,'','No message set.',1276199391),
(94,'Garde der Hoffnung',70341,0,0,0,0,0,'','pls get lvl 60 as quick as possible',1276950802),
(89,'Platt Haun Gang',64756,0,0,0,0,0,'','',1276705346),
(93,'Deaths Dark Decadence',65270,111,11,4,11,45,'Welcome to Ayamkemeth','Anyone in Tanaris? Need to do Zul\'Farrak. >.>-(Is splitting my time between here and a BC server) - Z',1276919222),
(92,'Shadowmourne',70292,0,0,0,0,0,'','',1276813739),
(98,'Zakon Syjonu',56672,12,14,0,14,2,'','yyyy... gówno',1277335927),
(104,'No milk today',72355,13,16,2,13,29,'\n\n\nGOVEDA SME GAZIM\n','',1278346443),
(96,'The Quest for E fame',70800,101,15,0,15,41,'<The Quest for E fame> have now started!\n\nTry get as much attention as possible, good / bad, I dont care.\nThere\'s many ways how to gain E fame, Killing people and rage in World chat is one way, Cyber your way to the top is a other.\nThere\'s many allternative routes to the top.\n\nRewards : E fame.\n---------------------------------------\nRanks:\n\nE-Alt\n\nE-Homie\n\nE-Knight\n\nE-Juggler\n\nE-Pope\n\nYour rank will be adjusted depending on E-fame / your rep with the guild.\n\n','What are you waiting for bishes?! Go increase your Efame. { Updated Guild Information! }',1277148872),
(115,'Hailfury',69934,0,0,0,0,0,'Destroy..?','Recruit as many people as possible.',1279651502),
(126,'Nightshade',72145,8,14,3,14,32,'  RIP. NIGHTSHADE!\n\n','Two camels in a tiny car.',1280183753),
(99,'Penitentiary',72399,97,15,4,15,48,'- Penitentiary - \n\n Teamspeak \n- biscuit.ab5w.com:9988\n- Penitentiary channel\n- No passwordl\n\nEvery body must have Teamspeak 3 downloaded for raids. ','This guild is dead, we have moved on to <Legends of Azeroth>',1277930519),
(170,'hat die B o n g',92170,0,0,0,0,0,'Ladet ein wen ihr wollt, alles total Chillig hier. Wer bock auf \"hat die B O N G\"hat, soll es haben. Nun versuch ich das allen anderen Fremdsprachen erklären.\n\nLittle boxes on the hillside,\nLittle boxes made of ticky tacky\nLittle boxes on the hillside,\nLittle boxes all the same,\nTheres a pink one & a green one\nAnd a blue one & a yellow one\nAnd they are all made out of ticky tacky\nAnd they all look just the same.\n\nTitlemusic of \"WeeDs\"','You don\'t like STONED as Guildestatus? No problem, tell us your language and we set of your choice. Have fun and invite all. :D',1288936599),
(119,'Eternity',64927,96,16,0,16,2,'DKP + Forum + Raidkalender:\n\n<<<www.ransonimo.de>>>\n\n\nMUMBLE:\nID: mumble.mc-wow.eu\nPort: 64738\nPW: kein pw\nChannel: Eternity\n\n-------------------\nFür jeden Member verpflichtend:\n\nCT_RaidAssist\nMumble\nDecursiv (wers kann)\n','Liebe verbliebene Gildenmitglieder, wie spielen auf dem BC-Server Hellground. Wir spielen bei der Horde. wow.hellground.pl',1279811782),
(128,'Ride the Lighting',76894,89,14,3,14,32,'Skype !:D','To nie ja bylem Ewa to nie pazdal nawala w klawiature',1280263607),
(102,'The GC Army',71145,38,14,0,14,45,'Por perlas de cualqueir tipo, o telas pedirle a Fran (Ermak)\n\nPrestamos de hasta 15 g SOLO a mayores de nivel 40 y si levelean el personaje en serio -Ermak\n\nLos que sean +54 traten de hacer la questline para conseguir la llave de Scholomance y poder empezar a hacer las instances que tiran el D1. Busquenla en Wowhead o thottbot.',' SERVIDOR PRE BC FUNSERVER 1.12 vanillagaming.org',1278035734),
(103,'Hordentlich aufs Maul',4977,120,14,5,14,2,'','Kaltes Bier und heiße Weiber, sind die schönsten Zeitvertreiber. /join Nordish',1278230340),
(105,'Innkeeper',67930,148,14,5,15,45,'Guilda Innkeeper vas vita!\n\nNasim cilem je: \nmoci chodit guildovni dungeony.\n\nNasimi prioritami jest:\nNezavaznost, nikoho nenutime hrat ci byt aktivni\n\nPodporujeme kamaradstvi, vzajemnou pomoc.\n\n-----------------------------------------------','huhu!',1278441522),
(141,'Break of Dawn',81478,107,15,0,15,9,'We have some rules:\n1. Don\'t ask people for gold\n2. Always stay polite\n3. Try to improve your skills constantly\n4. Don\'t spam the world chat\n5. When you invite people, promote them so they can invite, too','Remember to enjoy yourselves and please DON\'T ASK PEOPLE FOR MONEY!!! Adomema will help you out anytime!',1283286597),
(109,'Sponge Bob Skinhead',73816,129,15,3,15,13,'','Wellcome',1278781414),
(125,'Ezperia',72451,100,0,3,1,32,'This guild has just been created so hope that you will add new members if you have the correct rights for it','Our guilds tabard has been created and is ready  for buying!',1280164400),
(106,'DND',72310,163,14,0,14,2,'','We do NOT want to be desturbed. If you do we can and will pwn you!',1278516314),
(107,'DOOM',72540,0,0,0,0,0,'','No message set.',1278693541),
(108,'UTE O RAJDAR',76972,135,14,0,10,45,'Yarr\n\n','BUUR',1278717073),
(110,'Down Under',75293,168,14,0,14,45,'','Zul\'Gurrub raid 12:30pm server time saturday, with Inner Cicrle. bring pots. Pst Drekthar for ginvite to merger guild',1279011108),
(120,'Eternal Twinks',63307,96,16,3,16,2,'DKP + Forum:\n\nLink: www.eternityzg.gilde.cx\nwww.ransonimo.de\n\nGroupCalendar Chan:\nEternity\nkein pw\n\nMUMBLE:\nID: mumble.mc-wow.eu\nPort: 64738\nPW: kein pw\nChannel: Eternity\n\nJoin der Community Gruppe Eternity - Allianz Gilde auf dem MC-Board!\n\n-------------------\nFür jeden Member verpflichtend:\n\nCT_RaidAssist\nMumble\nGroup Calendar v2.0\nDecursiv (wers kann)','Alle Twinks bitte bei einem offi melden, um in die Main Gilde eingeladen zu werden. Bitte erst ab Lvl 60 wechseln.',1279824690),
(162,'Team USA',89302,0,0,0,0,0,'USA\n\nGMT -5, Eastern US Time','who wants to run ZF',1287512268),
(114,'Engaged Armrests',74045,0,0,0,0,0,'','',1279375265),
(118,'riesenmeister',70588,0,0,0,0,0,'','No message set.',1279801335),
(142,'ACE',76604,164,14,4,6,45,'Mumble (voice chat)\n\nDownload from: http://mumble.sourceforge.net/\n\nServer:  mumble.ukgame.com\nPort: 58898\n\n\nhttp://aceguild.forumotion.com\n\nGuild Bank- Aceguild','No raids scheduled for next week due to holiday--back to regular schedule the week after.  Get your toons leveled!',1283407843),
(168,'Doom',92181,89,16,3,16,45,'Download Mumble it\'s like Teamspeak i will Organize a Slot on the Server.','Zul\'Gurub Status: 2/10 clear on Sunday.',1288295703),
(121,'Windforce',5548,61,15,3,15,49,'Hier klicken, um die Nachricht festzulegen','',1279974070),
(122,'You no take candle',4474,69,14,0,14,33,'Mhm.. weiß nicht.. : /!','Twinkgilde von Azeem.. - Weißt du bescheid Lennix!',1279977758),
(127,'pwns',70903,24,14,4,2,2,'','',1280252393),
(136,'Dragon Riders',84035,0,0,0,0,0,'Welcome to the Dragon Riders! Wilkhommen auf Dragon Riders!\n\nI recently was given control of this guild by the previous guildmaster, and I will do what I can to ensure it endures, a few simple rules if you are to be an active an helpful member of the guild.\n\n1. If someone is online and around your level, offer to help them quest.\n\n2. Level your very hardest, so that when we are level 60 we can all support one another.\n\n3. Have fun!\n\n-Guildmaster Archon','Welcome to the Dragon Riders!',1281867016),
(140,'Duch i Mrok',80911,0,0,0,0,0,'Rangi:\n1-19 Rekrut\n20-39 Straznik\n40-60 Weteran\nOficer dla zasluzonych.\n\n10 dni offline bez poinformowania o nieobecnosci - kick!','Molten Core Open Fuck Yeah! ;)',1283269526),
(181,'Polisch Warriors',80165,60,14,1,16,5,'','',1291650783),
(182,'Thievery Corporation',91794,0,0,0,0,0,'','Oh Mithril! Where Art Thou?',1291692719),
(137,'bird is the word',72487,0,0,0,0,0,'                     **Important note:**\nThe forum provides all the currently \'needed\' information (raids, hot topics, etc)! Make sure you go register there, and try to use your main character name when doing so!\n\n\n                           **Forum**\n                      www.guild-bird.de\n\n                              **TS3** \n                     85.214.147.44:9987\n               \n                        **Ventrilo 2.1.2**\n               2.1.4: 85.214.147.44:3210\n\n','FREAK  IS STARTING UP OUR NEW PROJECT, WHISPER HIM FOR INVITE ASAP / ZG TONIGHT, SIGN @ WEBSITE',1281908980),
(135,'Corpse of Fulk',77480,70,10,0,10,49,'Fulk-get-da-boud-it','Fulkon Punch!',1281741025),
(139,'Molten Core Swimteam',70808,12,14,0,9,45,'Welcome to MC Swimteam !\n\n\nTS3:\n\n85.214.147.44\nport 9987\n\nor\n          \nVentril:o :\n2.1.4: 85.214.147.44 \n3210\n\n*Website*\nhttp://www.mc-swimteam.eu\n\nGuild Code: Fubar\n\nSign up for raids at ^ this Page.\n\nDKP:\nhttp://www.webdkp.com/dkp/Molten+Core/Molten+Core+Swimteam/\n\nAddOns:\n\nhttp://85.214.147.44/~freak/AddOns.zip','http://www.mystiq.org/wow/archaica_eng/?p=character_transfer || check mcst forums for info. CU @ Archaica! Change your note?',1282822317),
(143,'Die Legenden',2550,141,16,4,9,2,'--Diskussion um Gilde:\nhttp://www.file-upload.net/download-3032845/Gildenfusion.doc.html\n\n--GEM:\n(Guild Event Manager) aktivieren.\nhttp://www.wowguru.com/ui/173/guild-event-manager/\n--> Version 2.08 downloaden.\n--> Dem Channel LEGENDEN beitreten\n\n--Inaktivität:\nAlle Mitglieder u. 60 nach 2 Mon.\nAlle 60er nach 4 Mon.\n\n--Mumble:\nmumble.mc-wow.eu / 188.40.43.19\nChannel: Die Legenden\n\n--TS\nts3.shellfire.net:11895 PW: 798\n\n--Lowies:\n.rates 5 für schneller expen\n\n--Bitte einen Wappenrock kaufen.\n','Halihalo, haben ne neue Gilde gegründet, bei fragen einfach /who demons und jemanden wegen invite fragen. Schönen gruß Ex Demons',1283622302),
(144,'Tribe',79008,163,14,0,14,5,'----------Welcome to the Tribe----------\n\nTribe is the project of the guild Immortal: a new Horde only guild.\nJoin channel \"ImmortalTribe\" our crossguild channel.','Tribe is merging with the guild ACE. If you read this message feel free to whisp Zekono, Shizm or Volget to join it! -Hati',1283982139),
(146,'NOVIGATOR',85122,23,15,0,15,49,'????????Salut! Aloha!','Gil\'dija sozdana. Nabigatory zvuchit vo-pervyh po-russki i full CAPS omg. Predlagaite svoi nazvaniya na saite nabigator.ucoz.ru',1284287615),
(147,'HK FARMERS',78106,12,14,0,16,34,'','PvP Hard ^^',1284833995),
(148,'TheBlackArmy',75090,106,14,3,4,2,'Aliisok akiket meg kell büntetni:\n\n Golerat, Morzan, Pea, Stonecold, Zunnerjack, Mainly, Su, Sekci','DING! Fighting barátunk is befutott, gratula neki!:D',1285160560),
(149,'Bank of Nightroad',85194,0,0,0,0,0,'','Nightroad`s Band',1285168062),
(150,'Doomhammer',80529,23,15,0,15,47,'','Check out Ekaf`s. TheGuildBankKeeper, Stuff.',1285494799),
(151,'For the Win',97373,0,0,0,0,0,'http://www.tiop.net/\n\nBergbaulager: Linq\nBufflager: Ajana\nItemlager: Zuya\nKrautlager: Slowmotion\nLederlager: Sera\nQitemlager: Soraa\nStoffelager: Mekuron\nVzlager: Starcaster','8.12 wohl 20 uhr besprechung wegen eternity. raid zusammenlegung blub',1285778986),
(165,'Incoming',95924,70,14,1,1,45,'Alle im Forum anmelden und Guild Event Manager runterladen! \nhttp://incguild-mc.de.vu/\n\nAlle Twinks bei Trava melden, wegen Twinkgilde.\n\nts3 ip\n\n89.163.171.130 Port:10185','Trans to Archaica. Google Archaica wow, transfer your mainchar there. This server no longer gets scriptet. archaica1.12.1classic',1287856157),
(164,'Total Annihilation',85400,0,0,0,0,0,'Araw - Skining/LW\nAinur - Enchanting/Tailoring\nVitas - mining/engineering','novej patch. resi opravy par bugu. viz news. a uz maj skoro BWL+azurega,kazzaka,4 nightmares...',1287704467),
(152,'Thunderbluff basejumpers',86833,105,16,3,16,5,'','',1286023420),
(153,'NACO KUKATE',88202,40,4,1,16,45,'ROZTRHAL!','Kde su ovce? NIESA',1286397220),
(155,'The Wrath of the Light',81235,21,15,3,15,9,'This Guild has been created for those who want to get some help,make friends and to crush those Horde!\n\nAll members should help each other. If anybody has some questions, ask in guildchat.\n\nHave fun and realize your ambitions.\n\nAlso consider this guild as your home.\n\nPrivates (1-25).\nGuards (26-39).\nChampions (40-50)\nKnight-Champions (50-60).\n\nFOR THE RAID\n\nhttp://mc-wow.eu/showthread.php?2070-The-Wrath-Of-The-Light-guild-first-raid&p=11280#post11280\n','',1286536084),
(156,'Ferocia',87960,97,15,3,15,49,'Working on Vent + Guild Site\n\nIf you know people who are experienced Pre- BC raiders, Please talk to them about joining.\n\nWe ask for patience as constructing a Succesful raiding guild takes time.\n\nThank You\n\nWebsite:\nhttp://www.guildportal.com/Guild.aspx?GuildID=377246&TabID=3170804\n','PvPizzle',1286586637),
(157,'Nightfall',84946,0,0,0,0,0,'','Dragonpenis in your face!',1286654278),
(158,'BigTitsHighCrits',87402,0,0,0,0,0,'','No message set.',1286716799),
(161,'War Pigs',84491,84,14,3,16,45,'@@@ W A R   P I G S @@@','That\'s what my assistant does. He drives me around when I get shithammered. ',1287119762),
(166,'Russian team',90033,12,10,3,0,49,'i kyda vi vse propadaete posle 60?','Efril,napishi mne v icq,nomer v notah,Frostguard',1288017608),
(160,'Captain Planet',85735,0,0,0,0,0,'','No message set.',1286825022),
(167,'No Pun Intended',90529,0,0,0,0,0,'Trial Ac\n\nlogin: ABCD\npass: STRUTS\n\nnice nice jättefett','jag ska gora kaoz me han',1288281637),
(163,'Ya mom is my Epic Mount',90156,67,13,3,3,49,'','Zwirbelzöpfe GO!',1287520973),
(183,'Ex Demons',88086,23,14,0,14,45,'--GEM:\nhttp://www.datafilehost.com/download-f6746837.html\n--> Dem Channel ex  beitreten\n\n--Inaktivität:\nBei Abwesenheit über einem Monat bitte einem Ex Rat mitteilen.\n\n--TS\nts3.shellfire.net:11895 PW: 798\n\n--Bank\nRezepte, Mats, Items können an die Exbank geschickt werden.\n\n--Lowies:\n.rates 5 für schneller expen\n\n--Bitte einen Wappenrock kaufen.\n','Hallo zusammen. Wir wollen aktiv Instanzen machen. Tragt euch bitte bei GEM ein oder erstellt eigene Events.',1291937739),
(177,'Magnetic Force',60884,70,14,2,16,32,'','We need more members :)',1290687480),
(171,'You No Take Candle',96318,93,16,1,14,46,'yntc.guildlaunch.com\n\n\nRaid Times (server time):\n\nMon: 1:00am-5:00am\nWed: 1:00am-5:00am\nSun: 1:00am-5:00am\n\nimVOX: Valanar\'s Server\n\n(download from imvox.com)\n\nAxiums of Success:\n1. You no take candle. Ever.\n2. If someone kills our faction leader and tries to run away ... CHASE THEM!\n3. If you pull a mob by running in a certain direction: STOP RUNNING!\n4. Stereotyping is accepted and encouraged.\n5. Sometimes dead is better.','We are rolling / leveling horde toons - looks for us on the other side!',1288988909),
(178,'die keiner wollte',94071,60,16,0,15,11,'U will get 10DKP for Raiding from beginning to end.\nU will get 5 DKP for each boss.\nBeing(full) buffed in raid : 20 dkp\nU also can earn some dkp by farming.\n(Send the Buffmats @ DKWraidBank)\n2xBuffoil(=5dkp\n1 Flask = 5dkp\n20 Heal/Manapotions = 5 dkp\n10 Buffpotions (highlvl ones) = 5 dkp\n20 Dark Runes = 5 dkp\n20 Tender Wolfmeat  = 5dkp\n(or similar things\n100 x Core ofElements,Bonefragents,DarkIronScapsCryptFiendParts or Savage Frond\n=10dkp\n20 Scrolls = 5dkp (lvl 40 minimum)\n PLS ALL DO YOUR MCPRE','Thursday 9. Dezember Zg-Raid Start:18:30 Servertime. We got some ppl from \"Die Legenden\" for the raid. pls read g-info!. ',1290890451),
(172,'OzzoTeam',90897,8,10,3,8,12,'Only one guild what have respect Chuck Norris. Thats OzzoTeam! :)','Welcome to OzzoTeam! Now you can buy our guild tabard from tabard vendor in horde embassy. Cost of one tabard is 97 silver.',1289373518),
(176,'Legends of Azeroth',94658,128,4,0,4,32,'< Legends Of Azeroth >\n\n1. Make sure u have a working teamspeak for raiding!\n\nAddress:\n\n\nPort:\n\n\n2. Send information to higher ranks for seting the note: \n -Profesions\n - Talent spec\n - Name of other chars/twink\n\n3. Rulles:\n  -2 weeks of inactivity will be a kick, so please be active!...if you have some problems and can\'t play a period, let the higher ranks know and there will be no kick.\n  -please have respect of each other.\n  -everything in guild is for free...no selling! trades, enchants etc.','We all went to <Versus the world> when u come online /w for invite there:)...its going to be nice and fun! Sorry for transfers.',1290461900),
(175,'Versus the World',93761,119,14,0,16,45,'Versus the World is a social guild with the intent on creating our own community of friendly and helpful members.\n\n------------------------------------------\n\nGuild home page is up!\n\nwww.vstw.guildportal.com\n\nFrom now on if you\'re interested in raiding you will have to create an account on the home page.\n\nHave fun!\n\nWe now have a bank character. Bankvstw will gladly accept items, gold, bags. You name it.','ZG raid on sunday at 17 30 server time! AND GET TS (TEAM SPEAK 3 ) Register at the home page and sign up there!',1290171789),
(180,'Court of Madness',95302,40,1,4,1,45,'','THE LAST DEVELOPER FOR MC HAS LEFT. WE ARE TRANSFERRING TO ARCHAICA. WHISPER DIABLOSHADOW WHEN YOU LOGIN TO ARCHAICA',1291567590),
(179,'Bioquimica',94197,0,0,0,0,0,'Recordad! empezamos el viernes a las 18:00 :)','TODOS EL VIERNES A LAS 18:00!!',1291155959),
(184,'Pink Power',93335,102,14,2,7,1,'','Welcome guys',1292094648);
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;
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
