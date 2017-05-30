local L = LibStub("AceLocale-3.0"):NewLocale("BT_BCout", "deDE")
if not L then return end

--Umlaute: ö:\195\182 ü:\195\188 ä:\195\164 Ö:\195\150 Ü:\195\156 Ä: \195\132

-- infos
L["Module resetted"] = "Modul zur\195\188ckgesetzt" --diese zeile nicht verändern!

L["info"] = "|cff91069ETactics by|r rpguides\n|cff91069EImages by|r Vonswan, rpguides\n|cff91069EModule by|r Sorontur\n\n|cffC0C0C0[http://www.kdh-wow.de]\n[http://www.rpguides.de]|r"

L["Outdoor"] = true

--füge hier die taktiktexte lokalisiert ein:

L["tactic Kazzak"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

Die Gruppenzusammenstellung für Verdammnislord Kazzak steht euch relativ frei. Wichtig ist lediglich, das ihr einen Tank und mindestens vier Heiler für ihn habt. Darüber hinaus braucht ihr viele Schadensverursacher, um die 1,3 Millionen Trefferpunkte innerhalb von einer Minute zu dezimieren. Ihr solltet aber selbstverständlich noch etwas Platz für Gruppenheiler lassen. Hexenmeister sind streng genommen die ideale Klasse für diesen Kampf. Da ihr Wichtel die Trefferpunkte der einzelnen Gruppen erhöhen kann und sie durch Aderlass das geringste Problem mit dem Mal von Kazzak haben.

Beispiel:
    * 1 Tank
    * 13 Heiler
    * 26 Schadensverursacher

|cffff0000Fähigkeiten
---------------|r

Trefferpunkte: ca 910.000
Nahkampfschaden: 5.200 - 6.300 (bei 17.000 Rüstung) (seit Patch 3.0.2 verringert)

Mit dem Einzug in Scherbenwelt hat Verdammnislord Kazzak selbstverständlich einige neue Fähigkeiten erlangt. Hier eine kleine Übersicht:

|cFF4DFFFDSpalten|r (Cleave):
Ein nach Vorne gerichteter Nahkampfangriff, der in einem 10 Meter Radius 6.000 - 7.500 Körperschaden bei Plattenträgern anrichtet (15.000 auf Leder und 18.000 auf Stoff).

|cFF4DFFFDDonnerknall|r (Thunderclap):
Dieser Flächenangriff richtet bei allen Spielern im Nahkampfbereich 2.600 - 3.800 Naturschaden an. Er reduziert darüber hinaus für zehn Sekunden die Bewegungsgeschwindigkeit um 60% und die Angriffsgeschwindigkeit um 30%. Der magische Effekt kann theoretisch entfernt werden.

|cFF4DFFFDSchattenblitzsalve|r (Shadow Bolt Volley):
Diese Salve von Schattenblitzen hat zwei Sekunden Zauberzeit, eine 30 Meter Reichweite und ist nicht von der Sichtlinie abhängig. Die Schattenblitze richten bei ihren Zielen 1.500 - 2.500 Schattenschaden an.

|cFF4DFFFDMal von Kazzak|r (Mark of Kazzak):
Dieser nicht entfernbare Debuff entzieht einem zufällig ausgewählten Spieler über zehn Sekunden (9x) 5% seines Manamaximums. Wenn dem betroffenen Spieler vor Auslaufen des Debuffs das Mana ausgeht explodiert er und fügt damit sich selbst und umgebenen Spielern 5.000 Schattenschaden zu.

|cFF4DFFFDSeele fangen|r (Capture Soul):
Wenn ein Spieler stirbt, fängt Verdammnislord Kazzak seine Seele ein und gewinnt dadurch wieder bis zu 150.000 Trefferpunkte. Der Wert der Heilung scheint nach mehreren Toten zu steigen (von 75.000 auf 150.000). Begleiter und Totems sind von diesem Effekt nicht betroffen. Genau so wenig gilt der Tod, wenn er von einem Spieler der gegnerischen Fraktion beigeführt wurde.

|cFF4DFFFDVerdrehte Reflexion|r (Twisted Reflection):
Dieser magische Debuff wird auf einen zufälligen Spieler, aber nicht auf den höchsten Spieler der Hassliste, angewendet. Der Debuff heilt Lord Kazzak jedes Mal wenn er dem Spieler Schaden zufügt. Kombiniert mit einer Schattenblitzsalve kann dieser schnell den Versuch ruinieren. Daher müssen die Entferner (Paladine und Priester) schnell reagieren.

|cFF4DFFFDLeereblitz|r (Void Bolt):
Eine sehr weit reichende Variation des Schattenblitzes. Er wird gegen das oberste Ziel der Hassliste geschleudert, wenn sich kein Spieler in Nahkampfreichweite befindet. Der Leereblitz richtet zwischen 3.200 - 5.000 Schattenschaden an und reduziert zudem die Bewegungsgeschwindigkeit des Opfers um 50%.

|cFF4DFFFDWutanfall|r (Enrage):
Eine Minute nach Kampfbeginn bekommt Verdammnislord Kazzak einen Wutanfall, welcher seinen angerichteten Schaden um 30% erhöht. Er verschießt in dieser Zeit sechs Schattenblitzsalven. Nach der sechsten Salve endet sein Wutanfall.

|cffff0000Taktik
--------|r

|cFFDBD533Positionierung|r
Verdammnislord Kazzak hat eine sehr große Aggrozone, d.h. er reagiert sehr schnell auf den sich annähernden Tank. Ein Jäger sollte den Tank mit Irreführung dabei unterstützen Hass aufzubauen. Während der Tank selbst durch Kazzak hindurch läuft und diesen mit dem Rücken zur Schlachtgruppe dreht. Es ist zwar nicht zwingend erforderlich, dass Kazzak in Richtung seines Throns schaut, aber zum Einen hat sein Spalten-Angriff eine sehr hohe Reichweite und zum Anderen müssen dann nicht alle Heiler so weit vor, um die Schurken zu Heilen/Entzaubern.

Die Schlachtgruppe sollte sich auf Maximalreichweite vor Kazzak verteilen. Die Paladine und Priester müssen dabei darauf achten, dass ihre Magie-Entfernen-Reichweite ausreicht um alle Spieler zu erreichen.

|cFFDBD533Kampfverlauf|r
Der Kampf selbst erfordert nahezu null taktisches Geschick. Er besteht lediglich darin innerhalb von einer Minute so viel Schaden wie möglich anzurichten und dabei nicht zu sterben. Tote sind hier in der Tat das Todesurteil für den gesamten Schlachtzug. Selbst bei einer guten Gruppe ist mehr als ein Toter bereits das Ende des Versuchs und bei einer schlechten ist es wahrscheinlich schon der erste.

Haltet euren Manavorat also möglichst immer über 50%, damit ihr im Falle eines Mals von Kazzak nicht sterbt und dabei wohlmöglich noch den ganzen Schlachtzug in Mitleidenschaft zieht.

Selbst bei einer 40-Mann-Gruppe kann es vorkommen, dass Verdammnislord Kazzak nach einer Minute noch immer 15% oder 20% seiner Trefferpunkte hat. In dem Fall gibt es zwei Möglichkeiten:

|cFFDBD533Taktik 1|r
Diese Taktik erfordert mindestens drei Paladine. Wenn Verdammnislord Kazzak kurz vor seinem Wutanfall ist (am Besten so zehn Sekunden vorher), lasst den gesamten Schlachtzug auf Sicherheitsabstand gehen (mindestens 60 Meter). Lediglich der Tank und die drei oder vier Paladine bleiben an ihrer Position. Setzt nun der Wutanfall ein, aktivieren die Paladine ihre Schilde und wirken ununterbrochen Heilungen auf den Main Tank. Sobald der Wutanfall vorbei ist, kann der restliche Schlachtzug wieder anrücken und seine Angriffe fortsetzen.

|cFFDBD533Taktik 2|r
Taktik zwei ist noch simpler. Der gesamte Schlachtzug bleibt an seiner Position und ignoriert den Wutanfall. Diese Taktik erfordert jedoch das jeder Spieler ungefähr 13.000 Trefferpunkte hat bzw. diesen Wert annähernd mit Heiltränken und Gesundheitssteinen erreichen kann. Denn 13.000 ist der geschätzte Schaden, den die Schattenblitzsalven während des Wutanfalls anrichten.

Ist Verdammnislord Kazzak beim zweiten Wutanfall noch immer am Leben, habt ihr etwas falsch gemacht oder euer Schlachtzug ist schlichtweg zu schlecht ausgestattet.

]]

