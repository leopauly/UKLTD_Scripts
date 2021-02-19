* Encoding: UTF-8.

PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="\\ds.leeds.ac.uk\student\student13\cnlp\Research Fellowship\UKLTD_W_20190609\AC01_W_*.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=100.0
  /VARIABLES=
  C101 A4
  SAFENUM A10
  REGNUM A14
  NAME A255
  INC A10
  SIC07 A8
  SIC03 A5
  ALPHA A255
  DIS A1
  LIQ A1
  ADORD A1
  VOLAR A1
  ADMIN A1
  RECMAN A1
  ARD A10
  NARD A10
  ACCFIL A10
  ACCLAT A10
  ACCDUE A10
  ACCMUD A10
  ACCRFD A4
  CHARNUM A14
  CTYPE A2
  ACCTYPE A2
  FTSEA A6
  FTSET A6
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CI01_W.sav'
  /COMPRESSED.

PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AC01_W_20190609.txt"
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
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AC01_W.sav'
  /COMPRESSED.


***** GAAP ACCOUNTS ***


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AC02_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  AC02 A4
  REGNUM A14
  ACCDAT_start A10
  ACCDAT A10
  months A9
  currency A3
  consolidated A1
  Turnover F20.2
  Exports F20.2
  Cost_of_Sales F20.2
  Gross_Profit F20.2
  Operating_Profit F20.2
  Pre_Tax_Profit F20.2
  Tax F20.2
  Profit_after_Tax F20.2
  Dividends F20.2
  Profit_Attributable_to_Minority_Interests F20.2
  Other_Appropriations F20.2
  Retained_Profit F20.2
  Interest_Weceivable F20.2
  Bank_Interest_Weceivable F20.2
  Group_Interest_Weceivable F20.2
  Other_Interest_Weceivable F20.2
  Interest_Payable F20.2
  Bank_Interest_Payable F20.2
  Lease_Interest_Payable F20.2
  HP_Interest_Payable F20.2
  Other_Interest_Payable F20.2
  Directors_Wemuneration F20.2
  Director_Fees F20.2
  Director_Pensions F20.2
  Director_Social_Security F20.2
  Director_Other F20.2
  Highest_Paid_Director F20.2
  Employee_Costs F20.2
  Employee_Wemuneration F20.2
  Pensions F20.2
  Social_Security F20.2
  Other F20.2
  Employee_Numbers F20.2
  Depreciation_of_Tangibles F20.2
  Amortisation_of_Intangibles F20.2
  Exceptional_Items F20.2
  Exceptional_ProfitLoss_on_Weorganisations F20.2
  Exceptional_ProfitLoss_on_DisposalAcquisition F20.2
  Exceptional_Other_items F20.2
  Auditor_Fees F20.2
  Statutory_Audit_Costs F20.2 
  Other_Audit_Costs F20.2
  Accountant_Fees F20.2
  Tangible_Assets F20.2
  Intangible_Assets F20.2
  Investment__Other F20.2
  Debtors_due_after_one_year F20.2
  Total_Fixed_Assets F20.2
  StocksWorkinProgress F20.2
  Debtors F20.2
  Trade_Debtors F20.2
  Group_Debtors F20.2
  Misc_Debtors F20.2
  Cash F20.2
  Misc_Current_Assets F20.2
  Total_Current_Assets F20.2
  Creditors F20.2
  Trade_Creditors F20.2
  Bank_Overdraft F20.2
  Bank_Loan F20.2
  Group_Accounts F20.2
  Directors_Accounts F20.2
  Other_Short_Term_Loans F20.2
  Current_Hire_Purchase_Commitments F20.2
  Current_Lease_Commitments F20.2
  Total_Other_Current_Liabilities F20.2
  Current_Tax_Liabilities F20.2
  Accruals__Deferred_Income F20.2
  Dividends1 F20.2
  Other_Current_Liabilities F20.2
  Total_Current_Liabilities F20.2
  Total_Long_Term_Loans F20.2
  LT_Bank_Loans F20.2
  LT_Group_Accounts F20.2
  LT_Directors_Accounts F20.2
  LT_Other_LoansFinance F20.2
  Total_NonCurrent_HP_Lease_Commitments F20.2
  Non_Current_Hire_Purchase_Commitments F20.2
  Non_Current_Lease_Commitments F20.2
  Net_Pension_Liability F20.2
  Total_Other_Non_Current_Liabilities F20.2
  Accruals_Deferred_Income_due_after_1_year F20.2
  Other_LT_Liabilities F20.2
  Total_Provisions F20.2
  Deferred_Tax_Liabilities F20.2
  Other_Provisions F20.2
  Total_Long_Term_Liabilities F20.2
  Total_Called_UpIssued_Capital F20.2
  Ordinary_Shares F20.2
  Preference_Shares F20.2
  Other_Shares F20.2
  Profit_Loss_Wevenue_Weserve F20.2
  Revaluation_Weserve F20.2
  Other_Weserves F20.2
  Total_Shareholders’_Funds F20.2
  Minority_Interests F20.2
  Net_Cashflow_from_Operations F20.2
  Return_on_Investment F20.2
  Taxation F20.2
  Capital_Expenditure F20.2
  Acquisitions_Disposals F20.2
  Equity_Dividends_Paid F20.2
  Management_of_Liquid_Wesources F20.2
  Net_Cashflow_from_Financing F20.2
  Cash_inc_dec F20.2
  status F2.0
/MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609.
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AC02_W.sav'
  /COMPRESSED.


**** IFRS Accounts

PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AC03_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  AC03 A4
  REGNUM A14
  ACCDAT_start A10
  ACCDAT A10
  months A9
  currency A3
  consolidated A1
  Revenue F20.2
  Exports F20.2
  Cost_of_Sales F20.2
  Gross_Profit F20.2
  Operating_Profit  F20.2
  Pre_Tax_Profit  F20.2
  Tax F20.2
  Profit_after_Tax F20.2
  Other_Appropriations F20.2
  Discontinued_Extraordinary_Items F20.2
  Profit_Attributable_to_Minority_Interests F20.2
  Dividends_Paid F20.2
  Retained_Profit F20.2
 Interest_Weceivable F20.2
 Bank_Interest_Weceivable F20.2
 Group_Interest_Weceivable F20.2
 Other_Interest_Weceivable F20.2
 Interest_Payable F20.2
 Bank_Interest_Payable F20.2
 Lease_Interest_Payable F20.2
 HP_Interest_Payable F20.2
 Other_Interest_Payable F20.2
  Directors_Wemuneration F20.2
  Director_Fees F20.2
  Director_Pensions F20.2
  Director_Social_Security F20.2
  Director_Other F20.2
  Highest_Paid_Director F20.2
 Employee_Costs F20.2
 Employee_Wemuneration F20.2
  Pensions F20.2
  Social_Security F20.2
  Other F20.2
  Employee_Numbers F20.2
 Depreciation_of_Tangibles F20.2
 Amortisation_of_Intangibles F20.2
 Exceptional_Items F20.2
  Exceptional_ProfitLoss_on_Weorganisations F20.2
  Exceptional_ProfitLoss_on_DisposalAcquisition F20.2
  Exceptional_Other_items F20.2
 Auditor_Fees F20.2
  Statutory_Audit_Costs F20.2
 Other_Audit_Costs F20.2
 Accountant_Fees F20.2
 Tangible_Assets F20.2
 Intangible_Assets F20.2
 Investment_Assets F20.2
 Financial_Assets F20.2
 Debtors_due_after_one_year F20.2
 Other_Non_Current_Assets F20.2
 Total_Non_Current_Assets F20.2
 Inventories F20.2
 Raw_Materials F20.2
 Work_in_Progress F20.2
 Finished_Goods F20.2
 Trade_Other_Weceivables F20.2
 Trade_Debtors F20.2
 Group_Debtors F20.2
 Misc._Debtors F20.2
 Other_Current_Assets F20.2
 Financial_Assets_Current F20.2
 Cash_Cash_Equivalents F20.2
 Total_Current_Assets F20.2
 Trade_Other_Payables F20.2
  Trade_Creditors_Trade_Payables F20.2
  Group_Accounts_Payable F20.2
  Current_Tax_Liabilities F20.2
  Accruals_Deferred_Income F20.2
 Other_Payables F20.2
 Current_Financial_Liabilities F20.2
  Bank_Overdraft F20.2
 Bank_Loan F20.2
 Group_Accounts F20.2
 Directors_Accounts F20.2
 Other_Short_Term_Loans F20.2
 Current_Hire_Purchase_Commitments F20.2
 Current_Lease_Commitments F20.2
   Current_Grants F20.2
  Other_Current_Financial_Liabilities F20.2
  Total_Other_Current_Liabilities F20.2
 Current_Liabilities_held_for_Wesale F20.2
 Provisions_Charges F20.2
  Other_Current_Liabilities F20.2
 Total_Current_Liabilities F20.2
 Non_Current_Financial_Liabilities F20.2
  Interest_Bearing_Loans F20.2
  Non_Current_Hire_Purchase_Commitments F20.2
  Non_Current_Lease_Commitments F20.2
  Non_Current_Group_Loans F20.2
  Non_Current_Directors_Loans F20.2
  Other_Non_Current_Financial_Liabilities F20.2
  Non_Current_Grants F20.2
 Total_Other_Non_Current_Liabilities F20.2
  Non_Current_Trade_Payables F20.2
  Non_Current_Group_Accounts_Payable F20.2
  Non_Current_Liabilities_held_for_Wesale F20.2
  Accruals_Deferred_Income_due_after_1_year F20.2
  Non_Current_Other_Payables F20.2
 Provisions F20.2
  Deferred_Tax_Liabilities F20.2
  Other_Provisions F20.2
  Pension_Liabilities F20.2
 Total_Non_Current_Liabilities F20.2
 Total_Called_Up__Issued_Capital F20.2
  Ordinary_Shares F20.2
  Preference_Shares F20.2
  Other_Shares F20.2
 Profit_Loss__Wevenue_Weserve F20.2
 Revaluation_Weserve F20.2
 Other_Weserves F20.2
 Total_Shareholders_Funds F20.2
 Minority_Interests F20.2
 Operating_Activities F20.2
 Investing_Activities F20.2
 Financing_Activities F20.2
 DecreaseIncrease_in_Cash F20.2
 Net_Change_In_Cash F20.2
 Cash_at_Beginning_of_Year F20.2
 Exchange_Wate_Effect F20.2 
 Cash_and_Cash_Equivalents_at_Year_End F20.2
 status F2.0
/MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AC03_W.sav'
  /COMPRESSED.

PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AC06_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=100.0
  /VARIABLES=
  AC06 A4
  REGNUM A14
  ACCDAT_START A10
  ACCDAT A10
  PTEXPM F20.2
  CURRAT F20.2
  SNWC F20.2
  GEAR F20.1
  EQUI F20.1
  CREDAY F20.2
  DEBDAY F20.2
  LIQTEST F20.2
  RETCAPE F20.2
  RTETTOTASS F20.2
  CUREDBR F20.2
  TOTDBR F20.2
  STTOR F20.2
  RETNA F20.2
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AC06_W.sav'
  /COMPRESSED.

PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AU01_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=100.0
  /VARIABLES=
  AU01 A4
  REGNUM A14
  ACCDAT A10
  SOL A100
  ACC A100
  AUDIT A100
  AUDQUAL F1.0
  AUDIT2 A100
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AU01_W.sav'
  /COMPRESSED.

PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/BK01_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=100.0
  /VARIABLES=
  BK01 A4
  REGNUM A14
  BANK A100
  SORT A8
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/BK01_W.sav'
  /COMPRESSED.


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CI02_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  CI02 A4
  SAFENUM A10
  REGNUM A10
  ADD1 A64
  ADD2 A64
  ADD3 A64
  ADD4 A64
  POST A10
  TEL A20
  CTPS A8
  WEB A50
  POBOX A10
  CARE A100
  AREA A50
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CI02_W.sav'
  /COMPRESSED.


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CI03_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  CI03 A4
  REGNUM A14
  PREVN A250
  DATEC A10
  ALPHA A255
  UNKEY F19.0
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CI03_W.sav'
  /COMPRESSED.


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CI04_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  CI04 A4
  REGNUM A14
  SIC03 A5
  SIC07 A8
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CI04_W.sav'
  /COMPRESSED.


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AD01_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  AD01 A4
  REGNUM A14
  RANK A10
  TEXT A640
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AD01_W.sav'
  /COMPRESSED.

PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/TD01_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=100.0
  /VARIABLES=
  TD01 A4
  REGNUM A14
  ADDN A3
  ADD1 A50
  ADD2 A50
  ADD3 A50
  ADD4 A50
  POST A10
  STD A20
  TEL A20
  CTPS A8
  REGF A1
  HEAD A1
  SOL A1
  ACC A1
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/TD01_W.sav'
  /COMPRESSED.


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CM01_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  CMO1 A4
  REGNUM A14
  DATEC A10
  CMID F38.0
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CM01_W.sav'
  /COMPRESSED.


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/GS01_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  GS01 A4
  ULTREG A14
  PRNREG A14
  REG A14
  NMN A120
  CNTY A20
  LVL F5.0
  HTP A8
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/GS01_W.sav'
  /COMPRESSED.

PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CS01_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=100.0
  /VARIABLES=
  CS01 A4
  REGNUM A14
  CODE A8
  DATE A10
  RDATE A10
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CS01_W.sav'
  /COMPRESSED.


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AQ01_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  AQ01 AUTO
  AQREGNUM A14
  AQUNAME A90
  ARDREG A14
  ARDNAME A90
  DATE A10
  PRICE1 A30
  PRICE2 A30
  ENQCONTACT A90
  PHN1 A40
  ENQC2 A90
  PHN2 A40
  COMM A3000
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/AQ01_W.sav'
  /COMPRESSED.

**** Directors and Shareholders ***



PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/SH01_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  SHO1 A4
  PNR F8.0
  REGNUM A14
  SHCNT F7.0
  SHTYP A50
  SHCLS A20
  NOMV F34
  CURR A15
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/SH01_W.sav'
  /COMPRESSED.


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/SH02_W_20190609.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  V1 A4
  REG A14
  SHTYP A50
  NAME A263
  EHSH A20
  blank A2
  ALLIF A200
  TOTSH A22
  CURR A15
  TOTSV F34.0
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/SH02_W.sav'
  /COMPRESSED.


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/SH03_W_20190609.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  SH03 A4
  PNR F17.0
  STITLE A50
  SFORE A50
  SSUR A160
  SHTP A1
  ADD1 A50
  ADD2 A50
  ADD3 A50
  ADD4 A50
  ADD5 A25
  PCODE A14
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/SH03_W.sav'
  /COMPRESSED.

PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD01_W_20190609.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=100.0
  /VARIABLES=
  CD01 A4
  PNR F17.0
  DTTITLE A50
  PTITLE A35
  INILS A5
  SUFF A10
  HNRS A90
  FNAME A110
  MNAME A160
  SNAME A160
  ADD1 A50
  ADD2 A50
  ADD3 A50
  ADD4 A50
  ADD5 A50
  PCODE A10
  CNTRY A50
  BDATE A10
  FBDATE A10
  NALTY A40
  SADD A1
  MMARK A1
  URC A50
  CHGL F38
  CHDATE A10
  RCDATE A10
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD01_W.sav'
  /COMPRESSED.


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD02_W_20190609.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=100.0
  /VARIABLES=
  CD02 A4
  PNR F17
  REGNUM A14
  DTITLE A70
  PTITLE A200
  DIND A1
  SIND A1
  FDATE A10
  TDATE A10
  DTYPE F3
  QUAL A40
  PCODE A5
  OCCUP A100
  ADDID F9.0
  SADD A1
  APPOR F38.0
  RESOR F38.0
  CHGL F38.0
  CHDATE A10
  RCDATE A10
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD02_W.sav'
  /COMPRESSED.


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD03_W_20190609.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  CD03 A4
  ADDID F9
  ADD1 A50
  ADD2 A50
  ADD3 A50
  ADD4 A50
  ADD5 A50
  PCODE A10
  CROF A100
  PBOX A10
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD03_W.sav'
  /COMPRESSED.


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD04_W_20190609.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=100.0
  /VARIABLES=
  CD04 A4
  PNR F9.0
  REGNUM A14
  ADDID F9.0
  CDATE A10
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD04_W.sav'
  /COMPRESSED.

PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD05_W_20190609.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  CD05 A4
  PNR F9.0
  DDATE A10
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD05_W.sav'
  /COMPRESSED.

PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD06_W_20190609.txt"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  CD06 A4
  PNR A9
  SDATE A10
  EDATE AUTO
  DSYR F4.0
  SACT A20
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD06_W.sav'
  /COMPRESSED.

PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD07_W_20190609.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  CD07 A4
  PNR F9.0
  SDATE A10
  EDATE A10
  REGNUM A14
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/CD07_W.sav'
  /COMPRESSED.


PRESERVE.
SET DECIMAL DOT.
GET DATA  /TYPE=TXT
  /FILE="/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/MR01_W_20190609.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS="|"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  MR01 A4
  REGNUM A14
  NUM F9.0
  REGDATE A10
  CREDATE A10
  SATDATE A10
  CHDATE A10
  MEM A1
  CHCODE A14
  /MAP.
RESTORE. 
 COMPUTE UPLOAD=20190609. 
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE='/Volumes/Promise RAID/Creditsafe 2019v3/UKLTD_W_20190609/MR01_W.sav'
  /COMPRESSED.
