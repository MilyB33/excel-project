
# Simple excel application with openpyxl

Application allows to import data from .txt, .csv files and MySQL database into your excel workbook and style it.


## Installation
Make sure you have python3 and pip3 installed

In order to run the project you need to install these packages:

- openpyxl
- tkinter
- customtkinter
- mysql

You can do it with this command:

```powershell
pip3 install openpyxl tkinter customtkinter mysql
```

For connecting to database you can use any MySQL server but I recommend xampp
## Test Data

When testing you can you your custom .txt or .csv files and your custom MySQL database.

You can also use test data placed in `test_data` folder.

All result are saved to `results` folder.
## Caveats

- When using database feature when no workbook is loaded and trying to style it you will be asked to select a .xlsx file to style. When workbook is selected already (for example right after importing data) you will not be asked to select a file.

- You can't save a workbook when excel is open.
