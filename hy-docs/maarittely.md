# Määrittelydokumentti
## Mitä algoritmeja ja tietorakenteita toteutat työssäsi
Min-Max-algoritmi alpha-beta-karsinnalla Tammen pelaamisessa.
## Mitä ongelmaa ratkaiset ja miksi valitsit kyseiset algoritmit/tietorakenteet
ks. edellä.

## Mitä syötteitä ohjelma saa ja miten näitä käytetään
Ohjelma saa syötteenä mielivaltaisen pelin tilan sekä tämän jälkeen syötteenä tiedot vastustajan siirroista.
## Tavoitteena olevat aika- ja tilavaativuudet (m.m. O-analyysit)
Tavoitteena on min-max algoritmille tyypillinen vaativuus O(mˆb), jossa m on syvyys ja b on ns. branching-factor, joka tammen tapauksesa on 2.8.


## Lähteet
Wikipedia. Alkuperäislähteet ei käytettävissä.
https://en.wikipedia.org/wiki/Alpha–beta_pruning
https://en.wikipedia.org/wiki/Game_complexity

## Kurssin hallintaan liittyvistä syistä määrittelydokumentissä tulee mainita opinto-ohjelma johon kuulut. Esimerkiksi tietojenkäsittelytieteen kandidaatti (TKT) tai bachelor’s in science (bSc)
Tietojenkäsittelytieteen kandiohjelma.
## Määrittelydokumentissa tulee myös mainita projektin dokumentaatiossa käytetty kieli (todennäköisesti sama kuin määrittelydokumentin kieli). Projektin koodin, kommenttien ja dokumenttien teksti on valitulla kielellä. Tyypillisesti suomi tai englanti. Tämä vaatimus liittyy projektin puolen välin paikkeilla järjestettäviin koodikatselmointeihin. Tavoitteena on että projektien sisäiset kielivalinnat ovat johdonmukaisia.
Suomi.

## Viikkoraportti 1
Hankalinta oli Swiftin konventioiden opettelu

## Viikkoraportti 2
- Mitä olen tehnyt tällä viikolla?
Tällä viikolla on kirjoitettu testejä niin pelin tilalle ja laillisille siirroille sekä varsin yleisluontoisia testejä MinMax algoritmille. Algoritmin testaus on tosin koostunut lähinnä siitä, että testi testaa sitä, että algoritmi ei häviä yli 20% peleistä täysin satunnaisia siirtoja tekevälle pelaajalle.

Ohjelmalla on nyt yksinkertainen ja edelleen kehitettävä mutta toimiva tekstipohjainen käyttöliittymä, jolla voi itse pelata algoritmia vastaan tai seurata sen pelaamista itseään tai esimerkiksi satunnaisia siirtoja tekevää pelaajaa vastaan.

Ohjelmalle on myös tehty graafinen käyttöliittymä, mutta se ei ole kovin miellyttävä käyttää.

Tekstipohjaisen käyttöliittymän saattaa saada toimimaan myös muulla kuin OS X:llä, mutta tätä mahdollisuutta ei ole testattu, eikä välttämättä tullakkaan testaamaan.

Seuraavaksi on tarkoitus kehittää algoritmia siten, että se dynaamisesti muuttaisi tarvittaessa hakusyvyyttä käytettävissä olevien resurssien mukaan. Tai ainakin selvittää tämän mielekkyys. Tarkoitus on myös kirjoittaa vaihtoehtoisia tapoja arvoioida tilan mielekkyyttä ja vertailla niitä. Nyt tilaa arvioidaan yksinkertaisesti vertaamalla nappuloiden määrän suhdetta.

Mielekkäiden testien kirjoittaminen algoritmille on mietityttänyt. Helppoahan on tietenkin kirjoittaa testejä, joissa testataan, että palauttaako algoritmi ylipäätänsä siirron tilanteessa jossa siirtoja voi tehdä, ja että onko siirto laillinen. Jälkimmäinen tosin ei liity itse algoritmiin vaan pikemminkin pelin logiikkaan joka tuottaa laillisia siirtoja tilasta. Luultavasti tyydyn testaamaan algoritmia siten, että se pärjää riittävän hyvin satunnaisesti pelaavaa vastaan.

Testikattavuuden seuranta on toteutettu jo, mutta seuraava vaihe on saada ne codecovin kautta myös Githubiin esille.
