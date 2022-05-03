## ---------------------------
##
## Script name: CorrelAid-X_Konstanz_Education
##
## Purpose of script: Script to show basic usage of R
##
## Author: Philipp Bosch, Jens Wiederspohn, Jonas Schrade, Niklas Bacher
##
## Date Created: 03-19-2022
##
## Email: konstanz@correlaid.de
##
## ---------------------------



# Die simpelste Version von R - Ein Taschenrechner ------------------------

3 + 6 - 2 # addieren & subtrahieren
4 * 6 # multiplizieren
3 ^ 2 # potenzieren
5 / 3 # dividieren
5 * (10 - 3) # R hält sich an die gängigen Rechenregeln



# Etwas fortgeschrittener - R als Orakel -----------------------------------

5 > 3 # größer
5 < 3 # kleiner
5 <= 3 # kleiner/gleich
5 >= 3 # größer/gleich
5 == 3 # gleich
5 != 3 # ungleich



# Mehr als Zahlen und einfache Abfragen -----------------------------------

32 > 19 & 12 == 6 * 2 # und GLEICHZEITIG
'3' == 3 | 1 == 2 # ODER
'4' == 3
'rot' == 'blau'
'sieben' == 7



# Welche Grundtypen gibt es? ----------------------------------------------

7 # integer
7.2341234 # numeric
'wort' # character
TRUE # boolean



# R hat ein Gedächtnis - Zuweisungen/Assignment Operator -------------------

wort <- 'rot'
wort # aufrufen des Objekts "wort", enthaelt character-string "rot"
# alt + "-" (Windows) oder option + "-" (Mac) shortcut für Zuweisungspfeil
rechnung <- 1 + 3 + 4
rechnung # aufrufen des Objekts "rechnung"



# Vektoren - mehrere Werte in einem Objekt speichern -----------------------

integers <- c(2, 5, 9, 2, 500, 7)
numerics <- c(4.2, 3.0, 8.5)
characters <- c('There', 'is', 'no', 'free', 'lunch!')
logicals <- c(TRUE, TRUE, FALSE, FALSE)

# Beachte: Nur gleiche Datentypen innerhalb eines Vektors!



# Was passiert, wenn wir die Typen mischen? --------------------------------

weird_something <- c('There', 'is', 'no', 'free', 'lunch!', TRUE, TRUE, FALSE, FALSE)

weird_something_2 <- c(2, 5, 9, 2, 500, 7, 'There', 'is', 'no', 'free', 'lunch!', TRUE, TRUE, FALSE, FALSE)



# Operationen mit Vektoren -------------------------------------------------

large_numbers <- integers + numerics # Addition und Recycling!

characters + logicals # Fehlermeldung

more_characters <- c("But", "i", "want", "kostenlosen", "Nachschlag!", "#Seezeitmafia")

characters + more_characters

sentences <- c(characters, more_characters) # Die Logik von 'c()' bleibt gleich!



# Aufspüren von Objekten in Vektoren ---------------------------------------

more_characters[1] # Gibt erstes Element des Vektors

weird_something_2[3] # Gibt drittes Element des Vektors



# One Step further - Listen ------------------------------------------------

# Listen erlauben uns nun das Mischen von Datentypen

my_list <- list("This", "is", "a", "list", 5, 7, TRUE) # mischen von Typen möglich

my_number_list <- list(integers, numerics) # zusammenführen von Vektoren möglich

# Wie finde ich nun Elemente in Listen?

my_number_list[1]
my_number_list[1][3] # geht nicht
my_number_list[[1]]
my_number_list[[1]][3] # geht



# Aufgabe ------------------------------------------------------------------

# Erstelle eine Liste, die die folgenden Elemente enthält:
# Einen Integer-Vektor mit den Zahlen 0 bis 10
# Einen Numeric Vektor mit deinem Alter, deiner Größe (in m) und der Anzahl deiner Persönlichkeiten
# Einen Charakter-Vektor mit den Worten "Correlaid" "ist" "daaaamn" "cool!"

listy_list <- list(c(___:___), ___, c("Correlaid", ___, ___, ___))

# Indiziere (wähle aus) deine Größe und gib sie in cm an

listy_list[___] * ___

# Berechne, wieviel du pro Lebensjahr gewachsen bist

___

# Lass R sagen, dass Correlaid daaaamn cool ist! (Gib den Charakter-Vektor aus)

listy_list[___]



# Dataframes - The powerhouse of R -----------------------------------------

# Listen und Vektoren sind ja ganz nett. Die meisten von euch werden jedoch 
# fast immer einen Datensatz benötigen. Wenn ihr jedoch das Prinzip von Listen
# verstanden habt, könnt ihr das ganz einfach auf Datensätze übertragen.

# Prinzipiell sind Dataframes nämlich nichts anderes wie eine besondere Art einer Liste

# Lasst uns das nachvollziehen indem wir einen Dataframe from scratch aufbauen

var_1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) # ziemlich viel zu tippen, oder?
var_2 <- c(11:20)
var_3 <- c("Phil", "Jens", "Jonas", "Niklas")


df <- data.frame(var_1, var_2, var_3) # warum funktioniert das nicht?

var_3 <- c("Phil", "Jens", "Jonas", "Niklas", "Mensatester",
          "Zoe", "Frie", "Susumu", "Peter", "Schuhmi")

df <- data.frame(var_1, var_2, var_3)


# Der Zugriff auf einzelne Variablen und Werte erfolgt nun analog zu Listen

# erste Spalte (Variable)
df[,1]

# erste Reihe 
df[1,]

# Wert in der Zelle erste Reihe erste Spalte
df[1,1]

# Wert in der Zelle dritte Spalte erste Reihe
df[1,3]


# Zusätzlich lassen sich Variablen in dataframes auch über den '$'-Operator indizieren

df$var_1

# Um sinnvoll mit einem dataframe arbeite zu können, sollten wir etwas sprechendere
# Namen für unsere Variablen verwenden

names(df)

# Wir sehen, die Namen sind in einem Vektor gespeichert. Vektoren kennen wir. Was
# wir kennen, können wir auch verändern!

names(df) <- c("stats_points", "schmiede_beers", "name")

# Kleiner Ausblick auf morgen: Funktionen auf Variablen!
# Wir wollen den Durchschnitt der getrunkenen Beers in der Schmiede wissen

mean(df$schmiede_beers)



# Letzte Aufgabe: Do it yourself! ------------------------------------------

# Nun seid ihr wieder dran! Baut einen Datensatz bestehend aus 4 Variablen. 
# Variable 1: Die Namen von bis zu 10 eurer Freunde
# Variable 2: Wohnort der jeweilige Person (kann auch random sein)
# Variable 3: € welche diese Person letztes Wochenende ausgegeben hat
# Variable 4: Eine boolesche/dummy Variable welche angibt ob diese Person das Berrys mag



# Für morgen noch diese Zeile ausführen! Könnte etwas dauern, da ihr Packages installiert

source(file = "scripts/install_packages.R") # source spielt einfach das komplette Skript ab
