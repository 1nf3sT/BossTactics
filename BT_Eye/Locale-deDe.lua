local L = LibStub("AceLocale-3.0"):NewLocale("BT_Eye", "deDE")
if not L then return end

--Umlaute: ö:\195\182 ü:\195\188 ä:\195\164 Ö:\195\150 Ü:\195\156 Ä: \195\132

-- infos
L["Module resetted"] = "Modul zur\195\188ckgesetzt" --diese zeile nicht verändern!

L["info"] = "|cff91069ETactics by|r rpguides\n|cff91069EImages by|r Vonswan, rpguides\n|cff91069EModule by|r Sorontur\n\n|cffC0C0C0[http://www.kdh-wow.de]\n[http://www.rpguides.de]|r"

--füge hier die taktiktexte lokalisiert ein:

L["tactic Al'ar"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

Der Kampf erfordert vier Tanks. Ob es sich dabei um Krieger oder Druiden handelt, ist relativ egal. Nur auf Paladin Tanks sollte möglichst verzichtet werden, da nach einer Feuerfeder Fähigkeiten wie Wilde Attacke oder Einschreiten benötigt werden.

    * 4 - 5 Tanks
    * 8 Heiler
    * 12 - 13 Schadenverursacher (3 - 4 Nahkämpfer (am Besten Schurken); Rest Fernkämpfer)

|cffff0000Stärkungszauber, Tränke und andere Ausrüstung
-------------------------------------------------------------|r

Vorweg möchte ich anmerken, dass dieser Kampf keinerlei Feuerresistenzausrüsung erfordert! Die Feuerschutzaura eines Paladins ist Vorteilhaft, aber darüber hinaus sind keine Feuerschutzmaßnahmen erforderlich. Für diesen Kampf sollten jedoch alle Spieler über mindestens 8.000 Trefferpunkte verfügen. Wer diese mit seiner Standardausrüstung nicht erreicht, muss sie mit Buffs jeglicher Art erreichen.

Tanks: Sollten versuchen mit Buffs ungefähr 17.000 Trefferpunkte zu erreichen.

Nahkämpfer: Müssen für diesen Kampf mindestens 10.000 Trefferpunkte haben, da sie sich um die Adds kümmern und deren Todesexplosion überleben müssen. Benutzt Buffs, die euch an diese Werte heran bringen.

Fernkämpfer: Die zu Beginn erwähnten 8.000 Trefferpunkte gelten für euch.

Heiler: 8.000 Trefferpunkte bei ungefähr 1450 +Heilung und 110 Mana alle 5 Sekunden (beim Zauberwirken).

|cffff0000Fähigkeiten
---------------|r

Trefferpunkte: 2.600.000
Immunität: Feuer

Während der ersten Phase befindet sich Al'ar in der Luft. Er bewegt sich ca. alle 30 Sekunden (gelegentlich verharrt er länger) im Uhrzeigersinn von Plattform zu Plattform.

|cff5929C7Flammenpuffer|r (Flame Buffet):
Al'ar wendet diese Spezialattacke an, wenn sich kein Spieler in Nahkampfreichweite befindet. Der Effekt ist ähnlich dem Flammenpuffer von Feuerschwinge (Pechschwingenhort). Er richtet 2.000 Feuerschaden an hinterlässt einen stapelbaren Debuff, der den erlittenen Feuerschaden jedes mal um 10% erhöht. Der Zauber hat eine 1,5 sekündige Zauberzeit.

|cff5929C7Feuerfeder|r (Fire Quill)
Von Zeit zu Zeit (durchschnittlich drei mal pro Kampf) fliegt Al'ar in die Mitte des Raumes und deckt die oberen Plattformen mit einem Federregen ein. Die Wahrscheinlichkeit dieses zu überleben ist sehr gering.

|cff5929C7Al'ars Asche|r (Ember of Al'ar)
Jedes Mal wenn Al'ar die Plattform wechselt (ca. alle 30 - 45 Sekunden) spawnt ein zusätzlicher Phönix. Er besitzt ca. 70.000 Trefferpunkte und schlägt für 2.500 Schaden zu. Wenn dieser stirbt, verursacht er in einem 15 Meter Radius ca. 7.000 Schaden und einen Rückstoß, durch den ihr eventuell weiteren Fallschaden erleidet. Wann immer ein Phönix stirbt, sinken Al'ars Trefferpunkte um 2%.

Nachdem ihr Al'ar in Phase eins getötet habt, wird sein Körper zum Zentrum des Raumes teleportiert und ersteht dort auf. Von diesem Punkt an ähnelt er jedem normalen Boss. Er kann getankt (und gespottet) werden und greift umgehend den mit der höchsten Bedrohung aus Phase eins an (höchstwahrscheinlich ein Schattenpriester oder Hexenmeister).

|cff5929C7Flammenpuffer|r (Flame Buffet)
Der aus der ersten Phase bekannte Flammenpuffer wird nun immer von Al'ar eingesetzt, wenn er nach einem Meteor erneut erscheint oder seinen zufälligen Sturmangriff eingesetzt hat.

|cff5929C7Meteor|r
Ungefähr alle 45 Sekunden erhebt sich Al'ar in die Luft, verwandelt sich in einen Meteor und stürzt auf einen zufälligen Spieler herab. Der betroffene Spieler erleidet ca. 6.000 Feuerschaden. Im Anschluss daran erscheint Al'ar erneut in seiner normalen Form und wirkt Flammenpuffer und gleichzeitig Spawnen zwei, der aus Phase eins bekannten Phönixe. Jedes mal, wenn einer der Phönixe stirbt, verliert Al'ar 3% seiner Trefferpunkte.

|cff5929C7Flammenteppich|r (Flame Patch)
Unter einem der Gruppenmitglieder bildet sich ein Flammenteppich, der pro Sekunde 3.000 Feuerschaden verursacht und ebenfalls den Flammenpuffer-Debuff hinterlässt. Der betroffene Spieler muss sofort aus dem Flammenmeer heraus laufen. Die meisten Spieler werden den dritten Tick und keiner den vierten Tick überleben.

|cff5929C7Rüstung schmelzen|r (Melt Armor)
Ungefähr ein mal pro Minute wirkt Al'ar Rüstungsschmelze auf sein aktuelles Ziel. Dieser Angriff reduziert die Rüstung des Tanks um 80%. Was dazu führt, dass der entsprechende Tank maximal noch einen Schlag überlebt. Ein zweiter Tank muss Al'ar augenblicklich verspotten und somit auf sich lenken.

|cff5929C7Sturmangriff|r
Ähnlich der Phönix-Trash-Mobs des Raumes stürmt Al'ar alle 30 Sekunden zufällige Spieler an, verursacht bei ihnen 300 - 400 Schaden und betäubt die Betroffenen.

|cff5929C7Raserei|r
Ab Phase zwei habt ihr 10 Minuten Zeit bevor Al'ar in Raserei verfällt und den Schlachtzug inerhalb kurzer Zeit auslöscht.

|cffff0000Taktik
--------|r

|cff00ff00Phase 1|r

|cFFDBD533Positionierung|r
Der Kampf wird damit beginnen, dass Al'ar zur ersten Plattform fliegt. Dementsprechend sollte sich der erste Tank ebenfalls dorthin begeben. Die verbleibenden Tanks können während der ersten 20 Sekunden ebenfalls an der Position verharren und auf Al'ar einschlagen. Wichtig ist nur, dass sich ein Tank auf Plattform zwei befindet, wenn Al'ar dort hinfliegt (nach ca. 30 Sekunden).

Je nachdem wie viele Tanks euch für den Kampf zur Verfügung stehen, könnt ihr alle Plattformen oder nur die aktuell nötigen besetzen. Al'ar bewegt sich immer im Uhrzeigersinn und wechselt somit immer in der folgenden Reihenfolge: 1 -> 2 -> 3 -> 4 -> 1. Nach seinem Feuerfeder-Angriff fliegt er immer zu Plattform eins oder vier, wodurch theoretisch zwei Tanks ausreichen, um Al'ar zu kontrollieren (drei Tanks sind aber dennoch besser).

Ein weiterer Tank stellt sich nahe des Eingangs auf und wartet dort darauf, dass die Phönixe, welche beim Plattformwechsel von Al'ar auf Plattform zwei Spawnen, eine der Rampen hinunter kommen. Wenn dieses geschieht, läuft der Tank diesem entgegen und kehrt mit ihm im Schlepptau zu seiner Position am Eingang zurück. Hier erwarten ihn bereits die Nahkämpfer.

Die Fernkämpfer und Heiler stellen sich im unteren Bereich der Kammer so auf, dass sie die Main Tanks bzw. Al'ar an den Plattformen eins und zwei erreichen.

|cFFDBD533Kampfverlauf|r
Während der gesamten Phase können sich lediglich Nahkämpfer um die Aufmerksamkeit von Al'ar schlagen. Egal wie viel Schaden/Bedrohung ein Fernkämpfer anrichtet, Al'ar wird ihn nicht angreifen (sehr wohl aber zu Beginn von Phase zwei ;)). Die Fernkämpfer konzentrieren sich also während der gesamten Phase nur auf Al'ar und nichts anderes.

Bei einem Plattformwechsel muss der frei gewordene Tank zur übernächsten Plattform laufen, so fern sich dort kein weiterer Tank befindet.

Ebenfalls beim Plattformwechsel wird ein Phönix auf den oberen Plattformen spawnen. Einer der Heiler wird augenblicklich seine Aufmerksamkeit erregen und dementsprechend wird der Phönix an einer Seite die Rampe hinab zu dem Heiler fliegen. Dort muss er umgehend von dem Phönix-Tank abgefangen und zu den Nahkämpfern am Eingang gezogen werden. Es sollte dort drei bis vier Nahkämpfer geben, die den Phönix bis zum nächsten Spawn vernichten.