L["tactic Doomwalker"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

Verdammniswandler kann und sollte von einer 40-Mann-Schlachtgruppe bekämpft werden. Theoretisch ist es natürlich auch möglich, ihn mit 15 oder 20 Spielern zu besiegen, aber in dem Fall muss die Ausrüstung bereits so gut sein, dass die erbeuteten Gegenstände keinen Vorteil mehr bringen.

Die Gruppe sollte aus mindestens vier Tanks bestehen. Zwei oder drei weitere sind ebenfalls sehr hilfreich. Als Off-Tanks sind hier Paladine zu empfehlen, da sie mit ihrer Rechtschaffene Verteidigung Verdammniswandler über größere Distanzen umlenken können als Krieger mit Spott. Als Main Tanks hingegen sind Druiden wiederum sehr nützlich. Nahkämpfer sind für diesen Kampf relativ ungeeignet, da sie im Grunde nie aus der Erdbeben Reichweite laufen können und das Übergreifen der Zorn des Blitzschlags Attacke erhöhen. Bei 40 Spielern sollten im Optimalfall 16 Heiler zu gegen sein. Wenn der Schlachtzug sich in acht Gruppen um Verdammniswandler herum verteilt, sollten sich in jeder Gruppe zwei dieser befinden. Einer von ihnen kann sich sodann um den aktuellen Main Tank und der andere um die Gruppe kümmern. Die verbleibenden Plätze können mit Fernkämpfern aufgefüllt werden:

    * 2 Main-Tanks und 3 - 5 Off-Tanks
    * 16 Heiler
    * 17 - 19 Schadensverursacher (4 Nahkämpfer, Rest Fernkämpfer)

|cffff0000Fähigkeiten
---------------|r

Trefferpunkte: ca. 1.540.000
Nahkampfschaden: 5.000 - 6.000 (bei 17.000 Rüstung) (seit Patch 3.0.2 verringert)
Nahkampfschaden in Raserei: 9.000 - 11.000 (bei 17.000 Rüstung) (seit Patch 3.0.2 verringert)

|cFF4DFFFDZorn des Blitzschlags|r (Lightning Wrath)
Trifft einen zufällig ausgewählten Spieler in einer geschätzten Reichweite von 100 Metern mit einem Kettenblitz. Der Zauber richtet bei seinem Ziel zwischen 1.700 und 2.300 Naturschaden an und überträgt sich von dort auf weitere Spieler innerhalb eines 8 Meter Radius. Bei jedem weiteren Spieler erhöht sich der angerichtete Schaden (auf bis zu 15.000). Der Zorn des Blitzschlags kann bis zu zehn Ziele treffen.

|cFF4DFFFDÜberrennen|r (Overrun)
Dieser Buff setzt die Hass-Liste des Verdammniswandlers zurück und lässt ihn dementsprechend zu jedem Spieler rennen - mit 100% Laufgeschwindigkeit - der durch Heilungen, Schadenszaubern etc. Bedrohung erzeugt. Das Überrennen erzeugt bei jedem Ziel jedoch nur ca. 300 - 400 Schaden. Überrennen hat eine Abklingzeit von 45 Sekunden.

|cFF4DFFFDErdbeben|r (Earthquake)
Wirft alle Spieler in einem 100 Meter Radius um und fügt ihnen über acht Sekunden alle zwei Sekunden 2.000 Körperschaden zu. Der angerichtete Schaden wird nicht durch Rüstung reduziert. Die Abklingzeit dieser Fähigkeit beträgt eine Minute.

|cFF4DFFFDRüstung zerschmettern|r (Sunder Armor)
Verdammniswandler wendet diesen Debuff auf sein aktuelles Ziel (Main Tank) an. Der Debuff verringert die Rüstung des Ziels um 10%. Dieser Effekt ist stapelbar.

|cFF4DFFFDMal des Todes|r (Mark of Death)
Sobald ein Spieler stirbt, wird er durch diesen Debuff quasi vom Kampf ausgeschlossen. Denn durch den 15 Minuten anhaltenden Debuff werdet ihr sofort umgebracht, wenn ihr in die 100 Meter weit reichende "Aura des Todes" des Verdammniswandlers zurückkommt.
Bildschirmfoto

|cFF4DFFFDRaserei|r (Enrage)
Sobald Verdammniswandlers Trefferpunkte unter 20% fallen, verfällt er in Raserei. In dieser Form verdoppelt sich sein angerichteter Nahkampfschaden. Erdbeben und Zorn des Blitzschlags sind von der Schadenserhöhung nicht betroffen.

|cffff0000Taktik
--------|r

|cFFDBD533Positionierung|r
Der gesamte Schlachtzug sollte sich bereits vor dem Kampf Halbkreis förmig vor dem Eingang des Schwarzen Tempels aufstellen. Sobald ein Jäger mit Irreführung Verdammniswandler auf den ersten Main Tank gelockt hat, kann die Schlachtgruppe den Kreis schließen und sich weiträumig um Verdammniswandler verteilen. Die Irreführung schlägt fehl, wenn der Tank zu weit entfernt steht. Der Tank muss bereits vor Kampfbeginn hinter den ersten Barrikaden stehen.

Die Aufstellung unterteilt sich in drei Kreise. Im innersten Kreis stehen die beiden Main Tanks und anderen Nahkämpfer (Schurken etc.). Darauf folgt ein zweiter Kreis gebildet aus Heilern und den verbleibenden Tanks. Diese Off-Tanks sollten darauf achten, dass sie gleichmäßig verteilt stehen und so eine möglichst große Fläche abdecken können. Auf dem äußersten Kreis folgen dann die Fernkämpfer. Alle Spieler müssen darauf achten, dass der Abstand zu allen benachbarten Spielern mehr als acht Meter beträgt.

|cFFDBD533Kampfverlauf|r
Der Kampf selbst ist taktisch relativ einfach aufgebaut. Wie schon bei Kurinnaxx aus den Ruinen von Ahn'Qiraj muss zwischen den beiden Tanks ein ständiger Wechsel stattfinden. Je nach Ausrüstungsstand sollte der aktuelle Main Tank nur zwei bis vier Debuffs des Rüstung zerschmettern Debuffs haben. Sind diese erreicht, muss der zweite Tank Verdammniswandler von ihm runter spotten. Sobald der Debuff beim ersten Tank ausgelaufen ist, kann er ihn vom zweiten Tank zurückspotten. Die verbleibenden Tanks haben dafür zu sorgen, im Falle eines Überrennens Verdammniswandler zurück in die Mitte zu einem der Main Tanks zu führen.

Alle Spieler sollten über den gesamten Kampf hinweg mehr als 8.000 Gesundheit haben, um das Erdbeben problemlos überstehen zu können. Sollten sich dennoch Spieler mit weniger Trefferpunkten in der Schlachtgruppe befinden, müssen sie bereits ein paar Sekunden vor Ablauf der einminütigen Abklingzeit des Erdbebens außerhalb der 100 Meter Reichweite laufen. Jeder verletzte Spieler sollte sich nach Ende des acht sekündigen Erdbebens selbstständig verbinden.

Ab 20% verfällt Verdammniswandler in Raserei und richtet somit am Tank fünfstellige Schadenswerte an.
Dadurch kann es schnell passieren, dass der aktuelle Tank verstirbt. In dem Fall sollte einer der Off-Tanks einspringen, Verdammniswandler spotten und ggf. Schildwall oder ähnliche Fähigkeiten einsetzen. Während der Raserei-Phase empfiehlt sich ein Wilder-Kampf-Druide als Tank, da er mit seinem unglaublich hohen Rüstungswert deutlich besser die Schläge in Verbindung mit dem Rüstung zerschmettern Debuff aushält.

Alle Schadensverursacher sollten ihre Spezialfähigkeiten und Schmuckstücke mit Abklingzeiten für diesen Kampfabschnitt aufbewahren, damit Verdammniswandler vor dem letzten Tank stirbt.

Sobald ein Spieler verstirbt scheidet er aus dem Kampf aus. Er sollte, während der Kampf noch läuft, nicht zu seiner Leiche laufen und die Wiederbelebung annehmen. Da er augenblicklich wieder an der Aura des Todes stirbt, so lange der Verdammniswandler noch lebt.

Jäger:
Die Irreführung eines Jägers ist nicht nur für den Kampfbeginn von Vorteil, sondern auch beim minütlichen Überrennen. Sprecht untereinander eine Rotation ab und unterstützt so die Tanks beim Zurückführen des Verdammniswandlers (Irreführung auf den Main Tank und Feuer frei ;)). Begleiter solltet ihr während dieses Kampfes nicht verwenden, da sie ebenfalls den Zorn des Blitzschlags übertragen.

