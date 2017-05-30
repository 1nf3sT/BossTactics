local L = LibStub("AceLocale-3.0"):NewLocale("BT_SSC", "deDE")
if not L then return end

--Umlaute: ö:\195\182 ü:\195\188 ä:\195\164 Ö:\195\150 Ü:\195\156 Ä: \195\132

-- infos
L["Module resetted"] = "Modul zur\195\188ckgesetzt" --diese zeile nicht verändern!

L["info"] = "|cff91069ETactics by|r rpguides\n|cff91069EImages by|r Vonswan, rpguides\n|cff91069EModule by|r Sorontur\n\n|cffC0C0C0[http://www.kdh-wow.de]\n[http://www.rpguides.de]|r"

--füge hier die taktiktexte lokalisiert ein:
L["tactic Hydross"] = [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

Wie schon bei der Ausrüstung erwähnt, erfordert dieser Kampf vier gut ausgestattete Tanks. Darüber hinaus sollte es ca. neun Heiler und zwölf Schadensverursacher geben. Ein ideales Setup könnte wie folgt aussehen:

    * 2 Defensiv-Krieger (mit je 300 Widerstand einer Art)
    * 2 Wilder-Kampf-Druiden (mit je 150 Natur- und 150 Frostwiderstand)
    * 3 Heilig-Paladine
    * 3 Heilig-Priester
    * 2 Wiederherstellungs-Schamanen
    * 1 Wiederherstellungs-Druide
    * 4 Hexenmeister
    * 1 Jäger
    * 2 Magier
    * 1 Schatten-Priester
    * 3 Schurken

|cffff0000Stärkungszauber, Tränke und andere Ausrüstung
-------------------------------------------------------------|r

Während alle Spieler Ausrüstung besitzen sollten, die sich auf Tier 4 Niveau oder darüber befindet, müssen die Tanks für besondere Schutzausrüstung tragen. Der Kampf erfordert vier Tanks die jeweils Frost-/Naturwiderstandsausrüstung besitzen. Bei der Ausrüstung muss es sich um Stufe 70 Kleidung handeln. Diese Gegenstände können überwiegend über Rezepte hergestellt werden, die sich über Ruf bei der Expedition des Cenarius (Naturschutz) und dem Vielotten Auge (Frostschutz) aus Karazhan anfertigen lassen. Die Tanks müssen wie folgt ausgerüstet sein:

    * 1 Tank mit 300 Frostwiderstand
    * 1 Tank mit 300 Naturwiderstand
    * 2 Tanks mit 150 Frost- und 150 Naturwiderstand (gleichzeitig)

Für die beiden Main Tanks (300 Widerstand) sind Krieger zu empfehlen. Für die beiden Multi-Mob-Tanks (je 150 Widerstand) können auch sehr gut Wilder-Kampf-Druiden oder Schutz-Paladine verwendet werden.

Ohne die genannte Ausrüstung ist es nicht zu empfehlen in diesen Kampf zu ziehen.

|cffff0000Fähigkeiten
---------------|r

Hydross der Unstete sitzt zu Beginn in zwei Lichtstrahlen, welche seinen Elementarkörper reinigen. Auf diese Weise hat er die Fähigkeit die, auf dem Förderband vorbeiziehenden, Elementare zu säubern. Wenn er aus den Lichtstrahlen heraus bewegt wird, wird er verdorben (Emote: "Aaah, das Gift...") und verwendet seine Naturschaden Angriffe. Bewegt er sich wieder in das Licht, wird er gereinigt (Emote: "Besser, viel besser.") und benutzt fortan seine Frostangriffe. Diese Wechsel können und müssen von euch selbst aufgelöst werden. Abhängig von der jeweiligen Phase besitzt Hydross verschiedene 

|cff5929C7Mal von Hydross|r [Frost] (Mark of Hydross):
Dieser Debuff erhöht sich während der Wasser/Frostphase alle 15 Sekunden auf 10%, 25%, 50%, 100%, 250%, 500%. Er steigert somit nach 15 Sekunden den Frostschaden um 10%, nach 30 Sekunden um 25% usw. Dem Debuff kann nicht ausgewichen (durch Reichweite oder Sichtweite) oder widerstanden werden. Die einzige Möglichkeit ihn abzuwenden, ist ihn auslaufen zu lassen (dauert 30 Sekunden).

|cff5929C7Mal der Verderbnis|r [Natur]:
Dieser Debuff erhöht sich während der Verderbnis/Naturphase alle 15 Sekunden auf 10%, 25%, 50%, 100%, 250%, 500%. Er steigert somit nach 15 Sekunden den Naturschaden um 10%, nach 30 Sekunden um 25% usw. Dem Debuff kann nicht ausgewichen (durch Reichweite oder Sichtweite) oder widerstanden werden.

|cff5929C7Wassergrab|r (Water Tomb):
Diese Fähigkeit setzt Hydross alle sieben Sekunden in der Wasser/Frostphase ein. Hierbei wird ein zufälliger (nicht Main Tank) Spieler ausgewählt, in eine Wasserkugel eingeschlossen, für vier Sekunden betäubt und ihnen abhängig von der Höhe des Mal von Hydross Schaden zufügt. Bei 100% wird der betroffene Spieler ohne Heilung nicht überleben. Ähnlich wie der Stich des Flügeldrachen von Prinzessin Huhuran überträgt sich der Effekt auf benachbarte Spieler in einer acht Meter Reichweite. Was sehr schnell zum Tod mehrerer Spieler führen kann.

|cff5929C7Übler Schlamm|r (Vile Sludge):
Dieser Magieeffekt wird von Hydross in der Verderbnis/Naturphase alle 15 Sekunden eingesetzt. Der zufällig ausgewählte Spieler erleidet 500 Schaden multipliziert mit dem Mal der Verderbnis. Außerdem wird sein angerichteter Schaden und seine Heilfähigkeit um 50% reduziert. Der Debuff hält 24 Sekunden an. Er kann nicht mit Magie aufheben, aber mit Gottesschild, Eisblock oder Mantel der Schatten entfernt werden.

|cff5929C7Wasserelementare beschwören|r (Summon Water Elemental):
Bei jedem Phasenwechsel spawnt Hydross vier Elementare der neuen Phase. Zu Beginn der Wasser/Frostphase vier reine Wasserlementare (ca. 55.000 Trefferpunkte) und in der Verderbnis/Naturphase vier verdorbene Wasserelementare (ca. 62.000 Trefferpunkte). Unabhängig von der Art der Elementare spawnen diese immer an den Ecken eines imaginären Quadrats um Hydross herum.
Bildschirmfoto

|cff5929C7Raserei|r (Enrage):
Zehn Minuten nach Kampfbeginn gerät Hydross in Raserei und erhöht damit den Schaden auf ein nicht mehr heilbares Maß. Ab diesem Zeitpunkt dauert es ca. 15 - 30 Sekunden, bis der gesamte Schlachtzug ausgelöscht ist.

|cffff0000Taktik
--------|r

Hydross besitzt zwei Phasen, die abwechselnd von den beiden Tanks ausgelöst werden müssen, damit der Schaden, der durch das Mal multipliziert wird, nicht ins unendliche ansteigt. Aus diesem Grund muss ca. nach einer Minute ein Wechsel zwischen Hydross Formen (Wasser/Gift) und den Tanks (Frost-/Naturwiderstand) stattfinden. Mit jedem Wechsel spawnen zudem vier Wasserlementare der Gattung der neuen Phase (Frost oder Natur). Beim ersten Kontakt spawnen diese nicht. Eure Gruppe muss zu dem Zeitpunkt aber noch gegen die existierenden Elementare des Förderbandes ankämpfen.

|cff00ff00Phase 1|r

|cFFDBD533Positionierung|r
Vor Beginn des Kampfes begeben sich die drei Tanks (Naturschutz- und Elementartanks) ans östliche Ende und nehmen dort die Elementare des Förderbandes in Empfang. Die Schadensverursacher können damit anfangen sie zu vernichten. Nachdem drei Elementare zerstört wurden, läuft der erste Main Tank (Frostwiderstand) am westlichen Ende zur Säule und rennt dann schnurstracks auf Hydross zu. Hydross besitzt einen sehr großen Initialisierungsradius und wird sofort dem Main Tank entgegen laufen. Was zur Folge haben kann, dass er die Schranke zur Giftzone überschreitet. Das darf auf keinen Fall passieren! Denn es würden vier zusätzliche Elementare spawnen (und es wäre der falsche Tank an Hydross). Aus diesem Grund ist es zu empfehlen, dass der Main Tank auf seinem Weg zu Hydross einen Hurtigkeitstrank verwendet. Alternativ kann auch ein Unsichtbarkeitstrank benutzt werden, um an Hydross heran zu schleichen und dann Blutdurst zu benutzen. Welcher Weg auch benutzt wird, Hydross sollte anschließend wieder an seine anfängliche Position bewegt werden.

Wenn das Mal von Hydross 100% erreicht hat und noch fünf Sekunden vor der nächsten Erhöhung entfernt ist, bewegt der Frost-Main-Tank Hydross über die Schwelle zur Giftzone und startet damit die zweite Phase.

|cFFDBD533Kampfverlauf|r
Während der Main Tank Hydross anstürmt kümmert sich die restliche Gruppe um die verbleibenden Elementare. Sie hören auf zu Spawnen, sobald der Kampf begonnen hat. Wenn Hydross vom Main Tank wieder an seine Ausgangsposition gezogen wurde, sollten alle Elementare tot sein und die Gruppe mit dem Schaden auf Hydross selbst beginnen können. Dieses ist sehr wichtig. Denn diese allererste Phase ist die einzige im gesamten Kampfverlauf, in der ihr euch nicht um die vier Elementare kümmern müsst. Somit ist diese Phase auch die, in der ihr am meisten Schaden anrichten müsst. Zum Ende der Phase müsst ihr Hydross Trefferpunkte bereits auf 80% reduziert haben.

Alle Spieler müssen sich während der gesamten Phase um Hydross herum verteilen und einen Abstand von Mindestens 8 Metern einhalten, damit das Wassergrab sich nicht auf benachbarte Spieler überträgt.

Je nach Heiler-/Schadensverursacherstärke kann der Wechsel in die nächste Phase auch schon früher als normal ausgelöst werden. Dieses sollte aber nur gemacht werden, wenn Spieler häufig am Wassergrab (bei 100%) sterben und die Feuerkraft der Schadensverursacher hoch ist.

|cFF4C43FFFernkämpfer|r
Während der ersten zehn Sekunden sollten alle Fernkämpfer auf ihre verursachte Bedrohung achten. Für Jäger sind Begleiter zu empfehlen, die ihren Schaden gegen einzelne Ziele erhöhen. Hexemeister müssen gegen Ende der Phase darauf achten, dass sich nicht zu viele Dots auf Hydross befinden.

|cFF1DDD2FHeiler|r
Es sollten nur wenige Heiler für den an der Gruppe verursachten Schaden (durch das Wassergrab) abgestellt werden. Ideal sind hierfür zwei Schamanen, die versuchen mit Kettenheilung zu arbeiten. Die verbleibenden Heiler konzentrieren sich ausschließlich auf den aktuellen Tank. Wenn das Mal 100% erreicht hat, sollten angefangene Heilungen abgebrochen werden, wenn sie fasst durch sind und die Trefferpunkte des Tanks noch relativ gut aussehen. Denn widersteht der Tank einem Angriff von Hydross nicht, fallen seine Trefferpunkte von 100% auf 30% - 40%.

|cFF5D2B17Tanks|r
Der Main Tank (in dieser Phase der mit Frostwiderstand) braucht einen Unsichtbarkeitstrank. Währenddessen solltet er durch Hydross hindurch laufen, um ihn wieder zurück an seine Ausgangsposition zu ziehen. Ist Hydross dort angelangt, stellt sich der Tank wieder mit dem Rücken zu den Fernkämpfern. Versucht nicht hier Schildblock zu verwenden. Das funktioniert bei Elementaren nicht.
Bildschirmfoto

|cFFDEDC30Nahkämpfer|r
Nahkämpfer, die an Hydross dran stehen können alle Fähigkeiten mit Abklingzeiten verwenden. Während der ersten zehn Sekunden sollte zu Beginn jeder Phase auf die verursachte Bedrohung geachtet werden!
Die Nahkämpfer für die Elementare sollten sich auf Klingenwirbel und Schmuckstücke mit zwei Minuten Abklingzeit oder weniger beschränken, damit diese in jeder ungeraden Phase verfügbar sind.
Wenn Elementare bekämpft werden, muss dieses in Gruppen geschehen. Jeder Tank hat eine Gruppe. Es sollte somit immer nur zwei Nahkampf/Schadensgruppen geben.
Der Schlachtruf sollte stehts aufrecht erhalten bleiben.

|cff00ff00Phase 2|r

Fünf Sekunden vor dem fünften (250%) Mal, zieht der Frost-Main-Tank Hydross aus dem Licht über die Schwelle (zwischen den beiden Fahnenmästen), wodurch diese Phase eingeläutet wird. In diesem Augenblick spawnen vier verdorbene Wasserelementare um Hydross herum und er selbst wechselt die Farbe von blau zu grün. Das ist der Moment, in dem ein Reset (oder zumindest eine starke Reduzierung) der Hassliste stattfindet und der Natur-Main-Tank neu Hass aufbauen muss. Diese Phase sollte wieder beendet werden, wenn es noch ca. zehn Sekunden zum fünften (250%) Mal sind. Das entsprich ungefähr einer Minute.

Ein Magier sollte in dieser Phase damit beginnen in die Mitte (zu Hydross) zu laufen und eine Frostnova zu zünden, welche die erscheinenden vier Elementare an ihren Positionen festhält. Anschließend blinzelt er wieder raus. Die beiden Elementar-Tanks (150NR/150FR) binden je zwei Elementare an sich. Alternativ können sie auch nur je eins tanken, während die Hexenmeister die verbleibenden Elementare verbannen (das kann aber wertvolle Zeit kosten). Die Nah-/Fernkämpfer sollten den Tanks ca. fünf Sekunden Zeit geben und dann mit den Angriffen anfangen.

Es müssen alle Elementare getötet werden und es sollten anschließend noch ca. 20 Sekunden übrig bleiben, in denen Schaden auf Hydross fokussiert werden kann. Andernfalls wird Hydross innerhalb der zehn Minuten nicht sterben.

Gegen Ende der Phase sollten sich die Kämpfer und Heiler auf eine Seite bewegen, während der Natur-Main-Tank Hydross zurück ins Licht zieht und damit die Frost-Phase auslöst.

|cFF4C43FFFernkämpfer|r
Sollten sich von den Tanks in der Frostnova-Phase fernhalten. Zur Unterstützung der Elementar-Tanks können Eiskälte-Fallen, Erschütternde Schüsse oder Frostnoven benutzt werden. Furch sollte nur in Notfällen zum Einsatz kommen, da es zu stark die Bedrohung reduziert.
Achtet auch eure angerichtete Bedrohung (besonders während der ersten Sekunden). Wenn euch ein Elementar oder Hydross im Ziel hat, sterbt ihr eure Schlachtgruppe wird den Kampf höchstwahrscheinlich verlieren. Klassen mit Dots (Hexenmeister, Schattenpriester, etc.) die beim Wechsel weiter existieren, müssen beim Wechsel in die nächste auf ihre Position achten. Sie sollten sich so aufstellen, dass Hydross nicht erneut die Wechselgrenze überschreitet, falls er versehentlich auf sie zustürmt.

|cFF1DDD2FHeiler|r
Die Heilung aller Tanks ist sehr kritisch. Die Trefferpunkte werden unentwegt von 100% auf weniger als 50% fallen. Daher sollte jeder Elementar-Tank zwei Heiler zugewiesen bekommen. Die beiden Wassergrab-Heiler unterstützen sie ebenfalls. Während die restlichen drei Tanks sich auf Hydross beschränken.

|cFF5D2B17Tanks|r
Hydross ist Spott-Immun. Durch den Übergang von der Frost zur Naturform, gibt es jedoch eine merkbare Reduzierung des Hasses. Was den beiden Tanks den Wechsel ermöglichen sollte.

Der neue (Natur-Schutz) Tank muss Tränke, Schmuckstücke und oder sein "Letztes Gefecht" bereithalten, da es passieren kann, dass der Hasslisten-Reset schon kurz vor dem Farbwechsel passiert und er dann ungeschützten Angriffen ausweichen muss.

Der alte Tank kann zwar versuchen einen der Elementare mit "Erschütternder Schlag" angreifen, sollte ihn wegen dem falschen Widerstandsequipment aber auf keinen Fall an sich binden.

Jeder Elementar-Tank sollte im optimalen Fall zwei Elementare an sich binden und diese so lange halten, bis sie von den Schadensgruppen ausgeschaltet wurden. Sprach-Kommunikation ist an dieser Stelle sehr wichtig. Teilt den Schurken mit, dass sie einen Elementar betäuben sollen, wenn Heilungen ausbleiben (kann passieren wenn der entsprechende Heiler das Wassergrab bekommt).

|cFFDEDC30Nahkämpfer|r
Je ein Schurke sollte den Elementar-Tanks zugewiesen sein. Wenn die Trefferunkte des Tanks unter 40% fallen, muss der Schurke den Elementar mit einem mindestens zwei-Punkte-Nierenhieb oder Fiesen Trick betäuben.
In den ersten Sekunden müssen die Nahkämpfer auf ihre Positionierung acht geben. Ein Elementar, der auf einem Nahkämpfer gefrostet wird, tötet diesen meist beim ersten Schlag.

|cFFDBD533Alternativtaktik|r
Alternativ zum einzelnen Vernichten der Elementare, können diese auch relativ nah an Hydross herangezogen und dort gehalten werden. Während die Hexenmeister Saat der Verderbnis auf Hydross pflanzen und ja nach Anzahl (es sollten in diesem Fall vier Hexenmeister sein) von Magiern unterstützt werden. Die Taktik ist verständlicherweise nur wirkungsvoll wenn ausreichend Flächenzauberfähige Klassen zur Verfügung stehen.

|cff00ff00Phase 3|r

Phase drei ist im Grunde identisch mit der allerersten Phase, nur das jetzt vier reine Wasserelementare hinzukommen. Abhängig von der Heiler-/Schadensstärke eures Schlachtzuges sollte diese Phase zwischen 45 Sekunden und einer Minute dauern.

Im Gegensatz zu Phase zwei kann hier kein Magier die Elementare festfrosten. Auch gegen Eiskältefallen sind die Elementare immun. Die Elementar-Tanks müssen sich also besonders anstrengen, ihre beiden Elementare einzufangen. Vernichtet zunächst die vier Elementare und konzentriert euch dann auf Hydross selbst.

Euch sollten zwischen 10 und 20 Sekunden bleiben (abhängig von der Länge der Phase), um Schaden an Hydross anzurichten.

Nach der o.g. Phasenzeit muss Hydross erneut in die Giftzone gezogen werden. Von nun an wechseln sich Phase zwei und drei ab, bis Hydross Trefferpunkte auf 15% absinken.

|cFF4C43FFFernkämpfer|r
Beinahe identisch wie Phase zwei. Spieler mit Dots sollten die sicherheitshalber die vordere Linie überschreiten, um im Aggrofall Hydross nicht zu einem zweiten Wechsel zu bringen.

|cFF1DDD2FHeiler|r
Identisch mit Phase zwei. Jeder Tank benötigt mindestens zwei Heiler.

|cFFDEDC30Nahkämpfer|r
Sollten an Hydross für die ersten fünf und an den Elementaren für zehn Sekunden auf ihre angerichtete Bedrohung achten. Wie in Phase eins können die Hydross Schadensverursacher alle Spezialangriffe einsetzen, die ihnen zur Verfügung stehen. Befehlsrufe und Betäubungen sollten immer eingesetzt werden, wenn sie verfügbar sind.
Wenn die Elementar-Tanks einen soliden Bedrohungvorrat aufgebaut haben, können die Schurken ihren Klingenwirbel, Adrenalinrausch, Entrinnen Kombos etc. einsetzen.

|cFF5D2B17Tanks|r
Die Elementar-Tanks verhalten sich ähnlich wie in Phase zwei. Der Hydross-Tank führt das gleiche aus wie in Phase eins.

|cff00ff00Phase 4|r

Die Phasen zwei und drei werden sich (neun oder zehn Mal) abwechseln, bis Hydross Trefferpunkte auf 15% abgesunken sind. Ab diesem Moment gilt folgendes:

Beschäftigt die Elementare mit Bannen, Furcht, Frostnova, Eisfallen usw. und konzentriert eure Angriffe ausschließlich auf Hydross selbst! Alle Fähigkeiten mit hohem Schaden oder hoher Abklingzeit (Tollkühnheit, Blutdurst, Tollkühnheit etc.) können jetzt benutzt werden.
Der Main Tank sollte bei einsetzender Raserei versuchen mit Schildwall zu überleben, während der verbleibenden Schlachtzug versucht ihn zu zerfeuern.

]]

