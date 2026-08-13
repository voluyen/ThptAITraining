@echo off
REM Bien dich slide Beamer bang XeLaTeX (chay 2 lan de muc luc dung)
cd /d "%~dp0"

echo === Lan bien dich thu 1 ===
xelatex -interaction=nonstopmode main.tex

echo === Lan bien dich thu 2 ===
xelatex -interaction=nonstopmode main.tex

if exist main.pdf (
    echo.
    echo === Thanh cong! Dang mo main.pdf ===
    start "" main.pdf
) else (
    echo.
    echo === Bien dich that bai. Xem loi trong file main.log ===
)

pause