Wenn der Phönix stirbt, sollte sich nur ein Nahkämpfer/Tank in seiner Nähe befinden, damit der Rest nicht von der Explosion erfasst wird. Die optimale Lösung besteht darin, dass sich ein Schurke seine Kombopunkte und etwas Energie aufspart, bei 3-5% den Phönix betäubt, Mantel der Schatten einsetzt und ihn dann tötet. Hier ist es sinnvoll mehrere Schurken für eine Mantel der Schatten Rotation zu haben.

Nachdem Al'ar einige Zeit beim Tank auf Plattform vier verbracht hat, erhebt er sich in die Luft, wirkt seinen Feuerfedern Angriff und kehrt dann an Position eins oder vier zurück. Dieses kann auch schon früher auf Plattform zwei oder drei passieren, ist aber eher selten der Fall. Sobald der Angriff einsetzt müssen die Tanks von den Plattformen auf die Ebene darunter springen. Sie laufen anschließend zu den Rampen, die zu den Plattformen ein und vier führen und warten an deren Fuße (nicht auf der Rampe). Wenn der Angriff vorüber ist, laufen sie zu ihrer jeweiligen Plattform und nehmen dort Al'ar in Empfang. Während dieser Zeit wird der Schlachtzug höchstwahrscheinlich ein bis drei Flammenpuffer abbekommen.

Wiederholt diese Taktiken bis Al'ar stirbt und somit Phase zwei beginnt.

Troll Priester können kurz vor Al'ars Tod ihre Rassenfertigkeit "Verhexung der Schwäche" auf ihn anwenden. Auf diese Art ersteht Al'ar nur mit 80% und nicht 100% seiner Trefferpunkte auf. Zur Zeit ist noch nicht geklärt, ob es sich dabei um einen Bug/Exploit handelt, oder beabsichtigt ist.
Bildschirmfoto

|cFF1DDD2FHeiler|r:
Die erste Phase ist definitv die, in der ihr weniger Mana verbraucht. In der zweiten Phase wird der Schaden drastisch angehoben. Versucht also in dieser Phase möglichst viel Mana zu sparen. Die Heiler sollten in dieser Phase wie folgt eingeteilt werden:

    * 3 Heiler - für die jeweiligen Al'ar Tanks
    * 1 Heiler - für den Add-Tank
    * 3-4 Heiler - die den Schlachtzug heilen (am Besten Druiden und Schamanen)

|cff00ff00Phase 2|r

Mit Al'ars Tod wird sein Leichnam zur Mitte des Raumes (in den rötlichen Kreis) teleportiert. Sie verweilt dort für ungefähr zehn Sekunden, bevor Al'ar ins Leben zurück kehrt.

|cFFDBD533Positionierung|r
Al'ar ist während dieser Phase an den Boden gebunden und muss daher normal von zwei Tanks gebunden werden. Sie stellen sich versetzt voneinander auf, während sich der verbleibende Schlachtzug Kegelförmig hinter ihnen verteilt. Diese Aufstellung ist für den Start der Phase zu empfehlen, da Al'ar als erstes auf den Spieler mit der höchsten Bedrohung aus Phase eins angreifen wird (was vermutlich ein Schattenpriester oder Hexenmeister ist). Auf diese Weise können die Tanks Al'ar verspotten bevor dieser den Stoffträger erreicht.

Zur Vorbeugung vor dem Ansturm ist eine ähnliche Taktik wie bei den Phönix-Trash-Mobs des Raumes zu empfehlen. D.h. der gesamte Schlachtzug verteilt sich auf einem Abstand von fünf bis zehn Meter um Al'ar. Während ein weiterer Tank auf einem ungefähr 15 Meter Abstand aufstellt.

|cFFDBD533Kampfverlauf|r
Von Zeit zu Zeit wird Al'ar Rüstungsschmelze auf den aktuellen Tank anwenden. Da die Rüstung dadurch um 80% reduziert wird, richten die Attacken anschließend über 10.000 Schaden an. Somit sollte der zweite Tank sofort Al'ar verspotten und die Aufmerksamkeit somit auf sich ziehen.

Alle 45 Sekunden erhebt sich Al'ar in die Luft, verwandelt sich in einen Meteor und stürzt so auf einen zufälligen Spieler hinab. Al'ar richtet am Einschlagsort ungefähr 6.000 Feuer-Flächenschaden an. Deshalb sollten sich alle Spieler bei seinem Start umgehend verteilen. Fünf Sekunden nach dem Aufschlag spawnt Al'ar am Aufschlagsort erneut und startet einen Wirbelwind, der alle Spieler in einem 5 - 10 Meter Radius um sich zurückschleudert. Die Tanks sollten sich in der Nähe des Aufschlagsortes (aber nicht in Wirbelwindreichweite) positionieren und ihn spotten sobald der Angriff vorbei ist.

Zusammen mit Al'ars erneutem Erscheinen spawnen zwei der bekannten Phönixe, die sofort von den zwei Add-Tanks gebunden und an den Rand gezogen werden sollten (so dass die Tanks mit dem Rücken zur Wand und die Phönixe weg vom Schlachtzug stehen). Die bereits für Phase eins festgelegte Gruppe sollte in der Lage sein beide Phönixe zu töten, bevor die nächsten Spawnen.

Über die Phase verteilt wird Al'ar außerdem seinen Flammenteppich unter einem zufälligen Spieler wüten lassen. Der wird wahrscheinlich mehrere Spieler auf einmal erfassen. Jeder sollte sofort aus diesem herauslaufen, blinzeln etc. und Gesundheitssteine, Heiltränke usw. einsetzen, um das Manöver zu überleben.

]]

L["tactic Void"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r
Für den Kampf werden mindestens drei besser noch vier Tanks (Defensiv-Krieger oder Wilder-Kampf-Druiden) benötigt, die im gesamten Kampfverlauf um den ersten Platz der Hassliste kämpfen. Auf Schurken und offensiv trainierte Krieger oder dergleichen sollte möglichst verzichtet werden, da sie dem Hämmern ausweichen müssten und ihnen so ein Drittel der normalen Zeit bleibt, um überhaupt Schaden anzurichten. Je nachdem wie erfahren die Gruppe ist und wie viele Nahkämpfer sich wiedererwartend in der Gruppe befinden, werden mehr oder weniger Heiler benötigt. Im Optimalfall sind nur sechs Heiler von Nöten. Für die ersten Versuche sollten jedoch neun oder mehr mitgenommen werden. Die verbleibenden Plätze sollten mit Fernkämpfern (Hexenmeister, Jäger, Magier, etc.) aufgefüllt werden.

|cffff0000Fähigkeiten
---------------|r

Trefferpunkte: 4.500.000
Nahkampfschaden: 3.000 - 4.000

|cff5929C7Hämmern|r:
Diese Fähigkeit richtet in einem 18 Meter Radius um den Leerhäscher pro Sekunde 1.350 - 2.250 Arkanschaden an. Das Hämmern wird über drei Sekunden kanalisiert (es entstehen also maximal 6.750 Arkanschaden bei allen Nahkämpfern). Der Angriff hat eine zwölfsekündige Abklingzeit.

|cff5929C7Arkane Kugel|r:
Als Gegenstück zum Hämmern beschießt der Leerhäscher Fernkämpfer mit seiner Arkanen Kugel. Er wählt einen zufälligen Spieler aus und verschießt eine Arkane Kugel an seine Position. Die Kugel fliegt relativ langsam an diese Position und explodiert dort in einem 20 Meter Radius. Spieler, die sich in der Explosionszone befinden, erleiden 4.675 - 6.325 Arkanschaden und werden für sechs Sekunden mit Stille belegt. Spieler in der Nahkampfreichweite des Leerhäschers werden nicht als Ziele für die Arkane Kugel ausgewählt. Der Leerhäscher verschießt etwas alle drei Sekunden eine Arkane Kugel.

|cff5929C7Rückstoß|r:
Ähnlich dem Rückstoß von Brutwächter Dreschbringer aus dem Pechschwingenhort, setzt der Leerhäscher diese Spezialattacke alle 30 Sekunden auf das Ziel mit der höchsten Bedrohung ein. Der entsprechende Spieler (Main Tank) wird ein kleines Stück zurück geschleudert und seine Bedrohung wird um ein hohes Maß reduziert. Wodurch sich der Leerhäscher dem nächsten Ziel in der Hassliste zuwendet.

|cff5929C7Raserei|r:
Wie viele Boss-Mobs zuvor verfügt auch der Leerhäscher über einen "Enrage" Modus, in dem es nicht mehr möglich ist dem angerichteten Schaden gegen zu heilen. Dieser setzt nach zehn Minuten ein.

|cffff0000Taktik
--------|r

|cFFDBD533Positionierung|r:
Der Leerhäscher wartet am Ende des Raumes - gegenüber des Eingangs - auf euch. Die Main Tanks sollten sich in der Mitte des Raumes aufstellen, während ein Jäger den Leerhäscher mit Irreführung zum ersten Main Tank lockt. Anschließend können sich die Heiler/Schadensgruppen um den Leerhäscher rum verteilen.
Die Spieler sollten sich in zweier oder dreier Gruppen mit Heilern und Schadensverursachern um den Leerhäscher verteilen, um so gemeinsam den Arkanen Kugeln auszuweichen, wenn einer aus der entsprechenden Gruppe anvisiert wurde. Dabei sollte jeder Spieler möglichst auf maximaler Reichweite seiner Fähigkeiten stehen und jede Gruppe sollte 20m Abstand zur nächsten haben.

|cFFDBD533Kampfverlauf:|r
Der Kampf ändert sich in keinster Weise. Er ist von den anfänglichen 100% bis 0% vollkommen gleich. Das oberste Ziel des Kampfes besteht darin den angerichteten Schaden auf ein Minimum zu begrenzen. Neben diesem müssen die Heiler dafür sorgen, dass alle Spieler immer voll geheilt sind, damit sie die Spezialattacken - 6.300 Schaden durch die Arkane Kugel und 6.750 Schaden durch das Hämmern - überleben.
]]