L["tactic Lurker"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

Das Gruppensetup für diesen Kampf ist relativ flexibel. Es sollte selbstverständlich Spieler geben, die im Zweifelsfall etwas "tanken" können, aber es müssen keine Defensiv-Krieger sein. Es sollte aber ein paar Spieler mit Verwandlungs, Betäubungs, etc. Fähigkeiten geben

    * 3 Tanks (2 Defensiv-Krieger und ein zweiter oder Wilder-Kampf-Druide)
    * 7 - 8 Heiler
    * 15 - 16 Schadensverursacher (unter diesen sollten sich Offensiv-Krieger Wilder-Kampf-Druiden oder Schutz-Paladine befinden, um die Wegelagerer/Wächter des Echsenkessels zu tanken).

|cffff0000Fähigkeiten
---------------|r

Trefferpunkte: 3.800.000
Nahkampfschaden: 4.800 - 5.200; 8.000 - 9.200 schmetternd (bei 15.000 Rüstung)

|cff5929C7Geysir:|r
Trifft einen zufälligen Spieler und alle in einem 8 Meter Radius um ihn für 3.200 - 3.700 Frostschaden und schleudert diese Spieler 15 Meter zurück.

|cff5929C7Wirbel:|r
Dieser Angriff setzt immer Kurz nachdem das Grauen aus der Tiefe aufgetaucht ist, fünf bis acht Sekunden nach einem Geysir und nach jedem Schwall ein. Der Wirbel schleudert alle Spieler in Nahkampfreichweiter um fünf bis zehn Meter zurück und verursacht bei ihnen 1.800 - 4.500 Körperschaden (je nach Rüstung). Wenn die betroffenen Spieler am inneren Rand des Steges stehen, landen sie autamatisch am äußeren und nicht im Wasser.

|cff5929C7Schwall:|r
Alle 45 - 50 Sekunden nachdem das Grauen aus der Tiefe aufgetaucht ist (ob nun zum ersten mal oder zum erneuten Beginn der 1. Phase) setzt es seinen Schwall ein. Dieser Wasserstrahl hat eine sehr hohe Reichweite und bewegt sich einmal zufällig im oder gegen den Uhrzeigersinn über den Steg. Wenn der Schwall einen Spieler trifft, stirbt dieser fasst immer sofort. Dem Strahl kann ausgewichen werden, indem alle Spieler in Drehrichtung des Strahls laufen. Sie sollten dabei im innersten Kreis laufen, um den Radius bzw. die Strecke zu verkleinern.

|cffff0000Taktik
--------|r

|cff00ff00Phase 1|r

|cFFDBD533Positionierung|r
Das Grauen aus der Tiefe spawnt immer in Mitten des runden Holzstegs, wie ihr auf der Karte sehen könnt und verweilt dort während der gesamten Phase.

Der Main Tank stellt sich an der Stelle auf, an welcher der Steg leicht unter der Wasseroberfläche liegt. Die zweiten Tanks hingegen positionieren sich entweder seitlich oder hinter dem Grauen.

Es werden auf die drei Plattformen jeweils 3-4 Fernkämpfer verteilt. Auf jeder Plattform sollte mindestens ein Magier oder ein Jäger stehen. Die Heiler und Nahkämpfer stehen im inneren Ring. Auf den Plattformen kann keine Aggro gezogen werden, die Fernkämpfer sollten jedoch niemals auf den inneren Ring treten, denn dort gilt die Hassliste.

|cFFDBD533Kampfverlauf|r
Sobald das Grauen aus der Tiefe auftaucht muss der Main Tank es sofort an sich binden. Der Off-Tank muss ebenfalls Bedrohung (Aggro) aufbauen, damit er immer auf Platz zwei der Hassliste steht. Andernfalls wird der Main Tank beim Wirbel zurückgeschleudert und einer der Schadensverursacher hat plötzlich die Aufmerksamkeit des Monsters.

45 Sekunden nach Beginn der Phase startet das Grauen seinen Schwall. So fern vorher alle Plattformen oberhalb des Kampfareals gereinigt wurden, sollten jetzt alle Spieler ins Wasser springen und dort ihre Angriffe fortsetzen. Sobald der Strahl an ihnen vorbei ist, können sie wieder auf den Steg klettern.

Alternativ können auch alle Spieler vor dem Strahl herrennen. Erfahrungsgemäß führt das jedoch häufiger zu Toten. Zur Unterstützung dieser Taktik können Hurtigkeitstränke verwendet werden. Diese belegen jedoch die allgemeinen Tränke Abklingzeit (2 Minuten) und sollten daher nur in Notfällen verwendet werden.

Sobald der Schwall seine 360° Runde vollendet hat und aussetzt, vollführt das Grauen seinen Wirbel Angriff. Somit sollten sich alle Spieler am äußeren Rand des Steges befinden, um nicht zurückgeschleudert zu werden. Das Grauen aus der Tiefe wird daraufhin weitere 10 - 15 Sekunden aufgetaucht bleiben, bis Phase 2 beginnt.

|cff00ff00Phase 2|r

Mit Anfang der zweiten Phase kommen Nagas von außen auf die Plattformen geschwommen. Drei Wächter des Echsenkessels (60.000 Trefferpunkte) auf dem runden Steg und sechs Wegelagerer des Echsenkessels (26.000 Trefferpunkte) auf den äußeren Plattformen (je zwei auf jeder). Diese müssen sofort unter Kontrolle gebracht und nacheinander vernichtet werden. In wie fern dieses geschieht ist von der Gruppenzusammenstellung abhängig.

Die Wächter auf dem Steg selbst sollten von Kriegern gebunden werden. Im gleichen Moment sollten die anderen drei Schadensgruppen sich um die jeweils zwei Mobs auf den Plattformen kümmern. Auch diese können verwandelt, betäubt, mit Furcht belegt, etc. werden. Hier ist anzuraten jeweils einen mit Furcht oder Verwandlung außer Gefecht zu setzen, während die anderen auf der Plattform den zweiten vernichtet. Denn die Gefahr dieser Mobs geht eindeutig von ihrem Mehrfachschuss aus. Anschließend wendet sich die Gruppe dem zweiten Ziel zu.

Nach Ablauf von einer Minute endet diese Phase, das Grauen aus der Tiefe taucht wieder auf und Phase 1 beginnt wieder.

]]

