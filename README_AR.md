## 🧠 الخطوات المنفذة (مع أوامر MATLAB)

1. **قراءة صورة الأشعة باستخدام الدالة** `imread`:
   ```matlab
   img = imread('chest_xray.jpg');
تحويل الصورة إلى تدرج رمادي باستخدام rgb2gray:
gray = rgb2gray(img);
تحسين التباين باستخدام adapthisteq:
gray_eq = adapthisteq(gray);
gray_eq = adapthisteq(gray);
حساب العتبة (Threshold) تلقائيًا باستخدام graythresh:


