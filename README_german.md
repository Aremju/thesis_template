# Thesis Template für LaTeX

Dieses Repository enthält eine LaTeX-Vorlage für das Schreiben einer Bachelor- oder Masterarbeit. Sie ist so gestaltet, dass sie gängigen Formatierungsanforderungen entspricht und eine saubere, organisierte Struktur für Ihre Arbeit bietet.

## Erste Schritte

### Voraussetzungen

Bevor Sie diese Vorlage verwenden, stellen Sie sicher, dass Sie Folgendes auf Ihrem System installiert haben:

1. **LaTeX-Distribution**: 
   - Für Windows: [MiKTeX](https://miktex.org/)
   - Für macOS: [MacTeX](https://www.tug.org/mactex/)
   - Für Linux: Installieren Sie TeX Live über Ihren Paketmanager.

2. **Editor**: Sie können jeden Texteditor verwenden, aber es wird empfohlen, eine integrierte Entwicklungsumgebung (IDE) für LaTeX zu nutzen, wie:
   - [TeXShop](http://pages.uoregon.edu/koch/texshop/)
   - [Overleaf](https://www.overleaf.com/)
   - [TeXworks](https://www.tug.org/texworks/)

### Struktur der Vorlage

Die Hauptkomponenten der Vorlage sind:

- **main.tex**: Die Hauptdatei, in der Sie Ihre Thesis kompilieren können.
- **src/**: Ein Verzeichnis, das verschiedene Abschnitte Ihrer Thesis enthält, wie Einleitung, Methoden, Ergebnisse und Fazit.
- **images/**: Ein Verzeichnis für Bilder oder Logos, die Sie in Ihrer Thesis einfügen möchten.
- **references.bib**: Eine Bibliografie-Datei zur Verwaltung Ihrer Referenzen.

### Schritte zur Verwendung der Vorlage

1. **Repository klonen**: 
   ```bash
   git clone <repository-url>
   cd <repository-name>
   
2. **Titelblatt aktualisieren**:
- Öffnen Sie main.tex und bearbeiten Sie den Titel, den Autorennamen und andere Details auf dem Titelblatt.

3. **Abschnitte modifizieren**:
- Bearbeiten Sie die Dateien im Verzeichnis src/, um Ihre Inhalte einzufügen. Jede Datei stellt einen Abschnitt Ihrer Thesis dar.
- Stellen Sie sicher, dass Sie die gleichen Dateinamen (z. B. 1_introduction.tex, 2_basics.tex usw.) beibehalten, damit die Kompilierung korrekt funktioniert.

4. **Bilder hinzufügen**:
- Legen Sie Ihre Bilder im Verzeichnis images/ ab und aktualisieren Sie die Pfade in main.tex nach Bedarf.

5. **Zitationen und Referenzen**:
- Verwenden Sie die Datei references.bib zur Verwaltung Ihrer Bibliografie. Sie können Zitationen in Ihrem Text mit dem Befehl \cite{} hinzufügen.

6. **Dokument kompilieren**:
- Verwenden Sie Ihren LaTeX-Editor, um main.tex zu kompilieren. Dies erzeugt ein PDF Ihrer Thesis.

7. **Überprüfen Sie die Ausgabe**:
- Öffnen Sie das erzeugte PDF, um sicherzustellen, dass alles korrekt formatiert ist.

### Anpassungen
- **Kopf- und Fußzeile**: Die Vorlage verwendet das Paket fancyhdr zur Anpassung von Kopf- und Fußzeilen.
**Schriftarten und Abstände**: Die Vorlage ist so konfiguriert, dass sie die Schriftart Arial und 1,5-zeiligen Abstand verwendet.
- Kapitel- und Abschnittsformatierung: Ändern Sie die titleformat-Befehle im Präambel, um die Formatierung von Kapiteln und Abschnitten anzupassen.

## Fazit
Diese Vorlage bietet eine solide Grundlage für Ihre Thesis. Fühlen Sie sich frei, die Stile und Formate nach Ihren Bedürfnissen anzupassen. Viel Erfolg beim Schreiben Ihrer Thesis!