L["tactic Solarian"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

Die Zusammenstellung für diesen Kampf gestaltet sich etwas schwierig, da ihr im Idealfall eigentlich keine Defensiv-Krieger braucht, die sonst für jeden Kampf erforderlich sind. Drei bis vier offensiv orientierte Krieger/Wilder-Kampf-Druiden (zwei Offensiv-Krieger und zwei Druiden wären super) sind hier deutlich hilfreicher. Als nächstes benötigt ihr sieben oder acht Spieler mit Flächenzaubern (Hexenmeister/Magier) und ungefähr sieben Heiler. Die restlichen Spieler sollten im Optimalfall Schurken sein.

    * 3 Tanks (1 Defensiver Tank und 2 Offensive Tanks)
    * 7 Heiler (3 Paladine, 2 Priester, 2 Schamanen)
    * 12 Schadensverursacher (8 Magier/Hexenmeister, 4 Schurken)

|cffff0000Stärkungszauber, Tränke und andere Ausrüstung
-------------------------------------------------------------|r

Tränke
Tanks und Nahkämpfer sollten Fläschchen des unerbittlichen Angriffs oder vergleichbare Elixiere verwenden, Hexenmeister und MagierFläschchen der obersten Macht o.ä. und Heiler Fläschchen der mächtigen Wiederherstellung etc.

Ausrüstung
Arkanwiderstandsausrüstung ist für diesen Kampf seit dem 2.2 Patch nicht mehr erforderlich. Dem Zorn des Astronomen kann damit nicht widerstanden werden und somit sind die Arkanen Geschosse, die einzige Angriffsform, bei der ihr einen Vorteil durch die Kleidung bekommt. Da das Tragen von Widerstandskleidung jedoch einen großen Verlust des +Schadens bedeutet, sollte hier eher aus etwas mehr Ausdauer gesetzt werden. Die Arkanen Geschosse können bis zu 10.500 Schaden anrichten, daher ist es von Vorteil, wenn jeder Spieler diesen Wert mit vollen Buffs überschreitet.

|cffff0000Fähigkeiten
---------------|r

Trefferpunkte: 3.100.000

Der Kampf untergliedert sich in drei Phasen:

Phase 1: Diese Phase hält 50 Sekunden an. Während dieser Zeit kann Hochastronom Solarian vom Main Tank gebunden werden und der Schlachtzug Schaden an ihm anrichten. In dieser humanoiden Form schlägt Hochastronom Solarian das oberste Ziel der Hassliste in Nahkampfreichweite. Theoretisch kann das auf Grund der Schlaghärte auch ein Stoffträger sein (ist aber nicht zu empfehlen). Nach Ablauf der 50 Sekunden verschwindet er in der Mitte des Raumes und drei Portale erscheinen an zufälligen Positionen.

Phase 2: Zehn Sekunden nachdem Hochastronom Solarian verschwunden ist, spawnen zwölf Mobs aus den Lichtportalen. 15 Sekunden später tritt Hochastronom Solarian erneut aus einem der Portale und simultan erscheinen zwei Priester aus den anderen. Der Hochastronom kann nun wieder von den Main Tanks gebunden werden und Phase 1 beginnt erneut.

Phase 3: Wenn ihre Trefferpunkte 20% erreichen, transmutiert Hochastronom Solarian in einen Leerwandler. Dieses steigert ihre Rüstung enorm, den angerichteten Schaden aber kaum. Spieler in Nahkampfreichweite werden häufig mit Furcht belegt, dafür kommen aber keinerlei Fähigkeiten der ersten Phase zum Einsatz. Solarian ist weiterhin spottbar und kann somit problemlos gebunden werden.

|cff5929C7Arkane Geschosse|r - Humanoide Form (Phase 1 & 2)
Wie ein Magier wirkt Hochastronom Solarian diesen Zauber fasst ununterbrochen. Es handelt sich hierbei um drei Geschosse, die an einem zufällig ausgewähltem Ziel jeweils 3.300 - 3.500 Arkanschaden anrichten. Das Ziel können auch Begleiter, Totems etc. sein. Den Geschossen kann teilweise widerstanden werden.

|cff5929C7Zorn des Astronomen|r - Humanoide Form (Phase 1 & 2)
Diesen Effekt wirkt Hochastronom Solarian mehrfach während der ersten beiden Phasen auf einen zufällig ausgewählten Spieler. Der betroffene Spieler wird optisch dunkel eingefärbt und fünf Sekunden später in die Luft geschleudert. Er nimmt dabei keinen Fallschaden, jedoch dürfen sich keine weiteren Spieler in seiner Nähe befinden. Jeder Spieler in einem 15 Meter Radius um den Explodierenden erleidet bis zu 6.500 Arkanschaden. Diesem kann nicht widerstanden werden.

|cff5929C7Mal von Solarian|r - Humanoide Form (Phase 1 & 2)
Senkt alle 45 Sekunden den Arkanwiderstand aller Schlachtzugmitglieder um 15 Punkte. Simultan erleidet jeder Spieler 2.280 - 2.520 Arkanschaden (der Zauber sieht optisch wie ein Mondfeuer aus).

|cff5929C7Furcht|r - Leerwandler Form (Phase 3)
Belegt bis zu fünf Spieler in Nahkampfreichweite mit Furcht.

|cff5929C7Leerenblitz|r - Leerwandler Form (Phase 3)
Hochastronom Solarian wirkt diesen Zauber alle zehn Sekunden auf das Ziel mit der höchsten Bedrohung. Der Leerenblitz verursacht 4.394 - 5.106 Schattenschaden.

|cFF4DFFFDSolarian Agent|r - Phase 2
Trefferpunkte: 20.000
Dieser Nahkämpfer richtet pro Schlag ca. 500 Schaden (auf Platte; 1.000 auf Stoff) an. Es spawnen in jeder Flächenzauberphase insgesamt zwölf dieser. Vier aus jedem Portal.

|cFF4DFFFDSolarian Priester|r - Phase 2
Kann in den Nahkampf gezwungen werden und besitzt folgende Fähigkeiten:

|cff5929C7Göttliche Pein|r: Ähnlich dem Priesterzauber richtet dieser 553 - 747 Heiligschaden an. Der Zauber hat 2,5 Sekunden Zauberzeit und kann mit den üblichen Mitteln (Gegenzauber etc.) unterbrochen werden.

|cff5929C7Stille|r: Ähnlich dem arkanen Strom der Blutelfen bringt er alle Spieler in einem acht Meter Radius zum Schweigen. Es kann ihm leicht ausgewichen werden, indem sich Heiler und Fernkämpfe auf Abstand halten.

|cff5929C7Große Heilung|r: Heilt Hochastronom Solarian oder einen der anderen Mobs für 23.125 - 26.875 Punkte. Der Zauber hat eine zwei Sekündige Zauberzeit und kann unterbrochen werden.

|cffff0000Taktik
--------|r

|cff00ff00Phase 1|r

|cFFDBD533Positionierung|r
Der Main Tank läuft gefolgt von den übrigen Nahkämpfern auf Solarian zu und eröffnet damit den Kampf. Die Fernkämpfer und Heiler folgen ihnen so weit, das sie in Angriffs- bzw. Heilreichweite sind. Der Main Tank (Wilder-Kampf-Druide oder Offensiv-Krieger) rennt auf Solarian zu und versucht so schnell wie möglich Hass aufzubauen. Dabei wird er von einem Jäger mit Irreführung unterstützt. Währenddessen beginnen die Schadensverursacher bereits mit ihren Attacken.

|cFFDBD533Kampfverlauf|r
Alle Schadenverursacher sollten ihre Spezialfähigkeiten einsetzen, um in dieser Phase möglichst viel Schaden am Hochastronom anzurichten. Die erste Phase ist die beste Möglichkeit dazu. Am Ende der Phase sollten Solarians Trefferpunkte bereits auf 75% reduziert worden sein.

Hochastronom Solarian wird während der gesamten Phase zufällige Spieler auswählen und sie mit Arkanen Geschossen eindecken (3x 3.500 Arkanschaden). Dieses konnte früher (vor Patch 2.1.) mit einer Spott-Rotation der Tanks verhindert werden, ist nun aber nicht mehr möglich. Daher sollten drei separate Heiler abgestellt werden, die ausschließlich Solarians aktuelles Ziel heilen. Sie können dieses über das Ziel des Ziels sehen oder über ein Makro direkt anwählen.

Während der gesamten Phase verteilt Hochastronom Solarian an zufällig ausgewählte Spieler ihren Zorn des Astronomen. Betroffene Spieler umhüllt ein dunkler Schatten und werden durch eventuelle Boss Mods zusätzlich gekennzeichnet. Diese Spieler müssen sofort aus dem Gruppenstandort heraus laufen und auf einem Sicherheitsabstand von ca. 20 Metern auf das Auslaufen des Zorn (Explosion) warten. Sobald sie auf den Boden zurück gesegelt sind, können sie sich erneut der Gruppe anschließen.

|cff00ff00Phase 2|r

Sobald Hochastronom Solarian verschwindet, bewegt sich der gesamte Schlachtzug ins Zentrum der Plattform und wartet auf die erscheinenden Agenten. Die beiden, vor dem Kampf festgelegten, Tankgruppen binden abwechselnd bei jeder zweiten Phase die Agenten. Gruppe eins wirkt nun Massenspott (Herausforderungsruf) und zieht damit alle Agenten zusammen / auf sich. Darauf folgen Saat der Verderbnis Angriffe der Hexenmeister und eine Frostnova-Rotation der Magier kombiniert mit deren Flächenzaubern. Die Unterteilung der Tanks ist nötig, damit in jeder Phase 2 wieder ein Massenspott zur Verfügung steht. Das Ziel sollte es sein, nur zwei Mal Phase zwei zu erreichen.

Im Anschluss an diese Agentenbekämpfung sollte Hochastronom Solarian erneut erscheinen und mit ihr zwei Priester. Die Tanks müssen augenblicklich zu Solarian laufen, während die Nahkämpfer versuchen die Priester zu tanken (da sie nicht von der Stille beeinflusst werden). Die Fernkämpfer konzentrieren ihre Angriffe nun auf die Priester, bis diese tot sind. Anschließend können sie wieder auf Solarian schwenken und quasi Phase eins von Vorne beginnen. Ab diesem Punkt bleibt die Gruppe in der Mitte des Raumes versammelt. Es ist nicht nötig für die nächste erste Phase wieder auf Abstand zu gehen.

|cff00ff00Phase 3|r

Wenn ihr diese Phase erreicht habt, ist der Kampf schon so gut wie gewonnen. Hochastronom Solarian verwandelt sich in einen Leerwandler und verstärkt damit seine Rüstung. Der Nahkampfschaden ist jedoch weiterhin gering. Das einzige Problem dieser Phase ist die Flächenfurcht auf die Nahkämpfer. Da Solarian aber weiterhin spottbar ist, sollte das kein Problem darstellen.

Zorn des Astronomen hält über diese Phase weiterhin an, wird aber nicht von Solarian erneuert.

|cFF1DDD2FHeiler:|r
Die Heiler müssen in drei Gruppen unterteilt werden:
1. Arkane Geschosse Heiler: Dieses sollte eine Gruppe aus drei Heilern sein (zu empfehlen sind drei Paladine). Sie heilen in Phase eins die Opfer der Arkanen Geschosse (hierzu sollte das folgende Makro benutzt werden) und in Phase zwei die Tanks, welche die Agenten spotten

/target Hochastronom Solarian
/assist
/wirken Blitzheilung

Der Name des Heilzaubers muss selbstverständlich je nach Klasse angepasst werden.

2. Schlachtzug-Heiler: Ihr heilt den Rest des Schlachtzuges. In der zweiten Phase müsst ihr besonders auf die Magier und Hexenmeister acht geben. Schamanen sollten hierfür Erdschilde bereitstellen, Priester Schilde verteilen und Druiden Spieler mit wenig Trefferpunkten mit Sofortzaubern retten.

|cFF4C43FFFernkämpfer:|r
Hexenmeister und Magier sollten für diesen Kampf über möglichst viele Trefferpunkte verfügen und im Optimalfall alle Größen der Gesundheitssteine bei sich haben. Die Hexenmeister sollten ihre Seelsteine außerdem auf die Magier verteilen.

In der zweiten Phase wirken die Hexenmeister Saat der Verderbnis, während die Magier die Agenten mit einer Frostnova-Rotation festhalten. Die Magier wirken daraufhin Druckwelle, Kältekegel, Arkane Explosionen etc. um die Agenten schnellstmöglich zu töten.

Im Gegensatz zu den Hexenmeistern bekommen die Magier in diesem Kampf ganz sicher Manaprobleme. Sie sollten daher ausreichend Manasteine und -tränke bereithalten.

|cFFDEDC30Nahkämpfer:|r
Ihr seit die Hauptschadenverursacher dieses Kampfes, da Hochastronom Solarian extrem anfällig für physikalische Angriffe ist. Bringt alle Schadenssteigernden Buffs / Attacken zum Einsatz.

|cFF5D2B17Tanks:|r
Ihr müsst eine Spott-Rotation für die zweite Phase festlegen. Je nach Ausrüstungsstand solltet ihr zwischen zwei und vier mal in Phase zwei kommen und in jeder müssen ein oder zwei Tanks spotten können. Beim Massenspott sollten Druiden favorisiert werden.
]]

