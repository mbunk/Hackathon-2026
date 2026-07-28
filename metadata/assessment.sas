/*  PISA 2000 USA National data - StudenT Assessment  */

Options nosource nocenter;

libname LIB 'C:\PISA ECB\';

filename in1 'C:\PISA ECB\usa_assesm.dat';

proc format; 
   value $COUNTF
      "840" = "USA"
      "" = "Mis"
   ;
   value $SCHLID
      "" = "School ID"
      "99999" = "Mis"
   ;
   value $STIDSTD
      "" = "Student ID"
      "99999" = "Mis"
   ;
   value $SUBNATI
      "00" = "00"
      "" = "Mis"
   ;
   value $BOOKID
      "1" = "Booklet 1"
      "2" = "Booklet 2"
      "3" = "Booklet 3"
      "4" = "Booklet 4"
      "5" = "Booklet 5"
      "6" = "Booklet 6"
      "7" = "Booklet 7"
      "8" = "Booklet 8"
      "9" = "Booklet 9"
   ;
   value $ITEM1F
      "1" = "1"
      "2" = "2"
      "3" = "3"
      "4" = "4"
      "8" = "M/R"
      "9" = "Missing"
      "r" = "Not reached"
      "n" = "N/A"
   ;
   value $MSCFMT
      "0" = "non-scalable"
      "1" = "scalable"
      "8" = "M/R"
   ;
   value $RSCFMT
      "0" = "non-scalable"
      "1" = "scalable"
      "8" = "M/R"
   ;
   value $SSCFMT
      "0" = "non-scalable"
      "1" = "scalable"
      "8" = "M/R"
   ;
   value $CLCFMT
      "1" = "No calculator"
      "2" = "A Simple calculator"
      "3" = "A Scientific calculator"
      "4" = "A Programmable calculator"
      "5" = "A Graphics calculators"
      "8" = "M/R"
      "9" = "Mis"
      "n" = "N/A"
   ;
   value $CNTF
      "USA" = "UNITED STATES"
      "" = "Mis"
   ;
   value $ITEM2F
      "0" = "0"
      "1" = "1"
      "8" = "M/R"
      "9" = "Missing"
      "r" = "Not reached"
      "n" = "N/A"
   ;
   value $ITEM3F
      "0" = "0"
      "1" = "1"
      "2" = "2"
      "8" = "M/R"
      "9" = "Missing"
      "r" = "Not reached"
      "n" = "N/A"
   ;
   value $ITEM4F
      "0" = "0"
      "1" = "1"
      "2" = "2"
      "3" = "3"
      "8" = "M/R"
      "9" = "Missing"
      "r" = "Not reached"
      "n" = "N/A"
   ;
   value $ITEM5F
      "1" = "1"
      "2" = "2"
      "3" = "3"
      "4" = "4"
      "5" = "5"
      "8" = "M/R"
      "9" = "Missing"
      "r" = "Not reached"
      "n" = "N/A"
   ;
   value $ITEM6F
      "0" = "0"
      "1" = "1"
      "2" = "2"
      "3" = "3"
      "4" = "4"
      "8" = "M/R"
      "9" = "Missing"
      "r" = "Not reached"
      "n" = "N/A"
   ;
   value $ITEM7F
      "0" = "0"
      "1" = "1"
      "2" = "2"
      "3" = "3"
      "4" = "4"
      "5" = "5"
      "8" = "M/R"
      "9" = "Missing"
      "r" = "Not reached"
      "n" = "N/A"
   ;
   value $ITEM8F
      "0" = "0"
      "1" = "1"
      "2" = "2"
      "3" = "3"
      "4" = "4"
      "5" = "5"
      "6" = "6"
      "8" = "M/R"
      "9" = "Missing"
      "r" = "Not reached"
      "n" = "N/A"
   ;
   value $ITEM9F
      "0" = "0"
      "1" = "1"
      "2" = "2"
      "3" = "3"
      "4" = "4"
      "5" = "5"
      "6" = "6"
      "7" = "7"
      "8" = "M/R"
      "9" = "Missing"
      "r" = "Not reached"
      "n" = "N/A"
   ;

run;

