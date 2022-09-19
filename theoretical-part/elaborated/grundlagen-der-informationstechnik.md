# Grundlagen in der Informationstechnik

## Kenntnis des Zeichensatzes ASCII

ASCII steht für: **American Standard Code for Information Interchange**. Es handelt sich um eine 7-Bit Zeichenkodierung.

- 0 - 31 und 127: Steuerzeichen
- 32-126: druckbare Zeichen

Da mit 7-Bits keine Umlaute wie zum Beispiel ä, ö oder ü möglich sind wurde später ein 8tes Bit hinzugefügt.

Viele umfangreichere Zeichenkodierungen (zb. ANSI) bauen auf ASCII auf.

<br>

## Kenntnis der Einheiten Bit, Byte

Das Bit ist im Computerumfeld die kleinste Informationseinheit und kann die Werte 0 oder 1 annehmen. Zur Darstellung mehrerer Zustände und Kodierung von Zahlen oder Buchstaben werden mehrere Bits zu einer Bitfolge wie dem Byte zusammengefasst.

- 1 Byte = 8 Bit

<br>

## Kenntnis der Begriffe Gigabyte, Terabyte, Petabyte, Exabyte

Sind Einheiten für Datenmengen auf Basis des Faktors 1000.

Beispiel: 1 Kilobyte = 1000 Byte

| Exabyte | Petabyte | Terabyte | Gigabyte | Megabyte | Kilobyte | Byte  |
| :-----: | :------: | :------: | :------: | :------: | :------: | :---: |
|    1    |   1000   |   10^6   |   10^9   |  10^12   |  10^15   | 10^18 |
|  0,001  |    1     |   1000   |   10^6   |   10^9   |  10^12   | 10^15 |
|  10^-6  |  0,001   |    1     |   1000   |   10^6   |   10^9   | 10^12 |
|  10^-9  |  10^-6   |  0,001   |    1     |   1000   |   10^6   | 10^9  |
| 10^-12  |  10^-9   |  10^-6   |  0,001   |    1     |   1000   | 10^6  |
| 10^-15  |  10^-12  |  10^-9   |  10^-6   |  0,001   |    1     | 1000  |
| 10^-18  |  10^-15  |  10^-12  |  10^-9   |  10^-6   |  0,001   |   1   |

<br>

## Kenntnis der Begriffe Gibibyte, Tebibyte, Pebibyte, Exbibyte

Sind Einheiten für Datenmengen auf Basis des Faktors 1024. Um sich von den anderen Einheiten mit dem Umrechnungsfaktor 1000 zu unterscheiden wird hier bei den Namen die Vorsilbe (kilo, mega, kilo usw.) mit der Silbe "bi", welche die binäre Bedeutung anzeigt, vermischt.

Der Umrechnungsfaktor sorgte bei den Einheiten lange für Verwirrung, bis die Norm IEC 60027-2 diese Einheiten einführte.

Beispiel: 1 Kilobyte = 1024 Byte

<br>

## Kenntnis der gebräuchlichen Zahlensysteme in der IT

| Name                           | Basis |
| :----------------------------- | :---: |
| Binärsystem                    |   2   |
| Oktalsystem                    |   8   |
| Dekadisches- (Decimal-) System |  10   |
| Hexadezimalsystem              |  16   |

<br>

## Umwandlung zwischen Binär-, Dezimal- und Hexadezimalzahlen

### Binär zu Dezimal

**Beispiel:** $10000110_2$

| Zahlensystem |   -   |   -   |   -   |   -   |   -   |   -   |   -   |   -   |
| :----------- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| Binär        |   1   |   0   |   0   |   0   |   0   |   1   |   1   |   0   |
| Decimal      | $2^7$ | $2^6$ | $2^5$ | $2^4$ | $2^3$ | $2^2$ | $2^1$ | $2^0$ |
| Decimal      |  128  |  64   |  32   |  16   |   8   |   4   |   2   |   1   |

**Lösung:**
$$1•128+0•64+0•32+0•16+0•8+1•4+1•2=134_{10}$$

<br>

### Dezimal zu Binär

**Beispiel:** $9041_{10}$

