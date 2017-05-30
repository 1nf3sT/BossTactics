local L = LibStub("AceLocale-3.0"):NewLocale("BT_Gruul", "deDE")
if not L then return end

--Umlaute: ö:\195\182 ü:\195\188 ä:\195\164 Ö:\195\150 Ü:\195\156 Ä: \195\132

-- infos
L["Module resetted"] = "Modul zur\195\188ckgesetzt" --diese zeile nicht verändern!

L["info"] = "|cff91069ETactics by|r rpguides\n|cff91069EImages by|r Vonswan, rpguides\n|cff91069EModule by|r Sorontur\n\n|cffC0C0C0[http://www.kdh-wow.de]\n[http://www.rpguides.de]|r"

--füge hier die taktiktexte lokalisiert ein:

L["tactic Maulgar"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

Der Schlachtzug sollte aus mindestens drei Tanks (mit mehr als 12.000 Trefferpunkten) und ungefähr neun Heilern bestehen. Darüber hinaus werden mindestens ein Hexenmeister, ein Magier (mit mindestens 10.000 Treffer- und Manapunkten) und zwei Jäger benötigt (alternativ ein Eulen-Druide). Die verbleibenden Plätze können beliebig belegt werden. Es ist jedoch zu empfehlen diese mit Schadensverursachern zu besetzen.

|cffff0000Fähigkeiten
---------------|r

Der Kampf gegen Maulgar selbst umfasst nicht nur ihn, sondern auch sein Gefolge, das aus Hexenmeister, Magier, Priester und Schamane besteht.

|cFF4DFFFDHochkönig Maulgar|r (Krieger)

Nahkampfschaden: 6.000 - 7.600 Körperschaden bei Defensiv-Kriegern (12.000 schmetternd)

|cff5929C7Bogenzerkracher|r:
Ein Spalten-Angriff, der im Bereich vor Maulgar 6.400 - 9.000 Körperschaden bei Defensiv-Kriegern anrichtet.

|cff5929C7Mächtiger Schlag|r:
Ein Nahkampfangriff der bei Defensiv-Kriegern 8.300 - 11.000 Körperschaden verursacht.

|cff5929C7Wirbelwind|r:
Maulgar wirbelt herum und richtet bei jedem Platte-Träger in Nahkampfreichweite 5.000 - 7.200 Körperschaden pro Tick an.

|cff5929C7Furcht|r:
Diese Fähigkeit setzt Maulgar erst ein wenn seine Trefferpunkte unter 50% gefallen sind. Sie kommt ca. alle 40 - 50 Sekunden zum Einsatz und lässt alle Spieler in Nahkampfreichweite in Furcht fliehen.

|cff5929C7Ansturm|r:
Diese Fähigkeit setzt Maulgar erst ein wenn seine Trefferpunkte unter 50% gefallen sind. Maulgar stürmt auf ein zufällig gewähltes Ziel los und kehrt nicht automatisch zum vorherigen Tank zurück.

|cFF4DFFFDBlindauge der Seher|r (Priester)

Nahkampfschaden: 700 - 900 Körperschaden bei einem Defensiv-Krieger (1500 schmetternd)

|cff5929C7Heilen|r:
Versucht in regelmäßigen Abständen Heilen auf sich oder einen der anderen Oger zu wirken. Das Ziel des Zaubers wird um 24.000 Trefferpunkte geheilt. Kann unterbrochen werden.

|cff5929C7Gebet der Heilung|r:
Ein vier sekündiger Flächenzauber mit einer Reichweite von ca. 30 Metern, der alle Ziele für ca. 100.000 Trefferpunkte heilt. Kann unterbrochen werden.

|cff5929C7Großes Machtwort: Schild|r:
Jedes Mal bevor Blindauge sein Gebet der Heilung wirkt, schützt er sich selbst mit diesem Zauber. Der Schild verhindert das sein Gebet unterbrochen werden kann. Er muss zunächst durch Schaden zerstört werden, bevor das Gebet unterbrochen werden kann.

|cFF4DFFFDOlm der Beschwörer|r (Hexenmeister)

Nahkampfschaden: 1.800 - 2.000 Körperschaden bei einem Defensiv-Krieger (3.000 schmetternd); 2.600 - 3.500 bei einem versklavten Teufelspirscher (5000 schmetternd)

|cff5929C7Wilden Teufelsjäger beschwören|r:
Olm beschwört im Minutentakt einen wilden Teufelsjäger. Dieser kann versklavt oder verbannt werden.

|cff5929C7Todesmantel|r:
Furchtzauber mit Trefferpunktetransfer auf ein einzelnes Ziel bzw. den Tank. Der Todesmantel trifft sein Ziel für ca. 2.200 Schattenschaden und heilt Olm für das Doppelte

|cff5929C7Dunkler Verfall|r:
Ein Dot der 500 Schattenschaden pro Tick verursacht und auf ein zufälliges Ziel in der Schlachtgruppe gewirkt wird. Kann durch den wilden Teufelsjäger entfernt werden. Der Dot ist stapelbar.

|cff5929C7Wilder Teufelspirscher|r
Nahkampfschaden 700 - 900 Körperschaden bei einem Defensiv-Krieger (1.200 schmetternd)
Wilder Biss: Verursacht 4.400 - 4.700 Körperschaden bei Olm
Drohen: Steigert die Bedrohung des Teufelspirschers gegenüber seinem Ziel

|cFF4DFFFDKrosh Feuerhand|r (Magier)

|cff5929C7Großer Feuerball|r:
Dieser vier sekündige Zauber verursacht 8.600 - 9.400 Feuerschaden. Wenn Großer Schutzschild aktiv ist trifft er mit 2.100 - 2.300Feuerschaden. Der Feuerschaden kann nicht von Feuerresistenzausrüstung abgefangen werden!

|cff5929C7Zauberschild|r:
Magischer Schild, der Kroshs Resistenz gegen Zauber drastisch erhöht. Kann mit Zauberraub geklaut werden (wird dann zu Großer Schutzschild)

|cff5929C7Druckwelle|r:
alle 10 - 15 Sekunden zündet Krosh diesen Flächenzauber. Er richtet in einem 20 Meter Radius um den Magier 5.200 - 6.750 Feuerschaden an.

|cFF4DFFFDGicherer der Wahnsinnige|r (Schamane)

|cff5929C7Große Verwandlung|r: 
Verwandelt den aktuellen Hasslistenspitzenreiter in ein Schaf.

|cff5929C7Blitzschlag|r:
Dieser Blitz kommt gegen den Spieler mit der höchsten Bedrohung zum Einsatz und verursacht bei diesem 1.500 - 1.900 Naturschaden. Der Zauber hat eine 20 Meter Reichweite.

|cff5929C7Arkaner Schock|r:
Dieser Zauber ist immer auf den Spieler mit der höchsten Bedrohung gerichtet. Der Zauber verursacht 600 - 800 Arkanschaden, reduziert dessen Bedrohung und schleudert ihn zurück.

|cffff0000Taktik
--------|r

Alle fünf oben aufgeführten Oger stürmen gleichzeitig in den Kampf und müssen von unterschiedlichen Spielern auseinander gezogen und gebunden werden:

|cFF4DFFFDBlindauge der Seher|r (Priester)
Die Rolle des Tanks sollte Defensiv-Krieger übernehmen. Zur Not kann dieses auch ein Wilder-Kampf-Druide oder Paladin sein. Auf Grund seiner Zauberunterbrechungsfähigkeit ist ein Krieger jedoch am besten geeignet. Der von Blindauge angerichtete Schaden ist rein Körperbasierend, daher kann ein Magier Magie Verstärken auf den Tank wirken.

|cFF4DFFFDOlm der Beschwörer|r (Hexenmeister)
Auch Olm sollte zunächst von einem Defensiv-Krieger gebunden werden. Sobald Olm einen Teufelspirscher beschworen hat, kann dieser zusätzlich auf Olm gehetzt werden. Auf Grund seiner Fähigkeiten wird der Teufelspirscher schnell die höchste Bedrohung verursachen und somit zum primären Tank werden.

|cFF4DFFFDKrosh Feuerhand|r (Magier)
Krosh richtet ausschließlich Feuerschaden auf Nahkampfreichweite an. Die einzige Möglichkeit, ihn effektiv zu binden und selbst möglichst wenig Schaden zu kassieren, besteht darin ihn von einem anderen Magier angreifen zu lassen. Durch die Zauberraub-Fähigkeit sind Magier als einzige Klasse in der Lage den verursachten Feuerschaden an sich von 9.000 auf 2.000 Punkte zu reduzieren.

|cFF4DFFFDGicherer der Wahnsinnige|r (Schamane)
Die beste Möglichkeit Gicherer zu tanken liegt bei zwei Jägern. Diese müssen möglichst viel Schaden verursachen, um immer abwechselnd auf dem ersten Platz der Hassliste zu sein. Das führt dazu das Gicherer jeweils den Spitzenreiter von Zeit zu Zeit verwandelt und der andere weiterhin als Tank dient. Der jeweils aktuelle Jäger-Tank bekommt von dem Wahnsinnigen hauptsächlich Naturschaden und leichten Arkanschaden. Aus diesem Grund sollten die Tanks am Besten Naturschutzausrüstung tragen. Alternativ zu zwei Jägern kann Gicherer auch von einem Druiden gebunden werden. Im Nahkampf richtet der Schamane jedoch bedeutend mehr Schaden an, wodurch er auch mehr Heilung als die Jäger benötigt.

|cFF4DFFFDHochkönig Maulgar|r (Krieger)
Für den Hochkönig selbst wird ein sehr gut gerüsteter Defensiv-Krieger benötigt. Auf Grund der hohen Schadensspitzen sollte dieser 15.000 Trefferpunkte oder mehr besitzen. Andernfalls stirbt er bei Attacken wie Mächtiger Schlag oder Bogenzerkracher bevor die Heiler überhaupt eingreifen können. Auch bei diesem Tank kann Magie Verstärken zum Einsatz gebracht werden.

|cFFDBD533Positionierung|r
Das erste Problem des Kampfes ist die richtige Positionierung und Mob-Kontrolle. Der erste Kontakt muss simultan von vier Spielern geschehen. Das wichtige ist, dass alle Mobs in die richtige Richtung laufen und keiner der Tanks durch freilaufende Oger oder verirrte Feuerbälle stirbt.

Der Magier, welcher Krosh tankt, eröffnet den Kampf mit einem Frostblitz oder Feuerball auf Krosh, stielt ihm als nächstes seinen Zauberschild und läuft dabei bereits in Kroshs Nahkampfreichweite. Auf diese Weise wird er zu einer Druckwelle gezwungen und bleibt an seiner Position, während die anderen Oger an ihre zukünftigen Positionen gezogen werden können.

Zeitgleich mit dem ersten Magier feuert ein zweiter Magier auf Olm den Beschwörer und blinzelt anschließend in Richtung dessen Tanks. Er wartet ab, bis Olm wieder zu ihm aufgeschlossen hat und setzt dann seinen Eisblock ein. Sollten Olm und sein beschworener Teufelspirschen schnell genug von dem Krieger gebunden werden, ist natürlich kein Eisblock nötig. Olm wird sofort zu Kampfbeginn einen Teufelspirscher beschwören (dauert ca. eine Sekunde) und anschließend in Richtung des Magiers laufen. Sobald er in Reichweite ist, wirkt er höchstwahrscheinlich einen Todesmantel. Es ist sehr zu empfehlen, dass der Magier den Todesmantel abbekommt und ihn mit einem Eisblock entfernt. Die Alternative ist nämlich, das einer der Tanks darunter leidet, daraufhin umherirrt und sein Ziel frei umher läuft. Der beschworene Teufelspirscher muss ebenfalls für ein paar Sekunden vom Tank beschäftigt werden, da der dafür zuständige Hexenmeister einige Sekunden braucht, bis er den Teufelspirscher versklavt hat.

Hochkönig Maulgar sollte mit dem Umlenken eines Jägers auf den entsprechenden Tank gehetzt werden. Dieser Tank sollte sich mit Maulgar an in den Eingangsbereich der Höhle stellen, wo sich die Gruppe vor dem Kampfbeginn befindet.

Der Priester, Blindauge, verursacht am wenigsten Schaden und muss nicht zwingend in der ersten Sekunde zugewiesen werden. Es reicht wenn der entsprechende Tank selbst zu Blindauge läuft und ihn an sich bindet. Blindauge muss im hinteren Teil der Höhle (in der Nähe von Gruuls Höhle) stehen, damit er nicht Maulgar, Krosh oder Gicherer heilen kann. Zusätzlich zu dem Krieger sollten die Schurken sofort versuchen alle Heilungen abzubrechen. Besonderes Augenmerk liegt dabei natürlich auf dem Gebet der Heilung.

Gicherer kann etwas weiter hinten, jedoch in der Nähe seiner Startposition, von den Jägern gehalten werden und muss ebenfalls zu Kampfbeginn zeitgleich mit den Magiern angelockt werden.

|cFFDBD533Heilereinteilung|r
Hochkönig Maulgar: 3 - 4 Heiler
Krosh Feuerhand: 2 Heiler
Olm der Beschwörer: 2 Heiler
Blindauge der Seher: 1 Heiler
Gicherer der Wahnsinnige: 1 Heiler

|cFFDBD533Kampfverlauf|r
Nachdem die fünf Oger an ihren Positionen angelangt sind, können die übrigen Schadensverursacher mit ihrer Arbeit beginnen. Wichtig dabei ist, das der Priester (Blindauge) zu erst stirbt. Die Reihenfolge sollte wie folgt sein: Priester (Blindauge), Hexenmeister (Olm), Magier (Krosh), Schamane (Gicherer) und letztlich der Krieger (Hochkönig Maulgar)

Der Hexenmeister Olm spawnt im Minutentakt neue Teufelspirscher. Der alte Teufelspirscher wird zu diesem Zeitpunkt sicherlich noch leben. Weitere müssen entweder von einem zweiten Hexenmeister versklavt oder gebannt werden. Im Kampfverlauf wird Olm außerdem Dunkler Verfall auf Gruppenmitglieder wirken. Dieser sollte von dem kontrollierten Teufelspirscher entfernt werden.

Sobald Blindauge und Olm tot sind, können die Fernkämpfer Krosh mit ihren Geschossen eindecken. Die Nahkämpfer dürfen aber auf Grund der Druckwelle nicht an Krosh herangehen. Sie sollten sich stattdessen bereits um Gicherer kümmern. Wichtig ist aber auch hier, dass sie den Jäger nicht mit Spotten oder ähnlichem die ersten beiden Plätze der Hassliste streitig machen. Das führt nur zu ihrem eigenen Tod.

Wenn Blindauge, Olm, Krosh und Gicherer am Boden liegen, stellt sich die Gruppe mit Abstand zu Maulgar in einem Haufen auf und deckt ihn mit leichten Attacken ein. Während der ersten 50% (100% - 51%) sollten Hexenmeister, Magier etc. nur ihre Zauberstäbe verwenden und Mana regenerieren. Selbiges gilt für die noch lebenden Heiler. So fern möglich sollte hier Manasparend gearbeitet werden.

In der zweiten Phase (wenn Maulgars Trefferpunkte auf 50% oder weniger sind) sollte sich ein zusätzlicher Tank zu Maulgar gesellen und zusammen mit dem eigentlichen Main Tank Hass aufbauen. Der oder die verbleibenden Tanks stellen sich vor dem Gruppenstandort auf und fangen dort Maulgar ab, so fern er den beiden Main Tanks ausbricht (ähnlich wie bei Hohepriesterin Mar'li in Zul'Gurub). Die beiden Main Tanks müssen abwechselnd versuchen dem Furcht-Effekt Maulgars zu widerstehen, um einen eventuellen Ausbruch zur Gruppe zu verhindern. Ab 50% sollten die Schadensverursacher beginnen größt möglichen Schaden an Maulgar anzurichten, um ihn zu Fall zu bringen, bevor er den Kriegern entkommen und den Schlachtzug zerlegen kann.

]]

