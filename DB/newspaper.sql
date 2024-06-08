/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - newspaper
*********************************************************************
Server version : 5.0.22-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `newspaper`;

USE `newspaper`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(20) default NULL,
  `password` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert into `admin` (`username`,`password`) values ('vel','vel');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `name` varchar(200) default NULL,
  `mail` varchar(200) default NULL,
  `experience` varchar(200) default NULL,
  `comments` varchar(400) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert into `feedback` (`name`,`mail`,`experience`,`comments`) values ('vel','prabu.mk@pantechmail.com','good','LIke most ');
insert into `feedback` (`name`,`mail`,`experience`,`comments`) values ('vel','prabu.mk@pantechmail.com','average','good');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `category` varchar(200) default NULL,
  `title` varchar(200) default NULL,
  `detail` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `news` */

insert into `news` (`category`,`title`,`detail`) values ('SPORTS','Cabinet approves MoU between BRICS nations on sports and physical culture','NEW DELHI: The Union Cabinet, chaired by Prime Minister Narendra Modi on Wednesday approved a Memorandum of Understanding (MoU) signed between BRICS countries on cooperation in the field of physical culture and sports. The Sports Ministry apprised the Union Cabinet about the MoU. \"Cooperation in the field of sports among the five countries will help in expanding knowledge and expertise in the area of sports science, sports medicine, coaching techniques etc, which would result in improvement in performance of our sportspersons in international tournaments and strengthening of bilateral relations with BRICS member countries,\" the government said in a statement issued by the Press Information Bureau (PIB). \"Benefits arising from cooperation in the field of sports among the five countries would be equally applicable to all sportspersons irrespective of their caste, creed, region, religion and gender,\" it added.');
insert into `news` (`category`,`title`,`detail`) values ('Harassment ','This type of sexual harassment on campus often goes overlooked','When the #MeToo movement gained momentum in 2017, it exposed widespread sexual harassment in the workplace, and academia was no exception. Yet the COVID-19 pandemic has dimmed the spotlight on this issue in higher education as attention has shifted to challenges related to remote learning and other pressing concerns.  As scholars of gender bias, we believe that the spotlight may have had too narrow a focus in the first place.  In surveys and interviews that we conducted at top research universities before the pandemic, more than 300 graduate teaching assistants ? about half of whom identified as women ? described their experiences of sexual harassment. While harassment on campus is often seen in terms of professors who make advances on younger students, we found that professors were not the only ones doing the harassing.  Harassment in and out of class More than a quarter of female teaching assistants recalled examples of undergraduate students making them feel uncomfortable, whether through overt physical harassment or through comments about their appearance or demeanor. Teaching assistants are graduate students who help professors with instructional duties.  Some of these incidents took place in the classroom.  One female teaching assistant described writing on the blackboard while students ?talked loudly about my butt.? Another recalled a student who would not stop ?referencing my looks and touching my ears.?  Despite our findings that harassment is widespread, formal complaints about sexual harassment perpetrated by students ? or others in a similar position ? are rare. In medicine, for example, a 2018 study found that governing bodies have failed to pay attention to patient-initiated sexual harassment and abuse of physicians. Physicians? concerns over harassment by patients are typically dismissed as ?part of the job.?  As academics, we worry that sexual harassment is also seen as part of the job. Yet teaching assistants rarely labeled behavior by students ?sexual harassment,? no matter how galling it was. For example, one student handed his instructor a detailed description of himself masturbating. When asked if they felt they had been subjected to sexual harassment by their students, one instructor responded: ?I do not know how this question is even relevant. Sexual harassment is about power, not gender. In this situation, the teaching assistant has power over the students but not vice versa.?  But that perspective fails to recognize the complex ways that the power of cultural sexism can come into play ? even when the harassment comes from someone who is not officially in charge. Nor does it acknowledge how the power of student teaching evaluations over instructors? job prospects can make teaching assistants hesitant to report sexually inappropriate behavior.  Our finding that some instructors believe that students cannot harass instructors is at odds with the voices of those academic women who shared their experiences with us. They spoke of feeling at risk when sexually aggressive students followed them from class and harassed them during office hours.  Yet we found that these teaching assistants remain largely silent. This silence is partly because many people do not see the behavior as harassment ? even if it involves touching, stalking or threats of harm and retaliation.  Reasons for silence We found that the silence stems from a sense of shame or a worry that speaking out would undermine female instructors? authority and jeopardize their already limited job prospects. The pandemic has exacerbated this vulnerability. U.S. universities are increasingly turning toward temporary labor, such as teaching assistants and adjunct faculty, to teach undergraduates.  Dependent on positive teaching evaluations to secure precarious employment, instructors rarely raise concerns that could jeopardize their reputation, we found.');
insert into `news` (`category`,`title`,`detail`) values ('Politcs','CYCLONE NIVAR TEARS DOWN POWER LINES,TREES IN TAMIL NADU;NO casualties','Heavy rains triggered by the storm caused flooding in some streets of the city of Chennai, Tamil Nadu\'s largest city which is home to many large automobile manufacturers, according to a Reuters witness.  Television networks showed fallen trees in Chennai and people walking in knee-deep water in some streets. No casualties were immediately reported, local media said.  \"This year, because of the precautions taken, the situation has not been that bad. Except for a few fallen tree ..');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(20) default NULL,
  `password` varchar(30) default NULL,
  `mobilenumber` varchar(20) default NULL,
  `email` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert into `user` (`username`,`password`,`mobilenumber`,`email`) values ('vel','vel','vel@gmail.com',NULL);

SET SQL_MODE=@OLD_SQL_MODE;