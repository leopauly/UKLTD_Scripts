#!/usr/bin/env python
# coding: utf-8

#### Description

print('Author:  Leo Pauly (cnlp@leeds.ac.uk) & Nick Wilson (n.wilson@lubs.leeds.ac.uk)')
print('Description: Autmatic database update')


#### Usage intructions & Other info

# 1. Change/Add User (user variable options: 'leo','nick')
# 2. Assumed that new entry directory names always start with UKLTD_R_ or UKLTD_W_
# 3. File dir_list.txt contains the processed directory list
# 4. Prefefably install python using anacodna (all in one installation): https://www.anaconda.com/products/individual#windows
# 5. Run this if 'pyarrow' module is missing':  !pip install pyarrow 
# 6. Check base_dir variable
# 7. Databases are stored in the directory (Create one if missing) : UKLTD_Database 
# 8. Run this if 'patool' module is missing':  !pip install patool pyunpack
# 9. Delete UKLTD_Database directory and dir_list.txt file (in UKLTD_Scripts dir) when running for the very first time


get_ipython().system('pip install pyarrow ')
get_ipython().system('pip install patool pyunpack')
print('Extra modules installed')


#### Imports

import os
import sys
import pandas as pd
import numpy as np
import pyreadstat
from zipfile import ZipFile
import pyunpack
import multiprocessing
import dask.dataframe as dd
import time
import dask
from dask.diagnostics import ProgressBar
from dask.distributed import Client
dask.config.set(scheduler='threads')

print('Python version:',sys.version)
num_processes = multiprocessing.cpu_count()
print('No: of logical CPU cores available:',num_processes)

AC01_header_dtypes={'AC01': 'O', 'REGNUM': 'O','ACCDAT_start': 'O','ACCDAT': 'O', 'number_of_weeks':'float64', 'months':'float64', 'currency': 'O', 'consolidated': 'O', 'acctype': 'float64', 'Turnover': 'float64', 'Export': 'float64', 'Cost_of_Sales': 'float64', 'Gross_Profit': 'float64', 'Wages_Salaries': 'float64', 'Directors_Emoluments': 'float64', 'Operating_Profits': 'float64', 'Depreciation': 'float64', 'Audit_Fees': 'float64', 'Interest_Payments': 'float64', 'Pre_Tax_Profit': 'float64', 'taxation1': 'float64', 'Profit_After_Tax': 'float64', 'Dividends_Payable': 'float64', 'Retained_Profits': 'float64', 'Tangible_Assets': 'float64', 'Intangible_Assets': 'float64', 'Total_Fixed_Assets': 'float64', 'Total_Current_Assets': 'float64', 'Trade_Debtors': 'float64', 'Stock': 'float64', 'Cash': 'float64', 'Other_Current_Assets': 'float64', 'Increase_In_Cash': 'float64', 'Mis_Current_Assets': 'float64', 'Total_Assets': 'float64', 'Total_Current_Liabilities': 'float64', 'Trade_Creditors': 'float64', 'Bank_Overdraft': 'float64', 'Other_Short_Term_Fin': 'float64', 'Mis_Current_Liabilities': 'float64', 'Other_Long_Term_Fin': 'float64', 'Total_Long_Term_Liabilities': 'float64', 'Bank_Overdraft_LTL': 'float64', 'Total_Liabilities': 'float64', 'Net_Assets': 'float64', 'Working_Capital': 'float64', 'Paid_up_equity': 'float64', 'PL_Account_Weserve': 'float64', 'Sundry_Weserves': 'float64', 'Revaluation_Weserve': 'float64', 'Shareholder_Funds': 'float64', 'NetWorth': 'float64', 'NetCashflowfromOperations': 'float64', 'NetCashflowbeforeFinancing': 'float64', 'NetCashflowfromFinancing': 'float64', 'Contingent_Liability': 'float64', 'Capital_Employed': 'float64', 'No_Employees': 'float64', 'status': 'float64', 'UPLOAD': 'O'}
AC01_header_names=['AC01', 'REGNUM', 'ACCDAT_start', 'ACCDAT', 'number_of_weeks', 'months', 'currency', 'consolidated', 'acctype', 'Turnover', 'Export', 'Cost_of_Sales', 'Gross_Profit', 'Wages_Salaries', 'Directors_Emoluments', 'Operating_Profits', 'Depreciation', 'Audit_Fees', 'Interest_Payments', 'Pre_Tax_Profit', 'taxation1', 'Profit_After_Tax', 'Dividends_Payable', 'Retained_Profits', 'Tangible_Assets', 'Intangible_Assets', 'Total_Fixed_Assets', 'Total_Current_Assets', 'Trade_Debtors', 'Stock', 'Cash', 'Other_Current_Assets', 'Increase_In_Cash', 'Mis_Current_Assets', 'Total_Assets', 'Total_Current_Liabilities', 'Trade_Creditors', 'Bank_Overdraft', 'Other_Short_Term_Fin', 'Mis_Current_Liabilities', 'Other_Long_Term_Fin', 'Total_Long_Term_Liabilities', 'Bank_Overdraft_LTL', 'Total_Liabilities', 'Net_Assets', 'Working_Capital', 'Paid_up_equity', 'PL_Account_Weserve', 'Sundry_Weserves', 'Revaluation_Weserve', 'Shareholder_Funds', 'NetWorth', 'NetCashflowfromOperations', 'NetCashflowbeforeFinancing', 'NetCashflowfromFinancing', 'Contingent_Liability', 'Capital_Employed', 'No_Employees', 'status', 'UPLOAD']


