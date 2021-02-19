* Encoding: UTF-8.

* Author:  Leo Pauly (cnlp@leeds.ac.uk) & Nick Wilson (n.wilson@lubs.leeds.ac.uk)
* Description: Autmatic database update 

BEGIN PROGRAM.

# Imports
import spss, SpssClient
SpssClient.StartClient()
import os
import sys
print(sys.version)
 
# Checking for new download
with open("\\\ds.leeds.ac.uk\student\student13\cnlp\Research Fellowship\dir_list.txt", 'a+') as fd:
    dir_list_old=fd.read().split('\n')
   
#print (dir_list_old)
dir_list_new=[dir_name for dir_name in os.listdir("\\\ds.leeds.ac.uk\student\student13\cnlp\Research Fellowship") if (dir_name.startswith("UKLTD_W") or dir_name.startswith("UKLTD_R"))]
#print (dir_list_new)
new_entry_list=[new_entry for new_entry in dir_list_new if new_entry not in dir_list_old ]
print('New entries detected:')
print('\n'.join(new_entry_list)) 

#df=pd.read_spss("\\\ds.leeds.ac.uk\student\student13\cnlp\Research Fellowship\UKLTD_Database\AC01_W_20190609.sav")

# Reading data
spss.Submit("""
PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="\\\ds.leeds.ac.uk\student\student13\cnlp\Research Fellowship\UKLTD_W_20190609\AC01_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  AC01 A4
  REGNUM A14
  ACCDAT_start A10
  ACCDAT A10
  number_of_weeks A3
  months A9
  currency A3
  consolidated A1
  acctype A1
  Turnover F20.2
  Export F20.2
  Cost_of_Sales F20.2
  Gross_Profit F20.2
  Wages_Salaries F20.2
  Directors_Emoluments F20.2
  Operating_Profits F20.2
  Depreciation F20.2
  Audit_Fees F20.2
  Interest_Payments F20.2
  Pre_Tax_Profit F20.2
  taxation1 F20.2
  Profit_After_Tax F20.2
  Dividends_Payable F20.2
  Retained_Profits F20.2
  Tangible_Assets F20.2
  Intangible_Assets F20.2
  Total_Fixed_Assets F20.2
  Total_Current_Assets F20.2
  Trade_Debtors F20.2
  Stock F20.2
  Cash F20.2
  Other_Current_Assets F20.2
  Increase_In_Cash F20.2
  Mis_Current_Assets F20.2
  Total_Assets F20.2
  Total_Current_Liabilities F20.2
  Trade_Creditors F20.2
  Bank_Overdraft F20.2
  Other_Short_Term_Fin F20.2
  Mis_Current_Liabilities F20.2
  Other_Long_Term_Fin F20.2
  Total_Long_Term_Liabilities F20.2
  Bank_Overdraft_LTL F20.2
  Total_Liabilities F20.2
  Net_Assets F20.2
  Working_Capital F20.2
  Paid_up_equity F20.2
  PL_Account_Weserve F20.2
  Sundry_Weserves F20.2
  Revaluation_Weserve F20.2
  Shareholder_Funds F20.2
  NetWorth F20.2
  NetCashflowfromOperations F20.2
  NetCashflowbeforeFinancing F20.2
  NetCashflowfromFinancing F20.2
  Contingent_Liability F20.2
  Capital_Employed F20.2 
  No_Employees F20.2
  status F1.0
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE="\\\ds.leeds.ac.uk\student\student13\cnlp\Research Fellowship\UKLTD_Database\AC01_W_20190609.sav"
  /COMPRESSED.
""")

# Check and Update 



# Update processed directory list
with open("\\\ds.leeds.ac.uk\student\student13\cnlp\Research Fellowship\dir_list.txt", 'w') as fd:
    fd.write('\n'.join(dir_list_old+new_entry_list))


# Closing
SpssClient.StopClient()
END PROGRAM.

