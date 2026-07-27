/*  PISA 2000 USA National data - School */

Options nosource nocenter;

libname LIB 'C:\PISA ECB\';

filename in1 'C:\PISA ECB\usa_school.dat';

proc format; 
   value $COUNTY
      "840" = "USA"
   ;
   value $STIDSTR
      "99" = "Stratum"
   ;
   value $SC0101F 
      "1" = "Rural area (less 3 000)"
      "2" = "Small town (3 000 to 15 000)"
      "3" = "Town (15 000 to 100 000)"
      "4" = "City (100 000 to 1 000 000)"
      "5" = "Close City (more 1 000 000) centre"
      "6" = "City (more 1 000 000) elswhere"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0301F 
      "1" = "Public"
      "2" = "Private"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0501F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0502F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0503F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0504F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0505F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0506F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0507F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0508F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0509F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0510F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0511F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0512F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0514F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0515F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0516F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0604F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0701F 
      "1" = "Never"
      "2" = "Sometimes"
      "3" = "Always"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0702F 
      "1" = "Never"
      "2" = "Sometimes"
      "3" = "Always"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0703F 
      "1" = "Never"
      "2" = "Sometimes"
      "3" = "Always"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0704F 
      "1" = "Never"
      "2" = "Sometimes"
      "3" = "Always"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0705F 
      "1" = "Never"
      "2" = "Sometimes"
      "3" = "Always"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0706F 
      "1" = "Never"
      "2" = "Sometimes"
      "3" = "Always"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0707F 
      "1" = "Never"
      "2" = "Sometimes"
      "3" = "Always"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0901F 
      "1" = "Not important"
      "2" = "Important"
      "3" = "Very important"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0902F 
      "1" = "Not important"
      "2" = "Important"
      "3" = "Very important"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0903F 
      "1" = "Not important"
      "2" = "Important"
      "3" = "Very important"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0904F 
      "1" = "Not important"
      "2" = "Important"
      "3" = "Very important"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC0905F 
      "1" = "Not important"
      "2" = "Important"
      "3" = "Very important"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1001F 
      "1" = "Not likely"
      "2" = "Likely"
      "3" = "Very likely"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1002F 
      "1" = "Not likely"
      "2" = "Likely"
      "3" = "Very likely"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1003F 
      "1" = "Not likely"
      "2" = "Likely"
      "3" = "Very likely"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1004F 
      "1" = "Not likely"
      "2" = "Likely"
      "3" = "Very likely"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1005F 
      "1" = "Not likely"
      "2" = "Likely"
      "3" = "Very likely"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1006F 
      "1" = "Not likely"
      "2" = "Likely"
      "3" = "Very likely"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1101F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1102F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1103F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1104F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1105F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1106F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1107F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1108F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1109F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1110F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1201F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1202F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1203F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1204F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1205F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1206F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1601F 
      "1" = "Never"
      "2" = "Once a Year"
      "3" = "Twice a year"
      "4" = "3 times a year"
      "5" = "4 or more times a year"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1602F 
      "1" = "Never"
      "2" = "Once a Year"
      "3" = "Twice a year"
      "4" = "3 times a year"
      "5" = "4 or more times a year"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1603F 
      "1" = "Never"
      "2" = "Once a Year"
      "3" = "Twice a year"
      "4" = "3 times a year"
      "5" = "4 or more times a year"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1604F 
      "1" = "Never"
      "2" = "Once a Year"
      "3" = "Twice a year"
      "4" = "3 times a year"
      "5" = "4 or more times a year"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1605F 
      "1" = "Never"
      "2" = "Once a Year"
      "3" = "Twice a year"
      "4" = "3 times a year"
      "5" = "4 or more times a year"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1701F 
      "1" = "Never"
      "2" = "Once a Year"
      "3" = "Twice a year"
      "4" = "3 times a year"
      "5" = "4 or more times a year"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1702F 
      "1" = "Never"
      "2" = "Once a Year"
      "3" = "Twice a year"
      "4" = "3 times a year"
      "5" = "4 or more times a year"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1703F 
      "1" = "Never"
      "2" = "Once a Year"
      "3" = "Twice a year"
      "4" = "3 times a year"
      "5" = "4 or more times a year"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1704F 
      "1" = "Never"
      "2" = "Once a Year"
      "3" = "Twice a year"
      "4" = "3 times a year"
      "5" = "4 or more times a year"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1801F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1802F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1803F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1804F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1805F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1806F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1807F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1808F 
      "1" = "Yes"
      "2" = "No"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1901F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1902F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1903F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1904F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1905F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1906F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1907F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1908F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1909F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1910F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1911F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1912F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1913F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1914F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1915F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1916F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1917F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC1918F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC2001F 
      "1" = "Strongly Disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly Agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC2002F 
      "1" = "Strongly Disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly Agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC2003F 
      "1" = "Strongly Disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly Agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC2004F 
      "1" = "Strongly Disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly Agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC2101F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC2102F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC2103F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC2104F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC2105F 
      "1" = "Not at all"
      "2" = "A little"
      "3" = "Some"
      "4" = "A lot"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $SC221AF 
      "0" = "Not Checked"
      "1" = "Checked"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/R"
   ;

