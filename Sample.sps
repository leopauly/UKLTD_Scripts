* Encoding: UTF-8.


PRESERVE.
SET DECIMAL DOT.

GET DATA  /TYPE=TXT
  /FILE="C:\Users\cnlp\Research Fellowship\UKLTD_Scripts\AC02_W_20190609.txt"
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
 COMPUTE UPLOAD=20190602.
 FORMATS UPLOAD (F8.0). 
 EXECUTE.
SAVE OUTFILE="C:\Users\cnlp\Research Fellowship\UKLTD_Scripts\AC02_W_20190609.sav"
  /COMPRESSED.

