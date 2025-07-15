# 🫁 Lungen-Segmentierung aus Thorax-Röntgenbild mit MATLAB

Dieses Projekt zeigt, wie man mit MATLAB und einer einfachen Thresholding-Methode die Lungen aus einem Thorax-Röntgenbild segmentiert.

---

## 🌐 Sprache wählen:  
[🇺🇸 Englisch](README.md) | [🇩🇪 Deutsch](README_DE.md) | [🇸🇦 Arabisch](README_AR.md)

---

## 📂 Projektstruktur

LungSegmentationMATLAB/
├── README.md
├── README_DE.md
├── lung_segmentation.m
├── input_images/
│ └── chest_xray.jpg
├── segmented_images/
│ ├── original_gray.png
│ ├── enhanced_contrast.png
│ └── lung_segmented.png
├── Results/
│ └── comparison.png

---

## ⚙️ Schritte im Projekt:

1. Röntgenbild einlesen  
2. In Graustufen konvertieren  
3. Kontrasterhöhung mit adapthisteq  
4. Threshold mit graythresh berechnen  
5. Binärsegmentierung mit imbinarize  
6. Invertierung zum Hervorheben der Lunge  
7. Ergebnisse anzeigen und speichern

---
## 📸 Beispielbilder

### Originalbild in Graustufen
![Graustufenbild](segmented_images/original_gray.png)

### Kontrastverstärktes Bild
![Kontrasterhöhung](segmented_images/enhanced_contrast.png)

### Segmentierte Lunge
![Segmentierung](segmented_images/lung_segmented.png)

### Vergleich (Vorher-Nachher)
![Vergleich](Results/comparison.png)


## 🧠 Medizinischer Nutzen:

Dieses Projekt hilft Ärzten, die Lunge klarer zu sehen:
- Identifikation von Entzündungen
- Vorverarbeitung für KI-Modelle
- Analyse von Pneumonie, COVID-19, Tumoren

---

## 💡 Weitere Verbesserungen möglich:

- Verwendung von activecontour für präzisere Segmentierung
- Direkte Arbeit mit DICOM-Bildern
- Integration mit einem CNN-Modell