data lib.assessment;
   infile in1 lrecl=225;
      input 
   #1
      @2 COUNTRY $3.
      @5 SCHOOLID $5.
      @10 STIDSTD $5.
      @16 SUBNATIO $2.
      @19 BOOKID $2.
      @22 M033Q01 $1.
      @23 M034Q01T $1.
      @24 M037Q01T $1.
      @25 M037Q02T $1.
      @26 M124Q01 $1.
      @27 M124Q03T $1.
      @28 M136Q01T $1.
      @29 M136Q02T $1.
      @30 M136Q03T $1.
      @31 M144Q01T $1.
      @32 M144Q02T $1.
      @33 M144Q03 $1.
      @34 M144Q04T $1.
      @35 M145Q01T $1.
      @36 M148Q02T $1.
      @37 M150Q01 $1.
      @38 M150Q02T $1.
      @39 M150Q03T $1.
      @40 M155Q01 $1.
      @41 M155Q02T $1.
      @42 M155Q03T $1.
      @43 M155Q04T $1.
      @44 M159Q01 $1.
      @45 M159Q02 $1.
      @46 M159Q03 $1.
      @47 M159Q05 $1.
      @48 M161Q01 $1.
      @49 M179Q01T $1.
      @50 M192Q01T $1.
      @51 M266Q01T $1.
      @52 M273Q01T $1.
      @53 R040Q02 $1.
      @54 R040Q03A $1.
      @55 R040Q03B $1.
      @56 R040Q04 $1.
      @57 R040Q06 $1.
      @58 R055Q01 $1.
      @59 R055Q02 $1.
      @60 R055Q03 $1.
      @61 R055Q05 $1.
      @62 R061Q01 $1.
      @63 R061Q03 $1.
      @64 R061Q04 $1.
      @65 R061Q05 $1.
      @66 R067Q01 $1.
      @67 R067Q04 $1.
      @68 R067Q05 $1.
      @69 R070Q02 $1.
      @70 R070Q03 $1.
      @71 R070Q04 $1.
      @72 R070Q07T $1.
      @73 R076Q03 $1.
      @74 R076Q04 $1.
      @75 R076Q05 $1.
      @76 R077Q02 $1.
      @77 R077Q03 $1.
      @78 R077Q04 $1.
      @79 R077Q05 $1.
      @80 R077Q06 $1.
      @81 R081Q01 $1.
      @82 R081Q05 $1.
      @83 R081Q06A $1.
      @84 R081Q06B $1.
      @85 R083Q01 $1.
      @86 R083Q02 $1.
      @87 R083Q03 $1.
      @88 R083Q04 $1.
      @89 R083Q06 $1.
      @90 R086Q04 $1.
      @91 R086Q05 $1.
      @92 R086Q07 $1.
      @93 R088Q01 $1.
      @94 R088Q03 $1.
      @95 R088Q04T $1.
      @96 R088Q05T $1.
      @97 R088Q07 $1.
      @98 R091Q05 $1.
      @99 R091Q06 $1.
      @100 R091Q07B $1.
      @101 R093Q03 $1.
      @102 R099Q04B $1.
      @103 R100Q04 $1.
      @104 R100Q05 $1.
      @105 R100Q06 $1.
      @106 R100Q07 $1.
      @107 R101Q01 $1.
      @108 R101Q02 $1.
      @109 R101Q03 $1.
      @110 R101Q04 $1.
      @111 R101Q05 $1.
      @112 R101Q08 $1.
      @113 R102Q01 $1.
      @114 R102Q04A $1.
      @115 R102Q05 $1.
      @116 R102Q06 $1.
      @117 R102Q07 $1.
      @118 R104Q01 $1.
      @119 R104Q02 $1.
      @120 R104Q05 $1.
      @121 R104Q06 $1.
      @122 R110Q01 $1.
      @123 R110Q04 $1.
      @124 R110Q05 $1.
      @125 R110Q06 $1.
      @126 R111Q01 $1.
      @127 R111Q02B $1.
      @128 R111Q04 $1.
      @129 R111Q06B $1.
      @130 R119Q01 $1.
      @131 R119Q04 $1.
      @132 R119Q05 $1.
      @133 R119Q06 $1.
      @134 R119Q07 $1.
      @135 R119Q08 $1.
      @136 R119Q09T $1.
      @137 R120Q01 $1.
      @138 R120Q03 $1.
      @139 R120Q06 $1.
      @140 R120Q07T $1.
      @141 R122Q02 $1.
      @142 R122Q03T $1.
      @143 R216Q01 $1.
      @144 R216Q02 $1.
      @145 R216Q03T $1.
      @146 R216Q04 $1.
      @147 R216Q06 $1.
      @148 R219Q01E $1.
      @149 R219Q01T $1.
      @150 R219Q02 $1.
      @151 R220Q01 $1.
      @152 R220Q02B $1.
      @153 R220Q04 $1.
      @154 R220Q05 $1.
      @155 R220Q06 $1.
      @156 R225Q02 $1.
      @157 R225Q03 $1.
      @158 R225Q04 $1.
      @159 R227Q01 $1.
      @160 R227Q02T $1.
      @161 R227Q03 $1.
      @162 R227Q04 $1.
      @163 R227Q06 $1.
      @164 R228Q01 $1.
      @165 R228Q02 $1.
      @166 R228Q04 $1.
      @167 R234Q01 $1.
      @168 R234Q02 $1.
      @169 R236Q01 $1.
      @170 R236Q02 $1.
      @171 R237Q01 $1.
      @172 R237Q03 $1.
      @173 R238Q01 $1.
      @174 R238Q02 $1.
      @175 R239Q01 $1.
      @176 R239Q02 $1.
      @177 R241Q02 $1.
      @178 R245Q01 $1.
      @179 R245Q02 $1.
      @180 R246Q01 $1.
      @181 R246Q02 $1.
      @182 S114Q03T $1.
      @183 S114Q04T $1.
      @184 S114Q05T $1.
      @185 S128Q01 $1.
      @186 S128Q02 $1.
      @187 S128Q03T $1.
      @188 S129Q01 $1.
      @189 S129Q02T $1.
      @190 S131Q02T $1.
      @191 S131Q04T $1.
      @192 S133Q01 $1.
      @193 S133Q03 $1.
      @194 S133Q04T $1.
      @195 S195Q02T $1.
      @196 S195Q04 $1.
      @197 S195Q05T $1.
      @198 S195Q06 $1.
      @199 S209Q02T $1.
      @200 S213Q01T $1.
      @201 S213Q02 $1.
      @202 S252Q01 $1.
      @203 S252Q02 $1.
      @204 S252Q03T $1.
      @205 S253Q01T $1.
      @206 S253Q02 $1.
      @207 S253Q05 $1.
      @208 S256Q01 $1.
      @209 S268Q01 $1.
      @210 S268Q02T $1.
      @211 S268Q06 $1.
      @212 S269Q01 $1.
      @213 S269Q03T $1.
      @214 S269Q04T $1.
      @215 S270Q03T $1.
      @217 MSCALE $1.
      @218 RSCALE $1.
      @219 SSCALE $1.
      @221 CLCUSE $1.
      @223 CNT $3.
      ;

   label
      COUNTRY = "Country three-digit ISO code"
      SCHOOLID = "School ID"
      STIDSTD = "Student ID"
      SUBNATIO = "SubNatio"
      BOOKID = "Booklet ID"
      M033Q01 = " View Room - Q1      "
      M034Q01T = " Bricks - Q1         "
      M037Q01T = " Farms - Q1          "
      M037Q02T = " Farms - Q2          "
      M124Q01 = " Walking - Q1        "
      M124Q03T = " Walking - Q3        "
      M136Q01T = " Apples - Q1         "
      M136Q02T = " Apples - Q2         "
      M136Q03T = " Apples - Q3         "
      M144Q01T = " Cube Painting -Q1   "
      M144Q02T = " Cube Painting -Q2   "
      M144Q03 = " Cube Painting -Q3   "
      M144Q04T = " Cube Painting -Q4   "
      M145Q01T = " Cubes - Q1          "
      M148Q02T = " Continent Area      "
      M150Q01 = " Growing Up - Q1     "
      M150Q02T = " Growing Up - Q2     "
      M150Q03T = " Growing Up - Q3     "
      M155Q01 = " Pop Pyramids -Q1    "
      M155Q02T = " Pop Pyramids -Q2    "
      M155Q03T = " Pop Pyramids -Q3    "
      M155Q04T = " Pop Pyramids -Q4    "
      M159Q01 = " Racing Car - Q1     "
      M159Q02 = " Racing Car - Q2     "
      M159Q03 = " Racing Car - Q3     "
      M159Q05 = " Racing Car - Q5     "
      M161Q01 = " Triangles - Q1      "
      M179Q01T = " Robberies - Q1      "
      M192Q01T = " Containers - Q1     "
      M266Q01T = " Carpenter - Q01     "
      M273Q01T = " Pipelines - Q1      "
      R040Q02 = " Lake Chad  - Q2     "
      R040Q03A = " Lake Chad - Q3A     "
      R040Q03B = " Lake Chad - Q3B     "
      R040Q04 = " Lake Chad - Q4      "
      R040Q06 = " Lake Chad - Q6      "
      R055Q01 = " Drugged Spiders     "
      R055Q02 = " Drugged Spiders     "
      R055Q03 = " Drugged Spiders     "
      R055Q05 = " Drugged Spiders     "
      R061Q01 = " Macondo - Q1        "
      R061Q03 = " Macondo - Q3        "
      R061Q04 = " Macondo - Q4        "
      R061Q05 = " Macondo - Q5        "
      R067Q01 = " Aesop - Q1          "
      R067Q04 = " Aesop - Q4          "
      R067Q05 = " Aesop - Q5          "
      R070Q02 = " Beach - Q2          "
      R070Q03 = " Beach - Q3          "
      R070Q04 = " Beach - Q4          "
      R070Q07T = " Beach - Q7          "
      R076Q03 = " Iran Air - Q3       "
      R076Q04 = " Iran Air - Q4       "
      R076Q05 = " Iran Air - Q5       "
      R077Q02 = " Flu - Q2            "
      R077Q03 = " Flu - Q3            "
      R077Q04 = " Flu - Q4            "
      R077Q05 = " Flu - Q5            "
      R077Q06 = " Flu - Q6            "
      R081Q01 = " Graffiti - Q1       "
      R081Q05 = " Graffiti - Q5       "
      R081Q06A = " Graffiti - Q6A      "
      R081Q06B = " Graffiti - Q6B      "
      R083Q01 = " Household - Q1      "
      R083Q02 = " Household - Q2      "
      R083Q03 = " Household - Q3      "
      R083Q04 = " Household - Q4      "
      R083Q06 = " Household - Q6      "
      R086Q04 = " If - Q4             "
      R086Q05 = " If - Q5             "
      R086Q07 = " If - Q7             "
      R088Q01 = " Labour - Q1         "
      R088Q03 = " Labour - Q3         "
      R088Q04T = " Labour - Q4         "
      R088Q05T = " Labour - Q5         "
      R088Q07 = " Labour - Q7         "
      R091Q05 = " Library - Q5        "
      R091Q06 = " Library - Q6        "
      R091Q07B = " Library - Q7B       "
      R093Q03 = " News Agencies -Q3   "
      R099Q04B = " Planint - Q4B       "
      R100Q04 = " Police - Q4         "
      R100Q05 = " Police - Q5         "
      R100Q06 = " Police - Q6         "
      R100Q07 = " Police - Q7         "
      R101Q01 = " Rhinoceros - Q1     "
      R101Q02 = " Rhinoceros - Q2     "
      R101Q03 = " Rhinoceros - Q3     "
      R101Q04 = " Rhinoceros - Q4     "
      R101Q05 = " Rhinoceros - Q5     "
      R101Q08 = " Rhinoceros - Q8     "
      R102Q01 = " Shirt - Q1          "
      R102Q04A = " Shirt - Q4A         "
      R102Q05 = " Shirt - Q5          "
      R102Q06 = " Shirt - Q6          "
      R102Q07 = " Shirt - Q7          "
      R104Q01 = " Telephone - Q1      "
      R104Q02 = " Telephone - Q2      "
      R104Q05 = " Telephone - Q5      "
      R104Q06 = " Telephone - Q6      "
      R110Q01 = " Runners - Q1        "
      R110Q04 = " Runners - Q4        "
      R110Q05 = " Runners - Q5        "
      R110Q06 = " Runners - Q6        "
      R111Q01 = " Exchange - Q1       "
      R111Q02B = " Exchange - Q2B      "
      R111Q04 = " Exchange - Q4       "
      R111Q06B = " Exchange - Q6B      "
      R119Q01 = " Gift - Q1           "
      R119Q04 = " Gift - Q4           "
      R119Q05 = " Gift - Q5           "
      R119Q06 = " Gift - Q6           "
      R119Q07 = " Gift - Q7           "
      R119Q08 = " Gift - Q8           "
      R119Q09T = " Gift - Q9           "
      R120Q01 = " Opinions - Q1       "
      R120Q03 = " Opinions - Q3       "
      R120Q06 = " Opinions- Q6        "
      R120Q07T = " Opinions- Q7        "
      R122Q02 = " Just Art - Q2       "
      R122Q03T = " Just Art - Q3       "
      R216Q01 = " Amanda - Q1         "
      R216Q02 = " Amanda - Q2         "
      R216Q03T = " Amanda - Q3         "
      R216Q04 = " Amanda - Q4         "
      R216Q06 = " Amanda - Q6         "
      R219Q01E = " Employment - Q1     "
      R219Q01T = " Employment - Q1     "
      R219Q02 = " Employment - Q2     "
      R220Q01 = " South Pole- Q1      "
      R220Q02B = " South Pole - Q2     "
      R220Q04 = " South Pole - Q4     "
      R220Q05 = " South Pole - Q5     "
      R220Q06 = " South Pole - Q6     "
      R225Q02 = " Nuclear - Q2        "
      R225Q03 = " Nuclear - Q3        "
      R225Q04 = " Nuclear - Q4        "
      R227Q01 = " Optician - Q1       "
      R227Q02T = " Optician - Q2       "
      R227Q03 = " Optician - Q3       "
      R227Q04 = " Optician - Q4       "
      R227Q06 = " Optician - Q6       "
      R228Q01 = " Guide - Q1          "
      R228Q02 = " Guide - Q2          "
      R228Q04 = " Guide - Q4          "
      R234Q01 = " Personnel - Q1      "
      R234Q02 = " Personnel - Q2      "
      R236Q01 = " New Rules - Q1      "
      R236Q02 = " New Rules - Q2      "
      R237Q01 = " Job Interview -     "
      R237Q03 = " Job Interview -     "
      R238Q01 = " Bicycle - Q1        "
      R238Q02 = " Bicycle - Q2        "
      R239Q01 = " Allergies - Q1      "
      R239Q02 = " Allergies - Q2      "
      R241Q02 = " WarrantyHotPoin     "
      R245Q01 = " Movie Reviews -Q1   "
      R245Q02 = " Movie Reviews -Q2   "
      R246Q01 = " Contact Employe     "
      R246Q02 = " Contact Employe     "
      S114Q03T = " Greenhouse - Q3     "
      S114Q04T = " Greenhouse - Q4     "
      S114Q05T = " Greenhouse - Q5     "
      S128Q01 = " Cloning - Q1        "
      S128Q02 = " Cloning - Q2        "
      S128Q03T = " Cloning - Q3        "
      S129Q01 = " Daylight - Q1       "
      S129Q02T = " Daylight - Q2       "
      S131Q02T = " Good Vibrations     "
      S131Q04T = " Good Vibrations     "
      S133Q01 = " Research - Q1       "
      S133Q03 = " Research - Q3       "
      S133Q04T = " Research - Q4       "
      S195Q02T = " Semmelweis - Q2     "
      S195Q04 = " Semmelweis - Q4     "
      S195Q05T = " Semmelweis - Q5     "
      S195Q06 = " SemmelWeis - Q6     "
      S209Q02T = " Tidal Power - Q     "
      S213Q01T = " Clothes - Q1        "
      S213Q02 = " Clothes - Q2        "
      S252Q01 = " South Rainea -Q1    "
      S252Q02 = " South Rainea -Q2    "
      S252Q03T = " South Rainea -Q3    "
      S253Q01T = " Ozone - Q1          "
      S253Q02 = " Ozone - Q2          "
      S253Q05 = " Ozone - Q5          "
      S256Q01 = " Spoons - Q1         "
      S268Q01 = " Algae - Q1          "
      S268Q02T = " Algae - Q2          "
      S268Q06 = " Algae - Q6          "
      S269Q01 = " Earth - Q1          "
      S269Q03T = " Earth - Q3          "
      S269Q04T = " Earth - Q4          "
      S270Q03T = " Ozone - Q3          "
      MSCALE = " Maths Scalable     "
      RSCALE = " Reading Scalable    "
      SSCALE = " Science Scalable    "
      CLCUSE = " Calculator Use     "
      CNT = "Country Alphanumeric ISO Code"
      ;

