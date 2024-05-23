                                        ;Aufgabe2a
(def-schema schema-Wesen (WesenID Name Alive Heimat IstIn))
(def-schema schema-Familie (ElternTeil Kind))
(def-schema schema-Bender (BenderID ElementName))
(def-schema schema-Mensch (MenschID Status Geld))
(def-schema schema-Ort (OrtID Adresse Groesse DominierendeNation))
(def-schema schema-Stadt (StadtID Oberhaupt))
(def-schema schema-Gegend (GegendID Biom))
(def-schema schema-GeisterWeltOrt (GeisterWeltOrtId Energiekonzentration))
(def-schema schema-Uebergang (Von Nach))
(def-schema schema-Tier (TierID Rasse))
(def-schema schema-Spirit (SpiritID Power))
(def-schema schema-Element (ElementName))
(def-schema schema-Avatar (BenderID Element1 Element2 ELement3 Element4 Vorgaenger))


(def-relation Wesen schema-Wesen
  ((1 "Aang" "TRUE" 1 1)
   (2 "Katara" "TRUE" 2 2)
   (3 "Zuko" "TRUE" 4 1)
   (4 "Iroh" "TRUE" 4 1)
   (5 "Sokka" "TRUE" 2 2 )
   (6 "Toph" "TRUE" 3 3)
   (7 "Ozai" "TRUE" 4 4)
   (8 "Appa" "TRUE" 1 1)
   (9 "Kaya" "FALSE" 2 999)))


(def-relation Familie schema-Familie
  ((7 3)
   (9 2)))

(def-relation Bender schema-Bender
  ((1 "Luft")
   (2 "Wasser")
   (3 "Feuer")
   (4 "Feuer")
   (6 "Erde")
   (7 "Feuer")
   (8 "Luft")
   (9 "Wasser")))

(def-relation Mensch schema-Mensch
  ((1 "Avatar" 0)
   (2 "Helfer" 500)
   (3 "Feind" 9999)
   (4 "Helfer" 9999)
   (5 "Helfer" 1)
   (6 "Helfer" 7777)
   (7 "Feind" 999999)
   (9 "Tot" 0)))

(def-relation Ort schema-Ort
  ((1 "Luftnation" 200 "Luft")
   (2 "Wassernation" 400 "Wasser")
   (3 "Erdnation" 300 "Erde")
   (4 "Feuernation" 666 "Feuer")))

(def-relation Stadt schema-Stadt
  ((1 1)
   (2 9)
   (3 6)
   (4 7)))

(def-relation Gegend schema-Gegend
  ((1 "Laendlich")
   (2 "Waessrig")
   (3 "Bergig")
   (4 "Feuerbiom?")))

(def-relation GeisterWeltOrt schema-GeisterWeltOrt
  ((1 9999)
   (2 9999)
   (3 15)
   (4 5000)))

(def-relation Uebergang schema-Uebergang
  ((1 2)
   (1 3)
   (2 4)
   (2 3)
   (2 1)
   (3 1)
   (3 4)
   (4 1)
   (3 2)))

(def-relation Tier schema-Tier
  ((8 "Bizon")))

(def-relation Spirit schema-Spirit
  ((8 3636)))

(def-relation Element schema-Element
  (("Feuer")
   ("Wasser")
   ("Erde")
   ("Luft")))

(def-relation Avatar schema-Avatar
  ((1 "Feuer" "Wasser" "Erde" "Luft" 1)))
(as Wesen_name
    (project (Name) Wesen))

(format t "~%Wesen Names: ~a" (rows Wesen_name))