run;

data lib.school;
   infile in1 lrecl=948;
      input 
   #1
      @1 SCHNAME $50.
      @51 STIDSTRT $2.
      @53 STIDSCH  $3.
      @56 SC01Q01  $1.
      @57 SC02Q01  13.
      @83 SC03Q01  $1.
      @84 SC04Q01  13.
      @97 SC04Q02  13.
      @110 SC04Q03  13.
      @123 SC04Q04  13.
      @136 SC05Q15  1.
      @137 SC05Q16  $1.
      @138 SC05Q01  $1.
      @139 SC05Q02  $1.
      @140 SC05Q03  $1.
      @141 SC05Q04  $1.
      @142 SC05Q05  $1.
      @143 SC05Q06  $1.
      @144 SC05Q07  $1.
      @145 SC05Q08  $1.
      @146 SC05Q09  $1.
      @147 SC05Q10  $1.
      @148 SC05Q11  $1.
      @149 SC05Q12  $1.
      @150 SC05Q14  $1.
      @151 SC06Q04  $1.
      @152 SC06Q4W  $150.
      @302 SC06Q01  13.
      @315 SC06Q02  13.
      @328 SC06Q03  13.
      @341 SC07Q01  $1.
      @342 SC07Q02  $1.
      @343 SC07Q03  $1.
      @344 SC07Q04  $1.
      @345 SC07Q05  $1.
      @346 SC07Q06  $1.
      @347 SC07Q07  $1.
      @348 SC08Q01  13.
      @361 SC08Q02  13.
      @374 SC08Q03  13.
      @387 SC09Q01  $1.
      @388 SC09Q02  $1.
      @389 SC09Q03  $1.
      @390 SC09Q04  $1.
      @391 SC09Q05  $1.
      @392 SC10Q01  $1.
      @393 SC10Q02  $1.
      @394 SC10Q03  $1.
      @395 SC10Q04  $1.
      @396 SC10Q05  $1.
      @397 SC10Q06  $1.
      @398 SC11Q01  $1.
      @399 SC11Q02  $1.
      @400 SC11Q08  $1.
      @401 SC11Q09  $1.
      @402 SC11Q03  $1.
      @403 SC11Q06  $1.
      @404 SC11Q04  $1.
      @405 SC11Q05  $1.
      @406 SC11Q07  $1.
      @407 SC11Q10  $1.
      @408 SC12Q01  $1.
      @409 SC12Q06  $1.
      @410 SC12Q02  $1.
      @411 SC12Q03  $1.
      @412 SC12Q04  $1.
      @413 SC12Q05  $1.
      @414 SC13Q01  13.
      @427 SC13Q07  13.
      @440 SC13Q02  13.
      @453 SC13Q08  13.
      @466 SC13Q03  13.
      @479 SC13Q09  13.
      @492 SC13Q04  13.
      @505 SC13Q10  13.
      @518 SC13Q05  13.
      @531 SC13Q11  13.
      @544 SC13Q06  13.
      @557 SC14Q01  13.
      @570 SC14Q02  13.
      @583 SC14Q03  13.
      @596 SC14Q04  13.
      @609 SC14Q05  13.
      @622 SC14Q06  13.
      @635 SC14Q07  13.
      @648 SC14Q08  13.
      @661 SC14Q19  13.
      @674 SC14Q20  13.
      @687 SC14Q09  13.
      @700 SC14Q10  13.
      @713 SC14Q11  13.
      @726 SC14Q12  13.
      @739 SC14Q13  13.
      @752 SC14Q14  13.
      @765 SC14Q15  13.
      @778 SC14Q16  13.
      @791 SC14Q17  13.
      @804 SC14Q18  13.
      @817 SC15Q01  13.
      @830 SC16Q01  $1.
      @831 SC16Q02  $1.
      @832 SC16Q03  $1.
      @833 SC16Q04  $1.
      @834 SC16Q05  $1.
      @835 SC17Q01  $1.
      @836 SC17Q02  $1.
      @837 SC17Q03  $1.
      @838 SC17Q04  $1.
      @839 SC18Q01  $1.
      @840 SC18Q02  $1.
      @841 SC18Q03  $1.
      @842 SC18Q04  $1.
      @843 SC18Q07  $1.
      @844 SC18Q08  $1.
      @845 SC18Q05  $1.
      @846 SC18Q06  $1.
      @847 SC19Q01  $1.
      @848 SC19Q02  $1.
      @849 SC19Q03  $1.
      @850 SC19Q04  $1.
      @851 SC19Q05  $1.
      @852 SC19Q06  $1.
      @853 SC19Q07  $1.
      @854 SC19Q08  $1.
      @855 SC19Q09  $1.
      @856 SC19Q10  $1.
      @857 SC19Q11  $1.
      @858 SC19Q12  $1.
      @859 SC19Q13  $1.
      @860 SC19Q14  $1.
      @861 SC19Q15  $1.
      @862 SC19Q16  $1.
      @863 SC19Q17  $1.
      @864 SC19Q18  $1.
      @865 SC20Q01  $1.
      @866 SC20Q02  $1.
      @867 SC20Q03  $1.
      @868 SC20Q04  $1.
      @869 SC21Q01  $1.
      @870 SC21Q02  $1.
      @871 SC21Q03  $1.
      @872 SC21Q04  $1.
      @873 SC21Q05  $1.
      @874 SC22Q01A $1.
      @875 SC22Q01B $1.
      @876 SC22Q01C $1.
      @877 SC22Q01D $1.
      @878 SC22Q01E $1.
      @879 SC22Q01F $1.
      @880 SC22Q02A $1.
      @881 SC22Q02B $1.
      @882 SC22Q02C $1.
      @883 SC22Q02D $1.
      @884 SC22Q02E $1.
      @885 SC22Q02F $1.
      @886 SC22Q03A $1.
      @887 SC22Q03B $1.
      @888 SC22Q03C $1.
      @889 SC22Q03D $1.
      @890 SC22Q03E $1.
      @891 SC22Q03F $1.
      @892 SC22Q04A $1.
      @893 SC22Q04B $1.
      @894 SC22Q04C $1.
      @895 SC22Q04D $1.
      @896 SC22Q04E $1.
      @897 SC22Q04F $1.
      @898 SC22Q05A $1.
      @899 SC22Q05B $1.
      @900 SC22Q05C $1.
      @901 SC22Q05D $1.
      @902 SC22Q05E $1.
      @903 SC22Q05F $1.
      @904 SC22Q06A $1.
      @905 SC22Q06B $1.
      @906 SC22Q06C $1.
      @907 SC22Q06D $1.
      @908 SC22Q06E $1.
      @909 SC22Q06F $1.
      @910 SC22Q07A $1.
      @911 SC22Q07B $1.
      @912 SC22Q07C $1.
      @913 SC22Q07D $1.
      @914 SC22Q07E $1.
      @915 SC22Q07F $1.
      @916 SC22Q08A $1.
      @917 SC22Q08B $1.
      @918 SC22Q08C $1.
      @919 SC22Q08D $1.
      @920 SC22Q08E $1.
      @921 SC22Q08F $1.
      @922 SC22Q09A $1.
      @923 SC22Q09B $1.
      @924 SC22Q09C $1.
      @925 SC22Q09D $1.
      @926 SC22Q09E $1.
      @927 SC22Q09F $1.
      @928 SC22Q10A $1.
      @929 SC22Q10B $1.
      @930 SC22Q10C $1.
      @931 SC22Q10D $1.
      @932 SC22Q10E $1.
      @933 SC22Q10F $1.
      @934 SC22Q11A $1.
      @935 SC22Q11B $1.
      @936 SC22Q11C $1.
      @937 SC22Q11D $1.
      @938 SC22Q11E $1.
      @939 SC22Q11F $1.
      @940 SC22Q12A $1.
      @941 SC22Q12B $1.
      @942 SC22Q12C $1.
      @943 SC22Q12D $1.
      @944 SC22Q12E $1.
      @945 SC22Q12F $1.
      @946 COUNTRY $3.
      ;

  
   label
      SCHNAME = "School Name"
      STIDSTRT = "Stratum ID"
      STIDSCH  = "School ID"
      SC01Q01  = "School location - Q1"
      SC02Q01  = "Number of boys - Q2a"
      SC03Q01  = "School public/private - Q3"
      SC04Q01  = "Funds, government - Q4a"
      SC04Q02  = "Funds, student fees - Q4b"
      SC04Q03  = "Funds, benefactors - Q4c"
      SC04Q04  = "Funds, other - Q4d"
      SC05Q15  = "Pre-Kingdergarten - Q5a"
      SC05Q16  = "Kingdergarten - Q5b"
      SC05Q01  = "Grade 1 - Q5c"
      SC05Q02  = "Grade 2 - Q5d"
      SC05Q03  = "Grade 3 - Q5e"
      SC05Q04  = "Grade 4 - Q5f"
      SC05Q05  = "Grade 5 - Q5g"
      SC05Q06  = "Grade 6 - Q5h"
      SC05Q07  = "Grade 7 - Q5i"
      SC05Q08  = "Grade 8 - Q5j"
      SC05Q09  = "Grade 9 - Q5k"
      SC05Q10  = "Grade 10 - Q5l"
      SC05Q11  = "Grade 11 - Q5m"
      SC05Q12  = "Grade 12 - Q5n"
      SC05Q14  = "Ungraded- Q5o"
      SC06Q04  = "Use form of block scheduling - Q6a"
      SC06Q4W  = "If yes, please describe - Q6a"
      SC06Q01  = "Instructional weeks - Q6ba"
      SC06Q02  = "Instructional periods - Q6bb"
      SC06Q03  = "Instructional minutes - Q6bc"
      SC07Q01  = "Residence - Q7a"
      SC07Q02  = "Academic performance - Q7b"
      SC07Q03  = "Feeder schools - Q7c"
      SC07Q04  = "Phylosophy and religion - Q7d"
      SC07Q05  = "Special program - Q7e"
      SC07Q06  = "Family preference - Q7f"
      SC07Q07  = "Admittance factors, other - Q7g"
      SC08Q01  = "<General studies> - Q8a"
      SC08Q02  = "<Vocational studies> - Q8b"
      SC08Q03  = "<Academic/college prep studies> -Q8c"
      SC09Q01  = "Student's choice - Q9a"
      SC09Q02  = "Academic record - Q9b"
      SC09Q03  = "Placement exams - Q9c"
      SC09Q04  = "Teacher recommend - Q9d"
      SC09Q05  = "Parents' request - Q9e"
      SC10Q01  = "Low achievement - Q10a"
      SC10Q02  = "High achievement - Q10b"
      SC10Q03  = "Behaviour - Q10c"
      SC10Q04  = "Special needs - Q10d"
      SC10Q05  = "Parents' request - Q10e"
      SC10Q06  = "Transfer reason, other - Q10f"
      SC11Q01  = "Poor buildings - Q11a"
      SC11Q02  = "Poor heating - Q11b"
      SC11Q08  = "Poor science equip - Q11c"
      SC11Q09  = "Poor art facilities - Q11d"
      SC11Q03  = "Inadequate space - Q11e"
      SC11Q06  = "Poor library - Q11f"
      SC11Q04  = "Lack of textbooks and basic supplies- Q11g"
      SC11Q05  = "Lack of computers - Q11h"
      SC11Q07  = "Poor multi-media - Q11i"
      SC11Q10  = "Discipline and safety -Q11j"
      SC12Q01  = "Courses for gifted   - Q12a"
      SC12Q06  = "English as a second language - Q12b"
      SC12Q02  = "Englisg training - Q12c"
      SC12Q03  = "Study skills - Q12d"
      SC12Q04  = "Special tutoring - Q12e"
      SC12Q05  = "Help rooms - Q12f"
      SC13Q01  = "Computers altogether - Q13aa"
      SC13Q07  = "Computers altogether(Internet) - Q13ab"
      SC13Q02  = "Computers students - Q13ba"
      SC13Q08  = "Computers students(Internet) - Q13bb"
      SC13Q03  = "Computers teachers - Q13ca"
      SC13Q09  = "Computers teachers(Internet) - Q13cb"
      SC13Q04  = "Computers admin - Q13da"
      SC13Q10  = "Computers admin(Internet) - Q13db"
      SC13Q05  = "Teachers and admin Staff - Q13ea"
      SC13Q11  = "Teachers and admin Staff(Internet)- Q13eb"
      SC13Q06  = "Computers with Lan - Q13fa"
      SC14Q01  = "Ftime teach in total - Q14a1"
      SC14Q02  = "Ptime teach in total - Q14a2"
      SC14Q03  = "Ftime teach <BA,MS>  in <education> - Q14b1"
      SC14Q04  = "Ptime teach  <BA,MS>  in <education> - Q14b2"
      SC14Q05  = "Ftime teach fully certified - Q14c1"
      SC14Q06  = "Ptime teach fully certified - Q14c2"
      SC14Q07  = "Ftime teach English - Q14d1"
      SC14Q08  = "Ptime teach English - Q14d2"
      SC14Q19  = "Ftime English as second language - Q14e1"
      SC14Q20  = "Ptime English as second language - Q14e2"
      SC14Q09  = "Ftime teach <BA,MS>  in English - Q14f1"
      SC14Q10  = "Ptime teach <BA,MS>  in English - Q14f2"
      SC14Q11  = "Ftime teach maths as main - Q14g1"
      SC14Q12  = "Ptime teach maths as main - Q14g2"
      SC14Q13  = "Ftime teach <BA,MS> in maths - Q14h1"
      SC14Q14  = "Ptime teach <BA,MS> in maths - Q14h2"
      SC14Q15  = "Ftime teach science as main - Q14i1"
      SC14Q16  = "Ptime teach science as main- Q14i2"
      SC14Q17  = "Ftime have <BA,MS>  in science - Q14j1"
      SC14Q18  = "Ptime have <BA,MS>  in science - Q14j2"
      SC15Q01  = "Professional development - Q15"
      SC16Q01  = "Standardised test - Q16a"
      SC16Q02  = "Teacher's test - Q16b"
      SC16Q03  = "Teacher's ratings - Q16c"
      SC16Q04  = "Students' portfolios - Q16d"
      SC16Q05  = "Assignments - Q16e"
      SC17Q01  = "Parents/guardians - Q17a"
      SC17Q02  = "Principal - Q17b"
      SC17Q03  = "Local education authorities - Q17c"
      SC17Q04  = "State education authorities - Q17d"
      SC18Q01  = "Parents information - Q18a"
      SC18Q02  = "Promotion decisions - Q18b"
      SC18Q03  = "Instructional grouping - Q18c"
      SC18Q04  = "District comparison - Q18d"
      SC18Q07  = "Compare to state performance - Q18e"
      SC18Q08  = "Compare national performance - Q18f"
      SC18Q05  = "Progress monitoring - Q18g"
      SC18Q06  = "Teachers' effectiveness -Q18h"
      SC19Q01  = "Low expectations - Q19a"
      SC19Q02  = "Student absenteeism - Q19b"
      SC19Q03  = "Poor Stud-teach relations - Q19c"
      SC19Q04  = "Teacher turnover - Q19d"
      SC19Q05  = "Lack parent support - Q19e"
      SC19Q06  = "Disruptions of classes - Q19f"
      SC19Q07  = "Ignoring students - Q19g"
      SC19Q08  = "Teacher absenteeism - Q19h"
      SC19Q09  = "Skipping classes - Q19i"
      SC19Q10  = "Lack of respect -Q19j"
      SC19Q11  = "Resisting change - Q19k"
      SC19Q12  = "Lack of instr time - Q19l"
      SC19Q13  = "Use of alcohol - Q19m"
      SC19Q14  = "Teachers' strictness - Q19n"
      SC19Q15  = "Bullying - Q19o"
      SC19Q16  = "Lack of encouragm - Q19p"
      SC19Q17  = "Poor home envrm - Q19q"
      SC19Q18  = "Racial/ethnic tendions - Q19r"
      SC20Q01  = "High morale -Q20a"
      SC20Q02  = "Enthusiasm -Q20b"
      SC20Q03  = "Pride in school -Q20c"
      SC20Q04  = "Value acad achvm -Q20d"
      SC21Q01  = "Teachers - Q21a"
      SC21Q02  = "English teachers - Q21b"
      SC21Q03  = "<Mathematics> teacher - Q21c"
      SC21Q04  = "<Science> teachers - Q21d"
      SC21Q05  = "Support personnel - Q21e"
      SC22Q01A = "Hiring teachers -Q22a: a"
      SC22Q01B = "Hiring teachers -Q22a: b"
      SC22Q01C = "Hiring teachers -Q22a: c"
      SC22Q01D = "Hiring teachers -Q22a: d"
      SC22Q01E = "Hiring teachers -Q22a: e"
      SC22Q01F = "Hiring teachers -Q22a: f"
      SC22Q02A = "Firing teachers - Q22b: a"
      SC22Q02B = "Firing teachers - Q22b: b"
      SC22Q02C = "Firing teachers - Q22b: c"
      SC22Q02D = "Firing teachers - Q22b: d"
      SC22Q02E = "Firing teachers - Q22b: e"
      SC22Q02F = "Firing teachers - Q22b: f"
      SC22Q03A = "Teacher salaries - Q22c: a"
      SC22Q03B = "Teacher salaries - Q22c: b"
      SC22Q03C = "Teacher salaries - Q22c: c"
      SC22Q03D = "Teacher salaries - Q22c: d"
      SC22Q03E = "Teacher salaries - Q22c: e"
      SC22Q03F = "Teacher salaries - Q22c: f"
      SC22Q04A = "Salary increase - Q22d: a"
      SC22Q04B = "Salary increase - Q22d: b"
      SC22Q04C = "Salary increase - Q22d: c"
      SC22Q04D = "Salary increase - Q22d: d"
      SC22Q04E = "Salary increase - Q22d: e"
      SC22Q04F = "Salary increase - Q22d: f"
      SC22Q05A = "Budget formulation - Q22e: a"
      SC22Q05B = "Budget formulation - Q22e: b"
      SC22Q05C = "Budget formulation - Q22e: c"
      SC22Q05D = "Budget formulation - Q22e: d"
      SC22Q05E = "Budget formulation - Q22e: e"
      SC22Q05F = "Budget formulation - Q22e: f"
      SC22Q06A = "Budget allocation - Q22f: a"
      SC22Q06B = "Budget allocation - Q22f: b"
      SC22Q06C = "Budget allocation - Q22f: c"
      SC22Q06D = "Budget allocation - Q22f: d"
      SC22Q06E = "Budget allocation - Q22f: e"
      SC22Q06F = "Budget allocation - Q22f: f"
      SC22Q07A = "Disciplinary policies - Q22g: a"
      SC22Q07B = "Disciplinary policies - Q22g: b"
      SC22Q07C = "Disciplinary policies - Q22g: c"
      SC22Q07D = "Disciplinary policies - Q22g: d"
      SC22Q07E = "Disciplinary policies - Q22g: e"
      SC22Q07F = "Disciplinary policies - Q22g: f"
      SC22Q08A = "Assessment policies - Q22h: a"
      SC22Q08B = "Assessment policies - Q22h: b"
      SC22Q08C = "Assessment policies - Q22h: c"
      SC22Q08D = "Assessment policies - Q22h: d"
      SC22Q08E = "Assessment policies - Q22h: e"
      SC22Q08F = "Assessment policies - Q22h: f"
      SC22Q09A = "Student admittance - Q22i: a"
      SC22Q09B = "Student admittance - Q22i: b"
      SC22Q09C = "Student admittance - Q22i: c"
      SC22Q09D = "Student admittance - Q22i: d"
      SC22Q09E = "Student admittance - Q22i: e"
      SC22Q09F = "Student admittance - Q22i: f"
      SC22Q10A = "Textbooks - Q22j: a"
      SC22Q10B = "Textbooks - Q22j: b"
      SC22Q10C = "Textbooks - Q22j: c"
      SC22Q10D = "Textbooks - Q22j: d"
      SC22Q10E = "Textbooks - Q22j: e"
      SC22Q10F = "Textbooks - Q22j: f"
      SC22Q11A = "Course content - Q22k: a"
      SC22Q11B = "Course content - Q22k: b"
      SC22Q11C = "Course content - Q22k: c"
      SC22Q11D = "Course content - Q22k: d"
      SC22Q11E = "Course content - Q22k: e"
      SC22Q11F = "Course content - Q22k: f"
      SC22Q12A = "Course offer - Q22l: a"
      SC22Q12B = "Course offer - Q22l: b"
      SC22Q12C = "Course offer - Q22l: c"
      SC22Q12D = "Course offer - Q22l: d"
      SC22Q12E = "Course offer - Q22l: e"
      SC22Q12F = "Course offer - Q22l: f"
      COUNTRY = "Country"
      ;

