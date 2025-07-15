## 🧠 Durchgeführte Schritte (Deutsch + Englisch + MATLAB)

1. **Laden des Röntgenbildes**  
   *Reading the chest X-ray image*
   ```matlab
   img = imread('chest_xray.jpg');
2.Umwandlung in Graustufen (falls farbig)
Convert image to grayscale if it's colored
gray = rgb2gray(img);
3.Kontrastverbesserung mit lokaler Histogramm-Anpassung
Enhance contrast using local histogram equalization
gray_eq = adapthisteq(gray);
4.Berechnung des Schwellenwerts (Threshold) zur Segmentierung der Lunge
Calculate global threshold value to segment lungs
level = graythresh(gray_eq);
5.Umwandlung in ein binäres Bild (Schwarz/Weiß)
Convert image to binary (black and white)
bw = imbinarize(gray_eq, level);
6.Invertierung des binären Bildes zur Hervorhebung der Lunge
Invert the binary image to highlight lungs in white
bw_inv = imcomplement(bw);
7.Anzeigen der Bilder: Original, Kontrastverstärkt, Segmentiert
Display original, enhanced, and segmented images
subplot(1,3,1), imshow(gray), title('Originalbild');
subplot(1,3,2), imshow(gray_eq), title('Kontrastverbesserung');
subplot(1,3,3), imshow(bw_inv), title('Lungensegmentierung');
Save individual images and the full comparison figure
imwrite(gray, 'original_gray.png');
imwrite(gray_eq, 'enhanced_contrast.png');
imwrite(bw_inv, 'lung_segmented.png');
saveas(gcf, 'comparison.png');