L["tactic Leotheras"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

Der Kampf gegen Leotheras ist eindeutig Schadensorientiert. Selbst die Heilerklassen sollten für diesen Kampf über Schadensausrüstung verfügen. Unter den Schadensverursachern sollten sich am Besten mehrere Jäger befinden, um Leotheras mit Irreführung zurück zum Tank führen zu können:

    * 2 Tanks (Ein oder zwei Krieger. Der zweite Tank ist ein Hexenmeister)
    * 7 Heiler
    * 16 Schadensverursacher

|cffff0000Stärkungszauber, Tränke und andere Ausrüstung
-------------------------------------------------------------|r

Neben den üblichen Standard-Buffs muss es in diesem Kampf einen Tank mit 250 - 300 Feuerwiderstand geben. Bei dem Tank kann es sich um einen Krieger oder auch Hexenmeister handeln. Der Hexenmeister sollte im Idealfall Seelenverbindung (Soullink) geskillt haben. Es wäre außerdem praktisch, wenn er einen Paladin (Feuerschutzaura) und Schamanen (Feuerschutz-Totem) in seiner Gruppe hat. Er sollte selbstverständlich zudem alle Trefferpunkte erhöhenden Tränke verwenden (Elixier der erheblichen Seelenstärke, Elixier des Meisters, Fläschchen der Stärkung).

|cffff0000Fähigkeiten
---------------|r

Trefferpunkte: 3.700.000

|cff5929C7Wirbelwind|r - Normale Form
Ähnlich wie Schlachtwache Satura (aus dem Tempel von Ahn'Qiraji) wirbelt Leotheras unaufhaltsam umher und verursacht dabei 3.000 Körperschaden bei jedem Ziel, das er zufällig trifft. Der Wirbelwind fügt dem Spieler außerdem einen "Verwunden" Dot zu, der alle drei Sekunden 2.500 Schaden verursacht. Genau wie bei Moroes ist dieser Dot nur mit Gottesschild, Segen des Schutzen oder einem Eisblock entfernbar. Der Wirbelwind hat eine Abklingzeit von ca. 20

Am Ende des Wirbelwindes findet ein kompletter Hasslistenreset statt! Daher sollte nur der Main Tank am Ende noch Schaden anrichten (kein Dot, gar nichts). Wenn der Schaden eurer Schlachtgruppe gut ist, könnt ihr während der Wirbelwind-Phase die Angriffe komplett einstellen. Das erleichtert dem Tank die Arbeit ;)

|cff5929C7Chaosblast|r - Dämonen Form
Ein Feuerblitz, der dem Ziel und allen benachbarten Spielern in einem 8 Meter Radius 100 - 200 Feuerschaden zufügt. Der Grundschaden ist jedoch irrelevant, da der Blitz außerdem den Feuerschaden um 1.675 erhöht und bis zu 20 Mal stapelbar ist.

|cff5929C7Heimtückisches Geflüster|r (Innerer Dämon) - Dämonen Form
Drei bis fünf Spieler werden diesen Debuff erhalten. Er kennzeichnet, dass der entsprechende Spieler einen Inneren Dämonen hat, den nur er sehen und verletzen kann. Der Dämon verfügbt über 10.000 Trefferpunkte unabhängig von den Trefferpunkten des Spielers, aus dem er entstanden ist und verschießt Schattenblitze (2.500 Schattenschaden). Der Debuff kann nicht auf einen der beiden Tanks angewendet werden.

Der Spieler muss den Dämonen selbst innerhalb von 30 Sekunden töten. Andernfalls wird er für zehn Minuten (also den gesamten Kampf) von dem Dämon kontrolliert.

|cff5929C7Raserei|r:
Wie viele Boss-Mobs zuvor verfällt auch Leotheras nach einem zehn Minütigen Kampf in Raserei und tötet mit seinem verbesserten Wirbelwind alles und jeden mit einem einzigen Schlag.

|cffff0000Taktik
--------|r

evor der eigentliche Kampf beginnt, müssen die drei Kanalisierer getötet werden, welche Leotheras verbannt halten. Jeder von ihnen muss von einem Tank gebunden und fokussiert getötet werden (ein Wilder-Kampf-Druide in Katzenform reicht als Tank aber völlig aus). Die Kanalisierer verfügen über einen Gedankenschlag (3.000 Schattenschaden). Der Kanalisierer des Main Tanks sollte als erstes getötet werden, damit er sich zu Leotheras begeben kann.

|cff00ff00Phase 1|r

Humanoide (normale) Form - Dauer 40 Sekunden
Die Phase beginnt sobald alle drei Kanalisierer tot sind. Der Main Tank muss möglichst schnell Hass aufbauen, damit die Schadensverursacher mit ihren Attacken beginnen können. Er sollte dabei von einem der Jäger mit Irreführung unterstützt werden.

15 Sekunden nach Beginn der Phase setzt Leotheras zum ersten Mal seinen Wirbelwind ein (hält zehn Sekunden an). Kurz davor sollten sich alle Nahkämpfer von ihm distanzieren. Der Tank muss Leotheras auf Schritt und Tritt folgen und am Ende versuchen wieder Hass aufzubauen. Ein oder zwei Sekunden vor Ende des Wirbelwindes müssen alle Schadensverursacher ihre Angriffe einstellen. Es dürfen auch keine Dots auf Leotheras sein und es sollte ebenfalls niemand in diesem Moment einen Trank benutzen. Ein weitere Jäger kann nach Ende des Wirbelwindes dem Tank helfen Hass zu generieren. Sekunden später kann die Schlachtgruppe wieder mit ihren Angriffen fortfahren. 15 Sekunden nach dem ersten Wirbelwind, wird er seinen zweiten einsetzen. Innerhalb dieses Wirbelwindes wechselt er in seine Dämonen Form (Phase 2 beginnt).

|cff00ff00Phase 2|r

Dämonen Form - Dauer 60 Sekunden
Zu Beginn dieser Phase findet ein 100%iger Hasslistenreset statt. Der Tank für die zweite Phase (der mit Feuerschutzausrüstung) muss nun also damit anfangen Hass aufzubauen. Wo genau der Tank sich dabei befindet ist relativ egal, so lange er einen 8 Meter Abstand zu anderen Spielern hält.

Da die Chaosblast Reichweite mit dem 2.10 Patch auf 8 Meter reduziert wurde, können jetzt auch Nahkämpfer an Leotheras ran (wenn der Tank ein Krieger ist) ohne den Feuerdebuff zu erhalten.

Spätestens nach 30 Sekunden in dieser Phase wirkt Leotheras Heimtückisches Geflüster auf drei bis fünf zufällig Ziele. Die betroffenen Spieler müssen ihre Dämonen innerhalb von 30 Sekunden töten. Andernfalls werden sie für den Rest des Kampfes übernommen. Die einzige Möglichkeit diesem zu entkommen ist zu sterben. Daher könnte im äußersten Notfall ein Seelenstein auf besonders schwache Spieler (Defensiv-Krieger oder Heilig-Priester) gesetzt und der Spieler schlichtweg nicht geheilt werden.

Die Phasen eins und zwei wechseln sich ab bis Leotheras Trefferpunkte auf 15% fallen. Dann setzt Phase drei ein.

|cff00ff00Phase 3|r

Humanoid und Dämonen Form - von 15% - Tod
In dieser Phase spawnen beide Formen und müssen separat gebunden und getötet werden. Die Fähigkeiten beider Formen sind identisch mit den vorangegangen Phasen, nur das Leotheras kein "Heimtückisches Geflüster" mehr einsetzt. Die humanoide Form beginnt mit einem Wirbelwind und setzt diesen fortan alle 15 Sekunden ein. Die Dämonenform verfügt über 100% ihrer Trefferpunkte. Daher sollte zuerst die normale Form vernichtet werden.

]]

