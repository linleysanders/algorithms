#delimit ;

   infix
      year     1 - 20
      denyrais 21 - 40
      promtefr 41 - 60
      discaffw 61 - 80
      discaffm 81 - 100
      fejobaff 101 - 120
      jobaff   121 - 140
      sexpromo 141 - 160
      discaff  161 - 180
      id_      181 - 200
      ballot   201 - 220
using GSS.dat;

label variable year     "Gss year for this respondent                       ";
label variable denyrais "Denied raise without reason at work";
label variable promtefr "Promotions are handled fairly";
label variable discaffw "A woman won't get a job or promotion             ";
label variable discaffm "A man won't get a job or promotion  ";
label variable fejobaff "For or against preferential hiring of women      ";
label variable jobaff   "Favor preferences in hiring blacks";
label variable sexpromo "Sex makes your promotion different";
label variable discaff  "Whites hurt by aff. action";
label variable id_      "Respondent id number";
label variable ballot   "Ballot used for interview";


label define gsp001x
   9        "No answer"
   8        "Don't know"
   4        "Never"
   3        "Rarely"
   2        "Sometimes"
   1        "Often"
   0        "Not applicable"
;
label define gsp002x
   9        "No answer"
   8        "Dont know"
   4        "Not at all true"
   3        "Not too true"
   2        "Somewhat true"
   1        "Very true"
   0        "Not applicable"
;
label define gsp003x
   9        "No answer"
   8        "Dont know"
   4        "Very unlikely"
   3        "Somewhat unlikely"
   2        "Somewhat likely"
   1        "Very likely"
   0        "Not applicable"
;
label define gsp004x
   9        "No answer"
   8        "Dont know"
   4        "Very unlikely"
   3        "Somewhat unlikely"
   2        "Somewhat likely"
   1        "Very likely"
   0        "Not applicable"
;
label define gsp005x
   9        "No answer"
   8        "Don't know"
   4        "Strongly against"
   3        "Against"
   2        "For"
   1        "Strongly for"
   0        "Not applicable"
;
label define gsp006x
   9        "No answer"
   8        "Don't know"
   4        "Strongly against pref"
   3        "Against preference"
   2        "For preference"
   1        "Strongly for pref"
   0        "Not applicable"
;
label define gsp007x
   9        "No answer"
   8        "Don't know"
   3        "No effect"
   2        "Worse"
   1        "Better"
   0        "Not applicable"
;
label define gsp008x
   9        "No answer"
   8        "Dont know"
   3        "Not very likely"
   2        "Somewhat likely"
   1        "Very likely"
   0        "Not applicable"
;
label define gsp009x
   4        "Ballot d"
   3        "Ballot c"
   2        "Ballot b"
   1        "Ballot a"
   0        "Not applicable"
;


label values denyrais gsp001x;
label values promtefr gsp002x;
label values discaffw gsp003x;
label values discaffm gsp004x;
label values fejobaff gsp005x;
label values jobaff   gsp006x;
label values sexpromo gsp007x;
label values discaff  gsp008x;
label values ballot   gsp009x;


