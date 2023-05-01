# Vim-Config

## Introduction
This is a simple Python code that copies three configuration files from a source folder to a destination folder on your computer.

## Purpose
This code is useful when you want to back up your configuration files or transfer them to a different computer. It is designed to be easy to use and modify.

## Requirements
This code requires Python 3 to be installed on your computer. The following libraries are also required:
- `shutil`
- `os`

## Installation
1. Install Python 3 on your computer if it is not already installed.
2. Install the required libraries by running the following command in your terminal or command prompt:
```
pip install shutil os
```
3. Download the `config_copy.py` file and save it to a convenient location on your computer.

## Usage
1. Open the `config_copy.py` file in a text editor.
2. Modify the `source_files` and `destination_folder` variables to match your file paths.
3. Save the file and close the text editor.
4. Open your terminal or command prompt and navigate to the directory where the `config_copy.py` file is saved.
5. Run the following command to execute the script:
```
python config_copy.py
```
6. The script will copy the specified files from the source folder to the destination folder.