L["tactic Karathress"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

Der Kampf ist sehr Heilungsintensiv. Aus diesem Grund sind acht oder neun Heiler zu empfehlen und zudem zwei Schattenpriester. Besonders für die Paladine ist dieses bei der Manaregeneration sehr hilfreich. Ein oder zwei Gruppenmitglieder sollten außerdem Druiden sein (ob Wilder-Kampf oder Wiederherstellung ist egal), da das Anregen ebenfalls sehr nützlich für die Heiler ist. Paladine sind Heilig-Priestern in der Anzahl vorzuziehen.

Vier Tanks (davon sollten zumindest drei auf Verteidigung/Wilder-Kampf trainiert sein) werden für den Kampf benötigt.

Darüber hinaus sollte die Gruppe mindestens zwei Hexenmeister aufweisen und auch zwei oder mehr Schurken sind sehr vorteilhaft.

|cffff0000Stärkungszauber, Tränke und andere Ausrüstung
-------------------------------------------------------------|r

Resistenzen steigernde Tränke werden für diesen Kampf nicht benötigt.

Tanks: Sollten möglichst viele Buffs einwerfen, die ihre Trefferpunkte und Rüstung erhöhen (Elixier der erheblichen Seelenstärke, Eisenschildtrank, etc.), da Karathress und Tiefenwächter Flutvess eine Menge Burst-Damage anrichten können.

Schadensverursacher: Schadenssteigernde Buffs (Fläschchen der obersten Macht, Elixier des Adepten, etc.) sollten zum Einsatz kommen. Sehr wichtig ist aber, dass ihr genügend Heiltränke und Bandagen dabei habt. Denn die Heilung wird ausschließlich den Tanks zukommen und ihr werdet ebenfalls eine Menge Schaden erleiden.

Heiler: Der Kampf ist quasi eine Ausrüstungsprüfung für Heiler. Die Tanks werden drastisch Schaden erleiden, den ihr ausgleichen müsst. Ein Fläschchen der mächtigen Wiederherstellung oder Elixier der draenischen Weisheit/Elixier des erheblichen Magierbluts und Elixier der Heilkraft sind hier sehr zu empfehlen.

|cffff0000Fähigkeiten
---------------|r

Trefferpunkte: 1.800.000

|cff5929C7Unheilvoller Blitz|r:
Alle 10 Sekunden wirkt Tiefenlord Karathress einen Schattenblitz ähnlichen Zauber, welcher ein einzelnes Ziel für 50% seiner maximalen Trefferpunkte trifft. Optisch wird dieser durch fünf herumwirbelnde Schattenblitze dargestellt, die alle auf ein Ziel zufliegen. Dem Zauber kann nicht teilweise, sehrwohl aber komplett widerstanden werden.

|cff5929C7Raserei|r:
Wie viele Boss-Mobs zuvor verfällt auch Tiefenlord Karathress nach einem zehn Minütigen Kampf in Raserei und tötet alles und jeden mit einem einzigen Schlag.

|cff5929C7Element-Fähigkeiten|r:
Jedes Mal wenn einer seiner drei Begleiter stirbt, erbt Tiefenlord Karathress eine seiner Fähigkeiten:
Tiefenwächter Caribdis: Sturmflut
Tiefenwächter Flutvess: Feuerspuckendes Totem
Tiefenwächter Haikis: Wildes Herz

|cFF4DFFFDTiefenwächter Caribdis (Priester)|r

Trefferpunkte: 860,000

|cff5929C7Sturmflut|r:
Alle 15 - 20 Sekunden betäubt Tiefenwächter Caribdis alle Spieler in einem 10 Meter (also Nahkampf) Radius für drei Sekunden. Dieser Effekt stellt sich optisch in einem Eisblock dar und verändert nicht das Bedrohungsverhalten. Betroffene Spieler erhalten in dieser Form auch weiterhin Schaden. Der Angriff ist vor allem aber problematisch, da die eingefrorenen Spieler nicht länger die Heilungen unterbrechen können.

|cff5929C7Wasserblitzsalve|r:
Fügt allen Spielern in einem 45 Meter Radius um Tiefenwächter Caribdis 2.700 - 3.250 Frostschaden zu.

|cff5929C7Welle der Heilung|r:
Ein Heilzauber auf ein einzelnes Ziel, der nicht von der Reich- und Sichtweite abhängig ist. Er hat eine Ein-Sekündige-Zauberzeit und heilt das Ziel um ca. 20 - 30% seiner Gesamttrefferpunkte. Er kann durch die üblichen Fähigkeiten unterbrochen werden.

|cff5929C7Wirbelwind|r:
Ein Wirbelwind, der sich von Tiefenwächter Caribdis durch den Raum bewegt. Die Bahn ist von der Bedrohung der Spieler abhängig. Der Wirbelwind kann sich also auch zu Spielern an anderen Mobs bewegen. Er richtet keinen Schaden an, hebt den Spieler aber für drei bis sechs Sekunden in die Luft und fügt ihm einen acht bis zwölf sekündigen Debuff zu, welcher die Zauberzeit um 50% erhöht.

|cFF4DFFFDTiefenwächter Flutvess (Schamane)|r

Trefferpunkte: 860.000

|cff5929C7Frostschock|r:
Identisch mit der normalen Schamanenfähigkeit, nur das dieser mit 8.000 Schaden zu Buche schlägt.

|cff5929C7Windzorn|r:
Wie die normale Schamanenfähigkeit bekommt auch Tiefenwächter Flutvess hierdurch Extra-Angriffskraft und zwei Extra-Angriffe. Was schnell dazu führen kann, dass der Tank drastisch Trefferpunkte verliert. Glücklicherweise scheint es nicht sehr häufig einzusetzen.

|cff5929C7Totems|r:
Tiefenwächter Flutvess kann drei verschiedene Totems aufstellen:

    * Feuerspuckendes-Totem: Ähnlich dem normalen Totem der Verbrennung fügt es über einen Zeitraum von einer Minute fünf bis sechs Spielern 2.550 bis 3.450 Feuerschaden zu. Es hat ungefähr 25.000 Trefferpunkte und wird ca. alle 30 Sekunden neu gesetzt.
    * Reinigungs-Totem: Reinigt das Wundgift o.ä. welches eure Gruppe anwendet von Tiefenwächter Flutvess.
    * Erdbindungs-Totem: Identisch mit dem Schamanen-Standard-Totem

|cFF4DFFFDTiefenwächter Haikis (Jäger)|r

Trefferpunkte: 850.000

|cff5929C7Mehrfach-Schuss|r:
Wie der normale Jäger Schuss verursacht auch dieser an drei Zielen gleichzeitig Schaden. Der angerichtete Schaden beläuft sich auf 2.500- 4.000.

|cff5929C7Vipernstich|r:
Ebenfalls eine typische Jägereigenschaft. Der Schuss entzieht dem Ziel 3.000 Mana und kann nicht entfernt werden.

|cff5929C7Begleiter herbeirufen|r:
Tiefenwächter Haikis kann einen Begleiter herbeirufen, der entweder ein Elementar oder Wildtier ist. Der kann nicht verbannt oder verwandelt werden (wurde mit Patch 2.10 geändert).

|cff5929C7Wildes Herz|r:
Ein Berserker-Effekt (der aber nicht so tödlich ist wie der normale). Er lässt Tiefenwächter Haikis rot anlaufen und erhöht seinen angerichteten Schaden um 30%. Der Schaden seines Begleiters erhöht sich um 50% und es kann daraufhin nicht mehr gefürchtet etc. werden.

|cffff0000Taktik
--------|r

Vorgehen:
1. Tiefenwächter Flutvess (Schamane)
2. Tiefenwächter Haikis (Jäger)
3. Tiefenwächter Caribdis (Priester)
4. Tiefenlord Karathress

|cFFDBD533Aufteilung:|r
Die vier Gegner müssen voneinander getrennt bekämpft und daher zu Beginn auseinander gezogen werden. Idealerweise geschieht dieses bei allen Mobs außer Tiefenlord Karathress selbst durch einen Jäger, welcher den entsprechenden Mob mit Irreführung zu dem jeweiligen Tank schickt. Stehen nicht ausreichend Jäger zur Verfügung (was meistens der Fall sein dürfte), müssen die Tanks selbst ihre Mobs zum Zielpunkt beweben. Wenn nur ein Jäger zur Verfügung steht, sollte er Tiefenwächter Haikis (Jäger) zu dem zugeteilten Tank locken.

Der am besten ausgestattete Tank muss Tiefenlord Karathress zugewiesen werden. Karathress macht zwar zu Beginn des Kampfes nur minimal Schaden, wird mit jedem getöteten Tiefenwächter jedoch immer stärker und kann am Ende auch Tanks fasst mit einem Schlag töten.

Fast genauso gefährlich ist der Schamane, Tiefenwächter Flutvess. Wenn seine Windzorn Fähigkeit einsetzt, kann auch er einen guten Defensiv-Krieger innerhalb einer Sekunde auslöschen. Dieser Tank sollte so viele Angriffe wie möglich negieren können. Entsprechende Buffs in Form von Tränken (Eisenschildtränke) und weitere Hilfsmittel anderer Klassen (Frostwiderstandsaura, Totem der luftgleichen Anmut, Heilstrom-Totem, Segen des Schutzes usw.) sind unabdingbar.

Der Priester, Tiefenwächter Caribdis, sollte möglichst von einem Krieger gebunden werden, welcher mit Schildhieb die Heilzauber des Priesters unterbrechen kann. Ihm muss außerdem ein Hexenmeister zugewiesen werden, der dauerhaft Fluch der Sprachen auf Tiefenwächter Caribdis hält, ein Paladin in der Gruppe sorgt für Frostresistenzaura und ein Schamane unterbricht die Heilungen.

Tiefenwächter Haikis (Jäger) kann gut von einem Druiden gebunden werden, der möglichst schnell Hass aufbauen kann, da er als erster unter Feuer genommen wird. Ein weiterer Druide, Krieger oder Paladin kann seinen Begleiter binden.

|cFFDBD533Tiefenwächter Flutvess (Schamane):|r
Bis zu diesem Punkt habt ihr die Feuerspuckenden-Totems sicherlich vollkommen ignoriert. Doch jetzt, wo die meisten Spieler in dessen Einflussbereich stehen, richtet es dafür zu viel Schaden an. Die Schadensgruppe, welche sich von Tiefenwächter Haikis zu Flutvess bewegt, muss ihren Schaden also auf dieses Totem konzentrieren, sobald es erscheint. Anschließend kann die Gruppe wieder auf Flutvess selbst umschwenken. Flutvess muss schnell sterben. Setzt alles ein, was ihr an Schmuckstücken mit weniger als fünf Minuten Abklingzeit habt.

In dieser Phase des Kampfes teilt Tiefenlord Karathress bereits mehr Schaden aus als bisher, da er durch den Tod von Tiefenwächter Haikis bereits den ersten Buff besitzt (30% mehr Schaden). Die beiden, zu Beginn des Kampfes zugewiesenen Heiler, sollten es bislang aber noch schaffen, Karathress alleine zu heilen. Sobald Tiefenwächter Flutvess tot ist, müssen sich die übrig gebliebenen Heiler jedoch verteilen. Ein bis zwei sollten dann zu Tiefenlord Karathress Tank rüberwechseln. Während der Rest sich mit der Gruppe zu Tiefenwächter Caribdis bewegt.

|cFFDBD533Tiefenwächter Haikis (Jäger):|r
Ein Wilder-Kampf-Druide oder Defensiv-Krieger sollte sich um Tiefenwächter Haikis kümmern. Unmittelbar nach Kampfbeginn wird dieser seinen Begleiter herbeirufen. Dieser muss ebenfalls von einem weiteren Tank beschäftigt werden. Ideal ist hierfür ein weiterer Wilder-Kampf-Druide geeignet, da dieser im Zweifelsfall zwischen Bär und Katzenform wechseln kann.

Tiefenwächter Haikis richtet nur moderaten Schaden am Tank an. Weshalb ein bis zwei Heiler hier ausreichen sollten. Problematisch wird es jedoch dadurch, dass sein Begleiter ebenfalls getankt werden muss, da dieser fasst genau so viel Schaden wie Haikis selbst macht.

Unabhängig vom Stadium des Kampfes muss die ganze Zeit darauf geachtet werden, dass die Heilzauber von Tiefenwächter Caribdis unterbrochen werden. Es darf niemals passieren, dass ein Haikis oder ein anderer Mob wieder um ein Drittel geheilt wird. Das kostet euch zu viel Zeit und führt höchstwahrscheinlich dazu, das Tiefenlord Karathress frühzeitig in Raserei verfällt.

Das große Problem dieser Kampfphase sind aber höchstwahrscheinlich nicht Haikis oder Caribdis, sondern Tiefenwächter Flutvess. Mit seinem Feuerspuckendem-Totem, Frostshock und Windzorn richtet er sowohl am entsprechenden Tank als auch seinen Heilern beträchtlichen Schaden an. Das Feuerspuckende Totem muss sofort vernichtet werden.

Auch wenn die meisten Spieler selbst für ihre Heilung (durch Tränke und Verbände) sorgen sollten, müssen die Heiler zwischendurch mal auf die Trefferpunkte der gesamten Schlachtzug-Teilnehmer achten. Deren Trefferpunkte dürfen nicht unter 50% fallen, da sie sonst von einer von Tiefenlord Karathress Schattenblitzsalven ausgelöscht werden können.

|cFFDBD533Tiefenwächter Caribdis (Priester):|r
Die Schadensverursachergruppe bewegt sich hinunter zu Tiefenwächter Caribdis und vernichtet diesen. Für sie und die Caribdis Heiler und deren Tanks ändert sich in dieser Phase nichts. Es muss sich weiterhin Fluch der Sprachen auf Caribdis befinden, damit die Heilungen zeitig abgebrochen werden können. Ein paar der Heiler sollten versuchen, außerhalb der Wasserblitzsalven-Reichweite hinter den Schadenverursachern zu stehen und den dadurch erlittenen Schaden gegen zu heilen.

Das Problem dieser Phase liegt hingegen bei Tiefenlord Karathress, der nun seinen zweiten Buff erhalten hat. Das eben noch bei Flutvess spawnende Feuerspuckende-Totem, erscheint jetzt bei Tiefenlord Karathress. Aus diesem Grund muss der Tank ab sofort Karathress von Süden nach Nordosten und zurück durch den Raum ziehen. Die Tankheiler sollten dabei möglichst vor ihm bleiben, um garantiert aus der Totemreichweite zu sein.

|cFFDBD533Tiefenlord Karathress:|r
Zu guter letzt ist Tiefenlord Karathress selbst an der Reihe. Was nun geschieht, ist von der verbleibenden Zeit abhängig. Wenn ausreichend Zeit ist, solltet ihr die spawnenden Feuerspuckenden-Totems zerstören (wenn jeder darauf feuert ist es nur ein Schuss). Ist der Timer schon zu nahe an der Zehn, müssen die Heiler versuchen dagegen an zu heilen und der Schlachtzug seinen Schaden auf Tiefenlord Karathress konzentrieren. Wie schon zuvor müssen die Tank-Heiler, besonders wenn Tiefenlord Karathress rot anläuft (30% mehr Schaden), auf die Trefferpunkte des Main Tanks achten und am Besten Überheilungen produzieren.

]]

