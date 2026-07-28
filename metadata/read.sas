/*  PISA 2000 USA National data - Reading */

Options nosource nocenter;

libname LIB 'C:\PISA\ECB\';

filename in1 'C:\PISA\ECB\usa_read.dat';

proc format; 
   value $COUNTY
      "840" = "USA"
   ;
   value $STIDSTR
      "99" = "Stratum ID"
   ;
   value $ST0101F
      "01" = "Jan"
      "02" = "Feb"
      "03" = "Mar"
      "04" = "Apr"
      "05" = "May"
      "06" = "Jun"
      "07" = "Jul"
      "08" = "Aug"
      "09" = "Sep"
      "10" = "Oct"
      "11" = "Nov"
      "12" = "Dec"
      "97" = "N/A"
      "99" = "Mis"
   ;
    
   value $ST0103F
      "1984" = "1984"
      "9997" = "N/A"
      "9999" = "Mis"
   ;
   value ST0301F
      1 = "Female"
      2 = "Male"
      8 = "M/R"
      9,. = "Mis"
   ;
   value $ST3Q00F
      "1" = "I am Hispanic or Latino"
      "2" = "I am not Hispanic or Latino"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/R"
   ;
   value $ST3Q2aF
      "0" = "NO"
      "1" = "YES"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST3Q2bF
      "0" = "NO"
      "1" = "YES"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST3Q2cF
      "0" = "NO"
      "1" = "YES"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST3Q2dF
      "0" = "NO"
      "1" = "YES"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST3Q2eF
      "0" = "NO"
      "1" = "YES"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value ST0401F
      1 = "YES"
      2 = "NO"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST0402F
      1 = "YES"
      2 = "NO"
      8 = "M/R"
      9,. = "Mis"
   ;
   value $ST0403F
      "1" = "YES"
      "2" = "NO"
      "8" = "M/R"
      "9"," " = "Mis"
      "n" = "N/A"
   ;
   value ST0404F
      1 = "YES"
      2 = "NO"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST0405F
      1 = "YES"
      2 = "NO"
      8 = "M/R"
      9,. = "Mis"
   ;
   value $ST0406F
      "1" = "YES"
      "2" = "NO"
      "8" = "M/R"
      "9", " " = "Mis"
      "n" = "N/A"
   ;
   value ST0407F
      1 = "YES"
      2 = "NO"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST0408F
      1 = "YES"
      2 = "NO"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST0409F
      1 = "YES"
      2 = "NO"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST0410F
      1 = "YES"
      2 = "NO"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1601F
      1 = "<United State>"
      2 = "Other"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1602F
      1 = "<United State>"
      2 = "Other"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1603F
      1 = "<United State>"
      2 = "Other"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST0601F
      1 = "Working full-time"
      2 = "Working part-time"
      3 = "Looking for job"
      4 = "Other(Home duties,volunteer work,retired)"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1201F
      1 = "Didn't go to school"
      2 = "<elementary school>"
      3 = "<some high school>"
      4 = "<a GED or high school equivalency program>"
      5 = "<high school>"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1401F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST0701F
      1 = "Working full-time"
      2 = "Working part-time"
      3 = "Looking for job"
      4 = "Other(Home duties,volunteer work,retired)"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1301F
      1 = "Didn't go to school"
      2 = "<elementary school>"
      3 = "<some high school>"
      4 = "<a GED or high school equivalency school>"
      5 = "<high school>"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1501F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST0501F
      1 = "None"
      2 = "One"
      3 = "Two"
      4 = "Three"
      5 = "Four or more"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST0502F
      1 = "None"
      2 = "One"
      3 = "Two"
      4 = "Three"
      5 = "Four or more"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST0503F
      1 = "None"
      2 = "One"
      3 = "Two"
      4 = "Three"
      5 = "Four or more"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1701F
      1 = "<English>"
      4 = "<Spanish>"
      5 = "<Other language>"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1801F
      1 = "Never"
      2 = "1 or 2 times a year"
      3 = "3 or 4 times a year"
      4 = "More 4 times a year"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1802F
      1 = "Never"
      2 = "1 or 2 times a year"
      3 = "3 or 4 times a year"
      4 = "More 4 times a year"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1803F
      1 = "Never"
      2 = "1 or 2 times a year"
      3 = "3 or 4 times a year"
      4 = "More 4 times a year"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1804F
      1 = "Never"
      2 = "1 or 2 times a year"
      3 = "3 or 4 times a year"
      4 = "More 4 times a year"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1805F
      1 = "Never"
      2 = "1 or 2 times a year"
      3 = "3 or 4 times a year"
      4 = "More 4 times a year"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1806F
      1 = "Never"
      2 = "1 or 2 times a year"
      3 = "3 or 4 times a year"
      4 = "More 4 times a year"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1901F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once a month"
      4 = "Several times/month"
      5 = "Several times/week"
      6 = "Every day"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1902F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once a month"
      4 = "Several times/month"
      5 = "Several times/week"
      6 = "Every day"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1903F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once a month"
      4 = "Several times/month"
      5 = "Several times/week"
      6 = "Every day"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1904F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once a month"
      4 = "Several times/month"
      5 = "Several times/week"
      6 = "Every day"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1905F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once a month"
      4 = "Several times/month"
      5 = "Several times/week"
      6 = "Every day"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST1906F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once a month"
      4 = "Several times/month"
      5 = "Several times/week"
      6 = "Every day"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2001F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once a month"
      4 = "Several times/month"
      5 = "Several times/week"
      6 = "Every day"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2002F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once a month"
      4 = "Several times/month"
      5 = "Several times/week"
      6 = "Every day"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2003F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once a month"
      4 = "Several times/month"
      5 = "Several times/week"
      6 = "Every day"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2004F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once a month"
      4 = "Several times/month"
      5 = "Several times/week"
      6 = "Every day"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2005F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once a month"
      4 = "Several times/month"
      5 = "Several times/week"
      6 = "Every day"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2006F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once a month"
      4 = "Several times/month"
      5 = "Several times/week"
      6 = "Every day"
      8 = "M/R"
      9,. = "Mis"
   ;
   value $ST2007F
      "1" = "Never"
      "2" = "Few times/year"
      "3" = "Once a month"
      "4" = "Several times/month"
      "5" = "Several times/week"
      "6" = "Every day"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST2008F
      "1" = "Never"
      "2" = "Few times/year"
      "3" = "Once a month"
      "4" = "Several times/month"
      "5" = "Several times/week"
      "6" = "Every day"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value ST2101F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2102F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2103F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2104F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2105F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2106F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2107F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2108F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2109F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2110F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2111F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2201F
      1 = "None"
      2 = "One"
      3 = "Two"
      4 = "3 or more"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2202F
      1 = "None"
      2 = "One"
      3 = "Two"
      4 = "3 or more"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2203F
      1 = "None"
      2 = "One"
      3 = "Two"
      4 = "3 or more"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2204F
      1 = "None"
      2 = "One"
      3 = "Two"
      4 = "3 or more"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2205F
      1 = "None"
      2 = "One"
      3 = "Two"
      4 = "3 or more"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2206F
      1 = "None"
      2 = "One"
      3 = "Two"
      4 = "3 or more"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2207F
      1 = "None"
      2 = "One"
      3 = "Two"
      4 = "3 or more"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2301F
      1 = "Never"
      2 = "Some"
      3 = "Regular"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2302F
      1 = "Never"
      2 = "Some"
      3 = "Regular"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2303F
      1 = "Never"
      2 = "Some"
      3 = "Regular"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2304F
      1 = "Never"
      2 = "Some"
      3 = "Regular"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2401F
      1 = "Never"
      2 = "Some"
      3 = "Regular"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2402F
      1 = "Never"
      2 = "Some"
      3 = "Regular"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2403F
      1 = "Never"
      2 = "Some"
      3 = "Regular"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2404F
      1 = "Never"
      2 = "Some"
      3 = "Regular"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2405F
      1 = "Never"
      2 = "Some"
      3 = "Regular"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2406F
      1 = "Never"
      2 = "Some"
      3 = "Regular"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2407F
      1 = "Never"
      2 = "Some"
      3 = "Regular"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2501F
      1 = "<general studies>"
      2 = "<vocatinal studies>"
      3 = "<academic/college prep>"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2601F
      1 = "Never"
      2 = "Some class periods"
      3 = "Most class periods"
      4 = "Every class periods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2602F
      1 = "Never"
      2 = "Some class periods"
      3 = "Most class periods"
      4 = "Every class periods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2603F
      1 = "Never"
      2 = "Some class periods"
      3 = "Most class periods"
      4 = "Every class periods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2604F
      1 = "Never"
      2 = "Some class periods"
      3 = "Most class periods"
      4 = "Every class periods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2605F
      1 = "Never"
      2 = "Some class periods"
      3 = "Most class periods"
      4 = "Every class periods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2606F
      1 = "Never"
      2 = "Some class periods"
      3 = "Most class periods"
      4 = "Every class periods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2607F
      1 = "Never"
      2 = "Some class periods"
      3 = "Most class periods"
      4 = "Every class periods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2608F
      1 = "Never"
      2 = "Some class periods"
      3 = "Most class periods"
      4 = "Every class periods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2609F
      1 = "Never"
      2 = "Some class periods"
      3 = "Most class periods"
      4 = "Every class periods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2610F
      1 = "Never"
      2 = "Some class periods"
      3 = "Most class periods"
      4 = "Every class periods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2611F
      1 = "Never"
      2 = "Some class periods"
      3 = "Most class periods"
      4 = "Every class periods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2612F
      1 = "Never"
      2 = "Some class periods"
      3 = "Most class periods"
      4 = "Every class periods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2613F
      1 = "Never"
      2 = "Someclassperiods"
      3 = "Mostclassperiods"
      4 = "Everyclassperiods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2614F
      1 = "Never"
      2 = "Someclassperiods"
      3 = "Mostclassperiods"
      4 = "Everyclassperiods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2615F
      1 = "Never"
      2 = "Someclassperiods"
      3 = "Mostclassperiods"
      4 = "Everyclassperiods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2616F
      1 = "Never"
      2 = "Someclassperiods"
      3 = "Mostclassperiods"
      4 = "Everyclassperiods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2617F
      1 = "Never"
      2 = "Someclassperiods"
      3 = "Mostclassperiods"
      4 = "Everyclassperiods"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2703F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2704F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2705F
      1 = "Yes"
      2 = "No"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2901F
      1 = "None"
      2 = "1 or 2"
      3 = "3 or 4"
      4 = "5 or more"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2902F
      1 = "None"
      2 = "1 or 2"
      3 = "3 or 4"
      4 = "5 or more"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST2903F
      1 = "None"
      2 = "1 or 2"
      3 = "3 or 4"
      4 = "5 or more"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3001F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3002F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3003F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3004F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3005F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3101F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3102F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3103F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3104F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3105F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3106F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3107F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3108F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value $ST3109F
      "1" = "Strongly disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST3110F
      "1" = "Strongly disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST3111F
      "1" = "Strongly disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST3112F
      "1" = "Strongly disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST3113F
      "1" = "Strongly disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST3114F
      "1" = "Strongly disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST3115F
      "1" = "Strongly disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST3116F
      "1" = "Strongly disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST3117F
      "1" = "Strongly disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $ST3118F
      "1" = "Strongly disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value ST3201F
      1 = "Never"
      2 = "Smtime"
      3 = "Mostly"
      4 = "Always"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3202F
      1 = "Never"
      2 = "Smtime"
      3 = "Mostly"
      4 = "Always"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3203F
      1 = "Never"
      2 = "Smtime"
      3 = "Mostly"
      4 = "Always"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3204F
      1 = "Never"
      2 = "Smtime"
      3 = "Mostly"
      4 = "Always"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3205F
      1 = "Never"
      2 = "Smtime"
      3 = "Mostly"
      4 = "Always"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3206F
      1 = "Never"
      2 = "Smtime"
      3 = "Mostly"
      4 = "Always"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3207F
      1 = "Never"
      2 = "Smtime"
      3 = "Mostly"
      4 = "Always"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3301F
      1 = "No time"
      2 = "< 1 h/week"
      3 = "1 to 3 h/week"
      4 = "> 3 h/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3302F
      1 = "No time"
      2 = "< 1 h/week"
      3 = "1 to 3 h/week"
      4 = "> 3 h/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3303F
      1 = "No time"
      2 = "< 1 h/week"
      3 = "1 to 3 h/week"
      4 = "> 3 h/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3401F
      1 = "Don't read"
      2 = "30 min or less"
      3 = "31- 60 min"
      4 = "1-2 hours"
      5 = "More than 2 hours"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3501F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3502F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3503F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3504F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3505F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3506F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3507F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3508F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3509F
      1 = "Strongly disagree"
      2 = "Disagree"
      3 = "Agree"
      4 = "Strongly agree"
      8 = "M/R"
      9,. = "Mis"
   ;
   value $ST3510F
      "1" = "Strongly disagree"
      "2" = "Disagree"
      "3" = "Agree"
      "4" = "Strongly agree"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value ST3601F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once/month"
      4 = "Several times/month"
      5 = "Several times/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3602F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once/month"
      4 = "Several times/month"
      5 = "Several times/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3603F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once/month"
      4 = "Several times/month"
      5 = "Several times/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3604F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once/month"
      4 = "Several times/month"
      5 = "Several times/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3605F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once/month"
      4 = "Several times/month"
      5 = "Several times/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3606F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once/month"
      4 = "Several times/month"
      5 = "Several times/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3701F
      1 = "None"
      2 = "1-10"
      3 = "11-50"
      4 = "51-100"
      5 = "101-250"
      6 = "251-500"
      7 = "More than 500"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3801F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once a month"
      4 = "Several times/month"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3901F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once/month"
      4 = "Several times/month"
      5 = "Several times/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3902F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once/month"
      4 = "Several times/month"
      5 = "Several times/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3903F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once/month"
      4 = "Several times/month"
      5 = "Several times/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3904F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once/month"
      4 = "Several times/month"
      5 = "Several times/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value ST3905F
      1 = "Never"
      2 = "Few times/year"
      3 = "Once/month"
      4 = "Several times/month"
      5 = "Several times/week"
      8 = "M/R"
      9,. = "Mis"
   ;
   value IT03F
      1 = "Excellent"
      2 = "Good"
      3 = "Fair"
      4 = "Poor"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT051F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT052F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT053F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT054F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT061F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT062F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT063F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT064F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT065F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value EVERY1F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value EVERY2F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value EVERY3F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value EVERY4F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT041F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT042F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT043F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT044F
      1 = "Every day"
      2 = "Few times / week"
      3 = "1-4 / month"
      4 = "< 1 / Month"
      5 = "Never"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT021F
      1 = "Very"
      2 = "Just"
      3 = "Somewhat"
      4 = "Not at all"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT022F
      1 = "Very"
      2 = "Just"
      3 = "Somewhat"
      4 = "Not at all"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value IT023F
      1 = "Very"
      2 = "Just"
      3 = "Somewhat"
      4 = "Not at all"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;  
   value CC011F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC012F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC013F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC014F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC015F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC016F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC017F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC018F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC019F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0110F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0111F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0112F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0113F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0114F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0115F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0116F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0117F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0118F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0119F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0120F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0121F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0122F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0123F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0124F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0125F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0126F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0127F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0128F
      1 = "Never"
      2 = "Some"
      3 = "Often"
      4 = "Always"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0201F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0202F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0203F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0204F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0205F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0206F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0207F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0208F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0209F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0210F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0211F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0212F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0213F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0214F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0215F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0216F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0217F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0218F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0219F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0220F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0221F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0222F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0223F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
   value CC0224F
      1 = "Disagree"
      2 = "Disagree some"
      3 = "Agree some"
      4 = "Agree"
      8 = "M/R"
      9 = "Mis"
      7 = "N/A"
   ;
    value DISAGF
         1 = "Disagree"
         2 = "Disagree some"
         3 = "Agree some"
         4 = "Agree"
         8 = "M/R"
         9 = "Mis"
         7 = "N/A"
   ;
   value IT04Q5F
		 1 = "Yes"
		 2 = "No"
		 8 = "M/R"
		 9 = "Mis"
         7 = "N/A"
    ;
