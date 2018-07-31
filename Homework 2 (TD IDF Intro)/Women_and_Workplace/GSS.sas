PROC FORMAT;

  VALUE GSP001X
    9        = "No answer"
    8        = "Don't know"
    4        = "Never"
    3        = "Rarely"
    2        = "Sometimes"
    1        = "Often"
    0        = "Not applicable"
  ;
  VALUE GSP002X
    9        = "No answer"
    8        = "Dont know"
    4        = "Not at all true"
    3        = "Not too true"
    2        = "Somewhat true"
    1        = "Very true"
    0        = "Not applicable"
  ;
  VALUE GSP003X
    9        = "No answer"
    8        = "Dont know"
    4        = "Very unlikely"
    3        = "Somewhat unlikely"
    2        = "Somewhat likely"
    1        = "Very likely"
    0        = "Not applicable"
  ;
  VALUE GSP004X
    9        = "No answer"
    8        = "Dont know"
    4        = "Very unlikely"
    3        = "Somewhat unlikely"
    2        = "Somewhat likely"
    1        = "Very likely"
    0        = "Not applicable"
  ;
  VALUE GSP005X
    9        = "No answer"
    8        = "Don't know"
    4        = "Strongly against"
    3        = "Against"
    2        = "For"
    1        = "Strongly for"
    0        = "Not applicable"
  ;
  VALUE GSP006X
    9        = "No answer"
    8        = "Don't know"
    4        = "Strongly against pref"
    3        = "Against preference"
    2        = "For preference"
    1        = "Strongly for pref"
    0        = "Not applicable"
  ;
  VALUE GSP007X
    9        = "No answer"
    8        = "Don't know"
    3        = "No effect"
    2        = "Worse"
    1        = "Better"
    0        = "Not applicable"
  ;
  VALUE GSP008X
    9        = "No answer"
    8        = "Dont know"
    3        = "Not very likely"
    2        = "Somewhat likely"
    1        = "Very likely"
    0        = "Not applicable"
  ;
  VALUE GSP009X
    4        = "Ballot d"
    3        = "Ballot c"
    2        = "Ballot b"
    1        = "Ballot a"
    0        = "Not applicable"
  ;


DATA GSS.GSS;

   LENGTH
      YEAR     20
      DENYRAIS 20
      PROMTEFR 20
      DISCAFFW 20
      DISCAFFM 20
      FEJOBAFF 20
      JOBAFF   20
      SEXPROMO 20
      DISCAFF  20
      ID_      20
      BALLOT   20   ;

   LABEL
      YEAR     ="Gss year for this respondent                       "
      DENYRAIS ="Denied raise without reason at work"
      PROMTEFR ="Promotions are handled fairly"
      DISCAFFW ="A woman won't get a job or promotion             "
      DISCAFFM ="A man won't get a job or promotion  "
      FEJOBAFF ="For or against preferential hiring of women      "
      JOBAFF   ="Favor preferences in hiring blacks"
      SEXPROMO ="Sex makes your promotion different"
      DISCAFF  ="Whites hurt by aff. action"
      ID_      ="Respondent id number"
      BALLOT   ="Ballot used for interview"
   ;

   INPUT
      YEAR     1 - 20
      DENYRAIS 21 - 40
      PROMTEFR 41 - 60
      DISCAFFW 61 - 80
      DISCAFFM 81 - 100
      FEJOBAFF 101 - 120
      JOBAFF   121 - 140
      SEXPROMO 141 - 160
      DISCAFF  161 - 180
      ID_      181 - 200
      BALLOT   201 - 220   ;

   FORMAT
      DENYRAIS GSP001X.
      PROMTEFR GSP002X.
      DISCAFFW GSP003X.
      DISCAFFM GSP004X.
      FEJOBAFF GSP005X.
      JOBAFF   GSP006X.
      SEXPROMO GSP007X.
      DISCAFF  GSP008X.
      BALLOT   GSP009X.   ;

PROC CONTENTS DATA=GSS.GSS;

RUN;