L["tactic Kael"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

In Bezug auf die Klassenverteilung ist die Konfrontation relativ offen. Ein paar Klassen erleichtern den Kampf jedoch und sind daher zu empfehlen. Drei bis vier Tanks sollten zur Verfügung stehen. Der vierte kann ruhig ein Offensiv-Krieger sein, der nur kurzzeitig die Kosmische Macht (Streitkolben) tankt, oder ähnliches. Insgesamt vier Nahkämpfer sollten vorhanden sein. Das können z.B. drei Schurken und der vorherige vierte Krieger sein. Sie sind von Nöten, damit in Phase 4 immer parallel zwei für den Abbruch von Kael'thas Zaubern und zwei zum Entfernen der Gedankenkontrolle (mit dem Dolch) bereitstehen. Sechs oder sieben Fernkämpfer mit Flächenzaubern sind für Phase 2 sehr zu empfehlen. In Bezug auf die Heilerzuteilung sollte ebenfalls auf eine ausgewogene Mischung geachtet werden. Gruppenheilungen werden in dem Kampf fasst nicht benötigt, daher kann hier im Zweifelsfall auf eine Überzahl an Paladin zurückgegriffen werden.

    * 3 - 4 Tanks (mind. 2 Defensiv-Krieger, Rest beliebig)
    * 6 Heiler (1 Baum-Druide, 2 Wiederherstellungs-Schamanen, 2 Paladine, 1 Priester)
    * 15 - 16 Schadensverursacher (2 Schattenpriester, 4 Hexenmeister, 3 Magier, 3 Schurken, 2 Jäger, 1 Krieger)


|cffff0000Stärkungszauber, Tränke und andere Ausrüstung
-------------------------------------------------------------|r

Tränke und andere Hilfsmittel

Die mächtigsten Buffs, die für eure Klasse verfügbar sind sollten benutzt werden. D.h. jeder Spieler sollte am Besten ein Fläschchen des XXX trinken, Buff-Essen zu sich nehmen und zudem seine Waffe mit Ölen, Wetzsteinen etc. bearbeiten. Von letzterem sollten für jeden Kampf am Besten zwei Ladungen zur Verfügung stehen, damit ihr die in Phase 2 oder 3 aufgenommene Waffe ebenfalls damit versorgen könnt.

Für den Kampf ist keine Widerstandsausrüstung erforderlich. Für die ersten Versuche ist es Vorteilhaft, wenn der Hexenmeister, der Großastronom Capernian an sich bindet, ungefähr 200 Feuerresistenz besitzt. Wenn die Gruppe die Taktik aber bereits erfolgreich durchlebt hat, kann diese auch je nach zugeteilter Heilklasse auf 100 reduziert oder komplett gestrichen werden. Ebenso hilfreich ist bei selbigem Hexenmeister eine Seelenverbindung (Talent). Aber auch sie ist nicht zwingend erforderlich.

|cffff0000Fähigkeiten
---------------|r

|cff00ff00Phase 1|r

In dieser Phase kämpft ihr gegen Kael'thas Sonnenwanderers Berater. Die Phase endet sobald alle Berater tot sind.

|cFF4DFFFDThaladred der Verfinsterer|r
Trefferpunkte: 270.000

|cff5929C7Blick|r (Gaze):
"Thaladred der Verfinsterer behält X im Blickfeld!"
Thaladred kann nicht auf herkömmliche Weise an einen Spieler gebunden werden. Stattdessen behält er einen Spieler für acht bis zwölf Sekunden im Blickfeld und folgt diesem dann (ähnliche wie Buru der Veschlinger aus den Ruinen von Ahn'Qiraj). Benutzt der Spieler im Blickfeld einen Immunitätseffekt (Eisblock, Gottesschild, tot stellen, etc.) geht seine Aufmerksamkeit aber sehr wohl, für die verbleibende Zeit des derzeitigen Blickes, auf den höchsten Spieler seiner Hassliste über (z.B. einem Hexenmeister).

|cff5929C7Physischer Schlag|r (Psychic Blow):
Ein physischer Rückstoß, der den betroffenen Spieler zurückwirft und ihm 4.375 - 5.625 Schaden zufügt. Die Fähigkeit hat eine 30 Meter Reichweite.

|cff5929C7Stille|r (Silence)
Acht Sekündige Flächenstille in einem 10 Meter Radius um Thaladred selbst. Er setzt sie alle vier Sekunden ein.

|cFF4DFFFDFürst Blutdurst|r
Trefferpunkte: 270.000

|cff5929C7Dröhnendem Gebrüll|r (Bellowing Roar):
Ähnlich der typischen Drachenfähigkeit belegt das Gebrüll alle Spieler in einem 30 Meter Radius mit Furcht. Die Fähigkeit hat eine 30 Meter Reichweite und kann wie üblich von einem Krieger in Berserkerhaltung widerstanden werden.

|cFF4DFFFDGroßastronom Capernian|r
Trefferpunkte: 270.000
Mana: 38.270.000

|cff5929C7Arkane Explosion|r (Arcane Explosion):
Ähnlich wie bei Imperator Vek'lor aus Ahn'Qiraj wirkt Großastronom Capernian diese alle zwei Sekunden, wenn sich ein Spieler in Nahkampfreichweite befindet. Die Arkane Explosion richtet 4.500 - 5.000 Schaden an, schleudert das Ziel zurück und verlangsamt es.

|cff5929C7Feuerball|r (Fireball):
Ebenfalls wie Imperator Vek'lor wirkt Großastronom Capernian diesen unaufhaltsam auf den Spieler mit der höchsten Bedrohung. Der Feuerball richtet 5.000 - 7.000 Feuerschaden an. Der Schaden kann durch Feuerresistenzausrüstung und den Kosmische Macht (siehe Phase 2) Buff verringert werden.

|cff5929C7Großbrand|r (Conflagration):
Großastronom Capernian wirkt diesen auf ein zufälliges Ziel in einem 30 Meter Radius. Der Debuff verursacht über zehn Sekunden jede Sekunde 900 Schaden und desorientiert den betroffenen Spieler. Benachbarte Spieler erleiden außerdem pro Sekunde 300 Schaden.

|cFF4DFFFDMeisteringenieur Telonicus|r
Trefferpunkte: 270.000

|cff5929C7Bombe werfen|r (Throw Bomb):
Telonicus wirft diese Bomben auf den höchsten Spieler seiner Hassliste. Sie richten in einem 5 - 10 Radius um den Aufschlagsort 6.000 - 7.000 Feuerschaden an.

|cff5929C7Ferngesteuertes Spielzeug|r (Remote Toy):
Telonicus wirkt diesen Debuff alle 15 Sekunden auf ein zufälliges Ziel. Ähnlich dem Brutgebrechen: Bronze aus dem Pechschwingenhort betäubt der Debuff den Spieler zufällig für vier Sekunden. Der Debuff hält 60 Sekunden lang an.

|cff00ff00Phase 2|r

Kael'thas Sonnenwanderer beschwört die sieben Waffen seiner Berater euch anzugreifen. Die Phase endet zwei Minuten und fünf Sekunden nachdem sie begonnen hat, unabhängig davon wie viele Waffen ihr vernichtet habt.

Die Waffen erscheinen alle an Kael'thas Position und können betäubt, mit Furcht belegt, etc. werden. Sobald die Waffen bezwungen wurden, können sie von beliebig vielen Spielern geplündert werden.

|cFF4DFFFDKlinge der Unendlichkeit|r (Infinity Blade)
Trefferpunkte: 210.000
Schaden: 2.000 - 3.000 gegen Plattenträger (in schneller Folge)

|cFF4DFFFDKosmische Macht|r (Cosmic Infuser)
Trefferpunkte: 280.000
Schaden: 1.000 - 2.000 gegen Plattenträger
Heilige Nova: Fügt alle 10 - 20 Sekunden allen Spieler in der Nähe 1.500 Heiligschaden zu und heilt gleichzeitig alle Waffen um den selben Wert..
Heilung: Heilspruch mit drei Sekündiger Zauberzeit, der Waffen mit niedrigen Trefferpunkten heilt. Der Zauber kann abgebrochen werden.

|cFF4DFFFDMacht der Verwüstung|r (Devastation)
Trefferpunkte: 240.000
Schaden: 3.000 - 4.000 gegen Plattenträger
Wirbelwind: Alle 25-30 Sekunden Einsatzbereit. Verursacht alle 5 Sek. zwei Treffer für ca. 5.000 Schaden

|cFF4DFFFDNetherbespannter Langbogen|r (Netherstrand Longbow)
Trefferpunkte: 210.000
Schaden: 2.000 gegen Plattenträger
Arkaner Schuss: 4.000 - 5.000
Mehrfach-Schuss/Teleport: Der Bogen teleportiert sich zufällig außer Nahkampfreichweite seines primären Ziels und verschießt einen Mehrfach-Schuss gegen zufällige Ziele, der 2.000 - 3.000 Schaden anrichtet.

|cFF4DFFFDPhasenverschobenes Bollwerk|r (Phaseshift Bulwark)
Trefferpunkte: 310.000
Schaden: 2.000 gegen Plattenträger
Schildhieb: Wie die Fähigkeit des Kriegers. Darüber hinaus fügt der Schildstachel dem betroffenen Spieler 800 Schaden zu.

|cFF4DFFFDStab der Auflösung|r (Staff of Disintegration)
Trefferpunkte: 170.000
Schaden: 1.000 gegen Platte
Frostblitz: 4.000 Frostschaden
Frostnova: alle Spieler in Nahkampfreichweite

|cFF4DFFFDWarpschnitter|r (Warp Slicer)
Trefferpunkte: 270.000
Schaden: 2.000 - 3.000 gegen Plattenträger
Blutung: Hinterlässt einen bis zu zehn Mal stapelbaren DoT, der alle drei Sekunden 500 Schaden verursacht.
Bildschirmfoto

|cff00ff00Phase 3|r

Kael'thas Sonnenwanderer belebt seine vier Berater wieder und hetzt sie euch zusätzlich zu den noch vorhandenen Waffen auf den Hals. Die Phase endet genau drei Minuten nachdem sie begonnen hat, unabhängig davon wie viele Berater oder Waffen noch existieren.

Die Berater werden an den Orten wieder auferstehen, an denen sie gestorben sind. Mit Hilfe der aufgesammelten Waffen sollte es jetzt jedoch einfacher sein, ihre Fähigkeiten zu kontern.

|cff00ff00Phase 4|r

Kael'thas Sonnenwanderer greift selbst in den Kampf ein und muss zusätzlich zu den Beratern bekämpft werden. Die Phase endet sobald Kael'thas Trefferpunkte auf 50% sinken.

Trefferpunkte: 1.700.000
Nahkampfschaden: 3.000 - 4.000

|cff5929C7Feuerball|r (Fireball):
Kael'thas richtet diesen Feuerball immer gegen das Ziel mit der höchsten Bedrohung. Dieser richtet ca. 25.000 Feuerschaden an, kann aber durch den Kosmische Macht Buff halbiert werden. Der Zauber hat eine 2,5 Zauberzeit und kann unterbrochen werden.

|cff5929C7Schock Barriere|r (Shock Barrier):
Alle 60 Sekunden errichtet Kael'thas Sonnenwanderer für zehn Sekunden diese Barriere um sich, die 100.000 Schaden abfängt und ihn immun gegen Zauberunterbrechungen macht. Ähnlich wie bei Blindauge dem Seher (Ogerkonzil) muss dieser Schild möglichst schnell zerfeuert werden, um Kael'thas andere Zauber unterbrechen zu können.

|cff5929C7Pyroschlag|r (Pyroblast):
Kael'thas Sonnenwanderer setzt diesen Zauber gegen den Main Tank ein, sobald er seine Schock Barriere errichtet hat. Der Pyroschlag kommt bis zu drei mal in Folge zum Einsatz, wenn er nicht unterbrochen wird. Jeder Pyroblast richtet 45.000 - 55.000 Schaden an und hat eine vier Sekündige Zauberzeit.

|cff5929C7Gedankenkontrolle|r (Mind Control):
Alle 30 Sekunden übernimmt Kael'thas Sonnenwanderer zwei zufällig ausgewählte Spieler für 30 Sekunden. Im Gegensatz zu den herkömmlichen Gedankenkontrollen bufft sich der entsprechende Spieler nicht hoch usw. sondern ist vielmehr für die 30 Sekunden aus dem Kampf genommen. Der Effekt kann durch den Effekt von der Klinge der Unendlichkeit (Dolch) aufgehoben werden. Da der Schaden in dieser Phase ein essentieller Faktor ist, sollten die übernommenen Spieler schnellstmöglich aus der Gedankenkontrolle befreit werden.

|cff5929C7Arkane Unterbrechung|r (Arcane Disruption):
Diesen Zauber wird Kael'thas Sonnenwanderer ungefähr alle 60 Sekunden wirken. Er richtet bei jedem Spieler (unabhängig von der Reichweite) 1.750 - 2.250 Arkanschaden an und desorientiert ihn für zehn Sekunden. Der Desorientierungseffekt würde den Main Tank für diese zehn Sekunden aus dem Kampf nehmen, sodass Kael'thas auf das nächste Ziel seiner Hassliste übergeht. Dem Effekt wird jedoch durch den Buff vom Stab der Auflösung widerstanden.

|cff5929C7Phönix Wiedergeburt|r (Phoenix Rebirth):
Ungefähr alle 60 Sekunden wirkt Kael'thas einen Zauber auf einen zufälligen Spieler, der optisch wie ein Flammenstoß aussieht. Spieler im Bereich des Einschlagortes nehmen nach wenigen Sekunden ca. 2.000 Schaden. Daraufhin spawnt an dieser Stelle ein Phönix.

|cff5929C7Phönix|r (Phoenix):
Der Phönix besitzt ca. 10.000 Trefferpunkte und geht augenblicklich auf das Ziel mit der höchsten Bedrohung los - was höchstwahrscheinlich ein Heiler ist. Sobald der Phönix sein Ziel erreicht hat, benutzt er eine Höllenfeuer ähnliche Fähigkeit, die ca. 4.000 - 5.000 Schaden bei allen betroffenen Spielern anrichtet und so schnell zum Tod dieser führen kann. Der Phönix verliert während des Höllenfeuers jedoch selbst pro Welle 5% seiner Trefferpunkte.

|cff5929C7Phönix Ei|r (Phoenix Egg):
Sobald ein Phönix stirbt, entsteht auf seiner Leiche ein Phönix mit 70.000 Trefferpunkten. Nach 15 Sekunden schlüpft aus diesem Ei ein neuer Phönix.

|cff00ff00Phase 5|r

Bei 50% seiner Trefferpunkte, erfolgt eine kurz In-Game-Zwischensequenz, in der Kael'thas Sonnenwanderer die Wände des Raumes einreißt. Fortan verliert Kael'thas seine Gedankenkontrolle und Pyroschlag Fähigkeit. Gewinnt im gleichen Zuge jedoch drei weitere. Die Phase endet mit Kael'thas Sonnenwanderers Tod.

|cff5929C7Gravitationsverlust|r (Gravity Lapse):
Ein einem Zeitfenster von 60 - 90 Sekunden bringt Kael'thas diese Fähigkeit zum Einsatz. Dabei teleportiert er alle Spieler an seine Position und belegt sie anschließend mit einem 30 Sekündigen Debuff, der sie schweben lässt. Der Debuff hat lediglich zur Folge, dass sich alle Spieler in der Luft befinden und sich fortbewegen als würden sie schwimmen.

|cff5929C7Netherdampf|r (Nether Vapor):
Während der Gravitationsverlustzeit erleiden alle Spieler in einem acht Meter Radius um Kael'thas Sonnenwanderer alle fünf Sekunden 900 Schattenschaden und erhalten einen Debuff, der die Trefferpunkte des Spielers um 10% reduziert. Der Debuff ist bis zu neun Mal stapelbar.

|cff5929C7Netherstrahl|r (Nether Beam):
Kael'thas setzt diesen Zauber während der Gravitationsverlustzeit ein. Er verhält sich ähnlich wie ein Kettenblitz nur das er 1.800-2.200 Arkanschaden beim ersten und jedem weiteren Ziel in 8 Meter Reichweite anrichtet.

|cffff0000Taktik
--------|r

|cff00ff00Phase 1|r

Die erste Phase beginnt sobald sich ein Spieler nah genug an Kael'thas Sonnenwanderer heran wagt. Nach einer kurzen Erzählung startet Kael'thas den Kampf mit den Worten "Macht euch bereit!" und schickt euch den ersten seiner vier Berater entgegen.

Diese Phase ist zusammen mit der letzten die einfachste des Kampfes und vor allem die einzige, in der ihr quasi unendlich viel Zeit habt. Deshalb solltet ihr sie euch auch nehmen! Übertreibt es nicht mit dem Schaden und vor allem beendet die Phase mit vollem Mana und so wenig aktiven Cooldowns wie möglich!

|cFF4DFFFDThaladred der Verfinsterer|r
Auf Grund seines Blicks kann Thaladred am Besten von dem Spieler im Blickfeld durch den Raum gelockt werden, während sich die Fernkämpfer auf Abstand halten und ihn zerfeuern. Thaladreds Bewegungsgeschwindigkeit liegt leicht unter der eines Spielers, somit sollte es problemlos möglich sein, ihn auf Abstand zu halten. Nahkämpfer sollten sich besser von Thaladred fernhalten, da ständig die Gefahr besteht, dass Thaladred sie anguckt und dann umgehend tötet. Fernkämpfer können den Zielwechsel seines Blickes leicht überleben, wenn sie gut zehn Meter Abstand halten. Module wie BigWigs zeigen euch einen Cooldown für den Zielwechsel an, wodurch ihr immer wisst, wann ihr im Zweifelsfall zurückweichen müsst.

Spieler mit Immunitäts-Fähigkeiten können diese theoretisch einsetzen, wenn sie verfolgt werden. Aber sollten dieses nicht! Da in diesem Fall Thaladred sofort auf den Spieler mit der höchsten Bedrohung überschwenkt. Beispiel: Ein Hexenmeister befindet sich auf Platz eins der Hassliste, während Thaladred gerade einen Jäger verfolgt. Stellt sich der Jäger nun tot, läuft Thaladred sofort auf den Hexenmeister zu. Selbiges gilt für Eisblock, Gottesschild etc.

Die Heiler müssen auf den gesamten Schlachtzug acht geben, und Opfer des Physischen Schlags umgehend hochheilen.

Thaladred sollte nach ungefähr einer Minute sterben, wodurch Fürst Blutdurst auf euch los geht. Sehr wichtig ist hierbei jedoch wo Thaladred stirbt. Denn in der dritten Phase ersteht er an genau dem Punkt auf und das sollte nicht im Gruppenstandort oder beim Main Tank sein. Sorgt also dafür, dass er im unteren Teil des Raumes stirbt.

|cFF4DFFFDFürst Blutdurst|r
Zwei Tanks sollten sich parallel darum kümmern Fürst Blutdurst zu binden, da sein Dröhnendes Gebrüll auch mal nicht genau nach dem 30 Sekunden Timer ertönen kann. Dementsprechend müssen die beiden Tanks den üblichen Haltungs-Wechsel vollziehen, um dem Furchteffekt zu widerstehen.

Alle Schadenverursacher müssen hier nur darauf achten, nicht zu viel Bedrohung zu generieren und hinter den beiden Tanks zu bleiben. Die Tanks dürfen nicht Fürst Blutdursts Aufmerksamkeit verlieren. Die Heiler müssen sich lediglich auf ihre Tanks konzentrieren. Alle anderen Spieler sollten hier keine Trefferpunkte einbüßen.

Auch bei ihm muss darauf geachtet werden, dass er im Südenosten (neben der Eingangstür) mit Abstand zum Gruppenstandort stirbt. Ist Fürst Blutdurst bezwungen, rückt euch Großastronom Capernian zu Leibe.

|cFF4DFFFDGroßastronom Capernian|r
Auf Grund ihrer Fähigkeiten sollte Großastronom Capernian wie schon Imperator Vek'lor aus Ahn'Qiraj oder Leotheras Dämonenform (Schlangenschrein) von einem Hexenmeister mit Sengendem Schmerz etc. gebunden werden. Etwas Feuerschutzausrüstung und eine Seelenverbindung sorgen hier für moderaten Schaden beim Hexer und gute Heilbarkeit. Ein zusätzlicher Krieger sollte sich innerhalb ihrer 30 Meter Umgebung befinden, um im Zweifelsfall die Aufmerksamkeit zu bekommen, falls der Hexer-Tank versehentlich den Großbrand bekommt.

Der verbleibende Schlachtzug sollte sich auf Maximalabstand (mehr als 35 Meter) um Großastronom Capernian verteilen, um nicht vom Großbrand erfasst zu werden. Schattenpriester dürfen hier Beispielsweise nicht mit Gedankenschinden arbeiten. Die Heiler sollten sich ebenfalls in diesem breit gefächertem Feld verteilen, um alle Spieler in Reichweite zu haben. Nahkämpfer können hier mal wieder getrost Kaffe trinken gehen, so lange sie sich auf Abstand stellen.

|cFF4DFFFDMeisteringenieur Telonicus|r
Dies ist der leichteste Abschnitt des gesamten Kampfes. Einer der Tanks sollte Telonicus an sich binden und an die vorgesehene Position im Nordwesten ziehen. Als nächstes können die Nahkämpfer einsteigen, die in der vergangenen Runde Pause hatten. Sie müssen lediglich darauf achten, dass sie nicht im Explosionsbereich der Bomben stehen. So müssen die Heiler nur auf den Tank selbst Acht geben.

Fernkämpfer können hier Zauberstäbe benutzen und Manaregerieren. Dies ist der beste Moment dafür. Es gibt momentan keinen Zeitdruck. Das einzige worauf in dieser Phase noch geachtet werden muss, ist das kein Tank den "Ferngesteuertes Spielzeug" Debuff hat wenn Telonicus stirbt. Da ihr zu Beginn der zweiten Phase alle Tanks braucht. Stellt also den Schaden ein, lasst den Debuff auslaufen und gebt Telonicus anschließend den Todesstoß.

|cff00ff00Phase 2|r

Ungefähr fünf Sekunden nach Meisteringenieur Telonicus Tod spawnen in einem Halbkreis vor Kael'thas Sonnenwanderer sieben Waffen, für deren Zerstörung ihr nun 95 Sekunden Zeit habt. Jede Waffe, die nach 95 Sekunden noch existiert, muss in Phase drei zusätzlich bekämpft werden. Also reißt so viele mit in den Tod wie ihr könnt. Im Optimalfall sollte am Ende der Phase nur noch der Schild (Phasenverschobenes Bollwerk) existieren.

Je nach Gruppenzusammenstellung können alle Waffen nacheinander fokussiert oder auf einmal mit Flächenzaubern und zusätzlichem Schaden von den Einzel-Ziel-Kämpfern vernichtet werden. Beide Taktiken sind im Rahmen des möglichen, die Flächenzauber-Taktik ist jedoch eindeutig die schnellere. Unabhängig von der Art der Zerstörungstaktik sollten die Waffen möglichst in der folgenden Reihenfolge den Spielern zur Verfügung stehen bzw. vernichtet werden:

    * Stab der Auflösung (Stab)
    * Kosmische Macht (Streitkolben)
    * Klinge der Unendlichkeit (Dolch)
    * Warpschnitter (Schwert)
    * Netherbespannter Langbogen (Bogen)
    * Macht der Verwüstung (Axt)
    * Phasenverschobenes Bollwerk (Schild)

Jeder der vier Tanks muss ein bis zwei Waffen an sich binden und diese zu einem beliebigen zentralen Punkt zusammen ziehen. Ausgenommen davon sind der Bogen (Netherbespannter Langbogen) und die Axt (Macht der Verwüstung). Je nach Verfügbarkeit von Jägern im Schlachtzug, sollten diese Irreführung verwenden, um die Waffen zu ihren jeweiligen Tanks zu locken.

    * Tank 1: Macht der Verwüstung (Axt)
    * Tank 2: Phasenverschobenes Bollwerk (Schild)
    * Tank 3: Klinge der Unendlichkeit (Dolch) + Warpschnitter (Schwert)
    * Tank 4 (Off-Krieger): Kosmische Macht (Streitkolben)
    * Tank 5 (Jäger): Netherbespannter Langbogen

In der Aufzählung fehlt offensichtlich der Stab der Auflösung. Dieser braucht streng genommen nicht getankt werden, er a) so schneller befeuert und vernichtet werden kann und b) auch durch Hammer der Gerechtigkeit von Paladinen und Gegenzauber von Magiern handlungsunfähig gemacht werden. Auch der Jäger-Tank braucht nicht darauf zu achten, dass seine Waffe, der Netherbespannten Langbogen, nicht im Flächenzauber-Zentrum steht. Denn der Bogen teleportiert sich während des Kampfes durch den Raum, sobald sich jemand in Nahkampfreichweite heranwagt. Der Jäger-Tank hält ihn daher etwas abgelegen am östlichen Rand der oberen Plattform.

