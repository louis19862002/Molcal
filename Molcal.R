# This function help to calculate the molar concentration of chemicals.
# The required inputs are the weight in either mg, ug, ng, pg for the unit, and Molecular weight of chemical, and volume in litter (l)
# For example, to calculate calcitriol 0.05mg and dissolve it in 100ul DMSO, then use the function: Molcal(0.05,"mg",416.6, 100*10^-6), then you will get the molar concentration 1.200192 mM
Molcal <- function(weight,unit,MW,volume)
{ if (unit == "g")
{
  unit = 1
  Conc. <- (weight*unit/MW)/volume
  Conc. <- Conc.*1
  label <- "M"
  cat(Conc.,label)
}
  
  else if (unit == "mg")
  {
    unit = 1*10^-3
    Conc. <- (weight*unit/MW)/volume
    Conc. <- Conc.*10^3
    label <- "mM"
    cat(Conc.,label)
  }
  
  else if (unit == "ug")
  {
    unit = 1*10^-6
    Conc. <- (weight*unit/MW)/volume
    Conc. <- Conc.*10^6
    label <- "uM"
    cat(Conc.,label)
  }
  
  else if (unit == "ng")
  {
    unit = 1*10^-9
    Conc. <- (weight*unit/MW)/volume
    Conc. <- Conc.*10^9
    label <- "nM"
    cat(Conc.,label)
  }
  
  else if (unit == "pg")
  {
    unit = 1*10^-12
    Conc. <- (weight*unit/MW)/volume
    Conc. <- Conc.*10^12
    label <- "pM"
    cat(Conc.,label)
  }
  
  
}
