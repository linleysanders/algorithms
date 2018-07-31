DATA LIST FILE=TEMP FIXED RECORDS=1 TABLE /
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
   BALLOT   201 - 220
.

VARIABLE LABELS
   YEAR     "Gss year for this respondent                       "
   DENYRAIS "Denied raise without reason at work"
   PROMTEFR "Promotions are handled fairly"
   DISCAFFW "A woman won't get a job or promotion             "
   DISCAFFM "A man won't get a job or promotion  "
   FEJOBAFF "For or against preferential hiring of women      "
   JOBAFF   "Favor preferences in hiring blacks"
   SEXPROMO "Sex makes your promotion different"
   DISCAFF  "Whites hurt by aff. action"
   ID_      "Respondent id number"
   BALLOT   "Ballot used for interview"
.

VALUE LABELS
  DENYRAIS
      9        "No answer"
      8        "Don't know"
      4        "Never"
      3        "Rarely"
      2        "Sometimes"
      1        "Often"
      0        "Not applicable"
 / PROMTEFR
      9        "No answer"
      8        "Dont know"
      4        "Not at all true"
      3        "Not too true"
      2        "Somewhat true"
      1        "Very true"
      0        "Not applicable"
 / DISCAFFW
      9        "No answer"
      8        "Dont know"
      4        "Very unlikely"
      3        "Somewhat unlikely"
      2        "Somewhat likely"
      1        "Very likely"
      0        "Not applicable"
 / DISCAFFM
      9        "No answer"
      8        "Dont know"
      4        "Very unlikely"
      3        "Somewhat unlikely"
      2        "Somewhat likely"
      1        "Very likely"
      0        "Not applicable"
 / FEJOBAFF
      9        "No answer"
      8        "Don't know"
      4        "Strongly against"
      3        "Against"
      2        "For"
      1        "Strongly for"
      0        "Not applicable"
 / JOBAFF
      9        "No answer"
      8        "Don't know"
      4        "Strongly against pref"
      3        "Against preference"
      2        "For preference"
      1        "Strongly for pref"
      0        "Not applicable"
 / SEXPROMO
      9        "No answer"
      8        "Don't know"
      3        "No effect"
      2        "Worse"
      1        "Better"
      0        "Not applicable"
 / DISCAFF
      9        "No answer"
      8        "Dont know"
      3        "Not very likely"
      2        "Somewhat likely"
      1        "Very likely"
      0        "Not applicable"
 / BALLOT
      4        "Ballot d"
      3        "Ballot c"
      2        "Ballot b"
      1        "Ballot a"
      0        "Not applicable"
.

EXECUTE.
