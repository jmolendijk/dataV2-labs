import cv2
import os
import numpy as np 


def faceDetection(test_img):
# covert original image to a gray image
    gray_img=cv2.cvtColor(test_img,cv2.COLOR_BGR2GRAY)  

# import the classifier we will use to detect faces    
    face_haar_cascade=cv2.CascadeClassifier('/Users/nelly/dataV2-labs/Face_detection/HaarCascadehaarcascade_frontalface_default.xml')

# create the rectangle for the faces detected and reduce the size by 32% so big images have more chance to get detected , at least 5 neighbors to be detected as a true positive  
    face = face_haar_cascade.detectMultiScale(gray_img, scaleFactor=1.32, minNeighbors=5) 

# return the rectangle of the grey image
    return faces, gray_img 