| Nummer (Division) | Quotient | Rest | Ergebnis |
| :---------------: | :------: | :--: | :------: |
|    $9041 / 2$     |  $4520$  | $1$  |  &uarr;  |
|    $4520 / 2$     |  $2260$  | $0$  |  &uarr;  |
|    $2260 / 2$     |  $1130$  | $0$  |  &uarr;  |
|    $1130 / 2$     |  $565$   | $0$  |  &uarr;  |
|     $565 / 2$     |  $282$   | $1$  |  &uarr;  |
|     $282 / 2$     |  $141$   | $0$  |  &uarr;  |
|     $141 / 2$     |   $70$   | $1$  |  &uarr;  |
|     $70 / 2$      |   $35$   | $0$  |  &uarr;  |
|     $35 / 2$      |   $17$   | $1$  |  &uarr;  |
|     $17 / 2$      |   $8$    | $1$  |  &uarr;  |
|      $8 / 2$      |   $4$    | $0$  |  &uarr;  |
|      $4 / 2$      |   $2$    | $0$  |  &uarr;  |
|      $2 / 2$      |   $1$    | $0$  |  &uarr;  |
|      $1 / 2$      |   $0$    | $1$  |  &uarr;  |

**Lösung:**
$$1+0+0+0+1+1+0+1+0+1+0+0+0+1=10001101010001_{2}$$

<br>

### Hexadezimal zu Dezimal

**Beispiel:** $eb36c7d7_{16}$

| Zahlensystem |   -    |   -    |   -    |   -    |   -    |   -    |   -    |   -    |
| :----------- | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: |
| Hex          |   E    |   B    |   3    |   6    |   C    |   7    |   D    |   7    |
| Decimal      | $16^7$ | $16^6$ | $16^5$ | $16^4$ | $16^3$ | $16^2$ | $16^1$ | $16^0$ |

**Lösung:**
$$E•16^7+B•16^6+3•16^5+6•16^4+C•16^3+7•16^2+D•16^1+7•16^0=\quad?$$

$$A=10 \quad B=11 \quad C=12 \quad D=13 \quad E=14 \quad F=15$$

$$14•16^7+11•16^6+3•16^5+6•16^4+12•16^3+7•16^2+13•16^1+7•16^0=3.946.235.863_{10}$$

<br>

### Dezimal zu Hexadezimal

**Beispiel:** $53866072_{10}$

| Nummer (Division) | Quotient  |   Rest   | Ergebnis |
| :---------------: | :-------: | :------: | :------: |
|  $53866072 / 16$  | $3366629$ |   $8$    |  &uarr;  |
|  $3366629 / 16$   | $210414$  |   $5$    |  &uarr;  |
|   $210414 / 16$   |  $13150$  | $14 = E$ |  &uarr;  |
|   $13150 / 16$    |   $821$   | $14 = E$ |  &uarr;  |
|    $821 / 16$     |   $51$    |   $5$    |  &uarr;  |
|     $51 / 16$     |    $3$    |   $3$    |  &uarr;  |
|     $3 / 16$      |    $0$    |   $3$    |  &uarr;  |

**Lösung:**
$$3+3+5+E+E+5+6=335EE58_{16}$$

<br>

## Kenntnis der Logik-Schaltungen (AND, OR, XOR, NOT) und deren Wahrheitstabellen

Ein Logikgatter, auch nur Gatter, ist eine Anordnung zur Realisierung einer booleschen Funktion, die binäre Eingangssignale zu einem binären Ausgangssignal verarbeitet.

### AND

$Y=A ∧ B$
<br>
$Y=A • B$

![alt text](../../assets/logik-schaltungen/IEC_AND.svg "AND")

|  A  |  B  |  Y  |
| :-: | :-: | :-: |
|  0  |  0  |  0  |
|  0  |  1  |  0  |
|  1  |  0  |  0  |
|  1  |  1  |  1  |

### OR

$Y=A ∨ B$
<br>
$Y=A + B$

![alt text](../../assets/logik-schaltungen/IEC_OR.svg "OR")

|  A  |  B  |  Y  |
| :-: | :-: | :-: |
|  0  |  0  |  0  |
|  0  |  1  |  1  |
|  1  |  0  |  1  |
|  1  |  1  |  1  |

### XOR

$Y=A ⊻ B$
<br>
$Y=A ⊕ B$

![alt text](../../assets/logik-schaltungen/IEC_XOR.svg "XOR")

|  A  |  B  |  Y  |
| :-: | :-: | :-: |
|  0  |  0  |  0  |
|  0  |  1  |  1  |
|  1  |  0  |  1  |
|  1  |  1  |  0  |

### NOT

$Y=Ā$
<br>
$Y=¬A$

![alt text](../../assets/logik-schaltungen/IEC_NOT.svg "NOT")

|  A  |  Y  |
| :-: | :-: |
|  0  |  1  |
|  1  |  0  |