run;

data lib.read;
   infile in1 lrecl=1518;
      input 
   #1
      @1516 COUNTRY $3.
      @1 SCHNAME $50.
      @51 STIDSTRT $2.
      @53 SCHOOLID $3.
      @56 STIDSTD  $5.
      @61 NOTUSE1  $20.
      @81 NOTUSE2  $20.
      @101 ST01Q02  $2.
      @103 NOTUSE3  $2.
      @105 ST01Q03  $4.
      @109 ST02Q01  13.
      @122 ST03Q01  1.
      @123 ST3Q02   $1.
      @124 ST3Q3BA  $1.
      @125 ST3Q3BB  $1.
      @126 ST3Q3BC  $1.
      @127 ST3Q3BD  $1.
      @128 ST3Q3BE  $1.
      @129 ST04Q01  1.
      @130 ST04Q02  1.
      @131 ST04Q09  $1.
      @132 ST04Q03  1.
      @133 ST04Q04  1.
      @134 ST04Q10  $1.
      @135 ST04Q07  1.
      @136 ST04Q05  1.
      @137 ST04Q06  1.
      @138 ST04Q08  1.
      @139 ST16Q02  1.
      @140 ST16Q03  1.
      @141 ST16Q01  1.
      @142 ST06Q01  1.
      @143 ST09Q01  $4.
      @147 ST12Q01  1.
      @148 ST14Q01  1.
      @149 ST07Q01  1.
      @150 ST11Q01  $4.
      @154 ST13Q01  1.
      @155 ST15Q01  1.
      @156 ST05Q01  1.
      @157 ST05Q02  1.
      @158 ST05Q03  1.
      @159 ST17Q01  1.
      @160 ST18Q01  1.
      @161 ST18Q02  1.
      @162 ST18Q03  1.
      @163 ST18Q04  1.
      @164 ST18Q05  1.
      @165 ST18Q06  1.
      @166 ST19Q01  1.
      @167 ST19Q02  1.
      @168 ST19Q03  1.
      @169 ST19Q04  1.
      @170 ST19Q05  1.
      @171 ST19Q06  1.
      @172 ST20Q01  1.
      @173 ST20Q02  1.
      @174 ST20Q03  1.
      @175 ST20Q04  1.
      @176 ST20Q05  1.
      @177 ST20Q06  1.
      @178 ST20Q07  $1.
      @179 ST20Q08  $1.
      @180 ST21Q01  1.
      @181 ST21Q02  1.
      @182 ST21Q03  1.
      @183 ST21Q04  1.
      @184 ST21Q05  1.
      @185 ST21Q06  1.
      @186 ST21Q07  1.
      @187 ST21Q08  1.
      @188 ST21Q09  1.
      @189 ST21Q10  1.
      @190 ST21Q11  1.
      @191 ST22Q01  1.
      @192 ST22Q02  1.
      @193 ST22Q03  1.
      @194 ST22Q04  1.
      @195 ST22Q05  1.
      @196 ST22Q06  1.
      @197 ST22Q07  1.
      @198 ST23Q01  1.
      @199 ST23Q02  1.
      @200 ST23Q03  1.
      @201 ST23Q04  1.
      @202 ST24Q01  1.
      @203 ST24Q02  1.
      @204 ST24Q03  1.
      @205 ST24Q04  1.
      @206 ST24Q05  1.
      @207 ST24Q06  1.
      @208 ST24Q07  1.
      @209 ST25Q01  1.
      @210 ST26Q01  1.
      @211 ST26Q02  1.
      @212 ST26Q03  1.
      @213 ST26Q04  1.
      @214 ST26Q05  1.
      @215 ST26Q06  1.
      @216 ST26Q07  1.
      @217 ST26Q08  1.
      @218 ST26Q09  1.
      @219 ST26Q10  1.
      @220 ST26Q11  1.
      @221 ST26Q12  1.
      @222 ST26Q13  1.
      @223 ST26Q14  1.
      @224 ST26Q15  1.
      @225 ST26Q16  1.
      @226 ST26Q17  1.
      @227 ST27Q01  13.
      @240 ST27Q03  13.
      @253 ST27Q05  13.
      @266 ST27Q07  13.
      @279 ST27Q08  13.
      @292 ST27Q09  13.
      @305 ST27Q02  1.
      @306 ST27Q04  1.
      @307 ST27Q06  1.
      @308 ST28Q01  13.
      @321 ST28Q02  13.
      @334 ST28Q03  13.
      @347 ST29Q01  1.
      @348 ST29Q02  1.
      @349 ST29Q03  1.
      @350 ST30Q01  1.
      @351 ST30Q02  1.
      @352 ST30Q03  1.
      @353 ST30Q04  1.
      @354 ST30Q05  1.
      @355 ST31Q01  1.
      @356 ST31Q02  1.
      @357 ST31Q03  1.
      @358 ST31Q04  1.
      @359 ST31Q05  1.
      @360 ST31Q06  1.
      @361 ST31Q07  1.
      @362 ST31Q08  1.
      @363 ST31Q09  $1.
      @364 ST31Q10  $1.
      @365 ST31Q11  $1.
      @366 ST31Q12  $1.
      @367 ST31Q13  $1.
      @368 ST31Q14  $1.
      @369 ST31Q15  $1.
      @370 ST31Q16  $1.
      @371 ST31Q17  $1.
      @372 ST31Q18  $1.
      @373 ST32Q01  1.
      @374 ST32Q02  1.
      @375 ST32Q03  1.
      @376 ST32Q04  1.
      @377 ST32Q05  1.
      @378 ST32Q06  1.
      @379 ST32Q07  1.
      @380 ST33Q01  1.
      @381 ST33Q02  1.
      @382 ST33Q03  1.
      @383 ST34Q01  1.
      @384 ST35Q01  1.
      @385 ST35Q02  1.
      @386 ST35Q03  1.
      @387 ST35Q04  1.
      @388 ST35Q05  1.
      @389 ST35Q06  1.
      @390 ST35Q07  1.
      @391 ST35Q08  1.
      @392 ST35Q09  1.
      @393 ST35Q10  $1.
      @394 ST36Q01  1.
      @395 ST36Q02  1.
      @396 ST36Q03  1.
      @397 ST36Q04  1.
      @398 ST36Q05  1.
      @399 ST36Q06  1.
      @400 ST37Q01  1.
      @401 ST38Q01  1.
      @402 ST39Q01  1.
      @403 ST39Q02  1.
      @404 ST39Q03  1.
      @405 ST39Q04  1.
      @406 ST39Q05  1.
      @407 ST40Q01  $4.
      @411 ST41Q01  8.
      @419 ST41Q02  8.
      @427 ST41Q03  8.
      @435 IT01Q01 3.
      @438 IT01Q02 3.
      @441 IT01Q03 3.
      @444 IT01Q04 3.
      @447 IT02Q01 3.
      @450 IT02Q02 3.
      @453 IT02Q03 3.
      @456 IT03Q01 3.
      @459 IT04Q01 3.
      @462 IT04Q02 3.
      @465 IT04Q03 3.
      @468 IT04Q04 3.				
	  @471 IT04Q05 1.               
      @472 IT05Q01 3.				
      @475 IT05Q02 3.				
      @478 IT05Q03 3.				
      @481 IT05Q04 3.				
      @484 IT06Q01 3.				
      @487 IT06Q02 3.				
      @490 IT06Q03 3.				
      @493 IT06Q04 3.				
      @496 IT06Q05 3.				
      @499 IT07Q01 3.				
      @502 IT08Q01 3.				
      @505 IT09Q01 3.				
      @508 IT10Q01 3.				
      @511 CC01Q01 3.				
      @514 CC01Q02 3.				
      @517 CC01Q03 3.				
      @520 CC01Q04 3.				
      @523 CC01Q05 3.				
      @526 CC01Q06 3.				
      @529 CC01Q07 3.				
      @532 CC01Q08 3.				
      @535 CC01Q09 3.				
      @538 CC01Q10 3.				
      @541 CC01Q11 3.				
      @544 CC01Q12 3.				
      @547 CC01Q13 3.				
      @550 CC01Q14 3.				
      @553 CC01Q15 3.				
      @556 CC01Q16 3.				
      @559 CC01Q17 3.				
      @562 CC01Q18 3.				
      @565 CC01Q19 3.				
      @568 CC01Q20 3.				
      @571 CC01Q21 3.				
      @574 CC01Q22 3.				
      @577 CC01Q23 3.				
      @580 CC01Q24 3.				
      @583 CC01Q25 3.				
      @586 CC01Q26 3.				
      @589 CC01Q27 3.				
      @592 CC01Q28 3.				
      @595 CC02Q01 3.				
      @598 CC02Q02 3.				
      @601 CC02Q03 3.				
      @604 CC02Q04 3.				
      @607 CC02Q05 3.				
      @610 CC02Q06 3.				
      @613 CC02Q07 3.				
      @616 CC02Q08 3.				
      @619 CC02Q09 3.				
      @622 CC02Q10 3.				
      @625 CC02Q11 3.				
      @628 CC02Q12 3.				
      @631 CC02Q13 3.				
      @634 CC02Q14 3.				
      @637 CC02Q15 3.				
      @640 CC02Q16 3.				
      @643 CC02Q17 3.				
      @646 CC02Q18 3.				
      @649 CC02Q19 3.				
      @652 CC02Q20 3.				
      @655 CC02Q21 3.				
      @658 CC02Q22 3.				
      @661 CC02Q23 3.				
      @664 CC02Q24 3.				
      @667 PV1READ 6.2				
      @673 PV2READ 6.2				
      @679 PV3READ 6.2				
      @685 PV4READ 6.2				
      @691 PV5READ 6.2				
      @697 W_FSTR1 10.4				
      @707 W_FSTR2 10.4				
      @717 W_FSTR3 10.4				
      @727 W_FSTR4 10.4				
      @737 W_FSTR5 10.4				
      @747 W_FSTR6 10.4				
      @757 W_FSTR7 10.4				
      @767 W_FSTR8 10.4				
      @777 W_FSTR9 10.4				
      @787 W_FSTR10 10.4			
      @797 W_FSTR11 10.4			
      @807 W_FSTR12 10.4			
      @817 W_FSTR13 10.4			
      @827 W_FSTR14 10.4			
      @837 W_FSTR15 10.4			
      @847 W_FSTR16 10.4			
      @857 W_FSTR17 10.4			
      @867 W_FSTR18 10.4			
      @877 W_FSTR19 10.4			
      @887 W_FSTR20 10.4			
      @897 W_FSTR21 10.4			
      @907 W_FSTR22 10.4			
      @917 W_FSTR23 10.4			
      @927 W_FSTR24 10.4			
      @937 W_FSTR25 10.4			
      @947 W_FSTR26 10.4			
      @957 W_FSTR27 10.4			
      @967 W_FSTR28 10.4			
      @977 W_FSTR29 10.4			
      @987 W_FSTR30 10.4			
      @997 W_FSTR31 10.4			
      @1007 W_FSTR32 10.4			
      @1017 W_FSTR33 10.4			
      @1027 W_FSTR34 10.4			
      @1037 W_FSTR35 10.4			
      @1047 W_FSTR36 10.4			
      @1057 W_FSTR37 10.4			
      @1067 W_FSTR38 10.4			
      @1077 W_FSTR39 10.4			
      @1087 W_FSTR40 10.4			
      @1097 W_FSTR41 10.4			
      @1107 W_FSTR42 10.4			
      @1117 W_FSTR43 10.4			
      @1127 W_FSTR44 10.4			
      @1137 W_FSTR45 10.4			
      @1147 W_FSTR46 10.4			
      @1157 W_FSTR47 10.4			
      @1167 W_FSTR48 10.4			
      @1177 W_FSTR49 10.4			
      @1187 W_FSTR50 10.4			
      @1197 W_FSTR51 10.4			
      @1207 W_FSTR52 10.4			
      @1217 W_FSTR53 10.4			
      @1227 W_FSTR54 10.4			
      @1237 W_FSTR55 10.4			
      @1247 W_FSTR56 10.4			
      @1257 W_FSTR57 10.4			
      @1267 W_FSTR58 10.4			
      @1277 W_FSTR59 10.4			
      @1287 W_FSTR60 10.4			
      @1297 W_FSTR61 10.4			
      @1307 W_FSTR62 10.4			
      @1317 W_FSTR63 10.4			
      @1327 W_FSTR64 10.4			
      @1337 W_FSTR65 10.4			
      @1347 W_FSTR66 10.4			
      @1357 W_FSTR67 10.4			
      @1367 W_FSTR68 10.4			
      @1377 W_FSTR69 10.4			
      @1387 W_FSTR70 10.4			
      @1397 W_FSTR71 10.4			
      @1407 W_FSTR72 10.4			
      @1417 W_FSTR73 10.4			
      @1427 W_FSTR74 10.4			
      @1437 W_FSTR75 10.4			
      @1447 W_FSTR76 10.4			
      @1457 W_FSTR77 10.4			
      @1467 W_FSTR78 10.4			
      @1477 W_FSTR79 10.4			
      @1487 W_FSTR80 10.4			
      @1497 W_FSTUWT 10.4			
      @1507 CNTRFAC 8.6				
      @1515 DEV_RACE 1.				
      ;

   label
      COUNTRY = "Country"
      SCHNAME = "School Name"
      STIDSTRT = "Stratum ID"
      SCHOOLID = "School ID"
      STIDSTD  = "Student ID"
      INTUSE1   = "Internal Use 1"
      INTUSE1   = "Internal Use 2"
      ST01Q02  = "Birth Month - Q1Month"
      NOTUSE3  = "Internal Use 3"
      ST01Q03  = "Birth Year - Q1Year"
      ST02Q01  = "Grade - Q2"
      ST03Q01  = "Sex - Q3"
      ST3Q02   = "Describes you - Q3a"
      ST3Q3BA  = "Your race - Q3b: American Indian"
      ST3Q3BB  = "Your race - Q3b:Asian"
      ST3Q3BC  = "Your race - Q3b:Black"
      ST3Q3BD  = "Your race - Q3b: Native Hawaiian"
      ST3Q3BE  = "Your race - Q3b: White"
      ST04Q01  = "Birth or adoptive Mother - Q4a"
      ST04Q02  = "Stepmother or foster mother- Q4b"
      ST04Q09  = "Other female guardian - Q4c"
      ST04Q03  = "Birth or adoptive father - Q4d"
      ST04Q04  = "Stepfather or foster father - Q4e"
      ST04Q10  = "Other male guardian - Q4f"
      ST04Q07  = "Grandparents - Q4g"
      ST04Q05  = "Brothers - Q4h"
      ST04Q06  = "Sisters - Q4i"
      ST04Q08  = "Other  - Q4j"
      ST16Q02  = "Country of birth, Mother - Q5a"
      ST16Q03  = "Country of birth, Father - Q5b"
      ST16Q01  = "Country of birth, self - Q5c"
      ST06Q01  = "Mother currently doing - Q6"
      ST09Q01  = "Mother's main job - Q7&8"
      ST12Q01  = "High School - Q9"
      ST14Q01  = "Bachelor,master,post graduate - Q10"
      ST07Q01  = "Father currently doing - Q11"
      ST11Q01  = "Father's main job - Q12&13"
      ST13Q01  = "High School - Q14"
      ST15Q01  = "Bachelor,master,post graduate - Q15"
      ST05Q01  = "Older - Q16a"
      ST05Q02  = "Younger - Q16b"
      ST05Q03  = "Same age - Q16c"
      ST17Q01  = "Language at home - Q17"
      ST18Q01  = "Movies - Q18a"
      ST18Q02  = "Art gallery - Q18b"
      ST18Q03  = "Pop Music - Q18c"
      ST18Q04  = "Classics - Q18d"
      ST18Q05  = "Theatre - Q18e"
      ST18Q06  = "Sport - Q18f"
      ST19Q01  = "Discuss politics - Q19a"
      ST19Q02  = "Discuss books - Q19b"
      ST19Q03  = "Listen classics - Q19c"
      ST19Q04  = "Discuss sch probl - Q19d"
      ST19Q05  = "Eat <dinner> - Q19e"
      ST19Q06  = "Just talking - Q19f"
      ST20Q01  = "Mother - Q20a"
      ST20Q02  = "Father - Q20b"
      ST20Q03  = "Siblings - Q20c"
      ST20Q04  = "Grandparents - Q20d"
      ST20Q05  = "Other Rel - Q20e"
      ST20Q06  = "Parents' friends - Q20f"
      ST20Q07  = "Tutor - Q20g"
      ST20Q08  = "Your friend - Q20h"
      ST21Q01  = "Dishwasher - Q21a"
      ST21Q02  = "Own room - Q21b"
      ST21Q03  = "Educat software - Q21c"
      ST21Q04  = "Internet - Q21d"
      ST21Q05  = "Dictionary - Q21e"
      ST21Q06  = "Study place - Q21f"
      ST21Q07  = "Desk - Q21g"
      ST21Q08  = "Reference books - Q21h"
      ST21Q09  = "Classic literature - Q21i"
      ST21Q10  = "Poetry - Q21j"
      ST21Q11  = "Works of art - Q21k"
      ST22Q01  = "Phone - Q22a"
      ST22Q02  = "Television - Q22b"
      ST22Q03  = "Calculator - Q22c"
      ST22Q04  = "Computer - Q22d"
      ST22Q05  = "Piano - Q22e"
      ST22Q06  = "Automobile, pick-up truck- Q22f"
      ST22Q07  = "Bathroom - Q22g"
      ST23Q01  = "Advanced or additional courses 9e  gAP,IB - Q23a"
      ST23Q02  = "Remedial in English - Q23b"
      ST23Q03  = "Remedial in other subj - Q23c"
      ST23Q04  = "Skills training - Q23d"
      ST24Q01  = "In English - Q24a"
      ST24Q02  = "In other subj - Q24b"
      ST24Q03  = "Advanced or additional courses - Q24c"
      ST24Q04  = "Remedial in  English - Q24d"
      ST24Q05  = "Remedial in other subjects - Q24e"
      ST24Q06  = "Skills training - Q24f"
      ST24Q07  = "<Private tutor> - Q24g"
      ST25Q01  = "School program - Q25"
      ST26Q01  = "Teachers wait long time - Q26a"
      ST26Q02  = "Teachers want stud to work - Q26b"
      ST26Q03  = "Teachers tell stud do better - Q26c"
      ST26Q04  = "Teachers don't like  - Q26d"
      ST26Q05  = "Teachers show interest - Q26e"
      ST26Q06  = "Teachers give opportunity - Q26f"
      ST26Q07  = "Teachers help with work - Q26g"
      ST26Q08  = "Teachers cont teaching - Q26h"
      ST26Q09  = "Teachers do a lot to help- Q26i"
      ST26Q10  = "Teachers help with learning - Q26j"
      ST26Q11  = "Teachers check homework - Q26k"
      ST26Q12  = "Students cannot work well - Q26l"
      ST26Q13  = "Students don't listen - Q26m"
      ST26Q14  = "Students don't start - Q26n"
      ST26Q15  = "Students learn a lot - Q26o"
      ST26Q16  = "Noise & disorder - Q26p"
      ST26Q17  = "Doing nothing - Q26q"
      ST27Q01  = "Number in <English> - Q27aa"
      ST27Q03  = "Number in <Mathematics>  - Q27ab"
      ST27Q05  = "Number in <Science> - Q27ac"
      ST27Q07  = "Minutes In <English> - Q27ba"
      ST27Q08  = "Minutes in <Mathematics> - Q27bb"
      ST27Q09  = "Minutes In <Science> - Q27bc"
      ST27Q02  = "take in <English>  - Q27ac"
      ST27Q04  = "take in <Mathematics> - Q27bc"
      ST27Q06  = "take in <Science> - Q27cc"
      ST28Q01  = "In <English class(es)> - Q28a"
      ST28Q02  = "In Mathematics - Q28b"
      ST28Q03  = "In Science - Q28c"
      ST29Q01  = "Miss entire school day - Q29a"
      ST29Q02  = "Skip a class - Q29b"
      ST29Q03  = "Late for school - Q29c"
      ST30Q01  = "Well with students - Q30a"
      ST30Q02  = "Interested in students - Q30b"
      ST30Q03  = "Listen to me - Q30c"
      ST30Q04  = "Give extra help - Q30d"
      ST30Q05  = "Treat me fairly - Q30e"
      ST31Q01  = "Feel an outsider - Q31a"
      ST31Q02  = "Make friends - Q31b"
      ST31Q03  = "Feel I belong - Q31c"
      ST31Q04  = "Feel awkward - Q31d"
      ST31Q05  = "Think I'm liked - Q31e"
      ST31Q06  = "Feel lonely - Q31f"
      ST31Q07  = "Don't want to be - Q31g"
      ST31Q08  = "Feel Bored - Q31h"
      ST31Q09  = "Attack or harm me - Q31i"
      ST31Q10  = "Attack me on way to and from school - Q31j"
      ST31Q11  = "Avoid extra curricular activites -Q31k"
      ST31Q12  = "Avoid particular classes - Q31l"
      ST31Q13  = "Stay Home sometimes - Q31m"
      ST31Q14  = "Know school rules are - Q31n"
      ST31Q15  = "School rules are unfair - Q31o"
      ST31Q16  = "Punishment is the same - Q31p"
      ST31Q17  = "School rules are strictly enforced - Q31q"
      ST31Q18  = "Students know punishment will - Q31r"
      ST32Q01  = "I complete on time - Q32a"
      ST32Q02  = "I do watching TV - Q32b"
      ST32Q03  = "Teachers grade - Q32c"
      ST32Q04  = "I finish at school - Q32d"
      ST32Q05  = "Teachers comment on - Q32e"
      ST32Q06  = "Is interesting - Q32f"
      ST32Q07  = "Is counted in grade - Q32g"
      ST33Q01  = "Homework English - Q33a"
      ST33Q02  = "Homework <maths> - Q33b"
      ST33Q03  = "Homework <science> - Q33c"
      ST34Q01  = "Read each day - Q34"
      ST35Q01  = "Only if I have to - Q35a"
      ST35Q02  = "Favourite hobby - Q35b"
      ST35Q03  = "Talking about books - Q35c"
      ST35Q04  = "Hard to finish - Q35d"
      ST35Q05  = "Feel happy - Q35e"
      ST35Q06  = "Waste of time - Q35f"
      ST35Q07  = "Enjoy library - Q35g"
      ST35Q08  = "For information - Q35h"
      ST35Q09  = "Few minutes only - Q35i"
      ST35Q10  = "Reading from Internet -Q35j"
      ST36Q01  = "Magazines - Q36a"
      ST36Q02  = "Comics - Q36b"
      ST36Q03  = "Fictions books(novels, narratives, stories)- Q36c"
      ST36Q04  = "Non-fiction - Q36d"
      ST36Q05  = "E-mail & Web - Q36e"
      ST36Q06  = "Newspapers - Q36f"
      ST37Q01  = "How many books at home - Q37"
      ST38Q01  = "Borrow books - Q38"
      ST39Q01  = "How often use school library - Q39a"
      ST39Q02  = "How often use computers - Q39b"
      ST39Q03  = "How often use calculators - Q39c"
      ST39Q04  = "How often use Internet - Q39d"
      ST39Q05  = "How often use science labs - Q39e"
      ST40Q01  = "Job at 30 - Q40"
      ST41Q01  = "Mark in English - Q41a"
      ST41Q02  = "Mark in <maths> - Q41b"
      ST41Q03  = "Mark in <science> - Q41c"
      IT01Q01 = "At home - IT1a"
      IT01Q02 = "At school - IT1b"
      IT01Q03 = "In library - IT1c"
      IT01Q04 = "Another place - IT1d"
      IT02Q01 = "Using - IT2a"
      IT02Q02 = "Write paper - IT2b"
      IT02Q03 = "Take test - IT2c"
      IT03Q01 = "Compare - IT3"
      IT04Q01 = "At home - IT4a"
      IT04Q02 = "At school - IT4b"
      IT04Q03 = "In library - IT4c"
      IT04Q04 = "Another place - IT4d"
	  IT04Q05 = "In any Setting - Q47e"
      IT05Q01 = "Internet - IT5a"
      IT05Q02 = "Communication - IT5b"
      IT05Q03 = "Help learn - IT5c"
      IT05Q04 = "Programming - IT5d"
      IT06Q01 = "Games - IT6a"
      IT06Q02 = "Word proc - IT6b"
      IT06Q03 = "Spreadsheet - IT6c"
      IT06Q04 = "Drawing - IT6d"
      IT06Q05 = "Educational - IT6e"
      IT07Q01 = "Very important - IT7"
      IT08Q01 = "Play or work - IT8"
      IT09Q01 = "Very interested - IT9"
      IT10Q01 = "Forget the time - IT10"
      CC01Q01 = "Memorise - CC1/1"
      CC01Q02 = "Understand - CC1/2"
      CC01Q03 = "Need to learn - CC1/3"
      CC01Q04 = "Difficult - CC1/4"
      CC01Q05 = "Much as possible - CC1/5"
      CC01Q06 = "Job- CC1/6"
      CC01Q07 = "Work as hard - CC1/7"
      CC01Q08 = "Most Complex - CC1/8"
      CC01Q09 = "Relate New - CC1/9"
      CC01Q10 = "Recite - CC1/10"
      CC01Q11 = "Bad Grades - CC1/11"
      CC01Q12 = "Keep Working - CC1/12"
      CC01Q13 = "Force myself - CC1/13"
      CC01Q14 = "Future - CC1/14"
      CC01Q15 = "Over and over - CC1/15"
      CC01Q16 = "Problems wrong - CC1/16"
      CC01Q17 = "Real world - CC1/17"
      CC01Q18 = "Excellent - CC1/18"
      CC01Q19 = "Concepts - CC1/19"
      CC01Q20 = "Best to acquire - CC1/20"
      CC01Q21 = "Relating - CC1/21"
      CC01Q22 = "Good job - CC1/22"
      CC01Q23 = "Important- CC1/23"
      CC01Q24 = "Learn well - CC1/24"
      CC01Q25 = "Fits in - CC1/25"
      CC01Q26 = "Can master - CC1/26"
      CC01Q27 = "Additional info - CC1/27"
      CC01Q28 = "Best effort - CC1/Q28"
      CC02Q01 = "Math absorbed - CC2/29"
      CC02Q02 = "Like other - CC2/30"
      CC02Q03 = "Quickly in most - CC2/31"
      CC02Q04 = "Better - CC2/32"
      CC02Q05 = "Hopeless - CC2/33"
      CC02Q06 = "Reading fun - CC2/34"
      CC02Q07 = "Good most - CC2/35"
      CC02Q08 = "Learn most - CC2/36"
      CC02Q09 = "Learn quickly - CC2/37"
      CC02Q10 = "Math fun - CC2/38"
      CC02Q11 = "Trying better - CC2/39"
      CC02Q12 = "Good marks Math - CC2/Q40"
      CC02Q13 = "Read spare - CC2/41"
      CC02Q14 = "Best work - CC2/42"
      CC02Q15 = "Math best - CC2/43"
      CC02Q16 = "Like to be best - CC2/44"
      CC02Q17 = "Read absorbed - CC2/45"
      CC02Q18 = "Done well - CC2/46"
      CC02Q19 = "Help others - CC2/47"
      CC02Q20 = "Well in tests - CC2/48"
      CC02Q21 = "Math important - CC2/49"
      CC02Q22 = "Helpful ideas - CC2/50"
      CC02Q23 = "Good marks - CC2/51"
      CC02Q24 = "Learn faster - CC2/52"
      PV1READ = "Plausible value 1 in science"
      PV2READ = "Plausible value 2 in science"
      PV3READ = "Plausible value 3 in science"
      PV4READ = "Plausible value 4 in science"
      PV5READ = "Plausible value 5 in science"
      W_FSTR1 = "BRR replicate 1"
      W_FSTR2 = "BRR replicate 2"
      W_FSTR3 = "BRR replicate 3"
      W_FSTR4 = "BRR replicate 4"
      W_FSTR5 = "BRR replicate 5"
      W_FSTR6 = "BRR replicate 6"
      W_FSTR7 = "BRR replicate 7"
      W_FSTR8 = "BRR replicate 8"
      W_FSTR9 = "BRR replicate 9"
      W_FSTR10 = "BRR replicate 10"
      W_FSTR11 = "BRR replicate 11"
      W_FSTR12 = "BRR replicate 12"
      W_FSTR13 = "BRR replicate 13"
      W_FSTR14 = "BRR replicate 14"
      W_FSTR15 = "BRR replicate 15"
      W_FSTR16 = "BRR replicate 16"
      W_FSTR17 = "BRR replicate 17"
      W_FSTR18 = "BRR replicate 18"
      W_FSTR19 = "BRR replicate 19"
      W_FSTR20 = "BRR replicate 20"
      W_FSTR21 = "BRR replicate 21"
      W_FSTR22 = "BRR replicate 22"
      W_FSTR23 = "BRR replicate 23"
      W_FSTR24 = "BRR replicate 24"
      W_FSTR25 = "BRR replicate 25"
      W_FSTR26 = "BRR replicate 26"
      W_FSTR27 = "BRR replicate 27"
      W_FSTR28 = "BRR replicate 28"
      W_FSTR29 = "BRR replicate 29"
      W_FSTR30 = "BRR replicate 30"
      W_FSTR31 = "BRR replicate 31"
      W_FSTR32 = "BRR replicate 32"
      W_FSTR33 = "BRR replicate 33"
      W_FSTR34 = "BRR replicate 34"
      W_FSTR35 = "BRR replicate 35"
      W_FSTR36 = "BRR replicate 36"
      W_FSTR37 = "BRR replicate 37"
      W_FSTR38 = "BRR replicate 38"
      W_FSTR39 = "BRR replicate 39"
      W_FSTR40 = "BRR replicate 40"
      W_FSTR41 = "BRR replicate 41"
      W_FSTR42 = "BRR replicate 42"
      W_FSTR43 = "BRR replicate 43"
      W_FSTR44 = "BRR replicate 44"
      W_FSTR45 = "BRR replicate 45"
      W_FSTR46 = "BRR replicate 46"
      W_FSTR47 = "BRR replicate 47"
      W_FSTR48 = "BRR replicate 48"
      W_FSTR49 = "BRR replicate 49"
      W_FSTR50 = "BRR replicate 50"
      W_FSTR51 = "BRR replicate 51"
      W_FSTR52 = "BRR replicate 52"
      W_FSTR53 = "BRR replicate 53"
      W_FSTR54 = "BRR replicate 54"
      W_FSTR55 = "BRR replicate 55"
      W_FSTR56 = "BRR replicate 56"
      W_FSTR57 = "BRR replicate 57"
      W_FSTR58 = "BRR replicate 58"
      W_FSTR59 = "BRR replicate 59"
      W_FSTR60 = "BRR replicate 60"
      W_FSTR61 = "BRR replicate 61"
      W_FSTR62 = "BRR replicate 62"
      W_FSTR63 = "BRR replicate 63"
      W_FSTR64 = "BRR replicate 64"
      W_FSTR65 = "BRR replicate 65"
      W_FSTR66 = "BRR replicate 66"
      W_FSTR67 = "BRR replicate 67"
      W_FSTR68 = "BRR replicate 68"
      W_FSTR69 = "BRR replicate 69"
      W_FSTR70 = "BRR replicate 70"
      W_FSTR71 = "BRR replicate 71"
      W_FSTR72 = "BRR replicate 72"
      W_FSTR73 = "BRR replicate 73"
      W_FSTR74 = "BRR replicate 74"
      W_FSTR75 = "BRR replicate 75"
      W_FSTR76 = "BRR replicate 76"
      W_FSTR77 = "BRR replicate 77"
      W_FSTR78 = "BRR replicate 78"
      W_FSTR79 = "BRR replicate 79"
      W_FSTR80 = "BRR replicate 80"
      W_FSTUWT = "Student final weight"
      CNTRFAC = "Science country weight factor"
      DEV_RACE = "Your Race"
      ;
 format
      COUNTRY   $COUNTY.
      ST01Q02    $ST0101F.
      ST01Q03    $ST0103F.
      ST04Q09    $ST0403F.
      ST04Q10    $ST0406F.
      ST20Q07    $ST2007F.
      ST20Q08    $ST2008F.
      ST31Q09    $ST3109F.
      ST31Q10    $ST3110F.
      ST31Q11    $ST3111F.
      ST31Q12    $ST3112F.
      ST31Q13    $ST3113F.
      ST31Q14    $ST3114F.
      ST31Q15    $ST3115F.
      ST31Q16    $ST3116F.
      ST31Q17    $ST3117F.
      ST31Q18    $ST3118F.
      ST35Q10    $ST3510F.
      ST3Q02     $ST3Q00F.
      ST3Q3BA    $ST3Q2aF.
      ST3Q3BB    $ST3Q2bF.
      ST3Q3BC    $ST3Q2cF.
      ST3Q3BD    $ST3Q2dF.
      ST3Q3BE    $ST3Q2eF.
      STIDSTRT   $STIDSTR.
      CC01Q10   CC0110F.
      CC01Q11   CC0111F.
      CC01Q12   CC0112F.
      CC01Q13   CC0113F.
      CC01Q14   CC0114F.
      CC01Q15   CC0115F.
      CC01Q16   CC0116F.
      CC01Q17   CC0117F.
      CC01Q18   CC0118F.
      CC01Q19   CC0119F.
      CC01Q01   CC011F.
      CC01Q20   CC0120F.
      CC01Q21   CC0121F.
      CC01Q22   CC0122F.
      CC01Q23   CC0123F.
      CC01Q24   CC0124F.
      CC01Q25   CC0125F.
      CC01Q26   CC0126F.
      CC01Q27   CC0127F.
      CC01Q28   CC0128F.
      CC01Q02   CC012F.
      CC01Q03   CC013F.
      CC01Q04   CC014F.
      CC01Q05   CC015F.
      CC01Q06   CC016F.
      CC01Q07   CC017F.
      CC01Q08   CC018F.
      CC01Q09   CC019F.
      CC02Q01   CC0201F.
      CC02Q02   CC0202F.
      CC02Q03   CC0203F.
      CC02Q04   CC0204F.
      CC02Q05   CC0205F.
      CC02Q06   CC0206F.
      CC02Q07   CC0207F.
      CC02Q08   CC0208F.
      CC02Q09   CC0209F.
      CC02Q10   CC0210F.
      CC02Q11   CC0211F.
      CC02Q12   CC0212F.
      CC02Q13   CC0213F.
      CC02Q14   CC0214F.
      CC02Q15   CC0215F.
      CC02Q16   CC0216F.
      CC02Q17   CC0217F.
      CC02Q18   CC0218F.
      CC02Q19   CC0219F.
      CC02Q20   CC0220F.
      CC02Q21   CC0221F.
      CC02Q22   CC0222F.
      CC02Q23   CC0223F.
      CC02Q24   CC0224F.
      IT01Q01   EVERY1F.
      IT01Q02   EVERY2F.
      IT01Q03   EVERY3F.
      IT01Q04   EVERY4F.
      IT02Q01   IT021F.
      IT02Q02   IT022F.
      IT02Q03   IT023F.
      IT03Q01   IT03F.
      IT04Q01   IT041F.
      IT04Q02   IT042F.
      IT04Q03   IT043F.
      IT04Q04   IT044F.
	  IT04Q05   IT04Q5F.
      IT05Q01   IT051F.
      IT05Q02   IT052F.
      IT05Q03   IT053F.
      IT05Q04   IT054F.
      IT06Q01   IT061F.
      IT06Q02   IT062F.
      IT06Q03   IT063F.
      IT06Q04   IT064F.
      IT06Q05   IT065F.
      IT07Q01   DISAGF.
      IT08Q01   DISAGF.
      IT09Q01   DISAGF.
      IT10Q01   DISAGF.
      ST03Q01    ST0301F.
      ST04Q01    ST0401F.
      ST04Q02    ST0402F.
      ST04Q03    ST0404F.
      ST04Q04    ST0405F.
      ST04Q07    ST0407F.
      ST04Q05    ST0408F.
      ST04Q06    ST0409F.
      ST04Q08    ST0410F.
      ST05Q01    ST0501F.
      ST05Q02    ST0502F.
      ST05Q03    ST0503F.
      ST06Q01    ST0601F.
      ST07Q01    ST0701F.
      ST12Q01    ST1201F.
      ST13Q01    ST1301F.
      ST14Q01    ST1401F.
      ST15Q01    ST1501F.
      ST16Q02    ST1601F.
      ST16Q03    ST1602F.
      ST16Q01    ST1603F.
      ST17Q01    ST1701F.
      ST18Q01    ST1801F.
      ST18Q02    ST1802F.
      ST18Q03    ST1803F.
      ST18Q04    ST1804F.
      ST18Q05    ST1805F.
      ST18Q06    ST1806F.
      ST19Q01    ST1901F.
      ST19Q02    ST1902F.
      ST19Q03    ST1903F.
      ST19Q04    ST1904F.
      ST19Q05    ST1905F.
      ST19Q06    ST1906F.
      ST20Q01    ST2001F.
      ST20Q02    ST2002F.
      ST20Q03    ST2003F.
      ST20Q04    ST2004F.
      ST20Q05    ST2005F.
      ST20Q06    ST2006F.
      ST21Q01    ST2101F.
      ST21Q02    ST2102F.
      ST21Q03    ST2103F.
      ST21Q04    ST2104F.
      ST21Q05    ST2105F.
      ST21Q06    ST2106F.
      ST21Q07    ST2107F.
      ST21Q08    ST2108F.
      ST21Q09    ST2109F.
      ST21Q10    ST2110F.
      ST21Q11    ST2111F.
      ST22Q01    ST2201F.
      ST22Q02    ST2202F.
      ST22Q03    ST2203F.
      ST22Q04    ST2204F.
      ST22Q05    ST2205F.
      ST22Q06    ST2206F.
      ST22Q07    ST2207F.
      ST23Q01    ST2301F.
      ST23Q02    ST2302F.
      ST23Q03    ST2303F.
      ST23Q04    ST2304F.
      ST24Q01    ST2401F.
      ST24Q02    ST2402F.
      ST24Q03    ST2403F.
      ST24Q04    ST2404F.
      ST24Q05    ST2405F.
      ST24Q06    ST2406F.
      ST24Q07    ST2407F.
      ST25Q01    ST2501F.
      ST26Q01    ST2601F.
      ST26Q02    ST2602F.
      ST26Q03    ST2603F.
      ST26Q04    ST2604F.
      ST26Q05    ST2605F.
      ST26Q06    ST2606F.
      ST26Q07    ST2607F.
      ST26Q08    ST2608F.
      ST26Q09    ST2609F.
      ST26Q10    ST2610F.
      ST26Q11    ST2611F.
      ST26Q12    ST2612F.
      ST26Q13    ST2613F.
      ST26Q14    ST2614F.
      ST26Q15    ST2615F.
      ST26Q16    ST2616F.
      ST26Q17    ST2617F.
      ST27Q02    ST2703F.
      ST27Q04    ST2704F.
      ST27Q06    ST2705F.
      ST29Q01    ST2901F.
      ST29Q02    ST2902F.
      ST29Q03    ST2903F.
      ST30Q01    ST3001F.
      ST30Q02    ST3002F.
      ST30Q03    ST3003F.
      ST30Q04    ST3004F.
      ST30Q05    ST3005F.
      ST31Q01    ST3101F.
      ST31Q02    ST3102F.
      ST31Q03    ST3103F.
      ST31Q04    ST3104F.
      ST31Q05    ST3105F.
      ST31Q06    ST3106F.
      ST31Q07    ST3107F.
      ST31Q08    ST3108F.
      ST32Q01    ST3201F.
      ST32Q02    ST3202F.
      ST32Q03    ST3203F.
      ST32Q04    ST3204F.
      ST32Q05    ST3205F.
      ST32Q06    ST3206F.
      ST32Q07    ST3207F.
      ST33Q01    ST3301F.
      ST33Q02    ST3302F.
      ST33Q03    ST3303F.
      ST34Q01    ST3401F.
      ST35Q01    ST3501F.
      ST35Q02    ST3502F.
      ST35Q03    ST3503F.
      ST35Q04    ST3504F.
      ST35Q05    ST3505F.
      ST35Q06    ST3506F.
      ST35Q07    ST3507F.
      ST35Q08    ST3508F.
      ST35Q09    ST3509F.
      ST36Q01    ST3601F.
      ST36Q02    ST3602F.
      ST36Q03    ST3603F.
      ST36Q04    ST3604F.
      ST36Q05    ST3605F.
      ST36Q06    ST3606F.
      ST37Q01    ST3701F.
      ST38Q01    ST3801F.
      ST39Q01    ST3901F.
      ST39Q02    ST3902F.
      ST39Q03    ST3903F.
      ST39Q04    ST3904F.
      ST39Q05    ST3905F.
      ;

