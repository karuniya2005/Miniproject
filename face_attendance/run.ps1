# Run script for Face Attendance (Windows PowerShell)

# 1. Create / activate venv
if (-Not (Test-Path -Path ".\.venv")) {
    python -m venv .venv
}

.\.venv\Scripts\Activate

# 2. Upgrade pip & install dependencies
python -m pip install --upgrade pip setuptools wheel
python -m pip install -r face_attendance\requirements.txt

# 3. Run the Flask app
python face_attendance\app.py