Tank Nummer eins (mit der Axt) muss sich leicht außerhalb des zentralen Gruppenstandortes aufstellen und immer auf deren Wirbelwind achten. Sobald der Wirbelwind vorbei ist, hat der Tank zehn Sekunden Zeit, um die Axt in den Explosionsradius des Flächenschadens zu ziehen und sie vor dem nächsten Wirbelwind wieder heraus zu bewegen.

Während die fünf Tanks die ihnen zugewiesenen Waffen binden und an die vorgesehenen Punkte ziehen, beginnt der restliche Schlachtzug damit den Stab der Auflösung zu zerstören. Sobald dieser vernichtet ist, sollten die Tanks ausreichend Hass aufgebaut haben, um die Waffen auf sich zu halten und alle Schadensverursacher können mit ihren Angriffen auf die verbleibenden sechs Waffen beginnen. Für diese Phase des Kampfes sollten alle Schadensverursacher ihre Schmuckstücke und andere Spezialfähigkeiten verwenden. Die Flächenschadenfähigen Klassen sollten mit selbigen (Arkane Explosionen, Feuerregen, Saat der Verderbnis etc.) alle Waffen bombardieren. Ein Schattenpriester kann sie zusätzlich unterstützen, in dem er die Waffen zusätzlich mit Schattenwort: Schmerz verseiht. Alle anderen Schadenverursacher sollten die Ziele nacheinander abarbeiten. Das wichtigste Ziel ist zunächst der Streitkolben und das Unterbrechen dessen Heilzauber (durch Tank oder Schurken). Die Ziele können ebenfalls auf Nah- und Fernkämpfer aufgeteilt werden:

    * Nahkämpfer: Kosmische Macht (Streitkolben) -> Klinge der Unendlichkeit (Dolch) -> Warpschnitter (Schwert) -> Phasenverschobenes Bollwerk (Schild)
    * Fernkämpfer: Stab der Auflösung (Stab) -> Kosmische Macht (Streitkolben) -> Klinge der Unendlichkeit (Dolch) -> Warpschnitter (Schwert) -> Netherbespannter Langbogen (Bogen) -> Macht der Verwüstung (Axt)

