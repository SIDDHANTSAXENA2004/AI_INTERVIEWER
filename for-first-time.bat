@echo off
echo =====================================
echo Starting AI Interviewer Services...
echo =====================================

REM ===============================
REM Start Backend (Node.js)
REM ===============================
start cmd /k ^
"cd backend ^
&& echo Installing backend dependencies... ^
&& npm install ^
&& echo Starting backend... ^
&& npm run dev"

REM ===============================
REM Start Ollama + Mistral
REM ===============================
start cmd /k ^
"echo Pulling Mistral model... ^
&& ollama pull mistral ^
&& echo Starting Mistral... ^
&& ollama run mistral"

REM ===============================
REM Start AI Service (FastAPI)
REM ===============================
start cmd /k ^
"cd ai-service ^
&& echo Activating virtual environment... ^
&& call venv\Scripts\activate ^
&& echo Installing Python dependencies... ^
&& pip install -r requirements.txt ^
&& echo Starting AI service... ^
&& python main.py"

REM ===============================
REM Start Frontend (Vite / React)
REM ===============================
start cmd /k ^
"cd frontend ^
&& echo Installing frontend dependencies... ^
&& npm install ^
&& echo Starting frontend... ^
&& npm run dev"

echo =====================================
echo All services launched 🚀
echo =====================================
pause