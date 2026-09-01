#!/bin/bash

echo "Activando el entorno virtual"
source venv/bin/activate

echo "instalando depedencias"
pip install -r requirements.txt

echo "ejecutando pruebas con pytest"
pytest tests/ --junitxml=reports/test-results.xml --html=reports/test-results.html

echo "pruebas finalizadas resultados en reports"
