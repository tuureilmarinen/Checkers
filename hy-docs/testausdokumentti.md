# Testausdokumentti

## Yksikkötestauksen kattavuusraportti.
Yksikkötestauksen kattavuusraportti löytyy [CodeCovista](https://app.codecov.io/gh/tuureilmarinen/CheckersLibrary).

## Mitä on testattu, miten tämä tehtiin?

Keskeisimmät testattavat asiat on esitetty alla.  Muut testit ja yksityiskohtaiset tiedot testeistä luokittain: [löytyy täältä](https://github.com/tuureilmarinen/Checkers/docs/tests/).

### Itse MinMax-Algoritmi:
 - Algoritmin pitäisi voittaa selkeästi satunnaisia siirtoja tekevä pelaaja.
 - Algoritmi palauttaa tilan, joka on yhden siirron päässä annetusta tilasta, jos se on mahdollista.
 - Jos jostain tilasta on mahdollista voittaa riippumatta vastustajan siirroista annetussa hakusyvyydessä, algoritmi voittaa aina pelin.
 - Algoritmi palauttaa siirron järjellisessä ajassa, kun hakusyvyys on 5, 7, 9, 11, 13, tai 15.
   - Järjellinen aika tässä tapauksessa voi 15 siirron kohdalla tarkoittaa useaakin minuttia yhtä siirtoa kohden.

### GameState (i.e. Tammen säännöt)
 - Tietystä pelitilasta palautetaan kaikki sallitut siirrot, eikä yhtään ei sallittua siirtoa.
 - Nappulat muuttuvat saavutettuaan vastustajan päädyn. Vain päädyn saavuttanut nappula muuttuu.
 - Pelaaja ei itse menetä nappuloita oman vuoronsa aikana.
 - Nappuloiden määrä ei kasva pelin aikana.
 - Nappulat pysyvät sallituissa ruuduissa.
 - Nappulat liikkuvat sallittuun suuntaan yhden askeleen vuorossa.
 - Useampi kuin yksi nappula ei liiku vuoron aikana.
 - Vastustajan nappulat ei muutu vuoron aikana, ellei niitä syödä.
 - Syöty nappula poistetaan laudalta.
 - Jos pelaaja voi samalla nappulalla syödä useamman vastustajan nappulan peräkkäin, hänen on tehtävä niin saman vuoron aikana. Hän ei syö samoja nappuloita useaan kertaan.
 
 Käyttöliittymälle ei ole kirjoitettu testejä.

## Miten testit voidaan toistaa?
 `swift test`

Testauskattavuusraportin, koodin ja testien dokumentaation voi generoida seuraavasti:
```
swift doc generate ./CheckersLibrary/Sources --module-name CheckersLibrary --output ./docs/sources
swift doc generate ./CheckersLibrary/Tests --output ./docs/tests
swift doc diagram CheckersLibrary/Sources > CheckersLibrary.gv
dot -T svg CheckersLibrary.gv > ./docs/CheckersLibrary.svg
rm CheckersLibrary.gv

cd CheckersLibrary
swift build
swift test --enable-code-coverage
cd ..
xcrun llvm-cov export -format="lcov" ./CheckersLibrary/.build/debug/CheckersLibraryPackageTests.xctest/Contents/MacOS/CheckersLibraryPackageTests -instr-profile ./CheckersLibrary/.build/debug/codecov/default.profdata > coverage.lcov
genhtml coverage.lcov --output-directory ./docs/coverage/
```
