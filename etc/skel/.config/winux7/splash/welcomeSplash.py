import cv2
import time

def play_fullscreen_video(video_path, play_duration=24):
    cap = cv2.VideoCapture(video_path)
    if not cap.isOpened():
        print(f"Error opening video file: {video_path}")
        return

    # Get the video's width and height
    width = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
    height = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))

    start_time = time.time()
    elapsed_time = 0

    while True:
        ret, frame = cap.read()
        if not ret:
            break

        # Display the frame in full screen
        cv2.namedWindow('Video', cv2.WND_PROP_FULLSCREEN)
        cv2.setWindowProperty('Video', cv2.WND_PROP_FULLSCREEN, cv2.WINDOW_FULLSCREEN)
        cv2.imshow('Video', frame)

        current_time = time.time()
        elapsed_time = current_time - start_time
        if elapsed_time >= play_duration:
            break

        if cv2.waitKey(1) == ord('q'):
            break

    cap.release()
    cv2.destroyAllWindows()


# Provide the corrected path to the video file
video_path = '/etc/skel/.config/winux7/splash/welcome.mp4'
play_fullscreen_video(video_path)