L["tactic Morogrim"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

Das Klassensetup für diesen Kampf ist relativ flexibel. Es gibt verschiedene Lösungswege für die Bekämpfung der Murloc-Gruppen, die für Spieler, die bereits den Pechschwingenhort erfolgreich bewältigt haben, Problemlos machbar sein sollten. Nichts desto trotz ist es zu sehr zu empfehlen, möglichst viele Spieler mit Flächenzaubern (Hexenmeister und Magier) in petto zu haben.

    * 2 - 3 Tanks (Einer sollte ein Krieger sein, die verbleibenden können ebenso gut aus Druiden oder Paladine bestehen)
    * 7 - 8 Heiler (Zwei bis drei Paladine sind vorteilhaft, müssen aber nicht zwingend sein)
    * 11 - 14 Schadensverursacher (Drei bis vier Magier und ebenso viele Hexenmeister sind ratsam)

|cffff0000Stärkungszauber, Tränke und andere Ausrüstung
-------------------------------------------------------------|r

Streng genommen werden keine speziellen Buffs oder Ausrüstung benötigt. Es ist aber sehr Vorteilhaft, wenn alle Schlachtzugmitglieder mit Buffs über mindestens 9.000 Lebenspunkte verfügen. Denn es kann gut passieren, dass jemand nacheinander vom Nassen Grab, Erdbeben und/oder den Wasserkugeln getroffen wird und das sollte er/sie möglichst überleben können.

Der Main Tank benötigt keine Resistenzausrüstung. Ein wenig Stufe 70 Frostschutzausrüstung kann aber hilfreich sein. Für die ersten Versuche sind für Tanks die Fläschchen der Stärkung (können in Shattrath über die Male der Illidari gekauft werden) zu empfehlen. Bei späteren Kills sollte besser auf Elixier der erheblichen Seelenstärke, Eisenschildtränke etc. zurückgegriffen werden.

Wie schon die Tanks ist für die ersten Versuche auch bei den Heilern ein Fläschchen der mächtigen Wiederherstellung zu empfehlen. Später reichen sicherlich Elixiere der draenischen Weisheit und Elixiere der Heilkraft.

Hexenmeister und Magier müssen gerade bei die Murloc-Wellen viel Schaden verursachen, daher sind auch hier Fläschchen der obersten Macht oder ähnliche Buffs von Vorteil.

|cffff0000Fähigkeiten
---------------|r

|cff5929C7Gezeitenwelle|r (Tidal Wave):
Eine 35 Meter weit reichende Welle, die sich kegelförmig vor Morogrim ausweitet. Sie trifft jedes Ziel für 3.938 - 5.062 Frostschaden und verringert die Angriffsgeschwindigkeit des Betroffenen um 400%. Dem angerichteten Frostschaden kann mit Frostresistenzausrüstung widerstanden werden.

|cff5929C7Erdbeben|r (Earthquake):
Dieser Flächenangriff setzt alle 45 - 60 Sekunden ein. Er wirft allen Spielern in einem 45 Meter Radius um Morogrim Gezeitenwandler um und fügt ihnen 3.000 - 4.000 Schaden zu.
Das Emote "Das heftige Erdbeben hat nahe Murlocs alarmiert!" kündigt es bereits an. Mit jedem Erdbeben spawnen außerdem an beiden Eingängen Murloc-Gruppen, bestehend aus sechs Murlocs, die jeweils ca. 7.000 Trefferpunkte besitzen.

|cff5929C7Nasses Grab|r (Watery Grave):
Alle 30 Sekunden teleportiert Morogrim Gezeitenwandler vier zufällig ausgewählte Spieler an die vordefinierten Punkte des Raumes (erkennbar durch die Pfützen am Boden). Diese vier Spieler werden für sechs Sekunden in einer Wasserkugel eingesperrt. Nach Ablauf der sechs Sekunden erleiden sie 3.200 Frost- und 1.000 Körperschaden (durch den Fall). Benachbarte Spieler werden ebenfalls von dem Effekt betroffen. Der Angriff kündigt sich durch das Emote "Morogrim Gezeitenwandler schickt seine Feinde in ihr nasses Grab!" an.

|cff5929C7Wasserkugeln|r (Watery Globules):
Sobald Morogrim Gezeitenwandlers Trefferpunkte auf 25% abgefallen sind, setzt er nicht mehr länger sein Nasses Grab ein. Stattdessen entstehen an den gleichen Punkten Wasserkugeln. Diese rollen durch den Raum und explodieren, sobald sie einen Spieler erreichen. Die Explosion verursacht 4.000 - 5.000 Frostschaden.

|cffff0000Taktik
--------|r

|cFFDBD533Positionierung|r
Wie auf der Karte zu sehen ist, sollte sich der Main Tank auf der rechten Seite des oberen Ausgangs aufstellen und Morogrim dem Ausgang zuwenden. Sobald ein Jäger den Gezeitenwandler mit Irreführung zum Main Tank gelockt hat, können sich die Nahkämpfer wie üblich hinter ihm positionieren.

Die Heiler und Fernkämpfer stellen sich hingegen auf maximaler Heil/Zauberreichweiter in der Nähe des unteren Ausgangs auf.

Je nachdem welche Taktik zum einfangen der Murlocs benutzt wird, kann sich ein Lockvogel oder mehrere (Heiler) außerhalb der Gruppe aber dennoch in Heilreichweite des Tanks aufstellen.

|cFFDBD533Kampfverlauf|r
Der Kampf ist relativ einfach, so lange die Koordination stimmt und jeder Spieler seine Aufgabe kennt. Aus diesem Grund möchte ich die einzelnen Aufgabenbereiche hier genauer auflisten.

|cFFDBD5331. Heileraufteilung:|r Es sollten zwei bis drei der acht Heiler für den Main Tank abgestellt werden. Idealerweise sollten sich darunter zwei Paladine befinden. Die verbleibenden Heiler kümmern sich ausschließlich um die Gruppe. Sie heilen vor allem die Opfer des "Nassen Grabes" wieder hoch und konzentrieren sich anschließend auf die Spieler mit Flächenzaubern. Beispiel: Magier 1 wird vom Nassen Grab erfasst (-4.200 Trefferpunkte), zehn Sekunden später setzt das Erdbeben ein (-4.000) Schaden, woraufhin er direkt in den Kampf gegen die Murlocs gehen muss und dieses überleben sollte (da sich er Vorgang alle 45 Sekunden wiederholt).

|cFFDBD5332. Schadensverursacher:|r Hier muss zwischen Klassen mit Flächenzaubern und Einzel-Ziel-Schadensverursachern unterschieden werden.

|cFFDBD5332.1. Einzel-Ziel-Klassen:|r Zu dieser Gruppe sollten Schurken, Jäger, Schattenpriester und dergleichen zählen. Sie kümmern sich über den gesamten Kampfverlauf hinweg um Morogrim Gezeitenwandler.

|cFFDBD5332.2. Flächenzauber-Klassen:|r Zu dieser Kategorie zählen Hexenmeister und Magier. Für die ersten Übungskämpfe sollten von diesen Klassen jeweils drei oder vier zur Verfügung stehen.

Nachdem das Erdbeben abgeklungen ist, kommen aus dem nördlichen und südlichen Eingang jeweils sechs Murlocs gelaufen, die schnellstmöglich und vor allem ohne Tote vernichtet werden müssen.

Im Optimalfall kümmern sich alle Hexenmeister und Magier um beide Gruppen, welche in der Mitte des Raumes (nahe der Rampe) gesamelt werden. Hierbei frostet der erste Magier die Murlocs fest und die Hexenmeister beginnen Saat der Verderbnis auf sie zu wirken. Sobald die Murlocs freikommen, frostet der zweite Magier sie erneut fest. Nun beginnen auf beiden Magier mit Flächenzaubern auf die Murlocs (natürlich stehen sie dabei nicht in den Murlocs ;)). Leben die Murlocs nach Ende der zweiten Frostnova noch, laufen sie höchstwahrscheinlich zu einem der Hexenmeister, welcher sie hoffentlich mit Massenfurcht in die Flucht schlagen kann. Andernfalls müssen Schamanentotems zur Verlangsamung oder andere Hilfemittel bereitstehen.

