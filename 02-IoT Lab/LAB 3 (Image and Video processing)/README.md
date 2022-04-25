## IMAGE PROCESSING

```python

import cv2

img = cv2.imread('baby.jfif')
# cv2.imshow('frame',img)

face_cascade = cv2.CascadeClassifier('haarcascade_frontalface.xml')
eye_cascade = cv2.CascadeClassifier('haarcascade_eye.xml')

gray_img = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)

faces = face_cascade.detectMultiScale(gray_img,1.1,10)

for(x,y,w,h) in faces:
    cv2.rectangle(img,(x,y),(x+w,y+h),(255,0,0),3)

roi_gray = gray_img[y:(y+h),x:(x+w)]
roi_color = img[y:(y+h),x:(x+w)]

eyes = eye_cascade.detectMultiScale(roi_gray,1.1,10)
for (x_eye,y_eye,w_eye,h_eye) in eyes:
    cv2.rectangle(roi_color,(x_eye,y_eye),(x_eye+w_eye,y_eye+h_eye),(255,0,0),3)

cv2.imshow('frame',img)
cv2.waitKey(0)
cv2.destroyAllWindows()
```

## VIDEO PROCESSING

```python
import cv2

source = cv2.VideoCapture(0)

while True:
    ret,img = source.read()
    gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
    cv2.imshow('frame',gray)

    key = cv2.waitKey(1)
    if key==ord('q'):
        break

cv2.destroyAllWindows()
source.release()
```