L["tactic Gruul"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

2 Tanks, um den Schmerzhaften Schlag sicher abzufangen.
8 Heiler
Maximal 5 Nahkämpfer, da es sonst zu eng vorne wird.
Rest Fernkämpfer

|cffff0000Fähigkeiten
---------------|r

Nahkampfschaden: 3.000 - 3.500 Körperschaden + Wachstumsmodifikator

|cff5929C7Wachstum|r:
Dieser Selbst-Buff wird erstmalig nach und anschließend alle 30 Sekunden im Kampf auf Gruul gesetzt. Er erhöht den von Gruul angerichteten Schaden um 15%. Der Buff stapelt sich theoretisch bis zu einem Maximum von 30. Jedoch ist jeder Stapel über 20 höchstwahrscheinlich tödlich für den Tank.

|cff5929C7Schmerzhafter Schlag|r:
Dieser Angriff ist immer gegen den zweiten Spieler der Hassliste gerichtet. Er verursacht bei einem Defensiv-Krieger mit 13.000 Rüstung ca. 5.000 Körperschaden. Die Intensität dieses Angriffs wird ebenfalls durch Wachstum gesteigert.

|cff5929C7Höhleneinsturz|r:
Dieser Flächenangriff hat einen 8 Meter Radius und wird auf ein zufällig Ziel gewirkt. Er stellt sich optisch durch herabfallende Felsbrocken dar. Der Höhleneinsturz verursacht über 15 Sekunden alle drei Sekunden 3.000 Punkte Körperschaden (bei Kriegern also nur noch ca. 1.100 Punkte). Wenn alle Spieler den erforderlichen Abstand einhalten, sollte immer nur ein Spieler davon betroffen sein. Die Häufigkeit dieses Angriffs steigert sich im späteren Verlauf des Kampfes.

|cff5929C7Nachklingen|r:
Ein Höhlenweiter Stille-Effekt, der alle Spieler für vier Sekunden vom Zauber wirken abhält. Dem Zauber kann widerstanden und werden und wird dementsprechend von unbezwingbarer Wille etc. beeinflusst.

|cff5929C7Erde erschüttern|r:
Ein Höhlenweiter Rückstoß ähnlicher Effekt. Bei diesem werden alle Spieler durch die Luft in eine zufällige Richtung geschleudert. Beim Aufprall folgt Griff des Gronnlords.

|cff5929C7Griff des Gronnlords|r:
Ein stapelbarer Debuff, der das Bewegungstempo des betroffenen Spielers um 20% verringert. Der Debuff wird jede Sekunde gewirkt bis er eine Höhe von fünf erreicht. Darauf folgt Versteinert

|cff5929C7Zertrümmern|r:
Direkt nach der Versteinerung folgt dieser Angriff. Er richtet nur Schaden an, wenn sich Spieler zu nah beieinander befinden. Befindet sich gar kein Spieler in einer 15 Meter Reichweite, nimmt der Spieler auch keinen Schaden. Darunter wird der Schaden auf Grund des Abstandes berechnet. Er kann zwischen 1.050 - 4.000 Schaden pro Spieler variieren. Sind also drei Spieler direkt nebeneinander, erhalten sie jeweils 8.000 Schaden. Der Schadenswert wird nicht durch Wachstum erhöht. Er kann aber auch nicht abgewendet werden. Eisblock, Gottesschild etc. ignoriert dieser Angriff.

|cffff0000Taktik
--------|r

Der Kampf birgt zwei Problemfaktoren in sich:

|cFFDBD5331. Wachstum|r
Je länger der Kampf läuft, desto höher wird Gruuls Wachstum Buff. Dementsprechend steigt der Schaden, den Main und Off-Tank erleiden und wird irgendwann nicht mehr heilbar. Dieses kann nur durch gute Ausrüstung und Buffs kompensiert werden. Als Richtwert gilt, Gruul sollte bei 50% seiner Trefferpunkte bei sieben oder acht Stapel Wachstum sein. Wird dieses nicht erreicht, ist es unwahrscheinlich, dass der Kampf gelingt.

|cFFDBD5332. Erde erschüttern / Griff des Gronnlords / Zertrümmern|r
Die Kombination dieser drei aufeinander folgender Angriffe fügt sehr viel Schaden zu. Je näher die einzelnen Spieler beieinander stehen, desto mehr Schaden erleiden sie durch das Zertrümmern. Es sollte daher bereits vor dem ersten Erde erschüttern Angriff eine geeignete Position gesucht werden, zu der jeder Spieler zurückkehren kann. Hilfreich sind hierbei Addons wie z.B. Deadly Boss Mobs, die automatisch den Abstand messen und Warnungen ausgeben. Fernkämpfer, die sich am Höhlenrand aufhalten, haben hier einen klaren Vorteil, da sie durch die Felsbrocken am Rand bzw. die Höhlendecke nicht besonders hoch fliegen können.

Sind diese beiden Probleme dauerhaft gelöst, ist der Kampf bereits gewonnen. Denn neben diesen können Spieler lediglich durch den Höhleneinsturz Schaden erleiden und diesem sollte schnell genug ausgewichen werden können, da der Schaden erst kurz nach dem optischen Effekt einsetzt.

Ein weiterer Faktor, der zum verfrühten Ableben von Spielern führen kann, ist der Schmerzhafte Schlag. Wenn ein Spieler mehr Hass erzeugt als der zweite Main Tank erleidet er selbst den Schlag und stirbt somit. Gelingt es den Spielern nicht ihre verursachte Bedrohung selbst einzuschätzen, ist es zu empfehlen bei allen Spielern KLH Threat Meter zu installieren.

|cFFDBD533DKampfverlauf|r
Beim Einmarsch in die Höhle muss sich der Schlachtzug als Ganzes bewegen, da sich das Tor unmittelbar nach dem ersten Spieler schließt. Gruul wird daraufhin aktiv und läuft in Richtung der Tür. Dieser muss umgehend vom Main Tank gebunden und zurück zur Mitte gezogen werden. Der zweite Tank sollte ebenfalls schon beim Hineinlaufen auf Gruul einschlagen, um sicherzustellen, dass er den Schmerzhaften Schlag erleidet und nicht ein Heiler o.ä. Jäger sollten mit Hilfe ihres Umleitens für zusätzlichen Hass auf Seiten der beiden Tanks sorgen. Alle anderen Spieler sollten erst mit ihren Angriffen beginnen, wenn Gruul positioniert ist. Verfrühter Schaden führt meist zu einem Schmerzhaften Schlag gegen den entsprechenden Spieler und somit zu seinem Tod.

Den Main Tanks folgend, sollten sich alle Spieler in der Höhle verteilen und sich eine feste Position suchen, die sie nach jedem Erde erschüttern wieder einnehmen können und an der sie ausreichend Abstand zu den verbleibenden Spielern haben. Die Aufstellung kann grob in Ringe unterteilt werden. Den innersten Ring sollten die beiden Tanks und bis zu drei weitere Nahkämpfer bilden. Jeder weitere Nahkämpfer gefährdet nur die Gesundheit der anderen. Darauf folgt ein dicker Ring aus Heilern und da hinter, in der Nähe des Höhlenrandes, erstrecken sich die Schadensverursacher.

Sehr wichtig für den Kampfverlauf ist, dass nach einem Erde erschüttern keiner seine neue Position in der Mitte der Höhle sucht. Die beiden Main Tanks sind durch die normalen Angriffe schon schwer zu heilen. Zusätzlicher Schaden durch das Zertrümmern benachbarter Spieler führt höchstwahrscheinlich zu deren Tod und somit auch dem des gesamten Schlachtzuges.

Die Heiler werden im Kampfverlauf ihr meistes Mana dafür verbrauchen, die Main Tanks am Leben zu halten. Aus diesem Grund sollte sich jeder verletzte Spieler nach einem Zertrümmern oder Höhleneinsturz selbstständig verbinden.

|cFF1DDD2FHeiler|r:
Die oberste Priorität haben die beiden Main Tanks. Sie müssen unbedingt am Leben gehalten werden und vor allem der Off-Tank muss immer volle Trefferpunkte besitzen, da er durch den Schmerzhaften Schlag immer den gesamten Schaden auf einmal bekommt. Gerade nach dem Erde erschüttern entsteht ein sehr gefährlicher Moment. So fern möglich sollten die Main Tanks davor immer HoTs bekommen, damit sie nicht durch die Angriffe selbst oder den zusätzlichen Schaden der anderen Spieler sterben.

|cFF5D2B17Krieger|r:
Nach jedem Erde erschüttern muss der Main Tank Gruul augenblicklich wieder in der Mitte der Höhle positionieren. Der zweite Main Tank muss ebenfalls schnellstmöglich zurück in Nahkampfreichweite, damit der Schmerzhafte Schlag ihn und nicht einen anderen Spieler trifft. Der Schaden während der ersten Hälfte des Kampfes sollte gut von den Heilern kompensierbar sein. Eisenschild- und ähnliche Tränke sollten daher erst in der zweiten Hälfte des Kampfes konsumiert werden. Schildwall und Letztes Gefecht sollten möglichst erst während der letzten 20% eingesetzt werden. Spätestens wenn der Off-Tank merkt, dass der nächste Schmerzhafte Schlag ihn für mehr als sein Trefferpunktemaximum trifft, sollte er eine der Fähigkeiten einsetzen. Jede sollte ihn zwei weitere Angriffe überleben lassen.

|cFF03D7DFMagier|r:
Vor Beginn des Kampfes sollten alle Spieler mit Magie Verstärken gebuffed werden, da es in diesem Kampf keinerlei Magieschaden gibt und so die Heilwirkungen erhöht werden. Der durch das Zertrümmern erlittene Schaden kann nicht abgewendet werden! Ein Eisblock ist hierfür vollkommen sinnlos. Magier haben jedoch den Vorteil, dass sie noch während sie auf Grund des Rückstosses durch die Luft geschleudert werden, in die richtige Richtung blinzeln und somit schneller wieder zu ihrer ursprünglichen Position zurückkehren können. Neben dem Zertrümmern gibt es für Magier eigentlich keine große Gefahr in diesem Kampf. Der Schmerzhafte Schlag trifft nur Spieler in Nahkampfreichweite. Daher dürfen sie mehr Hass erzeugen als der Off-Tank (aber nicht als der Main Tank ;)). Sie müssen in dem Fall jedoch darauf achten beim Erde erschüttern nicht in die Mitte geschleudert zu werden.