/* format
      COUNTRY   $COUNTY.
      SC01Q01    $SC0101F .
      SC03Q01    $SC0301F .
      SC05Q01    $SC0501F .
      SC05Q02    $SC0502F .
      SC05Q03    $SC0503F .
      SC05Q04    $SC0504F .
      SC05Q05    $SC0505F .
      SC05Q06    $SC0506F .
      SC05Q07    $SC0507F .
      SC05Q08    $SC0508F .
      SC05Q09    $SC0509F .
      SC05Q10    $SC0510F .
      SC05Q11    $SC0511F .
      SC05Q12    $SC0512F .
      SC05Q14    $SC0514F .
      SC05Q15    $SC0515F .
      SC05Q16    $SC0516F .
      SC06Q04    $SC0604F .
      SC07Q01    $SC0701F .
      SC07Q02    $SC0702F .
      SC07Q03    $SC0703F .
      SC07Q04    $SC0704F .
      SC07Q05    $SC0705F .
      SC07Q06    $SC0706F .
      SC07Q07    $SC0707F .
      SC09Q01    $SC0901F .
      SC09Q02    $SC0902F .
      SC09Q03    $SC0903F .
      SC09Q04    $SC0904F .
      SC09Q05    $SC0905F .
      SC10Q01    $SC1001F .
      SC10Q02    $SC1002F .
      SC10Q03    $SC1003F .
      SC10Q04    $SC1004F .
      SC10Q05    $SC1005F .
      SC10Q06    $SC1006F .
      SC11Q01    $SC1101F .
      SC11Q02    $SC1102F .
      SC11Q03    $SC1103F .
      SC11Q04    $SC1104F .
      SC11Q05    $SC1105F .
      SC11Q06    $SC1106F .
      SC11Q07    $SC1107F .
      SC11Q08    $SC1108F .
      SC11Q09    $SC1109F .
      SC11Q10    $SC1110F .
      SC12Q01    $SC1201F .
      SC12Q02    $SC1202F .
      SC12Q03    $SC1203F .
      SC12Q04    $SC1204F .
      SC12Q05    $SC1205F .
      SC12Q06    $SC1206F .
      SC16Q01    $SC1601F .
      SC16Q02    $SC1602F .
      SC16Q03    $SC1603F .
      SC16Q04    $SC1604F .
      SC16Q05    $SC1605F .
      SC17Q01    $SC1701F .
      SC17Q02    $SC1702F .
      SC17Q03    $SC1703F .
      SC17Q04    $SC1704F .
      SC18Q01    $SC1801F .
      SC18Q02    $SC1802F .
      SC18Q03    $SC1803F .
      SC18Q04    $SC1804F .
      SC18Q05    $SC1805F .
      SC18Q06    $SC1806F .
      SC18Q07    $SC1807F .
      SC18Q08    $SC1808F .
      SC19Q01    $SC1901F .
      SC19Q02    $SC1902F .
      SC19Q03    $SC1903F .
      SC19Q04    $SC1904F .
      SC19Q05    $SC1905F .
      SC19Q06    $SC1906F .
      SC19Q07    $SC1907F .
      SC19Q08    $SC1908F .
      SC19Q09    $SC1909F .
      SC19Q10    $SC1910F .
      SC19Q11    $SC1911F .
      SC19Q12    $SC1912F .
      SC19Q13    $SC1913F .
      SC19Q14    $SC1914F .
      SC19Q15    $SC1915F .
      SC19Q16    $SC1916F .
      SC19Q17    $SC1917F .
      SC19Q18    $SC1918F .
      SC20Q01    $SC2001F .
      SC20Q02    $SC2002F .
      SC20Q03    $SC2003F .
      SC20Q04    $SC2004F .
      SC21Q01    $SC2101F .
      SC21Q02    $SC2102F .
      SC21Q03    $SC2103F .
      SC21Q04    $SC2104F .
      SC21Q05    $SC2105F .
      SC22Q01A   $SC221AF .
      SC22Q01B   $SC221AF .
      SC22Q01C   $SC221AF .
      SC22Q01D   $SC221AF .
      SC22Q01E   $SC221AF .
      SC22Q01F   $SC221AF .
      SC22Q02A   $SC221AF .
      SC22Q02B   $SC221AF .
      SC22Q02C   $SC221AF .
      SC22Q02D   $SC221AF .
      SC22Q02E   $SC221AF .
      SC22Q02F   $SC221AF .
      SC22Q03A   $SC221AF .
      SC22Q03B   $SC221AF .
      SC22Q03C   $SC221AF .
      SC22Q03D   $SC221AF .
      SC22Q03E   $SC221AF .
      SC22Q03F   $SC221AF .
      SC22Q04A   $SC221AF .
      SC22Q04B   $SC221AF .
      SC22Q04C   $SC221AF .
      SC22Q04D   $SC221AF .
      SC22Q04E   $SC221AF .
      SC22Q04F   $SC221AF .
      SC22Q05A   $SC221AF .
      SC22Q05B   $SC221AF .
      SC22Q05C   $SC221AF .
      SC22Q05D   $SC221AF .
      SC22Q05E   $SC221AF .
      SC22Q05F   $SC221AF .
      SC22Q06A   $SC221AF .
      SC22Q06B   $SC221AF .
      SC22Q06C   $SC221AF .
      SC22Q06D   $SC221AF .
      SC22Q06E   $SC221AF .
      SC22Q06F   $SC221AF .
      SC22Q07A   $SC221AF .
      SC22Q07B   $SC221AF .
      SC22Q07C   $SC221AF .
      SC22Q07D   $SC221AF .
      SC22Q07E   $SC221AF .
      SC22Q07F   $SC221AF .
      SC22Q08A   $SC221AF .
      SC22Q08B   $SC221AF .
      SC22Q08C   $SC221AF .
      SC22Q08D   $SC221AF .
      SC22Q08E   $SC221AF .
      SC22Q08F   $SC221AF .
      SC22Q09A   $SC221AF .
      SC22Q09B   $SC221AF .
      SC22Q09C   $SC221AF .
      SC22Q09D   $SC221AF .
      SC22Q09E   $SC221AF .
      SC22Q09F   $SC221AF .
      SC22Q10A   $SC221AF .
      SC22Q10B   $SC221AF .
      SC22Q10C   $SC221AF .
      SC22Q10D   $SC221AF .
      SC22Q10E   $SC221AF .
      SC22Q10F   $SC221AF .
      SC22Q11A   $SC221AF .
      SC22Q11B   $SC221AF .
      SC22Q11C   $SC221AF .
      SC22Q11D   $SC221AF .
      SC22Q11E   $SC221AF .
      SC22Q11F   $SC221AF .
      SC22Q12A   $SC221AF .
      SC22Q12B   $SC221AF .
      SC22Q12C   $SC221AF .
      SC22Q12D   $SC221AF .
      SC22Q12E   $SC221AF .
      SC22Q12F   $SC221AF .
      STIDSTRT   $STIDSTR.
      ;
 */