Das große Problem an dieser Taktik besteht leider in Spielern, die versehentlich (durch Heilungen, Gebrüll usw.) die Aufmerksamkeit ändern, sodass diese den Kurs ändern und nicht in die Explosionszone laufen. Ein Lösungsansatz stellen hierzu die oben erwähnten Heilerlockvögel dar. Sie (am Besten Paladine) positionieren sich an dem Punkt, an dem die Murlocs sterben sollen und heilen als Einzige den Main Tank weiter (alle anderen stellen die Heilung kurzzeitig ein). Die Murlocs werden somit zu deren Position gelockt. Wo sie entweder noch von Tanks (mit Demoralisierungsruf und Durchdringendem Geheul) abgefangen oder direkt von den Magiern gefrostet werden. Anschließend startet die Murloc-Spreng-Aktion wie zuvor beschrieben.

Die Murlocs sollten ungefähr 15 Sekunden nach der ersten Frostnova dem Erdboden gleich gemacht sein. Daraufhin können auf die Flächenzauberer wieder Morogrim angreifen. Dieser Vorgang wiederholt sich ungefähr alle 45 Sekunden bis zum Ende des Kampfes

|cFFDBD53325%|r
Sobald Morogrim Gezeitenwandlers Trefferpunkte auf 25% gefallen sind, werden die Nassen Gräber gegen Wasserkugeln ausgetauscht. Die Murlocs werden aber weiterhin anrücken.

Der Schlachtzug sollte in dieser Kampfphase die Position wechseln. Während der Main Tank immer noch am östlichen Ende der nördlichen Tür steht, dreht er Morogrim nun um 90° im Urzeigersinn (so das er mit dem Rücken nach Westen steht). Der Schlachtzug stellt sich westlich von ihm entlang des Eingangs auf. Auf diese Weise zerplatzen die Wasserkugeln höchstwahrscheinlich bevor sie die Gruppe erreichen.

Um Kontakt mit den Wasserkugeln zu verhindern, müssen die Murloc Gruppen nun ebenfalls von der oberen Position bekämpft werden. Die Magier müssen also noch besser auf die Positionierung ihrer Frostnoven acht geben.

Selbstverständlich könnt ihr auch eure alte Position beibehalten und den Wasserkugeln ausweichen. Gerade bei den ersten Versuchen kann dieses aber zu mehreren Toten führen.

]]

