SET sql_mode = '';
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `skill_proto`
-- ----------------------------
DROP TABLE IF EXISTS `skill_proto`;
CREATE TABLE `skill_proto` (
  `dwVnum` int(11) NOT NULL DEFAULT 0,
  `szName` varbinary(32) NOT NULL DEFAULT '',
  `bType` tinyint(4) NOT NULL DEFAULT 0,
  `bLevelStep` tinyint(4) NOT NULL DEFAULT 0,
  `bMaxLevel` tinyint(4) NOT NULL DEFAULT 0,
  `bLevelLimit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `szPointOn` enum('NONE','MAX_HP','MAX_SP','HP_REGEN','SP_REGEN','BLOCK','HP','SP','ATT_GRADE','DEF_GRADE','MAGIC_ATT_GRADE','MAGIC_DEF_GRADE','BOW_DISTANCE','MOV_SPEED','ATT_SPEED','POISON_PCT','RESIST_RANGE','RESIST_MELEE','CASTING_SPEED','REFLECT_MELEE','ATT_BONUS','DEF_BONUS','RESIST_NORMAL','DODGE','KILL_HP_RECOVER','KILL_SP_RECOVER','HIT_HP_RECOVER','HIT_SP_RECOVER','CRITICAL','MANASHIELD','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS') NOT NULL DEFAULT 'NONE',
  `szPointPoly` varchar(100) NOT NULL DEFAULT '',
  `szSPCostPoly` varchar(100) NOT NULL DEFAULT '',
  `szDurationPoly` varchar(100) NOT NULL DEFAULT '',
  `szDurationSPCostPoly` varchar(100) NOT NULL DEFAULT '',
  `szCooldownPoly` varchar(100) NOT NULL DEFAULT '',
  `szMasterBonusPoly` varchar(100) NOT NULL DEFAULT '',
  `szAttackGradePoly` varchar(100) NOT NULL DEFAULT '',
  `setFlag` set('ATTACK','USE_MELEE_DAMAGE','COMPUTE_ATTGRADE','SELFONLY','USE_MAGIC_DAMAGE','USE_HP_AS_COST','COMPUTE_MAGIC_DAMAGE','SPLASH','GIVE_PENALTY','USE_ARROW_DAMAGE','PENETRATE','IGNORE_TARGET_RATING','ATTACK_SLOW','ATTACK_STUN','HP_ABSORB','SP_ABSORB','ATTACK_FIRE_CONT','REMOVE_BAD_AFFECT','REMOVE_GOOD_AFFECT','CRUSH','ATTACK_POISON','TOGGLE','DISABLE_BY_POINT_UP','CRUSH_LONG','ATTACK_WIND','ATTACK_ELEC','ATTACK_FIRE','ATTACK_BLEEDING','PARTY') NULL DEFAULT NULL,
  `setAffectFlag` enum('YMIR','INVISIBILITY','SPAWN','POISON','SLOW','STUN','DUNGEON_READY','DUNGEON_UNIQUE','BUILDING_CONSTRUCTION_SMALL','BUILDING_CONSTRUCTION_LARGE','BUILDING_UPGRADE','MOV_SPEED_POTION','ATT_SPEED_POTION','FISH_MIND','JEONGWIHON','GEOMGYEONG','CHEONGEUN','GYEONGGONG','EUNHYUNG','GWIGUM','TERROR','JUMAGAP','HOSIN','BOHO','KWAESOK','MANASHIELD','MUYEONG','REVIVE_INVISIBLE','FIRE','GICHEON','JEUNGRYEOK','TANHWAN_DASH','PABEOP','CHEONGEUN_WITH_FALL','POLYMORPH','WAR_FLAG1','WAR_FLAG2','WAR_FLAG3','CHINA_FIREWORK','HAIR','GERMANY','RAMADAN_RING','BLEEDING','RED_POSSESSION','BLUE_POSSESSION') NOT NULL DEFAULT 'YMIR',
  `szPointOn2` enum('NONE','MAX_HP','MAX_SP','HP_REGEN','SP_REGEN','BLOCK','HP','SP','ATT_GRADE','DEF_GRADE','MAGIC_ATT_GRADE','MAGIC_DEF_GRADE','BOW_DISTANCE','MOV_SPEED','ATT_SPEED','POISON_PCT','RESIST_RANGE','RESIST_MELEE','CASTING_SPEED','REFLECT_MELEE','ATT_BONUS','DEF_BONUS','RESIST_NORMAL','DODGE','KILL_HP_RECOVER','KILL_SP_RECOVER','HIT_HP_RECOVER','HIT_SP_RECOVER','CRITICAL','MANASHIELD','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS') NOT NULL DEFAULT 'NONE',
  `szPointPoly2` varchar(100) NOT NULL DEFAULT '',
  `szDurationPoly2` varchar(100) NOT NULL DEFAULT '',
  `setAffectFlag2` enum('YMIR','INVISIBILITY','SPAWN','POISON','SLOW','STUN','DUNGEON_READY','DUNGEON_UNIQUE','BUILDING_CONSTRUCTION_SMALL','BUILDING_CONSTRUCTION_LARGE','BUILDING_UPGRADE','MOV_SPEED_POTION','ATT_SPEED_POTION','FISH_MIND','JEONGWIHON','GEOMGYEONG','CHEONGEUN','GYEONGGONG','EUNHYUNG','GWIGUM','TERROR','JUMAGAP','HOSIN','BOHO','KWAESOK','MANASHIELD','MUYEONG','REVIVE_INVISIBLE','FIRE','GICHEON','JEUNGRYEOK','TANHWAN_DASH','PABEOP','CHEONGEUN_WITH_FALL','POLYMORPH','WAR_FLAG1','WAR_FLAG2','WAR_FLAG3','CHINA_FIREWORK','HAIR','GERMANY','RAMADAN_RING','BLEEDING','RED_POSSESSION','BLUE_POSSESSION') NOT NULL DEFAULT 'YMIR',
  `szPointOn3` varchar(100) NOT NULL DEFAULT 'NONE',
  `szPointPoly3` varchar(100) NOT NULL DEFAULT '',
  `szDurationPoly3` varchar(100) NOT NULL DEFAULT '',
  `szGrandMasterAddSPCostPoly` varchar(100) NOT NULL DEFAULT '',
  `prerequisiteSkillVnum` int(11) NOT NULL DEFAULT 0,
  `prerequisiteSkillLevel` int(11) NOT NULL DEFAULT 0,
  `eSkillType` enum('NORMAL','MELEE','RANGE','MAGIC') NOT NULL DEFAULT 'NORMAL',
  `iMaxHit` tinyint(4) NOT NULL DEFAULT 0,
  `szSplashAroundDamageAdjustPoly` varchar(100) NOT NULL DEFAULT '1',
  `dwTargetRange` int(11) NOT NULL DEFAULT 1000,
  `dwSplashRange` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`dwVnum`)
);

-- ----------------------------
-- Records of skill_proto
-- ----------------------------
INSERT INTO `skill_proto` VALUES (1, 0x54687265652D57617920437574, 1, 1, 1, 0, 'HP', '-( 1.1*atk + (0.5*atk +  1.5 * str)*k)', '40+100*k', '', '', '12', '-( 1.1*atk + (0.5*atk +  1.5 * str)*k)', '', 'ATTACK,USE_MELEE_DAMAGE', '', 'NONE', '', '', '', '', '', '', '40+100*k', 0, 0, 'MELEE', 5, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (2, 0x53776F7264205370696E, 1, 1, 1, 0, 'HP', '-(3*atk + (0.8*atk + str*5 + dex*3 +con)*k)', '50+130*k', '', '', '15', '-(3*atk + (0.8*atk + str*5 + dex*3 +con)*k)', '', 'ATTACK,USE_MELEE_DAMAGE', '', 'NONE', '', '', '', '', '', '', '50+130*k', 0, 0, 'MELEE', 12, '1', 0, 200);
INSERT INTO `skill_proto` VALUES (3, 0x4265727365726B, 1, 1, 1, 0, 'ATT_SPEED', '50*k', '50+140*k', '60+90*k', '', '63+90*k', '50*k', '', 'SELFONLY', 'JEONGWIHON', 'MOV_SPEED', '20*k', '60+90*k', '', '', '', '', '50+140*k', 0, 0, 'NORMAL', 1, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (4, 0x41757261206F66207468652053776F7264, 1, 1, 1, 0, 'ATT_GRADE', '(100 + str + lv * 3)*k', '100+200*k', '30+50*k', '', '33+50*k', '(100 + str + lv * 3)*k', '', 'SELFONLY', 'GEOMGYEONG', 'NONE', '', '', '', '', '', '', '100+200*k', 0, 0, 'NORMAL', 1, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (5, 0x44617368, 1, 1, 1, 0, 'HP', '-(2*atk + (atk + dex*3 + str*7 + con)*k)', '60+120*k', '', '', '12', '-(2*atk + (atk + dex*3 + str*7 + con)*k)', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH,CRUSH', '', 'MOV_SPEED', '150', '3', '', '', '', '', '60+120*k', 0, 0, 'MELEE', 4, '1', 0, 200);
INSERT INTO `skill_proto` VALUES (6, 0x4C69666520466F726365, 1, 1, 1, 0, 'HP', '-(3*atk+(atk+1.5*str)*k)*1.07', '300+150*k', '', '', '60', '-(3*atk+(atk+1.5*str)*k)*1.07', '', 'ATTACK,USE_MELEE_DAMAGE', '', 'NONE', '', '', '', '', '', '', '300+150*k', 0, 0, 'MELEE', 5, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (16, 0x53706972697420537472696B6520285729, 1, 1, 1, 0, 'HP', '-(2.3*atk + (4*atk  + str*4 + con)*k)', '60+120*k', '', '', '15', '-(2.3*atk + (4*atk  + str*4 + con)*k)', '', 'ATTACK,USE_MELEE_DAMAGE', '', 'NONE', '', '', '', '', '', '', '60+120*k', 0, 0, 'MELEE', 4, '1', 0, 100);
INSERT INTO `skill_proto` VALUES (17, 0x42617368, 1, 1, 1, 0, 'HP', '-(2.3*atk + (3*atk + str*4 + con*3)*k)', '60+150*k', '', '', '15', '-(2.3*atk + (3*atk + str*4 + con*3)*k)', '', 'ATTACK,USE_MELEE_DAMAGE', '', 'NONE', '', '', '', '', '', '', '60+150*k', 0, 0, 'MELEE', 8, '1', 0, 200);
INSERT INTO `skill_proto` VALUES (18, 0x5374756D70, 1, 1, 1, 0, 'HP', '-(2*atk + (2*atk + 2*dex + 2*con + str*4)*k)', '50+140*k', '', '', '25', '-(2*atk + (2*atk + 2*dex + 2*con + str*4)*k)', '', 'ATTACK,USE_MELEE_DAMAGE,SELFONLY,SPLASH,ATTACK_STUN', '', 'NONE', '100+k*1000/6', '2', '', '', '', '', '50+140*k', 0, 0, 'MELEE', 10, '1', 0, 400);
INSERT INTO `skill_proto` VALUES (19, 0x5374726F6E6720426F6479, 1, 1, 1, 0, 'DEF_GRADE', '(200 + str*0.2 + con*0.5 ) *k', '80+220*k', '60+90*k', '', '63+90*k', '(200 + str*0.2 + con*0.5 ) *k', '', 'SELFONLY', 'CHEONGEUN', 'MOV_SPEED', '-(1+9*k)', '60+90*k', '', '', '', '', '80+220*k', 0, 0, 'NORMAL', 1, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (20, 0x53776F726420537472696B65, 1, 1, 1, 0, 'HP', '-(2*atk + (atk + dex*3 + str*5 + con)*k)', '40+120*k', '', '', '20', '-(2*atk + (atk + dex*3 + str*5 + con)*k)', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH,CRUSH', '', 'NONE', '', '', '', '', '', '', '40+120*k', 0, 0, 'MELEE', 10, '0.5', 1200, 200);
INSERT INTO `skill_proto` VALUES (21, 0x53776F7264204F7262, 1, 1, 1, 0, 'HP', '-(2*atk+(2*atk+2*dex+2*con+str*4)*k)*1.1', '300+180*k', '', '', '60', '-(2*atk+(2*atk+2*dex+2*con+str*4)*k)*1.1', '', 'ATTACK,USE_MELEE_DAMAGE', '', 'NONE', '', '', '', '', '', '', '300+180*k', 0, 0, 'MELEE', 10, '1', 0, 400);
INSERT INTO `skill_proto` VALUES (31, 0x416D62757368, 2, 1, 1, 0, 'HP', '-(atk + (1.2 * atk + number(500, 700) + dex*4+ str*4 )*k)', '40+160*k', '', '', '15', '-(atk + (1.2 * atk + number(500, 700) + dex*4+ str*4 )*k)', '', 'ATTACK,USE_MELEE_DAMAGE', '', 'NONE', '', '', '', '', '', '', '40+160*k', 0, 0, 'MELEE', 6, '0.8', 0, 0);
INSERT INTO `skill_proto` VALUES (32, 0x466173742041747461636B, 2, 1, 1, 0, 'HP', '-(atk + (1.6* atk + number(200,300) + dex*7 + str*7)*k)', '40+160*k', '', '', '20', '-(atk + (1.6* atk + number(200,300) + dex*7 + str*7)*k)', '', 'ATTACK,USE_MELEE_DAMAGE', '', 'NONE', '', '', '', '', '', '', '40+160*k', 0, 0, 'MELEE', 6, '0.8', 800, 0);
INSERT INTO `skill_proto` VALUES (33, 0x526F6C6C696E6720446167676572, 2, 1, 1, 0, 'HP', '-(2*atk + (0.5*atk + dex*9 + str*7)*k)', '50+140*k', '', '', '25', '-(2*atk + (0.5*atk + dex*9 + str*7)*k)', '', 'ATTACK,USE_MELEE_DAMAGE,ATTACK_POISON', '', 'NONE', '40*k', '', '', '', '', '', '50+140*k', 0, 0, 'MELEE', 12, '0.8', 0, 0);
INSERT INTO `skill_proto` VALUES (34, 0x537465616C7468, 2, 1, 1, 0, 'NONE', '', '30+60*k', '15+30*k', '', '60', '', '', 'SELFONLY', 'EUNHYUNG', 'NONE', '', '', '', '', '', '', '30+60*k', 0, 0, 'NORMAL', 1, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (35, 0x506F69736F6E6F757320436C6F7564, 2, 1, 1, 0, 'HP', '-(lv*2+(atk + str*3 + dex*18)*k)', '40+130*k', '', '', '25', '-(lv*2+(atk + str*3 + dex*18)*k)', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH,ATTACK_POISON', '', 'NONE', '60*k', '5+25*k', '', '', '', '', '40+130*k', 0, 0, 'MAGIC', 0, '0.5', 800, 200);
INSERT INTO `skill_proto` VALUES (36, 0x496E736964696F757320506F69736F6E, 2, 1, 1, 0, 'HP', '-((lv*2+(atk+str*3+dex*18)*k)*1.1)', '300+180*k', '', '', '60', '-((lv*2+(atk+str*3+dex*18)*k)*1.1)', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH,ATTACK_POISON', '', 'NONE', '60*k', '5+25*k', '', '', '', '', '300+180*k', 0, 0, 'MELEE', 6, '0.5', 800, 0);
INSERT INTO `skill_proto` VALUES (46, 0x526570657469746976652053686F74, 2, 1, 1, 0, 'HP', '-(atk + 0.3*atk*floor(2+k*6)+ (0.8*atk+dex*8*ar) *k)', '40+130*k', '', '', '10', '-(atk + 0.2*atk*floor(2+k*6)+ (0.8*atk+dex*8*ar) *k)', '', 'ATTACK,USE_ARROW_DAMAGE', '', 'NONE', '', '', '', '', '', '', '40+130*k', 0, 0, 'RANGE', 1, '1', 2500, 0);
INSERT INTO `skill_proto` VALUES (47, 0x4172726F772053686F776572, 2, 1, 1, 0, 'HP', '-(atk + (1.9*atk + dex*2+ str*2)*k)', '30+130*k', '', '', '15', '-(atk + (1.7*atk + dex*2+ str*2)*k)', '', 'ATTACK,USE_ARROW_DAMAGE', '', 'NONE', '', '', '', '', '', '', '30+130*k', 0, 0, 'RANGE', 8, '1', 2500, 0);
INSERT INTO `skill_proto` VALUES (48, 0x46697265204172726F77, 2, 1, 1, 0, 'HP', '-(1.5*atk + (2.8*atk + number(100, 300))*k)', '50+130*k', '', '', '15', '-(1.5*atk + (2.6*atk + number(100, 300))*k)', '', 'ATTACK,SPLASH,USE_ARROW_DAMAGE', '', 'NONE', '', '', '', '', '', '', '50+130*k', 0, 0, 'RANGE', 12, '0.6', 2500, 300);
INSERT INTO `skill_proto` VALUES (49, 0x466561746865722057616C6B, 2, 1, 1, 0, 'MOV_SPEED', '60*k', '30+40*k', '15+30*k', '', '4+8*k', '60*k', '', 'SELFONLY', 'GYEONGGONG', 'NONE', '', '', '', '', '', '', '30+40*k', 0, 0, 'NORMAL', 1, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (50, 0x506F69736F6E204172726F77, 2, 1, 1, 0, 'HP', '-(atk + (1.5*atk + number(100, 200)+dex*6+str*2)*k)', '40+160*k', '', '', '18', '-(atk + (1.2*atk + number(100, 200)+dex*6+str*2)*k)', '', 'ATTACK,SPLASH,USE_ARROW_DAMAGE,CRUSH,ATTACK_POISON', '', 'NONE', '80*k', '15+30*k', '', '', '', '', '40+160*k', 0, 0, 'RANGE', 12, '0.5', 2500, 300);
INSERT INTO `skill_proto` VALUES (51, 0x537061726B, 2, 1, 1, 0, 'HP', '-((atk+(1.2*atk+number(100,200)+dex*6+str*2)*k)*1.1)', '200+200*k', '', '', '60', '-((atk+(1.2*atk+number(100,200)+dex*6+str*2)*k)*1.1)', '', 'ATTACK,SPLASH,USE_ARROW_DAMAGE,CRUSH,ATTACK_POISON', '', 'NONE', '80*k', '15+30*k', '', '', '', '', '200+200*k', 0, 0, 'NORMAL', 5, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (61, 0x46696E67657220537472696B65, 3, 1, 1, 0, 'HP', '-(atk + 2*lv + iq*2 + ( 2*atk + str*4 + iq*14) * k)', '30+140*k', '', '', '10', '-(atk + 2*lv + iq*2 + ( 2*atk + str*4 + iq*14) * k)', '', 'ATTACK,USE_MELEE_DAMAGE,PENETRATE', '', 'NONE', '1+k*9', '', '', '', '', '', '30+140*k', 0, 0, 'MELEE', 4, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (62, 0x447261676F6E20537769726C, 3, 1, 1, 0, 'HP', '-(1.1 * atk + 2*lv + iq*2+(1.5*atk + str + iq*12) * k)', '50+150*k', '', '', '15', '-(1.1 * atk + 2*lv + iq*2+(1.5*atk + str + iq*12) * k)', '', 'ATTACK,USE_MELEE_DAMAGE,SELFONLY,SPLASH,IGNORE_TARGET_RATING', '', 'NONE', '1+k*9', '', '', '', '', '', '50+150*k', 0, 0, 'MELEE', 12, '1', 0, 500);
INSERT INTO `skill_proto` VALUES (63, 0x456E6368616E74656420426C616465, 3, 1, 1, 0, 'ATT_GRADE', '(3 * iq + 2 * lv)*k', '20+240*k', '50+100*k', '2+23*k', '0', '(3 * iq + 2 * lv)*k', '', 'SELFONLY,TOGGLE', 'GWIGUM', 'HIT_HP_RECOVER', '10*k', '50+80*k', '', '', '', '', '20+240*k', 0, 0, 'NORMAL', 1, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (64, 0x46656172, 3, 1, 1, 0, 'DODGE', '1 + 29 * k', '60+120*k', '60+100*k', '', '100', '1 + 29 * k', '', 'SELFONLY', 'TERROR', 'NONE', '', '', '', '', '', '', '60+120*k', 0, 0, 'NORMAL', 1, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (65, 0x456E6368616E7465642041726D6F7572, 3, 1, 1, 0, 'DEF_GRADE', '(iq+30)*k', '70+170*k', '30+120*k', '', '33+140*k', '(iq+30)*k', '', 'SELFONLY', 'JUMAGAP', 'REFLECT_MELEE', '(iq/4+10)*k', '30+120*k', '', '', '', '', '70+170*k', 0, 0, 'NORMAL', 1, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (66, 0x44697370656C, 3, 1, 1, 0, 'HP', '-(40 +5*lv + 2*iq+(10*iq + 7*mwep + number(50,100) )*ar*k)', '30+120*k', '', '', '12', '-(40 +5*lv + 2*iq+(10*iq + 7*mwep + number(50,100) )*ar*k)', '', 'ATTACK,COMPUTE_MAGIC_DAMAGE,SPLASH,REMOVE_GOOD_AFFECT', '', 'NONE', '10+40*k', '7+23*k', '', '', '', '', '30+120*k', 0, 0, 'NORMAL', 5, '0.6', 1800, 200);
INSERT INTO `skill_proto` VALUES (76, 0x4461726B20537472696B65, 3, 1, 1, 0, 'HP', '-(40 +5*lv + 2*iq +(13*iq + 6*mwep + number(50,100) )*ar*k)', '30+140*k', '', '', '7', '-(40 +5*lv + 2*iq +(13*iq + 6*mwep + number(50,100) )*ar*k)', '', 'ATTACK,COMPUTE_MAGIC_DAMAGE,SPLASH', '', 'NONE', '', '', '', '', '', '', '30+140*k', 0, 0, 'MAGIC', 5, '0.6', 1500, 200);
INSERT INTO `skill_proto` VALUES (77, 0x466C616D6520537472696B65, 3, 1, 1, 0, 'HP', '-(5*lv + 2*iq+(10*iq + 6*mwep + str*4 + con*2 + number(180,200) )*k)', '60+140*k', '', '', '12', '-(5*lv + 2*iq+(10*iq + 6*mwep + str*4 + con*2 + number(180,200) )*k)', '', 'ATTACK,SELFONLY,COMPUTE_MAGIC_DAMAGE,SPLASH', '', 'NONE', '', '', '', '', '', '', '60+140*k', 0, 0, 'MAGIC', 15, '0.8', 0, 500);
INSERT INTO `skill_proto` VALUES (78, 0x466C616D6520537069726974, 3, 1, 1, 0, 'HP', '-(30+ 2*lv + 2*iq+(7*iq + 6*mwep + number(200,500))*ar*k)', '20+30*k', '40+30*k', '5+40*k', '43+30*k', '-(30+ 2*lv + 2*iq+(7*iq + 6*mwep + number(200,500))*ar*k)', '', 'ATTACK,COMPUTE_MAGIC_DAMAGE,SPLASH,TOGGLE', '', 'NONE', '', '', '', '', '', '', '20+30*k', 0, 0, 'MAGIC', 1, '1', 800, 0);
INSERT INTO `skill_proto` VALUES (79, 0x4461726B2050726F74656374696F6E, 3, 1, 1, 0, 'DEF_GRADE', '(0.5*iq+15)*k', '20+30*k', '60+120*k', '5+10*k', '63+120*k', '(0.5*iq+15)*k', '', 'SELFONLY,TOGGLE', 'MANASHIELD', 'MANASHIELD', '100-((iq*0.84)*k)', '60+10*k', '', '', '', '', '20+30*k', 0, 0, 'MAGIC', 1, '0.8', 0, 0);
INSERT INTO `skill_proto` VALUES (80, 0x53706972697420537472696B6520285329, 3, 1, 1, 0, 'HP', '-(40 + 2* lv + 2*iq +(2 * con + 2 * dex + 13*iq + 6*mwep + number(180, 200))*ar*k)', '40+120*k', '', '', '12', '-(40 + 2* lv + 2*iq +(2 * con + 2 * dex + 13*iq + 6*mwep + number(180, 200))*ar*k)', '', 'ATTACK,COMPUTE_MAGIC_DAMAGE,SPLASH,ATTACK_SLOW', '', 'NONE', '333+300*k', '10+10*k', '', '', '', '', '40+120*k', 0, 0, 'MAGIC', 9, '0.8', 1200, 400);
INSERT INTO `skill_proto` VALUES (81, 0x4461726B204F7262, 3, 1, 1, 0, 'HP', '-(120 + 6*lv + (5 * con + 5 * dex + 29*iq + 9*mwep)*ar*k)', '80+220*k', '', '', '24', '-(120 + 6*lv + (5 * con + 5 * dex + 29*iq + 9*mwep)*ar*k)', '', 'ATTACK,COMPUTE_MAGIC_DAMAGE,SPLASH', '', 'NONE', '', '', '', '', '', '', '80+220*k', 0, 0, 'MAGIC', 9, '0.4', 1500, 200);
INSERT INTO `skill_proto` VALUES (91, 0x466C79696E672054616C69736D616E, 4, 1, 1, 0, 'HP', '-(70 + 4*lv + (20*iq+5*mwep+50)*ar*k)', '30+160*k', '', '', '9', '-(70 + 4*lv + (20*iq+5*mwep+50)*ar*k)', '', 'ATTACK,COMPUTE_MAGIC_DAMAGE,SPLASH', '', 'NONE', '', '', '', '', '', '', '30+160*k', 0, 0, 'MAGIC', 5, '0.5', 1800, 201);
INSERT INTO `skill_proto` VALUES (92, 0x53686F6F74696E6720447261676F6E, 4, 1, 1, 0, 'HP', '-(60 + 5*lv + (18*iq + 6*mwep + 120)*ar*k)', '50+160*k', '', '', '10', '-(60 + 5*lv + (18*iq + 6*mwep + 120)*ar*k)', '', 'ATTACK,ATTACK_FIRE_CONT', '', 'NONE', 'lv+5*iq *k', 'iq*0.2*k', '', '', '', '', '50+160*k', 0, 0, 'MAGIC', 10, '0.8', 0, 0);
INSERT INTO `skill_proto` VALUES (93, 0x447261676F6E277320526F6172, 4, 1, 1, 0, 'HP', '-(80 + 6*lv + (20*iq+14*mwep+120)*ar*k)', '50+160*k', '', '', '12', '-(80 + 6*lv + (20*iq+14*mwep+120)*ar*k)', '', 'ATTACK,SPLASH,ATTACK_FIRE_CONT', '', 'NONE', 'lv+5*iq *k', 'iq*0.2*k', '', '', '', '', '50+160*k', 0, 0, 'MAGIC', 15, '0.8', 0, 500);
INSERT INTO `skill_proto` VALUES (94, 0x426C657373696E67, 4, 1, 1, 0, 'RESIST_NORMAL', '(iq*0.3+5)*(2*k+0.5)/(k+1.5)', '40+160*k', '60+200*k', '', '10', '(iq*0.3+5)*(2*k+0.5)/(k+1.5)', '', NULL, 'HOSIN', 'NONE', '', '', '', '', '', '', '40+160*k', 0, 0, 'NORMAL', 1, '1', 2000, 0);
INSERT INTO `skill_proto` VALUES (95, 0x5265666C656374, 4, 1, 1, 0, 'REFLECT_MELEE', '5+(iq*0.3 + 5)*k', '40+160*k', '60+200*k', '', '10', '5+(iq*0.3 + 5)*k', '', NULL, 'BOHO', 'NONE', '', '', '', '', '', '', '40+160*k', 0, 0, 'NORMAL', 1, '1', 2000, 0);
INSERT INTO `skill_proto` VALUES (96, 0x447261676F6E277320416964, 4, 1, 1, 0, 'CRITICAL', '(iq*0.3+5)*(2*k+0.5)/(k+1.5)', '40+160*k', '60+100*k', '', '10', '(iq*0.3+5)*(2*k+0.5)/(k+1.5)', '', NULL, 'GICHEON', 'NONE', '', '', '', '', '', '', '40+160*k', 0, 0, 'NORMAL', 1, '1', 2000, 0);
INSERT INTO `skill_proto` VALUES (106, 0x4C696768746E696E67205468726F77, 4, 1, 1, 0, 'HP', '-(60 + 4*lv + (7*iq+8*mwep+number(iq*5,iq*15))*ar*k)', '30+150*k', '', '', '8', '-(60 + 4*lv + (7*iq+8*mwep+number(iq*5,iq*15))*ar*k)', '', 'ATTACK,SPLASH', '', 'NONE', '', '', '', '', '', '', '30+150*k', 0, 0, 'MAGIC', 5, '0.6', 1800, 200);
INSERT INTO `skill_proto` VALUES (107, 0x53756D6D6F6E204C696768746E696E67, 4, 1, 1, 0, 'HP', '-(40 + 4*lv + (13*iq+7*mwep+number(iq*5,iq*16))*ar*k)', '50+150*k', '', '', '10', '-(40 + 4*lv + (13*iq+7*mwep+number(iq*5,iq*16))*ar*k)', '', 'ATTACK,SPLASH,ATTACK_STUN', '', 'NONE', '50+1000*k/6', '5', '', '', '', '', '50+150*k', 0, 0, 'MAGIC', 15, '0.8', 1500, 400);
INSERT INTO `skill_proto` VALUES (108, 0x4C696768746E696E6720436C6177, 4, 1, 1, 0, 'HP', '-(50 + 5*lv + (6*iq+6*mwep+number(1,800))*ar*k) * (1-chain*0.13)', '40+180*k', '', '', '9', '-(50 + 5*lv + (6*iq+6*mwep+number(1,800))*ar*k) * (1-chain*0.13)', '', 'ATTACK', '', 'NONE', '', '', '', '', '', '', '40+180*k', 0, 0, 'MAGIC', 7, '0.8', 2500, 0);
INSERT INTO `skill_proto` VALUES (109, 0x43757265, 4, 1, 1, 0, 'HP', '200+7*lv+(30*iq+6*mwep+600)*k', '40+200*k', '', '', '10', '200+7*lv+(30*iq+6*mwep+600)*k', '', 'REMOVE_BAD_AFFECT', '', 'NONE', '20+80*k', '0', '', '', '', '', '40+200*k', 0, 0, 'NORMAL', 1, '1', 1000, 0);
INSERT INTO `skill_proto` VALUES (110, 0x53776966746E657373, 4, 1, 1, 0, 'MOV_SPEED', '5 + 35*k', '60+120*k', '60+100*k', '', '10', '5 + 35*k', '', NULL, 'KWAESOK', 'CASTING_SPEED', '3+33*k', '60+100*k', '', '', '', '', '60+120*k', 0, 0, 'NORMAL', 1, '1', 2000, 0);
INSERT INTO `skill_proto` VALUES (111, 0x41747461636B205570, 4, 1, 1, 0, 'ATT_GRADE', '10+(iq*0.4 +20)*k', '60+120*k', '60+100*k', '', '10', '10+(iq*0.4 +30)*k', '', NULL, 'JEUNGRYEOK', 'NONE', '', '', '', '', '', '', '60+120*k', 0, 0, 'NORMAL', 1, '1', 2000, 0);
INSERT INTO `skill_proto` VALUES (112, 0x4E4F4E414D455F313132, 0, 1, 40, 0, 'NONE', '20*k', '', '', '', '', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (113, 0x4E4F4E414D455F313133, 0, 1, 40, 0, 'NONE', '20*k', '', '', '', '', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (114, 0x4E4F4E414D455F313134, 0, 1, 40, 0, 'NONE', '20*k', '', '', '', '', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (115, 0x4E4F4E414D455F313135, 0, 1, 40, 0, 'NONE', '20*k', '', '', '', '', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (116, 0x4E4F4E414D455F313136, 0, 1, 40, 0, 'NONE', '20*k', '', '', '', '', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (117, 0x4E4F4E414D455F313137, 0, 1, 40, 0, 'NONE', '20*k', '', '', '', '', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (118, 0x4E4F4E414D455F313138, 0, 1, 40, 0, 'NONE', '20*k', '', '', '', '', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (119, 0x4E4F4E414D455F313139, 0, 1, 40, 0, 'NONE', '20*k', '', '', '', '', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (121, 0x4C656164657273686970, 0, 1, 40, 0, 'NONE', '', '', '', '', '', '', '', 'DISABLE_BY_POINT_UP', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (122, 0x436F6D626F, 0, 1, 2, 0, 'NONE', '', '', '', '', '', '', '', 'DISABLE_BY_POINT_UP', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (124, 0x4D696E696E67, 0, 1, 40, 0, 'NONE', '', '', '', '', '', '', '', 'DISABLE_BY_POINT_UP', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (125, 0x4974656D204372656174696F6E, 0, 1, 40, 0, 'NONE', '', '', '10+1000*k', '', '', '', '', 'DISABLE_BY_POINT_UP', 'YMIR', 'NONE', '', '', 'YMIR', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 1000, 0);
INSERT INTO `skill_proto` VALUES (126, 0x5368696E736F6F204C616E6775616765, 0, 1, 20, 0, 'NONE', '', '', '', '', '', '', '', 'DISABLE_BY_POINT_UP', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (127, 0x4368756E6A6F204C616E6775616765, 0, 1, 20, 0, 'NONE', '', '', '', '', '', '', '', 'DISABLE_BY_POINT_UP', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (128, 0x4A696E6E6F204C616E6775616765, 0, 1, 20, 0, 'NONE', '', '', '', '', '', '', '', 'DISABLE_BY_POINT_UP', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (129, 0x506F6C796D6F727068, 0, 1, 40, 0, 'NONE', '', '', '', '', '', '', '', 'DISABLE_BY_POINT_UP', '', 'NONE', '', '', '', 'NONE', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (130, 0x486F72736520526964696E67, 0, 1, 1, 0, 'NONE', '', '', '', '', '', '', '', 'DISABLE_BY_POINT_UP', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (131, 0x43616C6C20486F727365, 0, 1, 10, 0, 'NONE', '', '', '', '', '', '', '', 'DISABLE_BY_POINT_UP', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (137, 0x486F7273656261636B20536C617368, 5, 1, 1, 50, 'HP', '-(atk+(2*atk*k))', '60+80*k', '', '', '5-(4*k)', '', '', 'ATTACK,USE_MELEE_DAMAGE,CRUSH', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'MELEE', 10, '1', 300, 0);
INSERT INTO `skill_proto` VALUES (138, 0x486F727365205374756D70, 5, 1, 1, 52, 'HP', '-(2.4*(200+1.5*lv)+(3*200*k))', '60+120*k', '', '', '15', '', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH,CRUSH_LONG', '', 'MOV_SPEED', '50', '5', '', '', '', '', '', 0, 0, 'MELEE', 6, '1', 400, 100);
INSERT INTO `skill_proto` VALUES (139, 0x506F7765722057617665, 5, 1, 1, 55, 'HP', '-(2*(200+1.5*lv)+(3*200*k))', '60+160*k', '', '', '20', '', '', 'ATTACK,USE_MELEE_DAMAGE,SELFONLY,SPLASH,CRUSH', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'MELEE', 12, '1', 400, 250);
INSERT INTO `skill_proto` VALUES (140, 0x4172726F772053746F726D, 5, 1, 1, 50, 'HP', '-(atk+(2*atk*k))', '60+80*k', '', '', '10', '', '', 'ATTACK,USE_ARROW_DAMAGE,CRUSH', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'MELEE', 5, '1', 2500, 0);
INSERT INTO `skill_proto` VALUES (141, 0x5061737369766520537570706F727420313431, 0, 1, 40, 0, 'NONE', '1333.3*k', '', '', '', '', '', '', 'DISABLE_BY_POINT_UP', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (142, 0x5061737369766520537570706F727420313432, 0, 1, 40, 0, 'NONE', '20*k', '', '', '', '', '', '', 'DISABLE_BY_POINT_UP', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (151, 0x447261676F6E2045796573, 0, 1, 7, 0, 'NONE', '', '', '', '', '', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (152, 0x426C6F6F64206F6620447261676F6E20476F64, 0, 1, 7, 0, 'MAX_HP', 'maxhp*0.2*k', '150+150*k', '300', '', '600', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (153, 0x42656E6564696374696F6E206F6620447261676F6E20476F64, 0, 1, 7, 0, 'MAX_SP', 'maxsp*0.2*k', '150+150*k', '300', '', '600', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (154, 0x486F6C792041726D6F7572, 0, 1, 7, 0, 'DEF_GRADE', 'odef*0.1*k', '150+150*k', '180', '', '480', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (155, 0x416363656C65726174696F6E, 0, 1, 7, 0, 'MOV_SPEED', '15*k', '150+150*k', '180', '', '480', '', '', NULL, '', 'ATT_SPEED', '15*k', '180', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (156, 0x5772617468206F662074686520447261676F6E20476F64, 0, 1, 7, 0, 'CRITICAL', '50*k', '150+150*k', '180', '', '480', '', '', 'SELFONLY', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (157, 0x43617374696E6720416964, 0, 1, 7, 0, 'CASTING_SPEED', '50*k', '150+150*k', '180', '', '480', '', '', 'SELFONLY', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (158, 0x504153534956414E4F4E414D4532, 0, 1, 3, 0, 'NONE', '', '', '', '', '', '', '', 'SELFONLY', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (159, 0x504153534956414E4F4E414D4533, 0, 1, 5, 0, 'NONE', '', '', '', '', '', '', '', 'SELFONLY', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (160, 0x504153534956414E4F4E414D4534, 0, 1, 5, 0, 'NONE', '3*k', '80-12*k', '300', '', '', '', '', 'SELFONLY', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (161, 0x504153534956414E4F4E414D4535, 0, 1, 2, 0, 'NONE', '', '50', '', '', '', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (162, 0x504153534956414E4F4E414D4536, 0, 1, 2, 0, 'NONE', '', '20', '', '', '', '', '', NULL, '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'NORMAL', 0, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (170, 0x5368726564, 7, 1, 1, 0, 'HP', '-(1.1*atk+(0.3*atk+1.5*str)*k)', '40+100*k', '', '', '12', '-(1.1*atk+(0.3*atk+1.5*str)*k)', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH,ATTACK_BLEEDING', '', 'NONE', '60*k', '5+25*k', '', '', '', '', '40+100*k', 0, 0, 'MELEE', 5, '1', 300, 200);
INSERT INTO `skill_proto` VALUES (171, 0x576F6C66277320427265617468, 7, 1, 1, 0, 'HP', '-(2*atk+(atk+dex*3+str*5+con)*k)', '40+120*k', '', '', '20', '-(2*atk+(atk+dex*3+str*5+con)*k)', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH,ATTACK_STUN,CRUSH', '', 'NONE', '100+k*1000/6', '2', '', '', '', '', '40+120*k', 0, 0, 'MELEE', 10, '0.5', 1000, 200);
INSERT INTO `skill_proto` VALUES (172, 0x576F6C6620506F756E6365, 7, 1, 1, 0, 'HP', '-(atk+(1.6*atk+200+dex*7+str*7)*k)', '40+100*k', '', '', '12', '-(atk+(1.6*atk+200+dex*7+str*7)*k)', '', 'ATTACK,USE_MELEE_DAMAGE', '', 'NONE', '', '', '', '', '', '', '40+100*k', 0, 0, 'MELEE', 5, '1', 800, 100);
INSERT INTO `skill_proto` VALUES (173, 0x576F6C66277320436C6177, 7, 1, 1, 0, 'HP', '-(3*atk+(0.8*atk+str*6+dex*2+con)*k)', '40+100*k', '', '', '12', '-(3*atk+(0.8*atk+str*6+dex*2+con)*k)', '', 'ATTACK,USE_MELEE_DAMAGE', '', 'DEF_GRADE', '-30*k', '5', '', '', '', '', '40+100*k', 0, 0, 'MELEE', 10, '1', 800, 100);
INSERT INTO `skill_proto` VALUES (174, 0x4372696D736F6E20576F6C6620536F756C, 7, 1, 1, 0, 'ATT_GRADE', '7+(5*iq+13)*k', '20+240*k', '50+100*k', '2+23*k', '10+10*k', '7+(5*iq+13)*k', '', 'SELFONLY,TOGGLE', 'RED_POSSESSION', 'DEF_GRADE', '-30*k', '50+100*k', '', '', '', '', '20+240*k', 0, 0, 'NORMAL', 1, '1', 0, 0);
INSERT INTO `skill_proto` VALUES (175, 0x496E6469676F20576F6C6620536F756C, 7, 1, 1, 0, 'ATT_SPEED', '20*k', '80+220*k', '200', '', '300', '20*k', '', 'PARTY', 'BLUE_POSSESSION', 'DODGE', '1+10*k', '200', '', '', '', '', '80+220*k', 0, 0, 'NORMAL', 1, '1', 1000, 0);
INSERT INTO `skill_proto` VALUES (256, 0x456E656D794372757368323030, 0, 1, 1, 0, 'HP', '-5*k*atk', '', '', '', '4', '', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH,CRUSH', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'MELEE', 0, '1', 0, 300);
INSERT INTO `skill_proto` VALUES (257, 0x456E656D7947656E6572616C333530, 0, 1, 1, 0, 'HP', '-5*k*atk', '', '', '', '6', '', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'MELEE', 0, '1', 0, 525);
INSERT INTO `skill_proto` VALUES (258, 0x456E656D794372757368333030, 0, 1, 1, 0, 'HP', '-5*k*atk', '', '', '', '8', '', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH,CRUSH', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'MELEE', 0, '1', 0, 450);
INSERT INTO `skill_proto` VALUES (259, 0x456E656D794E6F726D616C323030, 0, 1, 1, 0, 'HP', '-5*k*atk', '', '', '', '10', '', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'MELEE', 0, '1', 0, 300);
INSERT INTO `skill_proto` VALUES (260, 0x456E656D794372757368343030, 0, 1, 1, 0, 'HP', '-5*k*atk', '', '', '', '12', '', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH,CRUSH', '', 'NONE', '', '', '', '', '', '', '', 0, 0, 'MELEE', 0, '1', 0, 600);
INSERT INTO `skill_proto` VALUES (261, 0x456E656D79506F69736F6E323530, 0, 1, 1, 0, 'HP', '-5*k*atk', '', '', '', '10', '', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH,ATTACK_POISON', '', 'NONE', '80', '', '', '', '', '', '', 0, 0, 'MELEE', 0, '1', 0, 375);
INSERT INTO `skill_proto` VALUES (262, 0x456E656D79536C6F77333030, 0, 1, 1, 0, 'HP', '-5*k*atk', '', '', '', '14', '', '', 'ATTACK,USE_MELEE_DAMAGE,SPLASH', '', 'MOV_SPEED', '-20', '10', '', '', '', '', '', 0, 0, 'MELEE', 0, '1', 0, 450);

SET FOREIGN_KEY_CHECKS = 1;