|cfffc2adcPaladin|r:
Der durch das Zertrümmern erlittene Schaden kann nicht abgewendet werden! Selbst das Gottesschild ist hier vollkommen nutzlos. Die oberste Priorität haben die beiden Main Tanks. Sie müssen unbedingt am Leben gehalten werden und vor allem der Off-Tank muss immer volle Trefferpunkte besitzen, da er durch den Schmerzhaften Schlag immer den gesamten Schaden auf einmal bekommt. Gerade nach dem Erde erschüttern entsteht ein sehr gefährlicher Moment.

|cFFDEDC30Nahkämpfer|r:
Gruul hat eine sehr große "Hit-Box". Es ist problemlos möglich, dass sich fünf Nahkämpfer um ihn versammeln und trotzdem weit genug voneinander entfernt sind, um dem Zertrümmern Schaden zu entgehen. Im späteren Kampfverlauf steigt die Intensität der Höhleneinstürze. Hier ist es wahrscheinlich öfter von Nöten sich neu zu positionieren. Wenn jedoch von Anfang an jeder den richtigen Abstand einhält, sollte der Einsturz immer nur einen Spieler treffen. Gerade Schurken neigen dazu mehr Hass aufzubauen als einer der Main Tanks. Dieses darf auf keinen Fall passieren, da sich der Schmerzhafte Schlag für sich sicher als tödlich herausstellt.

]]

