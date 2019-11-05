import cv2 as cv

cap = cv.VideoCapture(0)

while True:
    ret, frame = cap.read()
    cv.imshow("cam", frame)
    if cv.waitKey(5) == ord('q'):
        break

cv.destroyAllWindows()
cap.release()

