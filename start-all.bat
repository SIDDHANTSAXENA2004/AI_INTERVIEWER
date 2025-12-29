@echo off
echo Starting AI Interviewer Services...

REM ===============================
REM Start Backend
REM ===============================
start cmd /k "cd backend && npm run dev"

REM ===============================
REM Start Ollama + Mistral
REM ===============================
start cmd /k "ollama run mistral"

REM ===============================
REM Start AI Service (FastAPI)
REM ===============================
start cmd /k "cd ai-service && venv\Scripts\activate && python main.py"

REM ===============================
REM Start Frontend
REM ===============================
start cmd /k "cd frontend && npm run dev"

echo All services launched 🚀
pause