L["tactic Vashj"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

Der Kampf erfordert relativ viele Schadensverursacher und Heiler. Es ist nicht zu empfehlen mehr als die benötigte Anzahl von Tanks mitzunehmen. Zudem sollte bei den Schadensverursachern auf das richtige Verhältnis geachtet werden. Bei zu vielen Nahkämpfern kann es ebenfalls zu Problemen kommen, weil zu große Strecken in kurzer Zeit zurückgelegt werden müssen. Einer der Schadensverursacher sollte außerdem ein Jäger, Gebrechens-Hexenmeister oder Frost-Magier sein, der in der Lage ist einen Mob zu kiten*.

    * 2 Tanks
    * 8 Heiler
    * 15 Schadensverursacher (4 Nahkämpfer und 11 Fernkämpfer)

|cffff0000Fähigkeiten
---------------|r

Trefferpunkte: 4.600.000

|cff5929C7Druckwelle|r (Shock Blast) - Phase 1 & 3
Wird unregelmäßig auf den aktuellen Spitzenreiter der Hassliste gewirkt (Main Tank). Der getroffene Spieler erleidet 8.325 - 9.675 Naturschaden und wird für fünf Sekunden betäubt. Lady Vashj wechselt daraufhin auf den zweiten Spieler in der Hassliste.

|cff5929C7Statische Aufladung|r - Phase 1 & 3
Betrifft einen zufällig ausgewählten Spieler und alle weiteren in einem 5 Meter Radius. Der Debuff verursacht bei den Betroffenen über 30 Sekunden jede Sekunde 2.775 bis 3.225 Naturschaden. Sie kann nicht von Magie entfernen oder Reinigen entfernt werden, nur von Mantel der Schatten, Eisblock, Gottesschild etc.

|cff5929C7Umschlingen|r - Phase 1 & 3
Alle Spieler in einem 15 Meter Radius um Lady Vashj werden mit Wucherwurzeln für zehn Sekunden festgehalten. Die Wucherwurzeln verursachen alle zwei Sekunden 500 Schaden. Sie können nicht mit Magie entfernen oder Reinigen beseitigt werden. Es wirkt lediglich Mantel der Schatten, Segen der Freiheit etc.

|cff5929C7Mehrfachschuss|r - Phase 1 & 3
Kommt immer direkt nach einem Umschlingen oder wenn sich kein Spieler in Nahkampfreichweite befindet zum Einsatz. Der Schuss verursacht bei dem Ziel und vier Spielern in seiner Umgebung jeweils 6.475 - 7.525 Körperschaden.

|cff5929C7Schießen|r - Phase 1 & 3
Kommt immer direkt nach einem Umschlingen oder wenn sich kein Spieler in Nahkampfreichweite befindet zum Einsatz. Der Schuss verursacht bei ihrem Ziel 4.097 - 5.543 Körperschaden.

|cff5929C7Magiebarriere|r - Phase 2
Zu Beginn der zweiten Phase läuft Lady Vashj in die Mitte der Plattform und aktiviert diese Barriere, welche sie für die gesamte Phase unverwundbar macht. Die Barriere muss deaktiviert werden, indem ein Besudelten Kern auf die insgesamt vier Schildgeneratoren benutzt wird.

|cff5929C7Gabelblitzschlag|r - Phase 2
Wird auf bis zu fünf Spieler auf einer Kegelförmigen Fläche in ca. 60° vor Lady Vashj angewendet und verursacht bei ihnen 2.313 - 2.687 Naturschaden.

|cff5929C7Toxische Sporen|r - Phase 3
Dieser Debuff wird von den toxischen Wolken verursacht, welche die Sporenfledermäuse hinterlassen. Er verursacht über 30 Sekunden jede Sekunde 2.775 to

|cFF4DFFFDVerzauberter Elementar|r - Phase 2
Diese Wasserelementare spawnen in der zweiten Phase in dem Gewässer am Fuße der Treppen und bewegen sich auf Lady Vashj zu. Sie besitzen 7.600 Trefferpunkte und buffen Lady Vashjs angerichteten Schaden um 5%, wenn sie sie lebend erreichen.

|cFF4DFFFDBesudelter Elementar|r - Phase 2
Ungefähr alle 50 Sekunden spawnt statt einem normalen ein besudelter Elementar. Er verbleibt stationär und verschießt Giftblitze auf zufällige Ziele. Wird er nicht innerhalb von 10 - 15 Sekunden getötet despawnt er, was nicht passieren sollte. Denn jeder besudelte Elementar hinterlässt einen "Besudelten Kern", mit dem ein Schildgenerator ausgeschaltet werden kann.

Der Besudelte Kern ist ähnlich wie ein Lederball ein Gegenstand (grüner Ball) im Inventar. Der Spieler, der den Kern aufnimmt wird sofort paralysiert (er kann sich nicht mehr bewegen). Er kann den Besudelten Kern jedoch zu einem anderen Spieler in 40 - 60 Reichweite werfen.

|cFF4DFFFDNaga Elite|r - Phase 2
Ein Elite Mob mit ca. 170.000 Trefferpunkten. Er verursacht ungefähr 5.000 Körperschaden bei einem Plattenträger und spaltet für ca. 7.500 Schaden.

|cFF4DFFFDSchreiter des Echsenkessels|r - Phase 2
Ähnlich wie der Nage verfügt auch der Schreiter über 170.000 Trefferpunkte. Er schlägt jedoch noch härter zu (ca. 8.000 Schaden auf Platte) und besitzt darüber hinaus einen Gedankenschlag (3.000 Schattenschaden) und eine Psychischer-Schrei-Aura, welche alle zwei bis drei Sekunden Spieler in einem 8 Meter Radius um ihn für fünf Sekunden mit Furcht belegt und dessen Bewegungsgeschwindigkeit um 150% erhöht.

|cFF4DFFFDSporenfledermäuse|r - Phase 3
Die Sporenfledermäuse betreten die Kammer in dem sie über Lady Vashj kreisen. Von Zeit zu Zeit spucken sie toxische Sporen auf ein zufälliges Ziel in der Schlachtgruppe. Ähnliche einem Raserei Effekt erhöht sich die Anzahl der Sporenfledermäuse nach vier Minuten (von Phase 3 Beginn an) drastisch.

|cffff0000Taktik
--------|r

|cff00ff00Phase 1|r

Diese Phase verläuft von 100% - 70%

Mit Erneuerungen, Gebet der Besserung etc. belegt läuft der erste Main Tank (knapp gefolgt vom zweiten Tank) auf Lady Vashj zu und bindet sie an sich. Daraufhin nimmt der Rest des Schlachtzuges ebenfalls seine Positionen oberhalb der Treppe ein (siehe Karte) und beginnt mit den Attacken auf sie.

Kurz darauf dürfte Lady Vashj bereits ihre erste statische Ladung verschießen. Wenn es sich bei dem Betroffenen um einen Fernkämpfer handelt, sollte er sich an den Fuß der Treppe zurückziehen. Selbstverständlich sollten die Heiler darauf acht ihn am Leben zu halten. Wenn es sich um einen Nahkämpfer handelt, muss er sich entweder an einen vorher dafür definierten Platz im inneren Ring stellen, oder durch eine Passage ebenfalls nach außen laufen und dort verharren, bis der Effekt ausgelaufen ist. Bei einem Nahkämpfer ist die Chance andere Spieler in Mitleidenschaft zu ziehen jedoch erheblich größer. Daher müssen die Heiler hier besonders darauf acht geben. Addons wie Beispielsweise BigWigs können euch dabei helfen, in dem sie automatisch Symbole auf betroffene Spieler verteilen.

Sollte der erste Main Tank die statische Ladung erhalten, spottet der zweite Tank ihm Lady Vashj weg und positioniert sie neu außerhalb des Einflussbereichs des ersten Main Tanks. Ein ähnlicher Wechsel findet beim Shock Blast statt. Hier jedoch unfreiwillig. Denn der erste Main Tank wird betäubt und der zweite muss an seiner Stelle weitermachen.

Innerhalb dieser Phase wird es immer wieder passieren, dass Lady Vashj die Spieler in ihrem direktem Umfeld mit ihren Wucherwurzeln festsetzt. Sie läuft anschließend an den Rand des inneren Kreises versucht ihre Schüsse zu verteilen. Wann immer das passiert, muss ein Paladin Segen der Freiheit auf den Main Tank wirken, damit er schnell wieder an sie heranlaufen und die Schüsse somit unterbinden kann. Die Paladine sollten untereinander eine Rotation für den Segen der Freiheit absprechen, damit der aktuelle Main Tank permanent von den Wurzeln befreit ist.

Diese Angriffe wiederholen sich bis Lady Vashjs Trefferpunkte 70% erreicht haben.

|cff00ff00Phase 2|r

Diese Phase verläuft geht 70% bis alle Generatoren deaktiviert sind (hoffentlich 50%)

Zu Beginn dieser Phase läuft Lady Vashj ins Zentrum der Plattform und umgibt sich selbst mit einer magischen Barriere, die sie unverwundbar macht und vier Generatoren spawnen um diese herum. Zur Deaktivierung des Schildes müssen auf die vier Generatoren um sie herum besudelte Kerne benutzt werden. Lady Vashj selbst verweilt während der gesamten Phase an ihrer Position und verschießt von da aus lediglich ihre Blitze.

|cFFDBD533Positionierung|r
Die beiden Main Tanks verweilen innerhalb der oberen Plattform und warten darauf, dass die Elite Nagas spawnen, um sie schnellstmöglich an sich zu binden.

Einer der Fernkämpfer (Jäger, Hexenmeister oder Frostmagier) wird dafür abgestellt den Schreiter über das obere Plateau zu locken, sobald er erscheint.

Vier Gruppen bestehen aus je ein bis zwei Kämpfern (möglichst Nahkämpfer) und einem Heiler verteilen sich auf die vier Sektoren der Treppe (siehe Karte)

Die verbleibenden Fernkämpfer bleiben in der Nähe der Tanks und greifen die Elite Nagas an, sobald der Main Tank sie gebunden hat.

|cFFDBD533Kampfverlauf|r
Über die gesamte Phase hinweg spawnen am Treppenfuß Verzauberte Elementare, die versuchen Lady Vashj zu erreichen. Dieses sollte möglichst nicht passieren. Die dafür abgestellten Gruppen müssen auf den Elementar einschlagen/schießen bevor er Lady Vashj erreichen und sie buffen kann.

Ungefähr alle 50 Sekunden spawnt im Wasser ein anderer, Besudelter Elementar. Dieser Elementar muss umgehend von der jeweiligen Gruppe unter Feuer genommen und getötet werden, da er 10 - 15 Sekunden später wieder verschwindet. Er sollte nicht entkommen. Gelingt es euch ein oder zwei Mal nicht in zu vernichten, könnt ihr den Kampf abbrechen. Stirbt der Besudelte Elementar hingegen, muss einer der Spieler zu seiner Leiche laufen und daraus den besudelten Kern plündern. Der Spieler wird augenblicklich gelähmt, muss den Kern aus seinem Inventar raussuchen und direkt oder über Umwege (abhängig von der Sichtlinie) zu einem Spieler an einem der Generatoren werfen, damit dieser Spieler so den Generator deaktivieren kann. Hierzu ist es Hilfreich wenn sich die Spieler aus der fünften Gruppe (die oben beim Main Tank stehen) automatisch an je einem Generator aufstellen. Auf alle Fälle müssen die betroffenen Spieler darüber informiert werden. Daher ist es zu empfehlen die Kerne/Würfe über Teamspeak anzusagen, oder per Macro bekannt zu geben. Das folgende Macro ist für den Kampf sehr hilfreich:

/use Besudelter Kern
/ra Habe den Stein zu %t geworfen!
/script m="DU HAST DEN STEIN!" p=UnitName("target") SendChatMessage(m,"WHISPER", nil,p);

Ca. alle 45 Sekunden spawnt im inneren Kreis ein Elite Naga, der umgehend von einem der Main Tanks gebunden und so schnell wie möglich von den Schadensverursachern der oberen Plattform vernichtet werden muss.

Ebenfalls im inneren Bereich sollte jede Minute (oder später) ein Schreiter des Echsenkessels spawnen. Dieser muss sofort von dem für diese Aufgabe abgestellten Jäger, Hexenmeister etc. gebunden und über die Plattform "gekitet"* werden. Im Anschluss daran muss er von allen anderen Hexenmeistern, Priestern etc. mit Dots eingedeckt werden, damit er bis zum nächsten Spawn stirbt. Der Schreiter wird von allen möglichen Zaubern, Fertigkeiten verlangsamt: Verlangsamen, Frostblitz, Betäuben, etc. Es ist hilfreich wenn dauerhaft ein Frostblitz Effekt auf ihm gehalten wird.

Diese Spawns setzen sich fort, bis alle vier Generatoren ausgeschaltet sind.

|cff00ff00Phase 3|r

Beginnt mit der Deaktivierung der vier Generatoren; Ende mit Lady Vashjs Tod

Die Phase ist grob identisch mit der ersten Phase. Jedoch gibt es zu Beginn sicherlich noch einen lebenden Schreiter und einen Elite Naga, die umgehend getötet werden müssen. Lady Vashj kommt aus dem Schild frei, sobald der letzte Generator wegfällt und muss sofort von dem freien Main Tank gebunden werden.

Der große Unterschied zwischen Phase eins und drei sind jedoch die Sporenfledermäuse. Sie spawnen am Eingang der Kammer und kreisen über Lady Vashj an der Höhlendecke. Sie können zu Anfang der Phase noch von Fernkämpfern abgeschossen werden. Nach spätestens vier Minuten nimmt die Spawnrate aber derart drastisch zu, dass dieses nicht mehr möglich ist. Zu diesem Zeitpunkt sollte Lady Vashj bereits so gut wie Tod sein.

Die Sporenfledermäuse suchen sich einen zufälligen Spieler aus und kontaminieren den Boden unter ihm. Der betroffene Spieler hat ca. zwei Sekunden Zeit aus der Lache heraus zu laufen, bevor er 1.500 Schaden erleidet.

Konzentriert eure Angriffe in dieser Phase möglichst auf Lady Vashj.

]]

--texts for trash