Krieger:
Die beiden als Main Tanks definierten Krieger wechseln sich spätestens beim vierten Rüstung zerschmettern Debuff wie oben beschrieben beim Tanken ab. Die um Verdammniswandler herum verteilten Off-Tanks (Norden, Osten, Süden und Westen) sollten zu den überrannten Spielern laufen und ihn zum Main Tank in der Mitte zurückziehen. Der Main Tank kann Verdammniswandler daraufhin von ihnen runter spotten und der Kampf wie gewohnt fortgeführt werden. Die Off-Tanks brauchen in der übrigen Zeit nicht an Verdammniswandler dran stehen und Hass aufbauen, da er problemlos spottbar ist.

Heiler:
Die Heiler sollten versuchen, den gesamten Schlachtzug während des Kampfes am Trefferpunkte-Maximum zu halten. Schamanen und Priester sollten nach dem Erdbeben ihre Gruppenheilunng (Kettenheilung und Gebet der Heilung) nutzen. Während des Überrennens sollten alle Heilungen eingestellt werden, bis ein Tank Verdammniswandler wieder gebunden hat. Ab 20% muss dauerhaft Überheilung auf den Main Tanks sein, damit die hohen Schadensspitzen kompensiert werden können.

]]


--ra text messages jede zeile durch \n getrennt
L["ra Kazzak"] = " "
L["ra Doomwalker"] = " "

--button bezeichnungen
