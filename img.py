import cv2
import matplotlib.pyplot as plt

img_path = r'img\testpicture_1.png'

img_bgr = cv2.imread(img_path)

img_rgb = cv2.cvtColor(img_bgr, cv2.COLOR_BGR2RGB)
print(type(img_rgb))
# plt.title('RGB Image')
# plt.imshow(img_rgb)
# plt.axis('off')
# plt.show()
# cv2.imshow('RGB Image', img_rgb)
# cv2.waitKey(0)
# cv2.destroyAllWindows()

# Get the height of the image
height = img_rgb.shape[0]
# Calculate the midpoint
midpoint = height // 2
# Display only the lower half of the image
lower_half = img_rgb[midpoint:]
plt.title('Lower Half of RGB Image')
plt.imshow(lower_half)
plt.axis('off')
plt.show()


