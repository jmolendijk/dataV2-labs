import cv2
import os
import numpy as np 

import face_recognition as fr  # so we can use the face detection module

# Import the test image
test_img= cv2.imread ('/Users/nelly/dataV2-labs/Face_detection/Test_images/test1.jpg')

# The function we created before
faces_detected,gray_img=fr.faceDetection(test_img)

# To know the faces that were detected
print('Faces Detected:', faces_detected)


# Draw a rectangle around the faced detected 
# x,y is the top-left coordinate of the rectangle and w,h is the width and height.

for (x,y,w,h) in faces_detected:
    cv2.rectangle(test_img, (x,y), (x+w,y+h), (255,0,0),thickness=7)

 # Resize the image in case is too big
 
resized_img=cv2.resize(test_img,(1000,700))
cv2.imshow('Face detection Nelly', resized_img)
cv2.waitKey(0)
cv2.destroyAllWiondows