Wenn alles planmäßig verläuft sollten alle Waffen vernichtet sein, bevor die dritte Phase anfängt. Ob ihr es schafft oder nicht, ändert nichts daran, dass jeder innerhalb dieser Phase bereits eine Waffe aufheben sollte, sobald sie geschlagen wurde:

    * Hexenmeister / Magier: Stab der Auflösung (Stab)
    * Schurken: Klinge der Unendlichkeit (Dolch) und Warpschnitter (Schwert)
    * Krieger: Klinge der Unendlichkeit, Warpschnitter (Schwert) und Phasenverschobenes Bollwerk (Schild)
    * Heiler: Kosmische Macht (Streitkolben)
    * Jäger: Netherbespannter Langbogen (Bogen)

Ihr müsst euch beim Aufheben der Waffen beeilen, denn sie verschwinden nach ungefähr einer Minute. Es können zudem Spieler festgelegt werden, welche die Waffen für die Tanks aufheben und zu ihnen bringen, da diese sich höchstwahrscheinlich nicht selbst darum kümmern können.
Sobald ihr die Waffen angelegt habt, müsst ihr dafür sorgen, dass ihre Buffs, die durch Benutzen aktiviert werden, dauerhaft aktiv sind. Das ist besonders beim Stab der Auflösung sehr wichtig. Wenn sich bereits ein Spieler in der Nähe befindet, der die Aura des Stabes etc. aktiviert hat, erscheint kein Timer an euerm Buff. Ihr solltet die Waffe aber dennoch benutzen, um sicher zu gehen, dass der Buff auch aktiv ist, wenn ihr der alleinige Träger seit.

