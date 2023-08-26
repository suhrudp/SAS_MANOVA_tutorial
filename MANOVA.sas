/*IMPORT DATA*/
proc import datafile="/home/u62868661/Datasets/MANOVA/Anabolics.xlsx"
dbms=xlsx
out=df
replace;
run;

/*MULTIVARIATE ANALYSIS OF VARIANCE*/
proc glm data=df;
  class Supplement;
  model Length Muscle = Supplement / SS3;
  manova h = Supplement;
run;