run;

/*
proc contents;
run;

proc freq;
table 
      STIDSTRT   
      SC01Q01    
      SC03Q01    
      SC05Q15    
      SC05Q16    
      SC05Q01    
      SC05Q02    
      SC05Q03    
      SC05Q04    
      SC05Q05    
      SC05Q06    
      SC05Q07    
      SC05Q08    
      SC05Q09    
      SC05Q10    
      SC05Q11    
      SC05Q12    
      SC05Q14    
      SC06Q04    
      SC07Q01    
      SC07Q02    
      SC07Q03    
      SC07Q04    
      SC07Q05    
      SC07Q06    
      SC07Q07    
      SC09Q01    
      SC09Q02    
      SC09Q03    
      SC09Q04    
      SC09Q05    
      SC10Q01    
      SC10Q02    
      SC10Q03    
      SC10Q04    
      SC10Q05    
      SC10Q06    
      SC11Q01    
      SC11Q02    
      SC11Q08    
      SC11Q09    
      SC11Q03    
      SC11Q06    
      SC11Q04    
      SC11Q05    
      SC11Q07    
      SC11Q10    
      SC12Q01    
      SC12Q06    
      SC12Q02    
      SC12Q03    
      SC12Q04    
      SC12Q05    
      SC16Q01    
      SC16Q02    
      SC16Q03    
      SC16Q04    
      SC16Q05    
      SC17Q01    
      SC17Q02    
      SC17Q03    
      SC17Q04    
      SC18Q01    
      SC18Q02    
      SC18Q03    
      SC18Q04    
      SC18Q07    
      SC18Q08    
      SC18Q05    
      SC18Q06    
      SC19Q01    
      SC19Q02    
      SC19Q03    
      SC19Q04    
      SC19Q05    
      SC19Q06    
      SC19Q07    
      SC19Q08    
      SC19Q09    
      SC19Q10    
      SC19Q11    
      SC19Q12    
      SC19Q13    
      SC19Q14    
      SC19Q15    
      SC19Q16    
      SC19Q17    
      SC19Q18    
      SC20Q01    
      SC20Q02    
      SC20Q03    
      SC20Q04    
      SC21Q01    
      SC21Q02    
      SC21Q03    
      SC21Q04    
      SC21Q05    
      SC22Q01A   
      SC22Q01B   
      SC22Q01C   
      SC22Q01D   
      SC22Q01E   
      SC22Q01F   
      SC22Q02A   
      SC22Q02B   
      SC22Q02C   
      SC22Q02D   
      SC22Q02E   
      SC22Q02F   
      SC22Q03A   
      SC22Q03B   
      SC22Q03C   
      SC22Q03D   
      SC22Q03E   
      SC22Q03F   
      SC22Q04A   
      SC22Q04B   
      SC22Q04C   
      SC22Q04D   
      SC22Q04E   
      SC22Q04F   
      SC22Q05A   
      SC22Q05B   
      SC22Q05C   
      SC22Q05D   
      SC22Q05E   
      SC22Q05F   
      SC22Q06A   
      SC22Q06B   
      SC22Q06C   
      SC22Q06D   
      SC22Q06E   
      SC22Q06F   
      SC22Q07A   
      SC22Q07B   
      SC22Q07C   
      SC22Q07D   
      SC22Q07E   
      SC22Q07F   
      SC22Q08A   
      SC22Q08B   
      SC22Q08C   
      SC22Q08D   
      SC22Q08E   
      SC22Q08F   
      SC22Q09A   
      SC22Q09B   
      SC22Q09C   
      SC22Q09D   
      SC22Q09E   
      SC22Q09F   
      SC22Q10A   
      SC22Q10B   
      SC22Q10C   
      SC22Q10D   
      SC22Q10E   
      SC22Q10F   
      SC22Q11A   
      SC22Q11B   
      SC22Q11C   
      SC22Q11D   
      SC22Q11E   
      SC22Q11F   
      SC22Q12A   
      SC22Q12B   
      SC22Q12C   
      SC22Q12D   
      SC22Q12E   
      SC22Q12F   
      COUNTRY   
;
run;

proc means;
var 
      SC02Q01    
      SC04Q01    
      SC04Q02    
      SC04Q03    
      SC04Q04    
      SC06Q01    
      SC06Q02    
      SC06Q03    
      SC08Q01    
      SC08Q02    
      SC08Q03    
      SC13Q01    
      SC13Q07    
      SC13Q02    
      SC13Q08    
      SC13Q03    
      SC13Q09    
      SC13Q04    
      SC13Q10    
      SC13Q05    
      SC13Q11    
      SC13Q06    
      SC14Q01    
      SC14Q02    
      SC14Q03    
      SC14Q04    
      SC14Q05    
      SC14Q06    
      SC14Q07    
      SC14Q08    
      SC14Q19    
      SC14Q20    
      SC14Q09    
      SC14Q10    
      SC14Q11    
      SC14Q12    
      SC14Q13    
      SC14Q14    
      SC14Q15    
      SC14Q16    
      SC14Q17    
      SC14Q18    
      SC15Q01    
;
run;
 */

