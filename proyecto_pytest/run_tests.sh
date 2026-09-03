#!/bin/bash

echo "Activando el entorno virtual"
if [!"-d venv" ]; then
    python3 -m venv venv
fi    
source venv/bin/activate

echo "instalando depedencias"
pip install --upgrade pip
pip install -r requirements.txt

echo "ejecutando pruebas con pytest"
pytest tests/ --junitxml=reports/test-results.xml --html=reports/test-results.html

echo "pruebas finalizadas resultados en reports"
