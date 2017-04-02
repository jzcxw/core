INSERT INTO `migrations` VALUES ('20170328191528');

-- Remove reputation check from Nefarius's Corruption, check for Charge of the Dragonflights.
-- Set time to 90 minutes. 5400 seconds = 1.5 * 60 * 60 seconds. Originally 5 hours.
UPDATE `quest_template` SET `RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0, `LimitTime` = 5400, 
`Objectives`  = 'Slay Nefarian and recover the Red Scepter Shard. Return the Red Scepter Shard to Anachronos at the Caverns of Time in Tanaris. You have one and a half hours to complete this task.' 
WHERE `entry` = 8730;

-- Update objectives texts
DELETE FROM `locales_quest` WHERE `entry` = 8730;
INSERT INTO `locales_quest` (`entry`, `Title_loc1`, `Title_loc2`, `Title_loc3`, `Title_loc4`, `Title_loc5`, `Title_loc6`, `Title_loc7`, `Title_loc8`, `Details_loc1`, `Details_loc2`, `Details_loc3`, `Details_loc4`, `Details_loc5`, `Details_loc6`, `Details_loc7`, `Details_loc8`, `Objectives_loc1`, `Objectives_loc2`, `Objectives_loc3`, `Objectives_loc4`, `Objectives_loc5`, `Objectives_loc6`, `Objectives_loc7`, `Objectives_loc8`, `OfferRewardText_loc1`, `OfferRewardText_loc2`, `OfferRewardText_loc3`, `OfferRewardText_loc4`, `OfferRewardText_loc5`, `OfferRewardText_loc6`, `OfferRewardText_loc7`, `OfferRewardText_loc8`, `RequestItemsText_loc1`, `RequestItemsText_loc2`, `RequestItemsText_loc3`, `RequestItemsText_loc4`, `RequestItemsText_loc5`, `RequestItemsText_loc6`, `RequestItemsText_loc7`, `RequestItemsText_loc8`, `EndText_loc1`, `EndText_loc2`, `EndText_loc3`, `EndText_loc4`, `EndText_loc5`, `EndText_loc6`, `EndText_loc7`, `EndText_loc8`, `ObjectiveText1_loc1`, `ObjectiveText1_loc2`, `ObjectiveText1_loc3`, `ObjectiveText1_loc4`, `ObjectiveText1_loc5`, `ObjectiveText1_loc6`, `ObjectiveText1_loc7`, `ObjectiveText1_loc8`, `ObjectiveText2_loc1`, `ObjectiveText2_loc2`, `ObjectiveText2_loc3`, `ObjectiveText2_loc4`, `ObjectiveText2_loc5`, `ObjectiveText2_loc6`, `ObjectiveText2_loc7`, `ObjectiveText2_loc8`, `ObjectiveText3_loc1`, `ObjectiveText3_loc2`, `ObjectiveText3_loc3`, `ObjectiveText3_loc4`, `ObjectiveText3_loc5`, `ObjectiveText3_loc6`, `ObjectiveText3_loc7`, `ObjectiveText3_loc8`, `ObjectiveText4_loc1`, `ObjectiveText4_loc2`, `ObjectiveText4_loc3`, `ObjectiveText4_loc4`, `ObjectiveText4_loc5`, `ObjectiveText4_loc6`, `ObjectiveText4_loc7`, `ObjectiveText4_loc8`) VALUES
(8730,  NULL,   'La corruption de Nefarius',    'Nefarius\' Verderbnis',    '奈法里奥斯的腐蚀', NULL,   'La corrupción de Nefarius',    'La corrupción de Nefarius',    'Нефариус, пораженный порчей',  NULL,   'Champion, est-ce bien vous ? Un millier d’années se sont écoulées depuis que le fragment m’a été confié, et c’est à mon heure la plus sombre que quelqu’un se présente pour me le réclamer… Mais que serait une tragédie sans cruauté ?$B$B< Vaelastrasz tousse faiblement.>$B$BNe… Nefarius détient aujourd’hui le fragment du sceptre.$B$BLe temps presse. Nefarius a l’intention de détruire le fragment. Vous devez vous hâter !', 'Held, seid Ihr es? Es ist tausend Jahre her, seitdem man mir den Splitter anvertraut hat. Jetzt, in meiner finstersten Stunde soll jemand erscheinen, um mich davon zu entlasten... aber was wäre eine Tragödie ohne Grausamkeit?$B$B<Vaelastrasz hustet geschwächt.>$B$BNe... Nefarius besitzt nun den Szeptersplitter.$B$BDie Zeit ist entscheidend. Nefarius hat vor den Splitter zu zerstören. Ihr müsst Euch beeilen!',   '勇士，是你吗？我受命保管这个碎片已经一千年了，在我最黑暗的时候，应该有人站出来替我把它拿回来……但是一切都是任重道远的。$B$B<瓦拉斯塔兹轻轻地咳嗽着。>$B$B耐……耐法里奥斯现在掌握着scepter shard。$B$B时间是最关键的。耐法里奥斯将要摧毁这个scepter。你必须赶快！',   NULL,   '¿Eres tú, Campeón? Mil años hace que me fue confiado este fragmento, y en triste hora vienen a arrebatármelo... Pero ¿qué sería una tragedia sin crueldad?$B$B<Vaelastrasz tose débilmente.>$B$BEl... El fragmento de cetro está en poder de Nefarius.$B$BEl tiempo corre en nuestra contra. Nefarius planea destruirlo. ¡Apresúrate!',    '¿Eres tú, Campeón? Mil años hace que me fue confiado este fragmento, y en triste hora vienen a arrebatármelo... Pero ¿qué sería una tragedia sin crueldad?$B$B<Vaelastrasz tose débilmente.>$B$BEl... El fragmento de cetro está en poder de Nefarius.$B$BEl tiempo corre en nuestra contra. Nefarius planea destruirlo. ¡Apresúrate!',    'Надо же, герой! Тысячу лет назад мне поручили хранить осколок, и вот, в черный час он был отнят у меня... Но какая же трагедия без жестокости?$B$B*Веластрас слабо кашляет.*$B$BОс... осколок скипетра ныне у Нефариуса.$B$BВремя дорого, ибо Нефариус намерен уничтожить осколок. Поторопись!',   NULL,   'Tuez Nefarian pour récupérer le Fragment de sceptre rouge. Rapportez le Fragment de sceptre rouge à Anachronos aux Grottes du temps en Tanaris. Vous avez une heure et demi pour accomplir cette tâche.',  'Tötet Nefarian und bringt den roten Szeptersplitter wieder in Euren Besitz. Bringt den roten Szeptersplitter zu Anachronos in den Höhlen der Zeit in Tanaris. Euch bleiben ein und halb Stunden, um diese Aufgabe zu erfüllen.',   '干掉奈法利安并拿到Red Scepter Shard。把Red Scepter Shard带给塔纳利斯时光之穴门口的阿纳克洛斯。你必须在一个半小时之内完成这个任务。',   NULL,   'Mata a Nefarian y recupera del fragmento de cetro rojo. Llévaselo a Anacronos a las Cavernas del Tiempo, en Tanaris. Tienes una hora y media para completar esta tarea.',  '', 'Убейте Нефариана и добудьте осколок красного скипетра. Верните осколок красного скипетра Анахроносу в Пещеры Времени в Танарис. На выполнение задания у вас есть 1.5 часов.',  NULL,   NULL,   '', '瓦拉斯塔兹的灵魂终於平静了，勇士。所有的守护巨龙都在关注着你的进展。他们知道你的身边有强大的盟友。$B$B我奉命送给你一些东西，希望它可以在这场战斗中帮助你。好好使用它……$B', NULL,   '', '', 'Теперь душа Валестраса в своем кругу, герой. Аспекты следили за твоими успехами с большим интересом. Знай, у тебя есть сильные союзники.', NULL,   NULL,   '', '又有一位英雄因为挑战死亡之翼的子嗣而阵亡了。我们将因这样的损失而被永远诅咒……',  NULL,   '', '', 'Еще один пал перед отродьем Смертокрыла.', NULL,   NULL,   '', NULL,   NULL,   '', '', '', NULL,   NULL,   '', '', NULL,   '', '', '', NULL,   NULL,   '', '', NULL,   '', '', '', NULL,   NULL,   '', '', NULL,   '', '', '', NULL,   NULL,   '', '', NULL,   '', '', '');
