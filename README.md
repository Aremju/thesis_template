# Template in LaTeX

Dies ist ein LaTeX-Template, welches für Prüfungen, verschiedenste Ausarbeitungen, wissenschaftliche Arbeiten (Bachelorarbeit, Masterarbeit, Paper, etc.) verwendet werden kann. Es enthält verschiedene Kapitel, Beispiele, Anhänge sowie notwendige Konfigurations- und Build-Dateien.

## Struktur und Commit-Konventionen
Dieses Repository verwendet commitlint, um Commit-Nachrichten-Konventionen durchzusetzen. Die Konfiguration ist in der Datei `commitlintrc.json` definiert, und kann über IntelliJ genutzt werden.

### Commit-Nachricht-Format
Die Commit-Nachricht sollte folgendem Format entsprechen:

```
<type>(<scope>): <subject>
```

#### Mögliche Werte für `<type>`:
- **feat**: Hinzufügen eines neuen Features (Kapitel, Sektionen, Anhänge)
- **fix**: Beheben eines Bugs (z. B. LaTeX-Compiling-Probleme)
- **docs**: Aktualisierung der Dokumentation (Referenzen, Metadaten)
- **style**: Formatierung (z. B. Whitespaces, Layout-Korrekturen)
- **refactor**: Verbesserung der Lesbarkeit des LaTeX-Codes
- **build**: Änderungen am Build-Prozess (z. B. Wechsel von BibTeX zu Biber)
- **chore**: Sonstige Aufgaben
- **comment**: Kommentare, die von Prüfern hinterlassen wurden

#### Mögliche Werte für `<scope>`:
- **introduction**: Einleitung
- **background**: Grundlagenkapitel
- **concept**: Softwarekonzept
- **implementation**: Implementierungskapitel
- **evaluation**: Evaluationskapitel
- **conclusion**: Fazit und Ausblick
- **bibliography**: Literaturverzeichnis
- **figures**: Abbildungen
- **formatting**: Formatierung
- **appendix**: Anhang
- **vc**: Versionskontrolle
- **infra**: Infrastruktur (GitHub-Actions)

#### Weitere Regeln:
- `<type>` und `<scope>` müssen klein geschrieben werden.
- `<subject>` sollte in einfacher Gegenwartsform geschrieben sein und darf keine Großschreibung (außer Eigennamen) enthalten.
- Die maximale Länge der Überschrift beträgt 72 Zeichen.
- All das könnt ihr nach eurem Ermessen konfigurieren.

### Beispiel für eine Commit-Nachricht:
```
feat(introduction): add motivation section
```

## Einrichtung
### Installation von LaTeX

#### Ubuntu
1. Öffne ein Terminal.
2. Installiere `texlive-full` mit folgendem Befehl:
   ```shell
   sudo apt update && sudo apt install texlive-full
   ```

#### Windows
1. Lade den [TeX Live Installer](https://www.tug.org/texlive/windows.html) herunter.
2. Folge den Installationsanweisungen, um `texlive-full` zu installieren.

### IntelliJ IDE und Build-Skript
Das Projekt kann mit dem Skript `compile.sh` gebaut werden. Es generiert das vollständige PDF-Dokument.

#### Verwendung in IntelliJ IDE:
1. Öffne die IntelliJ IDE.
2. Konfiguriere eine Run/Debug-Konfiguration:
    - Script: `compile.sh`
    - Arbeitsverzeichnis: Das Root-Verzeichnis des Projekts
3. Führe das Skript aus, um das PDF zu generieren.

```shell
/bin/bash compile.sh
```

## Kommentare hinzufügen
Prüfer können Kommentare im LaTeX-Dokument hinzufügen. Diese Kommentare beginnen mit `%` und sind mit `TODO:` gekennzeichnet. Die Kommentare werden in der IDE hervorgehoben, sodass sie leicht auffindbar sind.

#### Beispiel:
```latex
% TODO: Ergänzen Sie hier weitere Details zur Motivation
```

### Commit-Nachrichten für Kommentare
Bei der Einreichung von Kommentaren muss die Commit-Nachricht folgendem Format entsprechen:

```
comment(<chapter>): <commit-message starting with verb in simple present>
```

#### Beispiel:
```
comment(introduction): suggest adding motivation details
```

---