L["trash Hydross"] = [[

|cFF4DFFFDBestienbändiger des Echsenkessels|r

|cFFDBD533Fähigkeiten:|r
Spalten: Fügt in einem Kegelförmigen Umkreis allen Spielern vor dem Bestienbändiger ca. 2.000 Schaden zu.
Zorn des Wildtiers: lässt die beiden Sporensegler in Raserei verfallen
|cFFDBD533Kontrollierbar durch:|r immun
|cFFDBD533Taktik:|r Wird durch den MT beschäftigt und wird als letzter getötet.

|cFF4DFFFDHassschürer des Echsenkessels|r

|cFFDBD533Fähigkeiten:|r
Stille: Vier Sekündiger Effekt in einem 30m Radius.
Schallender Schrei: 4.800 Arkanschaden auf ein zufälliges Ziel
|cFFDBD533Kontrollierbar durch:|r immun
|cFFDBD533Taktik:|r Werden durch einen Tank beschäftigt.

|cFF4DFFFDSporensegler des Echsenkessels|r

|cFFDBD533Fähigkeiten:|r
Sturmangriff: Stürmt ein zufällig ausgewähltes Ziel in Reichweite an und verursacht dabei ca. 3.500 Schaden, darauf folgt meist ein weiterer Schlag mit 6.000 Schaden.
Sporenexplosion: Ein nicht entfernbarer DOT, der alle 3 Sekunden 1.400 Naturschaden zufügt
|cFFDBD533Kontrollierbar durch:|r Verwandeln, Betäubungseffekte, Verführen, Eiskältefalle
|cFFDBD533Taktik:|r Ein Sporensegler wird verwandelt, der andere wird von einem Tank gebunden und umgegehend vernichtet. Erhalten die Sporensegler Zorn des Wildtiers, können sie nicht mehr verwandelt werden, der Tank muss also ggf. den zweiten sofort an sich binden.

|cFF4DFFFDTiefensumpfkoloss|r

|cFFDBD533Fähigkeiten:|r
Typ1:
Infektion und Sporenbeben

Typ2:
Säuregeysir und Parasit

Typ3:
Raserei
|cFFDBD533Kontrollierbar durch:|r immun
|cFFDBD533Taktik:|r Der Tank bindet den Koloss an sich, je nach typ muss mehr Heilung auf den Tank oder den Raid geschehen. 
Beim Tot tritt zufällig einer der folgenden Effekte ein:
Toxisches Becken:
Am Todesort erscheint grüner Schleim, der immensen Schaden anrichtet, sofort hinauslaufen!
Kolosslaurer:
Es spawnen zwei dieser Art. Die Tanks binden sie an sich und sie werden einzeln vernichtet.
Kolosswüter:
Es spawnen 10-12 dieser Mobs, bekämpft sie mit flächenzaubern.
Belebender Nebel:
Es erscheinen Pilze, stellt euch in ihre Nähe um Leben und Mana zu regenerieren.

]]

L["trash Lurker"] =  [[

|cFF4DFFFDEhrenwache der Vashj'ir|r

|cFFDBD533Fähigkeiten:|r
Drohruf und Raserei
|cFFDBD533Kontrollierbar durch:|r immun
|cFFDBD533Taktik: Wird durch den MT gebunden und als letztes vernichtet.

|cFF4DFFFDZertrümmerer des Echsenkessels|r

|cFFDBD533Fähigkeiten:|r
Rüstung zertrümmern: Reduziert die Rüstung des Opfers um 50%, kann durch zauberflexion zurück geworfen werden.
|cFFDBD533Kontrollierbar durch:|r Verwandeln, Betäubungseffekte, Verführen, Eiskältefalle
|cFFDBD533Taktik:|r Durch Tanks gebunden, sind nach den Technikern das Primärziel.

|cFF4DFFFDPriesterin des Echsenkessels|r

|cFFDBD533Fähigkeiten:|r
Große Heilung: Heilt befreundete Ziele um 45.000 Lebenspunkte
Heiliges Feuer: Spontanzauber, richtet 3.000 Heiligschaden und hinterlässt einen DOT.
|cFFDBD533Kontrollierbar durch:|r Verwandeln, Betäubungseffekte, Verführen, Eiskältefalle
|cFFDBD533Taktik:|r Verwandelt die Priesterinnen und beschäftigt euch mit ihnen am Ende des Kampfes.

|cFF4DFFFDTechniker der Grauherzen|r

|cFFDBD533Fähigkeiten:|r
Kniesehne: Verlangsamt das Bewegungstempo des Opfers
|cFFDBD533Kontrollierbar durch:|r Verwandeln, Betäubungseffekte, Verführen, Eiskältefalle
|cFFDBD533Taktik:|r Schnappt euch zuerst die Techniker, sie machen selbst auf einen Stoffträger kaum schaden.

]]
L["trash Leotheras"] =  [[

Gezeitenrufer der Grauherzen

|cFFDBD533Fähigkeiten:|r
Virulentes Gift: Richtet 7.500 Naturschaden an, kann entfernt werden.
Totem des Wasserelementars: Beschwört ein Wasserelementar, das zusätzlichen Schaden anrichtet. Das Elementar verschwindet wenn das Totem zerstört ist.
Angriff des Frostbrands: Verursacht 2.700 Frostschaden gegen das aktuelle Ziel.
|cFFDBD533Kontrollierbar durch:|r Verwandeln, Betäubungseffekte, Verführen
|cFFDBD533Taktik:|r Verwandelt sie zunächst.

Schlangenwache des Echsenkessels

|cFFDBD533Fähigkeiten:|r
Spalten: Fügt in einem Kegelförmigen Umkreis allen Spielern vor dem Bestienbändiger ca. 2.000 Schaden zu.
Zaubererflexion: Errichtet ein Schild, dass jeglichen Zauberschaden zurückwirft.
|cFFDBD533Kontrollierbar durch:|r immun
|cFFDBD533Taktik:|r Durch einen Tank gebunden, werden sie zuerst vernichtet.

Schleicher der Grauherzen

|cFFDBD533Fähigkeiten:|r
Tritt: Unterbricht Zauber.
|cFFDBD533Kontrollierbar durch:|r Verwandeln, Betäubungseffekte, Verführen
|cFFDBD533Taktik:|r Verwandelt sie zunächst. Oder durch einen Tank gebunden als Primärziel verwenden.

Nethermagier der Grauherzen

|cFFDBD533Fähigkeiten:|r
Blinzeln: Blinzelt sich zu einem zufällig ausgewähltem Ziel.
Arkane Salve: Flächenzauber, der 4.000 Arkanschaden anrichtet.
Arkaner Blitzschlag: 3.000 Arkanschaden auf das momentane Ziel.
Kältekegel: Flächenzauber, der 3.500 Frostschaden anrichtet.
Frostblitz: 3.900 Frostschaden auf das momentane Ziel.
Versengen: Flächenzauber, der 2.200 Feuerschaden anrichtet.
Feuerball: 3.500 Feuerschaden auf das momentane Ziel.
|cFFDBD533Kontrollierbar durch:|r Verwandeln, Betäubungseffekte, Verführen
|cFFDBD533Taktik:|r Verwandelt sie zunächst und haltet sie verwandelt bis zum Ende des Kampfes.

Tiefenhexe des Echsenkessels

|cFFDBD533Fähigkeiten:|r
Schattenblitz: 4.400 Schattenschaden auf das aktuelle Ziel.
Schattennova: Richtet im Radius von 30 Metern 3.500 Schattenschaden an und schleudert zurück
Gedankenkontrolle: Übernimmt ein zufällig ausgewähltes Ziel in reichweite.
|cFFDBD533Kontrollierbar durch:|r immun
|cFFDBD533Taktik:|r Tankt die Tiefenhexe weit von der Gruppe weg gegen die Wand. Es dürfen keine Spieler außer dem Tank in iherer Nähe sein, dann kann sie Gedankenkontrolle nicht anwenden. Vernichtet die Hexen so schnell wie möglich mit Fernkampf.

]]
L["trash Karathress"] =  [[

|cFF4DFFFDTiefensumpfkoloss|r

|cFFDBD533Fähigkeiten:|r
Typ1:
Infektion und Sporenbeben

Typ2:
Säuregeysir und Parasit

Typ3:
Raserei
|cFFDBD533Kontrollierbar durch:|r immun
|cFFDBD533Taktik:|r Der Tank bindet den Koloss an sich, je nach typ muss mehr Heilung auf den Tank oder den Raid geschehen. 
Beim Tot tritt zufällig einer der folgenden Effekte ein:
Toxisches Becken:
Am Todesort erscheint grüner Schleim, der immensen Schaden anrichtet, sofort hinauslaufen!
Kolosslaurer:
Es spawnen zwei dieser Art. Die Tanks binden sie an sich und sie werden einzeln vernichtet.
Kolosswüter:
Es spawnen 10-12 dieser Mobs, bekämpft sie mit flächenzaubern.
Belebender Nebel:
Es erscheinen Pilze, stellt euch in ihre Nähe um Leben und Mana zu regenerieren.

]]
L["trash Morogrim"] =  [[

Versucht bei den Murloc-Gruppen die Krieger zu verwandeln, alle anderen Murlocs sind immun gegen Betäubungseffekte. Tankt sie alle und vernichtet sie der Reihe nach.

]]


--ra text messages every line separated by \n
L["ra Hydross"] = "Halten den Dmg-Stopp ein\nPhasenwechsel kurz vor dem 250% Mal"
L["ra Lurker"] = "Weicht dem Schwall aus"
L["ra Leotheras"] = "Vorsicht er resettet bei jedem Phasenwechsel und nach jedem Wirbeln die Aggro."
L["ra Karathress"] = "Vernichtet die Adds, Heiler achtet auf die Schadensspitzen"
L["ra Morogrim"] = "Heiler achtet darauf keine Heilaggro der Murlocs zu ziehen.\nCaster bombt mit bedacht."
L["ra Vashj"] =  "Phase 1: Haltet Abstand zueinander.\nPhase 2: Vernichtet die Adds und citet den Schreiter\nPhase 3: Zwei Fernkämpfer bekämpfen die ankommenden Sporensegler. Geht aus den grünen Giftflecken sofort heraus. Haltet Abstand zueinander wie in Phase 1."

L["Natureresi Tank"] = "Naturresi Tank"
L["Frostresi Tank"] = "Frostresi Tank"
L["Hydross frost form"] = "Hydross Frostform"
L["Hydross nature form"] = "Hydross Naturform"
L["Add Tank"] = true
L["warlock tank"] = "Hexertank"
L["Pet"] = true
L["Fathom-Guard Tidalvess"] = "Tiefenwächter Flutvess"
L["Fathom-Guard Sharkkis"] = "Tiefenwächter Haikis"
L["Fathom-Guard Tidalvess"] = "Tiefenwächter Caribdis"



L["Phase 1"] = true
L["Phase 2"] = true
L["Phase 3"] = true
L["Phase 1 & 3"] = true

L["Murloc-Tank"] = true
L["Raid"] = true