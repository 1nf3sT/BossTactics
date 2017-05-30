local L = LibStub("AceLocale-3.0"):NewLocale("BT_Maggi", "deDE")
if not L then return end

--Umlaute: ö:\195\182 ü:\195\188 ä:\195\164 Ö:\195\150 Ü:\195\156 Ä: \195\132

-- infos
L["Module resetted"] = "Modul zur\195\188ckgesetzt" --diese zeile nicht verändern!

L["info"] = "|cff91069ETactics by|r rpguides\n|cff91069EImages by|r Vonswan, rpguides\n|cff91069EModule by|r Sorontur\n\n|cffC0C0C0[http://www.kdh-wow.de]\n[http://www.rpguides.de]|r"

--füge hier die taktiktexte lokalisiert ein:

L["tactic Maggi"] =  [[

|cffff0000Gruppenzusammenstellung
----------------------------------|r

Da der Kampf bereits zu Beginn fünf Kanalisierer umfasst, muss die Schlachtgruppe ebenfalls über fünf Tanks (Krieger, Druiden, Paladine) verfügen. Zwei bis drei dieser sollten durch Karazhan und Gruuls Unterschlupf bereits gut ausgestattet sein. Im Anschluss an die Tanks sind Hexenmeister der zweitwichtigste Faktor des Kampfes. Fünf Hexenmeister sind ideal für den Kampf. Er ist auch mit zweien zu bewältigen, aber für die ersten Versuche sollten es mindestens drei sein.

Bei fünf Tanks darf die Heilung natürlich nicht fehlen. Acht bis zehn Heiler der verschiedenen Klassen sind zu empfehlen. Heiler mit Furcht Effekten wie Priester haben es während der ersten Phase vermutlich etwas leichter.

Alle möglichen Schadensverursacher sind in diesem Kampf nützlich. Es ist jedoch anzuraten möglichst Charakterklassen zu verwenden, die Zauber unterbrechen können. Aus diesem Grund sind Schurken und Magier für diesen Kampf höher zu bewerten als Jäger (ihr Schuss ist in diesem Kampf wirkungslos).

    * 5 Tanks (mindestens 3 Defensiv-Krieger oder gute Wilder-Kampf-Druiden)
    * 7 - 8 Heiler
    * 13 - 14 Schadensverursacher (mindestens 2 Hexenmeister und 2 Schurken)


|cffff0000Fähigkeiten
---------------|r

Trefferpunkte: 4.800.000
Nahkampfschaden: 6.000 - 6.500 Körperschaden (bei einem Krieger mit 14.000 Rüstung); 12.500 Schmetternd

Zwei Minuten nach Kampfbeginn verschwindet der Schattenkäfig um Magtheridon und er wird aktiv.

|cff5929C7Spalten|r:
8.000 - 11.000 Körperschaden. Hat eine Abklingzeit von zehn Sekunden.

|cff5929C7Beben|r:
Der Boden beginnt zu beben und schleudert Spieler fünf Sekunden lang zurück. Betroffene Spieler werden pro Sekunde um jeweils ca. zwei Meter zurückgeworfen. Dieser Rückstoß setzt zum ersten Mal 40 Sekunden nach Magtheridons Freilassung ein und anschließend ca. alle 50 - 60 Sekunden.

|cff5929C7Druckwelle|r:
Trifft jeden Spieler in der Kammer über einen Zeitraum von zehn Sekunden alle zwei Sekunden für 2188-2812 Schaden. Magtheridon versucht diesen Angriff ungefähr alle 60 Sekunden zu wirken. Die Druckwelle kann unterbrochen werden wenn alle Manticron Würfel gleichzeitig aktiv sind.

|cff5929C7Lohe|r:
Magtheridon verschießt zwischendurch Feuerbälle auf zufällige Ziele innerhalb der Kammer. Am Einschlagsort entsteht ein Flammenmeer, das getroffenen Spielern umherirren lässt und bei Spielern in ihrer Umgebung 300 Feuerschaden anrichtet.

|cff5929C7Einsturz|r:
Sobald Magtheridons Trefferpunkte auf 30% absinken beginnt die Kammer einzustürzen. Dieser erste Angriff verursacht bei jedem Spieler 5.000 - 7.000 Körperschaden.

|cff5929C7Trümmer|r:
Dieser Angriff entsteht erst nach dem Einsturz. Ähnlich dem Höhleneinsturz in Gruuls Unterschlupf fallen Felsbrocken von der Decke und verursachen fünf Sekunden später an diesem Ort ca. 10.000 Schadenspunkte.

|cFF4DFFFDKanalisierer des Höllenfeuers|r

Über den runden Raum verteilt stehen fünf Kanalisierer des Höllenfeuers an je einem Manticron Würfel und sorgen dafür, dass Magtheridon verbannt bleibt. Sobald einer der Kanalisierer angegriffen wird, werden alle fünf Kanalisierer (im Nordosten, Südosten, Süden, Südwesten und Nordwesten) aktiv. Unabhängig davon, ob einer oder mehrere Kanalisierer stirbt, bricht Magtheridon nach zwei Minuten des ersten Angriffs frei.
Kanalisierer des Höllenfeuers

Nahkampfschaden: 2.100 - 2.400 Körperschaden (bei einem Krieger mit 14.000 Rüstung)

|cff5929C7Dunkle Besserung|r:
Ein mächtiger Heilzauber, der einen Kanalisierer des Höllenfeuers in einem 30 Meter Radius für 69375 - 72943 Trefferpunkte heilt. Kanalisierer wirken nur Dunkle Besserung auf sich oder andere Kanalisierer wenn sie weniger als 50% ihrer Trefferpunkte besitzen.

|cff5929C7Schattenblitzsalve|r:
Eine Salve aus Schattenblitzen, die in einem Radius von 30 Metern bei jedem Spieler 1.600 - 3.200 Schattenschaden verursachen.

|cff5929C7Brennender Schlund|r:
Jeder Kanalisierer des Höllenfeuers kann bis zu zwei Brennende Schlunde beschwören. Diese Elementare spawnen an der Position eines zufälligen Spielers. Beim Spawnen verursachen sie 2.625 - 3.375 Feuerschaden. Im Nahkampf treffen sie Krieger für ca. 2.000 - 2.800 Körperschaden (und Stoffträger für bis zu 5.400 Non-Kritisch). Sie besitzen darüber hinaus einen Feuerschlag, welcher 1.800 - 2.100 Feuerschaden anrichtet. Jeder Brennende Schlund kann verbannt, mit Furcht belegt, in einer Frostnova festgehalten und in einer Eiskältefalle eingeschlossen werden. Eine Minute nach ihrer Entstehung despawnen sie automatisch.

|cffff0000Taktik
--------|r

Bevor ein Angriff auf einen der Kanalisierer gestartet wird, müssen alle Höllenfeuerwärter vor der inneren Kammer tot sein. Eventuell lebende Höllenfeuerwärter werden in den Kampf eingreifen und höchstwahrscheinlich zum Tod des gesamten Schlachtzuges führen.

|cFFDBD533Positionierung|r
Die eigentliche Schlacht beginnt sobald einer der fünf Kanalisierer des Höllenfeuers angegriffen wird. Somit haben alle Spieler die Gelegenheit sich zuvor in Position zu begeben. An jedem Kanalisierer muss zu Beginn des Kampfes ein Tank stehen und augenblicklich dessen Hass auf sich lenken. Da mit jedem toten Kanalisierer der angerichtete Schaden und die Zaubergeschwindigkeit der anderen um 30% steigt, müssen die Tanks je nach Ausrüstungsstand und Skillung entsprechend gut verteilt werden. Der beste Tank sollte am letzten Kanalisierer stehen. Der zweitbeste Tank am ersten Kanalisierer. Das ist darin begründet, dass der Tank des ersten Kanalisierers zum einen sehr schnell Hass aufbauen muss, damit die Schadensverursacher sofort angreifen können und er außerdem Magtheridon übernehmen muss, sobald dieser frei kommt. Bei dem Tank des zweiten Kanalisierers kann es sich um den schlechtesten des Schlachtzuges handeln.

Jedem Tank muss zu Kampfbeginn ein Heiler zugewiesen werden. Die verbleibenden können in den ersten Sekunden/Minuten durch Schattenblitzsalven angerichteten Schaden an der Gruppe ausgleichen. Sobald zwei Kanalisierer tot sind, sollten die verbleibenden drei Kanalisierer-Tanks jeweils zwei Heiler bekommen. Kommt Magtheridon selbst nach zwei Minuten frei, so benötigt sein Tank ebenfalls zwei bis drei Heiler.
Während sich die Tanks an den Kanalisierern verteilen und die Schadensverursacher vom Einem zum Anderen wandern, halten sich alle Heiler und auch die Hexenmeister innerhalb der ersten 1:50 Minuten in der Mitte des Raumes unter Magtheridon auf. Auf diese Weise kommen die beschworenen Brennenden Schlunde immer ins Zentrum gelaufen und können dort sofort von den Hexenmeistern erfasst werden.

Nach drei Minuten werden fünf Spieler benötigt, die durch einen gleichzeitigen Klick auf die Manticron Würfel die Druckwelle Magtheridons abbrechen. Ca. eine Minute später werden fünf andere Spieler gebraucht, da die Benutzung der Würfel einen zwei Minütigen Debuff mit sich bringt. Hierfür sollten möglichst Spieler verwendet werden, die zu dem Zeitpunkt einen relativ geringen Nutzen für die Gruppe haben, als auch über viele Trefferpunkte verfügen. Das können z.B. die freien Tanks der früheren Kanalisierer sein.

|cff00ff00Phase 1|r
Das Ziel dieser Phase liegt ganz klar darin möglichst viele Kanalisierer innerhalb der zwei Minuten auszuschalten und somit zum Einen den Gesamtschaden auf die Gruppe zu reduzieren und zum Anderen die Tanks und Heiler wieder freizustellen.

Aus diesem Grund muss der Schaden auf den ersten Kanalisierer bereits eine Sekunde nach Kampfbeginn einsetzen. Daher sollte ein Jäger, Irreführung auf den ersten Tank setzen, eine gezielten Schuss ansetzen und währenddessen den Countdown zum Kampfbeginn herunterzählen.

Beginnt den Kampf mit dem Kanalisierer im Süden und arbeitet euch am besten im oder gegen den Uhrzeigersinn vor. Jeder Tank muss selbstständig versuchen die Schattenblitzsalven zu unterbrechen. Wenn es sich bei ihm um einen Druiden handelt, sollte ihm am Besten ein Schurke zur Seite gestellt werden.

Beim aktuellen Ziel des Schlachtzuges sollte das Unterbrechen der Schattenblitzsalven und Dunklen Besserung kein Problem darstellen. Krieger, Magier und Schurken sollten abwechselnd in der Lage sein die Angriffe zu unterbinden. Da die Zauber nur eine einsekündige Zauberzeit haben, muss ein Fluch der Sprachen oder Gedankenbenebendes Gift auf ihnen gehalten werden.

Das zweite Problem, neben den unzähligen Schattenblitzen, sind die Brennenden Schlunde. Der jeweils zu erst spawnende Brennende Schlund sollte von einem Hexer gebannt werden. Als zweite Maßnahme kann je ein Hexenmeister einen Brennenden Schlund unter Furcht halten, bis er nach einer Minute automatisch verschwindet. Damit die Hexenmeister nicht ständig erst zu den Brennenden Schlunden hinlaufen müssen, sollten sich die Heiler, wie oben beschrieben, in der Mitte unter Magtheridon aufstellen. Auf diese Weise laufen die Schlunde sofort (wegen der Heilungen) zur Mitte, wo die Hexenmeister sie in Empfang nehmen. Stehen nicht genügend Hexer zur Verfügung, müssen Jäger versuchen die Brennenden Schlunde mit Eiskältefallen von der Gruppe fernzuhalten. Die Biester können außerdem auch von Priestern mit einem Psychischen Schrei vertrieben werden. Dieses sollte aber nur als Notlösung genutzt werden.

Innerhalb der ersten zwei Minuten müssen mindestens zwei Kanalisierer sterben, besser noch drei. oder vier D.h. nach ca. 40 Sekunden muss der erste Kanalisierer des Höllenfeuers tot am Boden liegen. Jeder überlebende Kanalisierer wird in der zweiten Phase zu einem größeren Problem, da dort eventuelle Heilungen dieser durch das Beben nur schwer unterbrochen werden können.

Zehn Sekunden vor Beginn der zweiten Phase müssen die Heiler und alle anderen Spieler sich von Magtheridon entfernen. Es darf keiner mehr unter ihm oder in der Schneise stehen, welcher der Krieger Magtheridon entlang ziehen wird.

|cff00ff00Phase 2|r
Zwei Minuten nach Kampfbeginn verschwindet der Schattenkäfig um Magtheridon. Einer der freistehenden Tank muss diesen umgehend an sich binden und an eine freie Stelle der Kammer ziehen. Am Besten im südlichen Teil des Raumes und zwar so, dass der Tank mit dem Rücken zur Wand steht.

Nach 2:40 Minuten vollführt Magtheridon den ersten Rückstoß (Beben). Das ist ein sehr kritischer Moment im Kampfverlauf, da alle Spieler in der Kammer für fünf Sekunden beim Wirken von Zaubern unterbrochen werden. Tanks bekommen somit kurzzeitig keine Heilung und die Schurken werden außerhalb der Tritt-Reichweite geschleudert, womit nur noch die Magier zum Zauberunterbrechen (Gegenzauber) übrig bleiben. Heiler müssen in diesem Moment auf Spontanzauber umsteigen. Schamanen können kurz auf Schnelligkeit der Natur zurückgreifen und Priester sollten ihre Ziele Schilden.

In dieser Phase sollten nun außerdem bereits drei Kanalisierer tot sein. Was bedeutet, dass die verbleibenden sowohl einen 90%ig erhöhten Schaden als auch eine verringerte Zauberzeit haben. Somit wird es noch wichtiger ununterbrochen Gift und Fluch auf den Kanalisierern zu halten. Es sollte am Besten beides gleichzeitig auf ihnen lasten.

|cFFDBD533Druckwelle|r
Eine Minute nachdem Magtheridon aus seinem Schattenkäfig ausgebrochen ist (also drei Minuten nach Kampfbeginn) beginnt er damit seine erste Druckwelle zu kanalisieren. Der dadurch angerichtete Schaden ist dermaßen hoch, dass er nicht von den Heilern der Gruppe kompensiert werden kann. Somit muss die Druckwelle unterbunden werden!

Dieses wird dadurch realisiert, dass alle fünf Manticron Würfel (auf den Plattformen der Kanalisierer) gleichzeitig aktiviert sind. Durch einen Klick auf einen der Würfel wird ein Strahl ausgelöst, der Magtheridon trifft. Sind alle fünf Strahlen aktiv, ist Magtheridon wieder in seinem Schattenkäfig gefangen und nimmt 300% des normalen Schadens von Zaubern und anderen Angriffen. Bedauerlicherweise erleidet der Bediener des Würfels jedoch pro Sekunde 800 Schaden. Daher sollten alle Spieler möglichst gleichzeitig die Würfel/Strahlen aktivieren und nicht länger als nötig daran stehen bleiben.

Die Bedienung eines Würfels hinterlässt (wie die Strahlen im Kampf gegen Nethergroll) einen 90 Sekündigen Debuff, der es dem Spieler unmöglich macht, einen Würfel zu benutzen. Da Magtheridon seine Druckwelle jedoch alle 60 Sekunden versucht zu wirken, werden hier pro Würfel zwei Spieler benötigt. Sobald der zweite Spieler den Würfel bedient hat, sollte der Debuff des ersten abgeklungen sein, um so die dritte Druckwelle zu unterbrechen. Diese Rotation muss bis zu Magtheridons Tod aufrechterhalten werden (in Phase 2 und 3). Für die Aufgabe sollten möglichst Spieler abgestellt werden, die keine Zauber unterbrechen oder Heilungen wirken müssen. So ein Bediener kann eine Menge Schaden bekommen/verursachen. Ideal sind daher Tanks oder Hexenmeister. Auf diese Weise kann die Gruppe den 300%-Schadens-Debuff auf Magtheridon ausnutzen, um ihn schneller zu töten. Der Schaden ist es aber nicht wert einen Spieler sterben zu lassen.

Beispielaufstellung Gruppe 1:

    * Offensiv-Krieger (ehemals Tank 2)
    * Wilder-Kampf-Druide (ehemals Tank 3)
    * Jäger
    * Magier
    * Magier

Gruppe 2:

    * Hexenmeister
    * Hexenmeister
    * Hexenmeister
    * Wilder-Kampf-Druide (ehemals Tank 4)
    * Defensiv-Krieger (ehemals Tank 5)

Es ist für diese Aufgabe besonders wichtig, dass der Bediener den Würfel nur einmal anklickt! Außerdem sollten sich die eingeteilten Spieler erst zehn Sekunden vor Druckwellen-Beginn an die Würfelposition begeben und die Plattform ansonsten Spieler-Frei bleiben. So wird die Wahrscheinlichkeit minimiert, dass die Lohe eines von Magtheridons Feuerbällen dort brennt. Ferner müssen die Spieler, die zum Drücken der Würfel eingeteilt sind, den Zauberbalken des Gegners im Optionsmenü aktiviert haben. Magtheridon kanaliesiert die Druckwelle einige Sekunden bevor sie explodiert und jeder Spieler sollte genau in dem Moment drücken, in dem das Kanalisieren startet. Die Ansagen von Modulen wie BigWigs oder Deadly Boss Mods sind hier leider gelegentlich ein paar Sekunden falsch. Wenn euch die Fähigkeit-Wirken-Anzeige der Standard-UI nicht reichen, könnt ihr euch Mods wie Antagonist installieren.

|cff00ff00Phase 3|r
Mit Erreichen der 30% Marke von Magtheridons Trefferpunkten stürzen die Wände der Kammer ein und verursachen bei jedem Spieler des Schlachtzuges Schaden. Daraufhin muss der Main Tank umgehend geheilt werden. Alle anderen Spieler sollten möglichst auf Gesundheitssteine, Heiltränke und/oder Verbände zurückgreifen.

Auf das richtige Timing ist hier besonders zu achten, denn erreicht ihr die 30% Marke kurz vor der nächsten Druckwelle kann es das Ende des Kampfes bedeuten. Stellt also bei 32% kurzzeitig den Schaden ein und wartet das nächste Beben oder die nächste Druckwelle ab, wenn sie kurz bevor steht.

Im restlichen Verlauf des Kampfes fallen außerdem Steine von der Decke herab. Diese verursachen bei getroffenen Spielern großen Schaden, der schwer zu heilen ist. Glücklicherweise kündigt sich dieses durch einen optischen Effekt (wie bei Gruul) an und kann somit umgangen werden. Problematisch wird es nur, wenn der Steinschlag eine der Würfelplattformen trifft. Die Manticron Würfel können aber von allen Seiten angeklickt werden. Es sollte also möglich sein, weiterhin jeden Würfel zu aktivieren.
]]


--hier die Texte für den Trash

L["trash Maggi"] = [[

Die Höllenfeuerwärter sind immer in Dreiergruppen unterwegs. Ihr müsst alle töten bevor ihr Magtheridon machen könnt, da die übrigen sonst in den Kampf eingreifen und den Schlachtzug schnell auslöschen.
Jeder Wärter wird von einem Tank gebunden. Am bestehen steht der Schlachtzug oberhalb einer Kante und ein Tank zieht den ersten Wärter zu dem Schlachtzug und dort wird er vernichtet. Die anderen beiden Tanks halten zusammen mit ein paar Heilern und Schurken, die versuchen die Zauber zu unterbrechen, die Wärter unterhalb. Ist ein Wärter tot, wird der nächste zum Schlachtzug gebracht. 

]]

--ra text messages jede zeile durch \n getrennt
L["ra Maggi"] = "Denkt daran nur einmal auf den Würfel zu klicken und klickt wenn dies angesagt wird.\nDie Heiler müssen aufpassen, dass der Tank immer genügent HOTs hat wenn sie zurückgeschleudert werden.\nBenutzt Gesundheitssteine oder Heiltränke nach dem Höhleneinsturz."

--button bezeichnungen