/* format
      BOOKID   $BOOKID.
      CLCUSE   $CLCFMT.
      CNT   $CNTF.
      COUNTRY   $COUNTF.
      M033Q01   $ITEM1F.
      M144Q03   $ITEM1F.
      M159Q01   $ITEM1F.
      M159Q02   $ITEM1F.
      M159Q03   $ITEM1F.
      R040Q04   $ITEM1F.
      R040Q06   $ITEM1F.
      R055Q01   $ITEM1F.
      R061Q03   $ITEM1F.
      R061Q04   $ITEM1F.
      R067Q01   $ITEM1F.
      R070Q02   $ITEM1F.
      R070Q03   $ITEM1F.
      R077Q02   $ITEM1F.
      R077Q04   $ITEM1F.
      R077Q06   $ITEM1F.
      R081Q01   $ITEM1F.
      R083Q01   $ITEM1F.
      R083Q04   $ITEM1F.
      R086Q05   $ITEM1F.
      R088Q01   $ITEM1F.
      R088Q07   $ITEM1F.
      R091Q06   $ITEM1F.
      R100Q04   $ITEM1F.
      R100Q05   $ITEM1F.
      R100Q06   $ITEM1F.
      R100Q07   $ITEM1F.
      R101Q01   $ITEM1F.
      R101Q02   $ITEM1F.
      R101Q03   $ITEM1F.
      R101Q04   $ITEM1F.
      R101Q05   $ITEM1F.
      R101Q08   $ITEM1F.
      R102Q01   $ITEM1F.
      R102Q07   $ITEM1F.
      R110Q01   $ITEM1F.
      R110Q06   $ITEM1F.
      R111Q01   $ITEM1F.
      R111Q04   $ITEM1F.
      R119Q01   $ITEM1F.
      R119Q04   $ITEM1F.
      R119Q06   $ITEM1F.
      R120Q01   $ITEM1F.
      R120Q03   $ITEM1F.
      R122Q02   $ITEM1F.
      R216Q01   $ITEM1F.
      R216Q06   $ITEM1F.
      R220Q02B   $ITEM1F.
      R220Q04   $ITEM1F.
      R220Q05   $ITEM1F.
      R220Q06   $ITEM1F.
      R225Q03   $ITEM1F.
      R225Q04   $ITEM1F.
      R227Q01   $ITEM1F.
      R228Q01   $ITEM1F.
      R228Q02   $ITEM1F.
      R228Q04   $ITEM1F.
      S128Q01   $ITEM1F.
      S128Q02   $ITEM1F.
      S129Q01   $ITEM1F.
      S133Q01   $ITEM1F.
      S133Q03   $ITEM1F.
      S195Q04   $ITEM1F.
      S195Q06   $ITEM1F.
      S213Q02   $ITEM1F.
      S252Q01   $ITEM1F.
      S252Q02   $ITEM1F.
      S253Q02   $ITEM1F.
      S256Q01   $ITEM1F.
      S268Q01   $ITEM1F.
      S268Q06   $ITEM1F.
      M034Q01T   $ITEM2F.
      M037Q01T   $ITEM2F.
      M037Q02T   $ITEM2F.
      M144Q01T   $ITEM2F.
      M144Q02T   $ITEM2F.
      M144Q04T   $ITEM2F.
      M145Q01T   $ITEM2F.
      M155Q01   $ITEM2F.
      M273Q01T   $ITEM2F.
      R040Q03A   $ITEM2F.
      R040Q03B   $ITEM2F.
      R055Q02   $ITEM2F.
      R055Q05   $ITEM2F.
      R061Q05   $ITEM2F.
      R070Q04   $ITEM2F.
      R076Q03   $ITEM2F.
      R076Q04   $ITEM2F.
      R081Q05   $ITEM2F.
      R081Q06A   $ITEM2F.
      R081Q06B   $ITEM2F.
      R083Q02   $ITEM2F.
      R083Q03   $ITEM2F.
      R083Q06   $ITEM2F.
      R086Q04   $ITEM2F.
      R086Q07   $ITEM2F.
      R091Q05   $ITEM2F.
      R093Q03   $ITEM2F.
      R102Q04A   $ITEM2F.
      R102Q05   $ITEM2F.
      R102Q06   $ITEM2F.
      R104Q01   $ITEM2F.
      R104Q02   $ITEM2F.
      R104Q06   $ITEM2F.
      R110Q04   $ITEM2F.
      R110Q05   $ITEM2F.
      R120Q06   $ITEM2F.
      R216Q02   $ITEM2F.
      R216Q03T   $ITEM2F.
      R216Q04   $ITEM2F.
      R219Q01E   $ITEM2F.
      R219Q01T   $ITEM2F.
      R219Q02   $ITEM2F.
      R220Q01   $ITEM2F.
      R225Q02   $ITEM2F.
      R227Q03   $ITEM2F.
      R227Q06   $ITEM2F.
      R234Q01   $ITEM2F.
      R234Q02   $ITEM2F.
      R236Q01   $ITEM2F.
      R237Q01   $ITEM2F.
      R237Q03   $ITEM2F.
      R238Q01   $ITEM2F.
      R238Q02   $ITEM2F.
      R239Q01   $ITEM2F.
      R239Q02   $ITEM2F.
      R241Q02   $ITEM2F.
      R245Q01   $ITEM2F.
      R245Q02   $ITEM2F.
      R246Q01   $ITEM2F.
      R246Q02   $ITEM2F.
      S114Q03T   $ITEM2F.
      S114Q05T   $ITEM2F.
      S131Q02T   $ITEM2F.
      S131Q04T   $ITEM2F.
      S195Q05T   $ITEM2F.
      S209Q02T   $ITEM2F.
      S253Q05   $ITEM2F.
      S268Q02T   $ITEM2F.
      S269Q01   $ITEM2F.
      S269Q03T   $ITEM2F.
      M124Q01   $ITEM3F.
      M136Q01T   $ITEM3F.
      M136Q02T   $ITEM3F.
      M136Q03T   $ITEM3F.
      M148Q02T   $ITEM3F.
      M150Q01   $ITEM3F.
      M150Q02T   $ITEM3F.
      M150Q03T   $ITEM3F.
      M155Q02T   $ITEM3F.
      M155Q03T   $ITEM3F.
      M179Q01T   $ITEM3F.
      R055Q03   $ITEM3F.
      R061Q01   $ITEM3F.
      R067Q04   $ITEM3F.
      R067Q05   $ITEM3F.
      R077Q03   $ITEM3F.
      R077Q05   $ITEM3F.
      R088Q03   $ITEM3F.
      R091Q07B   $ITEM3F.
      R104Q05   $ITEM3F.
      R111Q02B   $ITEM3F.
      R111Q06B   $ITEM3F.
      R119Q08   $ITEM3F.
      R119Q09T   $ITEM3F.
      R227Q04   $ITEM3F.
      R236Q02   $ITEM3F.
      S114Q04T   $ITEM3F.
      S128Q03T   $ITEM3F.
      S129Q02T   $ITEM3F.
      S195Q02T   $ITEM3F.
      S252Q03T   $ITEM3F.
      S270Q03T   $ITEM3F.
      M124Q03T   $ITEM4F.
      M192Q01T   $ITEM4F.
      R088Q05T   $ITEM4F.
      R099Q04B   $ITEM4F.
      R119Q05   $ITEM4F.
      R119Q07   $ITEM4F.
      R120Q07T   $ITEM4F.
      S133Q04T   $ITEM4F.
      S253Q01T   $ITEM4F.
      M159Q05   $ITEM5F.
      M161Q01   $ITEM5F.
      R040Q02   $ITEM5F.
      R076Q05   $ITEM5F.
      M155Q04T   $ITEM6F.
      M266Q01T   $ITEM6F.
      S213Q01T   $ITEM6F.
      S269Q04T   $ITEM6F.
      R070Q07T   $ITEM7F.
      R088Q04T   $ITEM7F.
      R122Q03T   $ITEM8F.
      R227Q02T   $ITEM9F.
      MSCALE   $MSCFMT.
      RSCALE   $RSCFMT.
      SCHOOLID   $SCHLID.
      SSCALE   $SSCFMT.
      STIDSTD   $STIDSTD.
      SUBNATIO   $SUBNATI.
      ;
 */

