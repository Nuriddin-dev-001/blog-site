@echo off
REM Script to set up and run the Django Blog

echo Setting up the Django Blog...

REM Check if Python is installed
python --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Python is not installed or not in PATH. Please install Python 3.8 or higher.
    pause
    exit /b 1
)

REM Check if pip is installed
pip --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo pip is not installed. Please install pip for Python.
    pause
    exit /b 1
)

REM Create virtual environment if it doesn't exist
if not exist "venv\" (
    echo Creating virtual environment...
    python -m venv venv
    if %ERRORLEVEL% NEQ 0 (
        echo Failed to create virtual environment.
        pause
        exit /b 1
    )
)

REM Activate virtual environment and install requirements
echo Activating virtual environment and installing requirements...
call venv\Scripts\activate
pip install --upgrade pip
pip install -r requirements.txt

if %ERRORLEVEL% NEQ 0 (
    echo Failed to install requirements.
    pause
    exit /b 1
)

echo Setting up the database...
python manage.py makemigrations
python manage.py migrate

if %ERRORLEVEL% NEQ 0 (
    echo Failed to set up the database.
    pause
    exit /b 1
)

echo Creating superuser (admin) account...
python manage.py createsuperuser --noinput --username admin --email admin@example.com
if %ERRORLEVEL% NEQ 0 (
    echo Failed to create superuser. The user might already exist.
)

echo Starting the development server...
python manage.py runserver

pause