## Selectting user and adding filepaths
user='leo' #(user variable options: 'leo','nick')
if(user=='leo'):
    base_dir='C:/Users/cnlp/Research Fellowship/'
elif(user=='nick'):
    base_dir='/Volumes/Pegasus32 R6/CreditSafe 2019 Zipped/'

os.makedirs(base_dir+'UKLTD_Database', exist_ok=True)
dir_list_file=base_dir+'/UKLTD_Scripts/dir_list.txt'
database_file_folder=base_dir+'UKLTD_Database/AC01/'


#### Checking new entries

## Checking for new download
with open(dir_list_file, 'a+') as fd:
    fd.seek(0)
    dir_list_old=fd.read().split('\n')

print('List of processed directores:',*dir_list_old,sep='\n')
dir_list_new=[dir_name for dir_name in os.listdir(base_dir) if (dir_name.startswith("UKLTD_W") or dir_name.startswith("UKLTD_R"))]
entry_dir_list=[entry_dir for entry_dir in dir_list_new if entry_dir not in dir_list_old ]
print('\nNew entries detected:',*entry_dir_list,sep='\n')


#### Creating/Loading database 

## If databse is in .csv format 
if (os.path.exists(database_file_folder)):
    print('Database found.','Reading database! \n') 
    start = time.process_time()
    with ProgressBar():
        df_database = dd.read_parquet(database_file_folder) 
    print('Time taken to read database {}:'.format(database_file_folder),time.process_time() - start,'s')
    database_missing=False
else:
    print('Database not found.','Creating database! \n')
    database_missing=True
    


#### Updating database

# Rules:
# 
# 1. Concatenate new entries to the existig database
# 2. Run de_duplicating fucntion


def update_database(entry_dir): 
    ## Reading new entry file and unzipping
    global df_database
    global database_missing
    entry_file="AC01_"+(entry_dir.split('_')[-2])+"_"+(entry_dir.split('_')[-1])+".txt"
    entry_file_zip="AC01_"+(entry_dir.split('_')[-2])+"_"+(entry_dir.split('_')[-1])+".rar"
    print('Unzipping:',entry_file_zip)
    pyunpack.Archive(base_dir+'{}/{}'.format(entry_dir,entry_file_zip)).extractall(base_dir+'{}/'.format(entry_dir))
    print('Entry file unzipped as:',entry_file)
    
    start = time.process_time()
    with ProgressBar():
        df_entry_file=dd.read_csv('C:/Users/cnlp/Research Fellowship/{}/{}'.format(entry_dir,entry_file),sep='|',names=AC01_header_names,dtype=AC01_header_dtypes)
    print('Time taken to read:',time.process_time() - start,'s')
    df_entry_file['UPLOAD']=entry_file.split('.')[0]
    
     ## Adding new entry_rows to main database after checking
    if(database_missing):
        df_database=df_entry_file
        database_missing=False
    else:
        print('Appending...!')
        start = time.process_time()
        with ProgressBar():
            df_database=df_database.append(df_entry_file)
        print('Time taken to append:',time.process_time() - start,'s')  


## Reading from new directory and adding to database
for entry_dir in entry_dir_list:
    print('\nReading from entry dir:',entry_dir)
    update_database(entry_dir)


## De duplicating
start = time.process_time()
df_database=df_database.drop_duplicates().repartition(npartitions=df_database.npartitions) 
print('Time taken to de duplicate:',time.process_time() - start,'s')

## Reseting index
df_database=df_database.reset_index(drop=True)
print('No: of partitions to be written:',df_database.npartitions)


#### Writing into disk
## Writing updated databse to file
start = time.process_time()
with ProgressBar():
    df_database.to_parquet(database_file_folder)
print('Time taken to write:',time.process_time() - start,'s')


## Update processed directory list
print('Processed list updated')
with open(dir_list_file, 'w') as fd:
    fd.write('\n'.join(dir_list_old+entry_dir_list))





