@echo off
REM Bien dich slide Beamer bang XeLaTeX (chay 2 lan de muc luc dung)
cd /d "%~dp0"

echo === Lan bien dich thu 1 ===
xelatex -interaction=nonstopmode week1.tex

echo === Lan bien dich thu 2 ===
xelatex -interaction=nonstopmode week1.tex

if exist week1.pdf (
    echo.
    echo === Thanh cong! Dang mo week1.pdf ===
    start "" week1.pdf
) else (
    echo.
    echo === Bien dich that bai. Xem loi trong file week1.log ===
)

pause
