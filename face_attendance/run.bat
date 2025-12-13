@echo off
REM Run script for Face Attendance (Windows CMD)
IF NOT EXIST ".venv" (
    python -m venv .venv
)

call .venv\Scripts\activate
python -m pip install --upgrade pip setuptools wheel
python -m pip install -r face_attendance\requirements.txt

python face_attendance\app.py
PAUSE
