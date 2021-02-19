* Encoding: UTF-8.

* The Python block starts here.
BEGIN PROGRAM.
# Import the SPSS and SPSS Client modules.
import spss, SpssClient
 
# Start the SPSS Client. Always do this first.
SpssClient.StartClient()
 
# Submit some syntax string to SPSS.
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
SAVE OUTFILE="\\\ds.leeds.ac.uk\student\student13\cnlp\Research Fellowship\UKLTD_Database\AC01_W_20190609.sav"
  /COMPRESSED.
""")
SpssClient.StopClient()
END PROGRAM.

