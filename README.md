# Face Attendance Project

This project demonstrates a simple face-recognition based attendance system using Flask, OpenCV, and dlib-based face-recognition.

## Quick Start (Windows)

1. Open PowerShell as Administrator (recommended for installing build tools).
2. Create and activate a virtual environment:

```powershell
# Create venv
python -m venv .venv
# Activate
.\.venv\Scripts\Activate
```

3. Upgrade pip and install dependencies:

```powershell
python -m pip install --upgrade pip setuptools wheel
python -m pip install -r face_attendance\requirements.txt
```

Note: Installing `dlib` and `face_recognition` on Windows may require Visual C++ Build Tools and CMake. If you run into compilation errors, see "Troubleshooting" below.

4. Run the project:

```powershell
python face_attendance\app.py
```

Open your browser at http://127.0.0.1:5000

---

## Common Issues / Troubleshooting

- Typo in pip commands: use `pip install -r requirements.txt` **not** `pip upgrad`.
- Dlib build errors: Install Microsoft Visual C++ Build Tools and CMake:
  - Install Build Tools: https://visualstudio.microsoft.com/downloads/ (Download "Build Tools for Visual Studio")
  - From an elevated PowerShell, you can install CMake with pip (`pip install cmake`) or use Chocolatey/installer.
  - If pip still fails to build dlib, consider installing a prebuilt wheel for your Python version or using conda: `conda install -c conda-forge dlib`.
- Camera isn't detected: ensure it's plugged in, working, and not in use by other applications. Try other indices for the camera: `cv2.VideoCapture(0)` -> `cv2.VideoCapture(1)`.
- Port conflicts: If port 5000 is in use, change the port in `face_attendance\app.py` to, e.g., 5001.
- Face-recognition returns no faces: try collecting clearer images or update `face_recognition.face_locations` parameters.

---

## Helpful Scripts

- `run.ps1` - Set up and start the app (Windows PowerShell) — provided for convenience.

---
