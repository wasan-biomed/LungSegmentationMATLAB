# 🫁 Lung Segmentation from Chest X-ray using MATLAB

This project shows how to use MATLAB to extract the lungs from a chest X-ray image using simple image processing techniques like contrast enhancement and thresholding.
## 📁 Project Structure

- `lung_segmentation.m`: The main MATLAB script
- `input_images/`: Contains the chest X-ray image used
- `segmented_images/`: Contains the processed images:
  - original grayscale
  - contrast enhanced
  - segmented lungs
- `Results/`: Comparison image showing the three stages
## 🛠 Steps Performed

1. Load the chest X-ray image
2. Convert it to grayscale
3. Enhance contrast using `adapthisteq`
4. Apply thresholding using `graythresh`
5. Binarize the image with `imbinarize`
6. Invert the binary image to highlight the lungs
7. Save and display all results
## 📸 Output Example

![Result](Results/comparison.png)
## 🧠 Why is this useful?

Lung segmentation helps doctors focus only on lung regions in medical images.  
It can help detect:
- Pneumonia
- COVID-19 lung infections
- Lung cancer
- Other abnormalities

This is the first step before using AI or deep learning.
## 🌍 Other Languages

- [🇩🇪 German (Deutsch)](README_DE.md)
- [🇸🇦 Arabic (العربية)](README_AR.md)