run;

/*
proc contents;
run;

proc freq;
table 
      COUNTRY   
      SCHOOLID   
      STIDSTD   
      SUBNATIO   
      BOOKID   
      M033Q01   
      M034Q01T   
      M037Q01T   
      M037Q02T   
      M124Q01   
      M124Q03T   
      M136Q01T   
      M136Q02T   
      M136Q03T   
      M144Q01T   
      M144Q02T   
      M144Q03   
      M144Q04T   
      M145Q01T   
      M148Q02T   
      M150Q01   
      M150Q02T   
      M150Q03T   
      M155Q01   
      M155Q02T   
      M155Q03T   
      M155Q04T   
      M159Q01   
      M159Q02   
      M159Q03   
      M159Q05   
      M161Q01   
      M179Q01T   
      M192Q01T   
      M266Q01T   
      M273Q01T   
      R040Q02   
      R040Q03A   
      R040Q03B   
      R040Q04   
      R040Q06   
      R055Q01   
      R055Q02   
      R055Q03   
      R055Q05   
      R061Q01   
      R061Q03   
      R061Q04   
      R061Q05   
      R067Q01   
      R067Q04   
      R067Q05   
      R070Q02   
      R070Q03   
      R070Q04   
      R070Q07T   
      R076Q03   
      R076Q04   
      R076Q05   
      R077Q02   
      R077Q03   
      R077Q04   
      R077Q05   
      R077Q06   
      R081Q01   
      R081Q05   
      R081Q06A   
      R081Q06B   
      R083Q01   
      R083Q02   
      R083Q03   
      R083Q04   
      R083Q06   
      R086Q04   
      R086Q05   
      R086Q07   
      R088Q01   
      R088Q03   
      R088Q04T   
      R088Q05T   
      R088Q07   
      R091Q05   
      R091Q06   
      R091Q07B   
      R093Q03   
      R099Q04B   
      R100Q04   
      R100Q05   
      R100Q06   
      R100Q07   
      R101Q01   
      R101Q02   
      R101Q03   
      R101Q04   
      R101Q05   
      R101Q08   
      R102Q01   
      R102Q04A   
      R102Q05   
      R102Q06   
      R102Q07   
      R104Q01   
      R104Q02   
      R104Q05   
      R104Q06   
      R110Q01   
      R110Q04   
      R110Q05   
      R110Q06   
      R111Q01   
      R111Q02B   
      R111Q04   
      R111Q06B   
      R119Q01   
      R119Q04   
      R119Q05   
      R119Q06   
      R119Q07   
      R119Q08   
      R119Q09T   
      R120Q01   
      R120Q03   
      R120Q06   
      R120Q07T   
      R122Q02   
      R122Q03T   
      R216Q01   
      R216Q02   
      R216Q03T   
      R216Q04   
      R216Q06   
      R219Q01E   
      R219Q01T   
      R219Q02   
      R220Q01   
      R220Q02B   
      R220Q04   
      R220Q05   
      R220Q06   
      R225Q02   
      R225Q03   
      R225Q04   
      R227Q01   
      R227Q02T   
      R227Q03   
      R227Q04   
      R227Q06   
      R228Q01   
      R228Q02   
      R228Q04   
      R234Q01   
      R234Q02   
      R236Q01   
      R236Q02   
      R237Q01   
      R237Q03   
      R238Q01   
      R238Q02   
      R239Q01   
      R239Q02   
      R241Q02   
      R245Q01   
      R245Q02   
      R246Q01   
      R246Q02   
      S114Q03T   
      S114Q04T   
      S114Q05T   
      S128Q01   
      S128Q02   
      S128Q03T   
      S129Q01   
      S129Q02T   
      S131Q02T   
      S131Q04T   
      S133Q01   
      S133Q03   
      S133Q04T   
      S195Q02T   
      S195Q04   
      S195Q05T   
      S195Q06   
      S209Q02T   
      S213Q01T   
      S213Q02   
      S252Q01   
      S252Q02   
      S252Q03T   
      S253Q01T   
      S253Q02   
      S253Q05   
      S256Q01   
      S268Q01   
      S268Q02T   
      S268Q06   
      S269Q01   
      S269Q03T   
      S269Q04T   
      S270Q03T   
      MSCALE   
      RSCALE   
      SSCALE   
      CLCUSE   
      CNT   
;
run;

proc means;
var 
;
run;
 */

