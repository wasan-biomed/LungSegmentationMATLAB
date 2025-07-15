
% إنشاء المجلدات إذا لم تكن موجودة
if ~exist('segmented_images', 'dir')
    mkdir('segmented_images');
end
if ~exist('Results', 'dir')
    mkdir('Results');
end

% قراءة صورة أشعة الصدر
img = imread('input_images/chest_xray.jpg');

% تحويل الصورة إلى رمادية إذا كانت ملونة
if size(img, 3) == 3
    gray = rgb2gray(img);
else
    gray = img;
end

% تحسين التباين باستخدام Adaptive Histogram Equalization
gray_eq = adapthisteq(gray);

% تطبيق خوارزمية Otsu لتحديد العتبة
level = graythresh(gray_eq);
bw = imbinarize(gray_eq, level);

% عكس الصورة الثنائية حتى تكون الرئتين باللون الأبيض
bw_inv = imcomplement(bw);

% عرض النتائج الثلاث
figure;
subplot(1,3,1), imshow(gray), title('original');
subplot(1,3,2), imshow(gray_eq), title('contrast enhancement');
subplot(1,3,3), imshow(bw_inv), title('lung segmentation');

% حفظ الصور الناتجة في مجلد segmented_images
imwrite(gray, 'segmented_images/original.png');           % الصورة الرمادية الأصلية
imwrite(gray_eq, 'segmented_images/enhanced.png');        % بعد تحسين التباين
imwrite(bw_inv, 'segmented_images/segmented.png');        % بعد عزل الرئتين

% حفظ الشكل الكامل الذي يحتوي على الصور الثلاث
saveas(gcf, 'Results/comparison.png');                    % مقارنة مرئية لجميع المراحل