|cff00ff00Phase 3|r

Kael'thas belebt alle Berater auf einmal wieder und die müssen selbstverständlich von den jeweiligen Tanks gebunden werden. Was logischerweise dazu führt, dass die bisherigen Waffen weitestgehend von ihnen runter sein müssen. Wenn noch ein oder zwei Waffen existieren, müssen sie in dieser Phase umgehend vernichtet werden. Sind es mehr als zwei, ist der Kampf an dieser Stelle vermutlich schon gelaufen.

Bei dem Tank für Fürst Blutdurst sollte es sich um einen Krieger mit dem Phasenverschobenen Bollwerk handeln. Auf diese weise kann der Tank jeden Furcht-Effekt abfangen. Selbstverständlich ist es während der ersten ein oder zwei Furchtzauber auch möglich, diesen (wie in Phase 1) mit den normalen Mitteln zu begegnen und sich den Schild von einem dritten Spieler bringen zu lassen, sobald er verfügbar ist. Fortan kann der Tank dannabwechselnd den Schild (vier Sekunden Immunität) benutzen, oder wie üblich in die Berserkerhaltung wechseln. Der Tank hält Fürst Blutdurst am Südöstlichen Punkt, wo er auch in Phase 1 bereits bekämpft wurde. Die Fernkämpfer können sich um ihn kümmern, sobald alle Waffen und Thaladred tot sind.
Fürst Blutdurst ist in dieser Phase übrigens da geeigneteste Ziel für den Schattengeist eines Priesters, da dieser nicht wild um sich schlägt und nur alle 30 Sekunden Furcht wirkt.

Großastronom Capernian sollte, wie schon zuvor, von dem Hexenmeister mit Sengendem Schmerz in Empfang genommen und im Süden gebunden werden. Durch die Desorientierungsimmunität des Stabes und die 50% Feuerschadenreduzierung des Streitkolbens ist es für den Hexenmeister und einen einzelnen Heiler leicht über lange Zeit in der Ecke auszuharren. Was auch der Grund dafür ist, dass Großastronom Capernian zu letzt getötet wird. Sobald Thaladred tot ist, kann der normale Hexer-Tank von ein oder zwei weiteren Hexenmeistern im Kampf gegen Capernian unterstützt werden.

Ähnlich ungefährlich ist Meisteringenieur Telonicus. Durch den Streitkolben Buff richtet er nur noch wenig Schaden an und die Stilleimmunität des Stabes sorgt dafür, das auch für ihn nur ein einzelner Heiler benötigt wird. Der Stab sorgt außerdem für Immunität gegen Telonicus Spielzeug Fähigkeit. Meisteringenieur Telonicus sollte zur Wand hin gehalten werden, sodass seine Bomben niemand aus der Schlachtgruppe erwischen.
Sobald er Tank Telonicus in Position gezogen hat und die restlichen Waffen weg sind, können die Nahkämpfer anfangen ihn niederzuprügeln.

Die größte Bedrohung für den Schlachtzug hat in dieser Phase Thaladred der Verfinsterer. Er wird wie schon in Phase eins im Kreis um den zentralen Gruppenstandort gelockt und von den Fernkämpfern in der Mitte zerfeuert. Seine Kreise können weiter nach Westen ausgedehnt werden. Die Spieler im Blickfeld sollten darauf achten, dass sie a) Thaladred beim Wegrennen nicht an Tank-Heilern vorbei locken, da diese sonst Stille bekommen und der Tank stirbt b) möglichst viel Abstand von den anderen drei Mobs halten. Denn falls der nächste Blick auf einen der Tanks fällt, muss genug Strecke zwischen Thaladred und dem Tank liegen, das der Blick erneut wechselt und der Tank sich nicht beweben muss. Jeder Spieler muss ferner darauf achten, nicht in den Großbrand-Bereich (35 Meter) von Großastronom Capernian hinein zu laufen.
Die einzige andere Änderung im Gegensatz zu Phase 1 sollte ein zusätzlicher Tank sein, der versucht den Magie-Debuff-Effekt (5% mehr Schaden) der Klinge der Unendlichkeit (Dolch) auf Thaladred zu halten.

In der oben genannten Gruppenzusammenstellung sollte Thaladred als erster sterben. Daraufhin können die Fernkämpfer ihren Schurkenfreunden bei den letzten Lebenspunkten von Meisteringenieur Telonicus helfen und anschließend können beide Gruppen gemeinsam Fürst Blutdurst im Süden zu Leibe rücken. Mit dem Magieschaden und dem dauerhaften Debuff sollte er schnell fallen.

Großastronom Capernian werdet ihr in dieser Phase vermutlich nicht töten können. Die o.g. zusätzlichen Hexenmeister können ihren Tod jedoch beschleunigen. Bei den ersten Versuchen könnt ihr euch glücklich schätzen, wenn Fürst Blutdurst im Übergang zu Phase vier stirbt. Auf alle Fälle sollten aber Thaladred und Telonicus tot sein. Unabhängig wer alles tot ist, sollten sich die Nahkämpfer am Ende der Phase bereits zu Kael'thas bewegen.

|cff00ff00Phase 4|r

An dieser Stelle wird der Kampf theoretisch einfacher. Zumindest was die verschiedenen Ziele und Taktiken an geht. Natürlich unter der Voraussetzung, das alle Berater zwischenzeitlich das Zeitliche gesegnet haben.

Jetzt greift Kael'thas Sonnenwanderer zum ersten Mal selbst in den Kampf ein und muss sofort von dem Tank mit der besten Ausdauerausrüstung gebunden werden. Wie für einen Boss seines Formats üblich ist er natürlich Immun gegen Spott. Dem Tank sollten zwei bis drei Heiler zur Seite gestellt werden. Darüber hinaus muss sich ein Spieler mit der Stab der Auflösung Aura immer in seiner Nähe befinden, um den Tank Immun gegen die Desorientierung der Arkane Unterbrechung zu machen. Kael'thas erste Aktion, sobald er aktiv wird, ist ein Feuerball Zauber. Dieser muss sofort unterbrochen werden, da er nicht zwingend auf den Tank gehen muss und so einen Heiler oder ähnliches zerlegen könnte. Zum sicheren Abbruch kann hier zusätzlich ein Schurke für Kael'thas abgestellt werden.

Bei den Nahkämpfern muss nun eine Einteilung stattfinden. Jeder von ihnen sollte in Phase 2 die Klinge der Unendlichkeit (Dolch) geplündert haben und nun anlegen. Mindestens ein Tank muss sich um den spawnenden Phönix kümmern bzw. diesen an sich binden. Falls diese nicht schnell genug bekämpft werden können, müssen zwei Tanks abgestellt werden. Die restliche Nahkämpfer (Schurken, Tanks, etc.) wechseln sich je nach Abklingzeit damit ab Kael'thas zu kicken und die Gedankenkontrolle mit Hilfe des Dolches (Klinge der Unendlichkeit) von den übernommeen Spielern zu entfernen. Für beides sollten immer zwei Nahkämpfer verfügbar sein. Wichtig ist hierbei, dass sie Spieler nicht mit Meucheln, Tödlicher-Stoß etc. umbringen, sondern am Besten nur mit Kniesehne etc. zuschlagen. Zudem sollten sich drei Magier permanent bereithalten und die Gedanken-Kontrollierten-Spieler umgehend verwandeln. Damit sie diese keinen Schaden an der Gruppe anrichten und Manaverbrauchen, bevor die Übernahme von den Nahkämpfern aufgehoben wird.

Von nun an müsst ihr die folgenden Probleme bewältigen:

    * Berater
      Eventuell noch lebende Berater müssen umgehend getötet werden, damit sich der gesamte Schlachtzug um die folgenden Probleme kümmern kann.
    * Phönix
      Nachdem ein Phönix gespawnt ist und von dem zugewiesenen Tank gebunden wurde, müssen die Fernkämpfer sich darum kümmern ihn zu töten. Sobald er tot ist, müssen alle Fernkämpfer und eventuell auch ein paar Nahkämpfer von Kael'thas ablassen und Ei zerstören. Der ein Minütige Phönix Wiedergeburt Timer läuft unabhängig vom Schock Barriere Timer. Es sollten also immer alle in der Lage sein sich um den Phönix zu kümmern. Die genauen Angriffsphasen sollten von einem Spieler per Teamspeak etc. angesagt werden. Hierbei muss darauf geachtet werden, dass mindestens ein Spieler mit der Aura des Stabs der Auflösung beim Kael'thas Tank bleibt. Entweder feuert dieser weiterhin auf Kael'thas oder er bewegt sich nur so weit wie eben nötig in Richtung Phönix/-ei.
    * Feuerbälle
      Eine Unterbrechungsrotation sollte festgelegt werden, damit die Feuerbälle von Kael'thas effektiv verhindert werden können.
    * Schock Barriere / Pyroblast
      Das ist der wichtigste Punkt dieser Phase! Es müssen sich wirklich alle um die Schock Barriere kümmern. Im Zweifelsfall müssen hier sogar die Heiler mit eingreifen.
      Kael'thas verschießt alle vier Sekunden einen Pyroblast. Der Main Tank kann den ersten absorbieren, in dem er die Fähigkeit des Schildes aktiviert. Aber der zweite würde ihn acht Sekunden nach Errichtung des Schildes töten, d.h. der Schild muss nach sieben Sekunden zerstört sein.
      Wenn ihr es regelmäßig schafft, die 100.000 Trefferpunkte der Barriere innerhalb der sieben Sekunden einzureißen und daraufhin die folgenden beiden Pyroblasts abzubrechen, habt ihr die Phase überstanden.

Wenn ihr Nahe dem Ende von Phase vier seit (kurz vor 50%) und es nicht mehr rechtzeitig schafft, die Barriere einzureißen, kann der Tank die Pyroblasts auch überleben, wenn er einen erheblichen Feuerschutztrank (und alles andere Ausdauerbuffs) einwirft und Schildwall oder Letztes Gefecht einsetzt, während der Buff des Streitkolbens auf ihm ist.

Die gesamten Kämpfe dieser Phase sollten auf der nördlichen Plattform stattfinden. Alle Nah- und Fernkämpfer befinden sich also auf ihr oder auf der Treppe zu dieser. Die Phönix-Tanks versuchen die Phönixe immer am östlichen und westlichen Ende der Plattform bzw. davor zu halten, damit die Fernkämpfer sich nur umdrehen brauchen und nicht Kilometer weit laufen müssen.

|cff00ff00Phase 5|r

Sinken Kael'thas Trefferpunkte auf 50%, wird der Kampf kurz durch eine Zwischensequenz unterbrochen geht anschließend mit der fünften Phase weiter. In dieser Phase verliert Kael'thas Sonnenwanderer seine Gedankenkontrolle und Pyroblast Fähigkeiten. Was die Phase ein wenig vereinfacht. Stattdessen kommen jedoch drei andere Fähigkeiten hinzu: Gravitationsverlust, Netherdampf und Netherstrahl. Diese unterteilen die Phase streng genommen in zwei weitere, die sich alle 30 Sekunden abwechseln.

Phase 5.1
Die erste Phase verläuft ähnlich wie Phase vier. Der Unterschied ist lediglich, dass Kael'thas seinen Pyroblast nicht mehr wirkt und ihr ihn daher für die Dauer der aktiven Schock Barriere einfach in Ruhe lassen könnt. Phönixe spawnen weiterhin und müssen in dieser Phase getötet werden. In der Gravitationsverlust-Phase sind sie Immun gegen Schaden und können auch an euch keinen Schaden anrichten.

Phase 5.2
Alle Spieler werden zu Kael'thas hingesaugt und dort in die Luft geworfen (Gravitationsverlust). Dieser Zustand des Schwimmens ohne Wasser hält für 30 Sekunden an.

Sobald ihr in der Luft seit, müsst ihr euch als erstes von Kael'thas entfernen, um dem Netherdampf des Blutelfenfürsten zu entgehen. Als zweites gilt es auszuschwärmen. Der gesamte Schlachtzug muss sich horizontal und vertikal im Raum verteilen, ohne den Boden zu berühren, um dem Überspringen des Netherstrahls vorzubeugen. Habt ihr eure Position erreicht, könnt ihr wieder das Feuer auf Kael'thas eröffnen.

Es ist in dieser Phase nicht möglich von Kael'thas direkt angegriffen werden. Das sollte aber nicht dazu verlocken in der Hassliste am Main Tank vorbei zu ziehen. Denn sobald der Gravitationsverlust endet, geht der Blutelfenfürst auf den Spieler mit der höchsten Bedrohung los und das sollte der Main Tank sein. Dieser kann sich in der Flugphase ruhig von Kael'thas entfernen, da dieser automatisch am Ende zum Main Tank läuft.

Nach Ablauf der 30 Sekunden werden alle Spieler leicht in die Luft geschleudert und prallen dann auf den Boden zurück. Wodurch jeder Fallschaden entsprechend seiner vorherigen Flughöhe erleidet.

Wenn ihr in Phase 5.1 die Phönixe zuverlässig vernichtet und euch in Phase 5.2 gut verteilt, solltet ihr den Kampf problemlos gewinnen können.
]]

--hier die Texte für den Trash

L["trash Al'ar"] = [[
Pullt die erste Gruppe wenn die Pat gerade herumgedreht hat.
Die Magierklassen sollten in der Dauerverwandlung gehalten werden, bis die Nahkämpfer vernichtet sind. Vorsicht bei den Legionären, diese haben Klingenwirbel, der bei Nahkämpfern massiven Schaden anrichtet.
Die Phönixfalkengruppen werden am besten von einem Jäger mit Irreführung auf einen Paladin gepullt. Zwei Tanks fangen die Schützen ab, um die sich die Nahkämpfer kümmern. Der Paladin tankt die Falken mit Weihe und dem Rücken zur Wand. Hat er genug Aggro aufgebaut, beginnen die Schadensverursacher mit Flächenschaden.
Die Phönixfalken in Al'ars Raum werden einzeln durch einen Jäger mit Irreführung auf einen Tank gepullt. Die Gruppe steht auf einem Haufen um den Tank, zwei weitere Tanks ca. 15m entfernt, um dem Anstürmen entgegenzuwirken.
]]

L["trash Void"] = [[

Die Kristallschmieden Mechaniker und Sturmschmiede sind bann bzw. verwandelbar. Beschäftigt euch zunächst mit den Krisallschmiden Zerstörern. Die Heiler sollten darauf achten, den massiven Gruppenschaden zu heilen. 

]]

L["trash Solarian"] = [[

Die Tanks greifen sich die zwei Legionäre aus den Gruppen heraus, die restlichen Novizen werden durch die Schadenverursacher mit Flächenschaden eliminiert. Magier können durch Frosten die Gruppen festhalten.

]]

L["trash Kael"] = [[

Die Kampfmagier, Legionäre und Inquisitoren sind verwandelbar. Nutzt dies, um die Anzahl der Gegener beherrschen zu können. Vernichtet immer zuerst einen Kampfmagier, da an diesem alle Schadensklassen maximalen Schaden fahren können. Danach beschäftigt ihr euch mit den Blutwärtern, die Tanks sollten diese weit abseits der Schafe tanken, da diese Verwandlungen entfernen können.
Ist ein Marschall in der Gruppe, so ist er Primärziel für die Fernkämpfer, die Nahkämpfer dürfen aber nicht in seine Nähe, sie beschäftigen sich in der Zeit mit einem Blutwärter.

]]

--ra text messages jede zeile durch \n getrennt
L["ra Al'ar"] = "Beim Phasenwechsel Bedrohungsreduzierende Zauber einsetzen.\nSchurken dürfen die Phönixe nicht stunnen.\nGeht aus den Flammenkreisen sofort heraus, genau wie aus dem Einschlagort des Meteors."
L["ra Void"] = "Keiner zieht Aggro!\nAchtet auf die Kugeln"
L["ra Solarian"] = "Bombt die Agenten, Schurken achten darauf, dass die Priester nicht heilen."
L["ra Kael"] = "Passt auf Thaladred auf!\nLootet die richtigen Waffen und benutzt den Stab\nUnterbrecht den Pyroschlag von Kael'thas, lauft aus den Flammenkreisen sofort heraus!\nWenn Gravitationsverlust eintritt schwimmt von Kael'thas weg, auch der Tank."

--button bezeichnungen
L["tank position"] = "Tankposition"
L["Phase 1"] = true
L["Phase 2"] = true
L["Phase 4 & 5"] = true
L["Phase 1 & 3"] = true
L["phoenix tank"] = "Phönixtank"
