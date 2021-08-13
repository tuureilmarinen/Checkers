# Viikkoraportit
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

Käytetty tuntimäärä: paljon.

# Viikkoraportti 3

Refaktoroitu koodia paljon.
Lisätty swiftlint.
Slather tuottaa ongelmia, vaikka xcode tuottaa testikattavuuden raportoinnin.

# Viikkoraportti 4

Refaktorointia.
Travis toimii. Codecov ym. toimii nyt.