run;

proc contents;
run;

proc freq;
table 
      COUNTRY   
      STIDSTRT   
      ST01Q02       
      ST01Q03    
      ST03Q01    
      ST3Q02     
      ST3Q3BA    
      ST3Q3BB    
      ST3Q3BC    
      ST3Q3BD    
      ST3Q3BE    
      ST04Q01    
      ST04Q02    
      ST04Q09    
      ST04Q03    
      ST04Q04    
      ST04Q10    
      ST04Q07    
      ST04Q05    
      ST04Q06    
      ST04Q08    
      ST16Q02    
      ST16Q03    
      ST16Q01    
      ST06Q01    
      ST12Q01    
      ST14Q01    
      ST07Q01    
      ST13Q01    
      ST15Q01    
      ST05Q01    
      ST05Q02    
      ST05Q03    
      ST17Q01    
      ST18Q01    
      ST18Q02    
      ST18Q03    
      ST18Q04    
      ST18Q05    
      ST18Q06    
      ST19Q01    
      ST19Q02    
      ST19Q03    
      ST19Q04    
      ST19Q05    
      ST19Q06    
      ST20Q01    
      ST20Q02    
      ST20Q03    
      ST20Q04    
      ST20Q05    
      ST20Q06    
      ST20Q07    
      ST20Q08    
      ST21Q01    
      ST21Q02    
      ST21Q03    
      ST21Q04    
      ST21Q05    
      ST21Q06    
      ST21Q07    
      ST21Q08    
      ST21Q09    
      ST21Q10    
      ST21Q11    
      ST22Q01    
      ST22Q02    
      ST22Q03    
      ST22Q04    
      ST22Q05    
      ST22Q06    
      ST22Q07    
      ST23Q01    
      ST23Q02    
      ST23Q03    
      ST23Q04    
      ST24Q01    
      ST24Q02    
      ST24Q03    
      ST24Q04    
      ST24Q05    
      ST24Q06    
      ST24Q07    
      ST25Q01    
      ST26Q01    
      ST26Q02    
      ST26Q03    
      ST26Q04    
      ST26Q05    
      ST26Q06    
      ST26Q07    
      ST26Q08    
      ST26Q09    
      ST26Q10    
      ST26Q11    
      ST26Q12    
      ST26Q13    
      ST26Q14    
      ST26Q15    
      ST26Q16    
      ST26Q17    
      ST27Q02    
      ST27Q04    
      ST27Q06    
      ST29Q01    
      ST29Q02    
      ST29Q03    
      ST30Q01    
      ST30Q02    
      ST30Q03    
      ST30Q04    
      ST30Q05    
      ST31Q01    
      ST31Q02    
      ST31Q03    
      ST31Q04    
      ST31Q05    
      ST31Q06    
      ST31Q07    
      ST31Q08    
      ST31Q09    
      ST31Q10    
      ST31Q11    
      ST31Q12    
      ST31Q13    
      ST31Q14    
      ST31Q15    
      ST31Q16    
      ST31Q17    
      ST31Q18    
      ST32Q01    
      ST32Q02    
      ST32Q03    
      ST32Q04    
      ST32Q05    
      ST32Q06    
      ST32Q07    
      ST33Q01    
      ST33Q02    
      ST33Q03    
      ST34Q01    
      ST35Q01    
      ST35Q02    
      ST35Q03    
      ST35Q04    
      ST35Q05    
      ST35Q06    
      ST35Q07    
      ST35Q08    
      ST35Q09    
      ST35Q10    
      ST36Q01    
      ST36Q02    
      ST36Q03    
      ST36Q04    
      ST36Q05    
      ST36Q06    
      ST37Q01    
      ST38Q01    
      ST39Q01    
      ST39Q02    
      ST39Q03    
      ST39Q04    
      ST39Q05    
      IT01Q01   
      IT01Q02   
      IT01Q03   
      IT01Q04   
      IT02Q01   
      IT02Q02   
      IT02Q03   
      IT03Q01   
      IT04Q01   
      IT04Q02   
      IT04Q03   
      IT04Q04  
	  IT04Q05 
      IT05Q01   
      IT05Q02   
      IT05Q03   
      IT05Q04   
      IT06Q01   
      IT06Q02   
      IT06Q03   
      IT06Q04   
      IT06Q05   
      IT07Q01   
      IT08Q01   
      IT09Q01   
      IT10Q01   
      CC01Q01   
      CC01Q02   
      CC01Q03   
      CC01Q04   
      CC01Q05   
      CC01Q06   
      CC01Q07   
      CC01Q08   
      CC01Q09   
      CC01Q10   
      CC01Q11   
      CC01Q12   
      CC01Q13   
      CC01Q14   
      CC01Q15   
      CC01Q16   
      CC01Q17   
      CC01Q18   
      CC01Q19   
      CC01Q20   
      CC01Q21   
      CC01Q22   
      CC01Q23   
      CC01Q24   
      CC01Q25   
      CC01Q26   
      CC01Q27   
      CC01Q28   
      CC02Q01   
      CC02Q02   
      CC02Q03   
      CC02Q04   
      CC02Q05   
      CC02Q06   
      CC02Q07   
      CC02Q08   
      CC02Q09   
      CC02Q10   
      CC02Q11   
      CC02Q12   
      CC02Q13   
      CC02Q14   
      CC02Q15   
      CC02Q16   
      CC02Q17   
      CC02Q18   
      CC02Q19   
      CC02Q20   
      CC02Q21   
      CC02Q22   
      CC02Q23   
      CC02Q24   
