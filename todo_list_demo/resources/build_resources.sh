#!/usr/bin/env bash


# The path to output all built .py files to:
UI_PYTHON_PATH=../ui

# Using my local Python interpreter
PYTHON_BASE="/Users/norbermv/venv/tk-toolchain-py39"

# Remove any problematic profiles from pngs.
for f in *.png; do mogrify $f; done

# Helper functions to build UI files
function build_qt {
    echo " > Building " $2
    # compile ui to python
    $1 $2 $UI_PYTHON_PATH/$3.py
}

function build_ui {
    build_qt "${PYTHON_BASE}/bin/pyside6-uic" "$1.ui -o" "$1"
}

function build_res {
    build_qt "${PYTHON_BASE}/bin/pyside6-rcc" "$1.qrc -o" "$1_rc"
}


# build UI's:
echo "building user interfaces..."
build_ui todomainwindow


# build resources
echo "building resources..."
build_res resources