--hier die Texte für den Trash

L["trash Maulgar"] = [[

Es gibt zwei Arten von Ogern, denen ihr begnet, Höhlenschläger und Gronnpriester. Teilweise kann man sie einzeln bekämpfen, andere in Zweier- bis Dreiergruppen

Die Höhlenschläger stürmen von Zeit zu Zeit ein Ziel an und bleiben bei diesem. Ihr Wirbelwind ist ebenfalls sehr gefährlich. Tankt sie wenn es geht außer Sicht für den Großteil des Schlachtzugs, damit sie nicht allzuviele Spieler töten.
Die Heilungen der Gronnpriester müssen auf jeden Fall unterbrochen werden, dann sind diese keine schwierigen Gegner, tötet sie zuerst, da sie über weniger Lebenspunkte verfügen. 
]]

L["trash Gruul"] = [[

Der selbe wie bei Maulgar.
]]

--ra text messages jede zeile durch \n getrennt
L["ra Maulgar"] = "Der Beginn des Kampfes muss genau passen, am besten zählt der Magier herunter."
L["ra Gruul"] = "Lauft aus dem Höhleneinsturz heraus!\nWenn ihr zusammen geschleudert werdet versucht in verschiedene Richtungen wegzulaufen."

--button bezeichnungen
L["Magertank"] = "Magiertank"
L["Huntertank"] = "Jägertank"
L["group 1"] = "Gruppe 1"
L["group 2"] = "Gruppe 2"
L["group 3"] = "Gruppe 3"
L["group 4"] = "Gruppe 4"
L["group 5"] = "Gruppe 5"