;
run;

proc means;
var 
      ST02Q01    
      ST27Q01    
      ST27Q03    
      ST27Q05    
      ST27Q07    
      ST27Q08    
      ST27Q09    
      ST28Q01    
      ST28Q02    
      ST28Q03    
      ST41Q01    
      ST41Q02    
      ST41Q03    
      PV1READ   
      PV2READ   
      PV3READ   
      PV4READ   
      PV5READ   
      W_FSTR1   
      W_FSTR2   
      W_FSTR3   
      W_FSTR4   
      W_FSTR5   
      W_FSTR6   
      W_FSTR7   
      W_FSTR8   
      W_FSTR9   
      W_FSTR10   
      W_FSTR11   
      W_FSTR12   
      W_FSTR13   
      W_FSTR14   
      W_FSTR15   
      W_FSTR16   
      W_FSTR17   
      W_FSTR18   
      W_FSTR19   
      W_FSTR20   
      W_FSTR21   
      W_FSTR22   
      W_FSTR23   
      W_FSTR24   
      W_FSTR25   
      W_FSTR26   
      W_FSTR27   
      W_FSTR28   
      W_FSTR29   
      W_FSTR30   
      W_FSTR31   
      W_FSTR32   
      W_FSTR33   
      W_FSTR34   
      W_FSTR35   
      W_FSTR36   
      W_FSTR37   
      W_FSTR38   
      W_FSTR39   
      W_FSTR40   
      W_FSTR41   
      W_FSTR42   
      W_FSTR43   
      W_FSTR44   
      W_FSTR45   
      W_FSTR46   
      W_FSTR47   
      W_FSTR48   
      W_FSTR49   
      W_FSTR50   
      W_FSTR51   
      W_FSTR52   
      W_FSTR53   
      W_FSTR54   
      W_FSTR55   
      W_FSTR56   
      W_FSTR57   
      W_FSTR58   
      W_FSTR59   
      W_FSTR60   
      W_FSTR61   
      W_FSTR62   
      W_FSTR63   
      W_FSTR64   
      W_FSTR65   
      W_FSTR66   
      W_FSTR67   
      W_FSTR68   
      W_FSTR69   
      W_FSTR70   
      W_FSTR71   
      W_FSTR72   
      W_FSTR73   
      W_FSTR74   
      W_FSTR75   
      W_FSTR76   
      W_FSTR77   
      W_FSTR78   
      W_FSTR79   
      W_FSTR80   
      W_FSTUWT   
      CNTRFAC   
      DEV_RACE   
;
run;
 
