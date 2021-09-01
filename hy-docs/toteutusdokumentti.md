# Toteutusdokumentti
## Ohjelman yleisrakenne
 Ohjelman keskeinen toiminnallisuus on toteutettu CheckersLibrary-nimisessä Swift kirjastossa, jota käyttämään on luotu esimerkinomainen käyttöliittymä/debuggaustyökalu CheckersLibraryDebugger.
 CheckersAppCLI ei käytä CheckersLibrary:n uusinta versiota.
 CheckersLibraryDebuggerin pitäisi toimia OS X:n versioilla 11.3 ja uudemmilla niin Intel kuin ARM-pohjaisilla laitteilla.
 
 Yksityiskohtainen dokumentaatio metodien toiminnasta löytyy [wikistä](https://github.com/tuureilmarinen/CheckersLibrary/wiki).
 
 Keskeisimmät rakenteet ovat:
 
 -  [GameState](https://github.com/tuureilmarinen/CheckersLibrary/wiki/GameState), joka vastaa yhtä pelin tilannetta, eli nappuloiden sijaintia laudalla kun tietyllä pelaajalla on vuoro.
    - muuttuja `board` sisältää tiedon nappuloiden sijainneista laudalla. Tyyppi:  `EightByEightBoard`, joka vastaavasti sisältää muuttujat `blackMen`, `blackKings`, `whiteMen`, ja `whiteKings`. Kaikki tyypiltään `UInt64`.
    - [children](https://github.com/tuureilmarinen/CheckersLibrary/wiki/GameState#children) sisältää kaikki lailliset siirrot tietystä tilasta.
       - Siirrettävävissä olevat nappulat tunnistetaan vakioajassa sopivilla bittioperaatioilla, jonka jälkeen uudet tilat luodaan tämän perusteella ajassa O(n), jossa n on tiettyyn suuntaan siirrettävien nappuloiden määrä.
       - Syönnit löydetään ajassa O(n*m), jossa n on nappuloiden määrä jotka kykenevät syömään vastustajan nappulan, ja m keskimääräinen kerralla syötävien nappuloiden määrä. Keskimäärin n ja m ovat niin pieniä, ts. 1, ettei aikavaativuudella ole kuin teoreettista merkitystä. Toimii keskimäärin vakioajassa.
 - [CheckersMinMax](https://github.com/tuureilmarinen/CheckersLibrary/wiki/CheckersMinMax) vastaa Min-Max alpha-beta -algoritmin toteutuksesta.
    - `provideMove(_ state: GameState) -> GameState?` palauttaa tietystä tilasta tehtävän siirron, jos se on mahdollista. Siirto päätetään MinMax algoritmilla alfa-beta karsinnalla. Jos varmaa voittoa ei löydy hakusyvyydestä, valinta tehdään heuristiikkafunktion perusteella.
    - Löydetyt siirrot tallennetaan välimuistiin, jota käyetään laskettaessa seuraavaa siirtoa. Mahdolliset siirrot käydään läpi heuristiikan ilmoittamassa parhausjärjestyksessä, jotta ns. alpha-beta-karsinta tapahtuisi mahdollisimman aikaisessa vaiheessa.

## Parannettavaa
Koska siirrot käydään läpi parhausjärjestyksessä, olisi heuristiikan kehittäminen mielekästä. Toinen vaihtoehto olisi järjestää aluksi kaikkia tasan n-siirron päässä olevat tilat heuristiikalla ja suoritta haku min-maxilla parhausjärjestyksessä. Ks. lisää [1].

Lähteet:
[1] Richard E. Korf and David Maxwell Chickering, Best-First Minimax Search: Othello Results (1994)
 <https://www.aaai.org/Papers/AAAI/1994/AAAI94-210.pdf>
    
