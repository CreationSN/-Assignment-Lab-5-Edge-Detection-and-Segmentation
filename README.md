#Lab-5-Edge-Detection-and-Segmentation

In this lab, I learned how to detect image edges and perform basic image segmentation.
Edges represent high-frequency components — areas where pixel values change quickly, such as object boundaries.
I used different edge detection operators (Sobel, Prewitt, Canny, and Laplacian of Gaussian) and then used Otsu’s thresholding to segment the image automatically.

2. What I Have Done

I converted the image to grayscale and double precision.

I detected edges using:

Sobel filter

Prewitt filter

Canny detector

Laplacian of Gaussian (LoG)

I applied Otsu’s method to perform automatic thresholding.

I labeled and visualized the detected regions using different colors.

3. Screenshots

Figure 1: Sobel and Prewitt edges

Figure 2: Canny edge detection

Figure 3: Laplacian of Gaussian edges

Figure 4: Otsu threshold binary mask

Figure 5: Labeled segmentation output

(Add your screenshots in a folder named /screenshots and link them here)

4. Results
Method	Description	Observation
Sobel	Gradient-based edge detector	Detects strong edges but slightly thick
Prewitt	Simple gradient filter	Similar to Sobel, a bit noisier
Canny	Multi-stage edge detector	Thinnest and cleanest edges
Laplacian of Gaussian	Zero-crossing method	Detects many details, sometimes thick edges
Otsu	Histogram-based thresholding	Good automatic segmentation
5. What I Have Learned

I learned that edges represent high-frequency areas where intensity changes fast.

I understood how gradient-based operators like Sobel and Canny detect those edges.

I learned that zero-crossing (LoG) detects edges using the second derivative of the image.

I saw how Otsu’s method can automatically find the best threshold for separating objects and background.

I learned that Canny gives the best and cleanest edges because it uses multiple processing steps.

6. Answers to Reflection Questions

Q1. Which operator gives the thinnest, cleanest edges?
→ The Canny operator gives the thinnest and cleanest edges because it includes noise reduction, non-maximum suppression, and double thresholding.

Q2. Why does Canny outperform simple gradient filters?
→ Canny uses multiple steps: smoothing, gradient calculation, and hysteresis thresholding.
This removes noise and connects edges properly, giving more accurate results than Sobel or Prewitt.

Q3. How does Otsu relate to histogram-based thresholding?
→ Otsu’s method analyzes the image histogram and automatically finds the threshold that minimizes the difference between foreground and background intensities.
It is a global, histogram-based thresholding method.

7. Conclusion

In this lab, I practiced detecting edges and segmenting images.
I learned how different edge detectors work and how thresholding helps in separating objects from the background.
Canny gave the best edge results, and Otsu’s method helped create a clear binary segmentation automatically.
