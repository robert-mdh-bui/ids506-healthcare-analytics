require(tidyverse)

clean_data <- function(dframe){
  output <- dframe %>% 
    transmute(
      # ID var
      id = SL.,
      
      # Demographics vars
      demo_age  = AGE,
      demo_female = MALE %>% as.logical(),
      demo_unmarried = UNMARRIED %>% as.logical(),
      
      # Complaint-codes vars
      code_ACHD    = ACHD %>% as.logical(),
      code_CAD_DVD = `CAD-DVD` %>% as.logical(),
      code_CAD_SVD = `CAD-SVD` %>% as.logical(),
      code_CAD_TVD = `CAD-TVD` %>% as.logical(),
      code_CAD_VSD = `CAD-VSD` %>% as.logical(),
      code_OS_ASD  = `OS-ASD` %>% as.logical(),
      code_PM_VSD  = `PM-VSD` %>% as.logical(),
      code_RHD     = `RHD` %>% as.logical(),
      
      code_othr_heart = `other- heart` %>% as.logical(),
      code_othr_respi = `other- respiratory` %>% as.logical(),
      code_othr_genrl = `other-general` %>% as.logical(),
      code_othr_nerve = `other-nervous` %>% as.logical(),
      code_othr_terta = `other-tertalogy` %>% as.logical(),
      
      # Vitals vars
      body_wgt = `BODY WEIGHT`,
      body_hgt = `BODY HEIGHT`,
      body_hrpulse = `HR PULSE`,
      body_bphigh  = `BP -HIGH`,
      body_bplow   = `BP-LOW`,
      body_rr      = `RR`,
      
      # Medical History vars
      hist_diabetes1 = Diabetes1 %>% as.logical(),
      hist_diabetes2 = Diabetes2 %>% as.logical(),
      hist_hypertension1 = hypertension1 %>% as.logical(),
      hist_hypertension2 = hypertension2 %>% as.logical(),
      hist_hypertension3 = hypertension3 %>% as.logical(),
      hist_other         = other %>% as.logical(),
      
      # Measure vars
      meas_HB         = HB,
      meas_UREA       = UREA,
      meas_CREATININE = CREATININE,
      
      # Arrival vars
      arr_walkin    = ifelse(`MODE OF ARRIVAL` == "WALKED IN",TRUE,FALSE),
      arr_ambulance = AMBULANCE %>% as.logical(),
      arr_transfer  = TRANSFERRED %>% as.logical(),
      
      # Alert state var
      is_alert = ALERT %>% as.logical(),
      
      # Admission var 
      is_emergency = ifelse(`TYPE OF ADMSN` == "EMERGENCY",TRUE,FALSE),
      
      # Cost vars
      cost = `TOTAL COST TO HOSPITAL`,
      cost_ln = `Ln(Total Cost)`,
      
      # Stay length vars
      stay_total = `TOTAL LENGTH OF STAY`,
      stay_icu   = `LENGTH OF STAY - ICU`,
      stay_ward  = `LENGTH OF STAY- WARD`,
      
      # Implant var
      implant = IMPLANT %>% as.logical(),
      implant_cost = `COST OF IMPLANT`
    )
  
  return(output)
}
