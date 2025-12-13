import cv2

cap = cv2.VideoCapture(0)
if not cap.isOpened():
    print('Failed to open camera at index 0')
else:
    print('Camera opened successfully. Showing 5 frames...')
    for i in range(5):
        ret, frame = cap.read()
        if not ret:
            print('Failed to read frame')
            break
        else:
            print(f'Frame {i+1} size: {frame.shape}')
    cap.release()
    print('Done')
