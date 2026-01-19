# PowerShell Script to install Python requirements
# This script installs all packages from requirements.txt

Write-Host "Installing Python requirements..." -ForegroundColor Green

# Check if Python is available
try {
    $pythonVersion = python --version
    Write-Host "Python found: $pythonVersion" -ForegroundColor Cyan
} catch {
    Write-Host "Error: Python is not installed or not in PATH" -ForegroundColor Red
    exit 1
}

# Check if requirements.txt exists
if (-Not (Test-Path "requirements.txt")) {
    Write-Host "Error: requirements.txt not found in current directory" -ForegroundColor Red
    exit 1
}

# Install requirements
Write-Host "`nInstalling packages from requirements.txt..." -ForegroundColor Yellow
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

if ($LASTEXITCODE -eq 0) {
    Write-Host "`nAll requirements installed successfully!" -ForegroundColor Green
} else {
    Write-Host "`nError: Installation failed" -ForegroundColor Red
    exit 1
}
