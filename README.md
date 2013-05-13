# Qurani AIR API

Furqan is an AIR Quran API. It embedds an SQLite database that contains all Holy Quran in both imlai and uhtmanic texts.
For uthmanic text it uses Uhtmanic HAFS official font from King Fahd Glorious Quran Printing Complex.

## Why this API is only for AIR and not for Flex ?

The anwser to this question is detaild in two points :

* The library contains an embedded SQLite databse. SQLite databases are available only for AIR.
* Flex do not handle arabic text direction when it is loaded from an XML file, so the text is inverted.

## Using Qurani AIR API

Simple create an instance of *Quran* class

quran = new Quran();

It contains an embedded official font from King Fahd Glorious Quran Printing Complex
