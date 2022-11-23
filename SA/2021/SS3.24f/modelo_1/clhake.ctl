#V3.24f
#C growth parameters are not estimated because empirical W@age are used
#_data_and_control_files: clhake.dat // clhake.ctl
#_SS-V3.24f-safe-Lin64;_08/03/2012;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_11
1  #_N_Growth_Patterns
1 #_N_Morphs_Within_GrowthPattern 
#_Cond 1 #_Morph_between/within_stdev_ratio (no read if N_morphs=1)
#_Cond  1 #vector_Morphdist_(-1_in_first_val_gives_normal_approx)
#
#_Cond 0  #  N recruitment designs goes here if N_GP*nseas*area>1
#_Cond 0  #  placeholder for recruitment interaction request
#_Cond 1 1 1  # example recruitment design element for GP=1, seas=1, area=1
#
#_Cond 0 # N_movement_definitions goes here if N_areas > 1
#_Cond 1.0 # first age that moves (real age at begin of season, not integer) also cond on do_migration>0
#_Cond 1 1 1 2 4 10 # example move definition for seas=1, morph=1, source=1 dest=2, age1=4, age2=10
#
1 #_Nblock_Patterns
 2 #_blocks_per_pattern 
# begin and end years of blocks
 1968 2003 2004 2012
#
0.5 #_fracfemale 
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate
  #_no additional input for selected M option; read 1P per morph
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_speciific_K; 4=not implemented
1 #_Growth_Age_for_L1
999 #_Growth_Age_for_L2 (999 to use as Linf)
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
5 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=read fec and wt from wtatage.ss
#_placeholder for empirical age-maturity by growth pattern
3 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
2 #_env/block/dev_adjust_method (1=standard; 2=logistic transform keeps in base parm bounds; 3=standard w/ no bound check)
#
#_growth_parms
#_LO HI INIT PRIOR PR_type SD PHASE env-var use_dev dev_minyr dev_maxyr dev_stddev Block Block_Fxn
 0.05 0.4 0.33 0.2 -1 0.6 -2 -1 0 0 0 0 0 0 # NatM_p_1_Fem_GP_1
 -10 35 21 16 0 10 -2 0 0 0 0 0 0 0 # L_at_Amin_Fem_GP_1
 45 90 78.1 70 0 10 -4 0 0 0 0 0 0 0 # L_at_Amax_Fem_GP_1
 0.05 0.25 0.15 0.15 0 0.8 -4 0 0 0 0 0 0 0 # VonBert_K_Fem_GP_1
 0.05 0.25 0.1 0.1 -1 0.8 -3 0 0 0 0 0 0 0 # CV_young_Fem_GP_1
 0.05 0.25 0.1 0.1 -1 0.8 -3 0 0 0 0 0 0 0 # CV_old_Fem_GP_1
 -3 3 9e-06 9e-06 -1 0.8 -3 0 0 0 0 0 0 0 # Wtlen_1_Fem
 -3 4 3.04 3.04 -1 0.8 -3 0 0 0 0 0 0 0 # Wtlen_2_Fem
 0 60 24.55 25 -1 0.8 -3 0 0 0 0 0 0 0 # Mat50%_Fem
 -3 3 -0.63 -0.63 -1 0.8 -3 0 0 0 0 0 0 0 # Mat_slope_Fem
 -3 3 1 1 -1 0.8 -3 0 0 0 0 0 0 0 # Eggs/kg_inter_Fem
 -3 3 0 0 -1 0.8 -3 0 0 0 0 0 0 0 # Eggs/kg_slope_wt_Fem
 0 0 0 0 -1 0 -4 0 0 0 0 0 0 0 # RecrDist_GP_1
 0 0 0 0 -1 0 -4 0 0 0 0 0 0 0 # RecrDist_Area_1
 0 0 0 0 -1 0 -4 0 0 0 0 0 0 0 # RecrDist_Seas_1
 0 0 0 0 -1 0 -4 0 0 0 0 0 0 0 # CohortGrowDev
#
1 #_custom_MG-env_setup (0/1)
 0.01 0.6 0.014911 0 -1 99 2 # NatM_p_1_Fem_GP_1_ENV_add
#
#_Cond 0  #custom_MG-block_setup (0/1)
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no MG-block parameters
#_Cond No MG parm trends 
#
#_seasonal_effects_on_biology_parms
 0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
#_Cond -4 #_MGparm_Dev_Phase
#
#_Spawner-Recruitment
2 #_SR_function: 2=Ricker; 3=std_B-H; 4=SCAA; 5=Hockey; 6=B-H_flattop; 7=survival_3Parm
#_LO HI INIT PRIOR PR_type SD PHASE
 5 19 14.9566 10.3 -1 10 1 # SR_LN(R0)
 0 3 0.6 0.33 -1 0.05 -4 # SR_Ricker
 0 2 0.6 0.62 -1 0.8 -4 # SR_sigmaR
 -5 5 0 0 -1 1 -3 # SR_envlink
 -5 5 0 0 -1 1 -4 # SR_R1_offset
 0 0 0 0 -1 0 -99 # SR_autocorr
0 #_SR_env_link
0 #_SR_env_target_0=none;1=devs;_2=R0;_3=steepness
1 #do_recdev:  0=none; 1=devvector; 2=simple deviations
1950 # first year of main recr_devs; early devs can preceed this era
2011 # last year of main recr_devs; forecast devs start in following year
2 #_recdev phase 
1 # (0/1) to read 13 advanced options
 0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
 -1940 #_recdev_early_phase
 0 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
 1 #_lambda for Fcast_recr_like occurring before endyr+1
 1960 #_last_early_yr_nobias_adj_in_MPD
 1968 #_first_yr_fullbias_adj_in_MPD
 2011 #_last_yr_fullbias_adj_in_MPD
 2012 #_first_recent_yr_nobias_adj_in_MPD
 0.5 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
 0 #_period of cycles in recruitment (N parms read below)
 -5 #min rec_dev
 5 #max rec_dev
 0 #_read_recdevs
#_end of advanced SR options
#
#_placeholder for full parameter lines for recruitment cycles
# read specified recr devs
#_Yr Input_value
#
# all recruitment deviations
#DisplayOnly -0.0779485 # Main_RecrDev_1950
#DisplayOnly -0.0801628 # Main_RecrDev_1951
#DisplayOnly -0.0821451 # Main_RecrDev_1952
#DisplayOnly -0.0839041 # Main_RecrDev_1953
#DisplayOnly -0.0856006 # Main_RecrDev_1954
#DisplayOnly -0.0872145 # Main_RecrDev_1955
#DisplayOnly -0.0881607 # Main_RecrDev_1956
#DisplayOnly -0.0890859 # Main_RecrDev_1957
#DisplayOnly -0.0900608 # Main_RecrDev_1958
#DisplayOnly -0.0922355 # Main_RecrDev_1959
#DisplayOnly -0.096537 # Main_RecrDev_1960
#DisplayOnly -0.101337 # Main_RecrDev_1961
#DisplayOnly -0.103086 # Main_RecrDev_1962
#DisplayOnly -0.10105 # Main_RecrDev_1963
#DisplayOnly -0.0830604 # Main_RecrDev_1964
#DisplayOnly -0.032988 # Main_RecrDev_1965
#DisplayOnly 0.020834 # Main_RecrDev_1966
#DisplayOnly 0.0526014 # Main_RecrDev_1967
#DisplayOnly 0.0322198 # Main_RecrDev_1968
#DisplayOnly 0.0382842 # Main_RecrDev_1969
#DisplayOnly -0.00667862 # Main_RecrDev_1970
#DisplayOnly 0.0419694 # Main_RecrDev_1971
#DisplayOnly 0.0298855 # Main_RecrDev_1972
#DisplayOnly 0.0139947 # Main_RecrDev_1973
#DisplayOnly 0.0128252 # Main_RecrDev_1974
#DisplayOnly -0.0353785 # Main_RecrDev_1975
#DisplayOnly -0.0176892 # Main_RecrDev_1976
#DisplayOnly -0.0373123 # Main_RecrDev_1977
#DisplayOnly -0.0245509 # Main_RecrDev_1978
#DisplayOnly -0.0252643 # Main_RecrDev_1979
#DisplayOnly -0.0177963 # Main_RecrDev_1980
#DisplayOnly -0.0249262 # Main_RecrDev_1981
#DisplayOnly -0.0199387 # Main_RecrDev_1982
#DisplayOnly -0.010989 # Main_RecrDev_1983
#DisplayOnly 0.00443701 # Main_RecrDev_1984
#DisplayOnly -0.0706559 # Main_RecrDev_1985
#DisplayOnly -0.105345 # Main_RecrDev_1986
#DisplayOnly -0.133707 # Main_RecrDev_1987
#DisplayOnly -0.114623 # Main_RecrDev_1988
#DisplayOnly -0.042539 # Main_RecrDev_1989
#DisplayOnly 0.171622 # Main_RecrDev_1990
#DisplayOnly 0.124402 # Main_RecrDev_1991
#DisplayOnly -0.0712452 # Main_RecrDev_1992
#DisplayOnly -0.0707304 # Main_RecrDev_1993
#DisplayOnly 0.336921 # Main_RecrDev_1994
#DisplayOnly 0.264401 # Main_RecrDev_1995
#DisplayOnly 0.280001 # Main_RecrDev_1996
#DisplayOnly 0.401409 # Main_RecrDev_1997
#DisplayOnly 0.0567393 # Main_RecrDev_1998
#DisplayOnly -0.31658 # Main_RecrDev_1999
#DisplayOnly -0.586049 # Main_RecrDev_2000
#DisplayOnly -0.474262 # Main_RecrDev_2001
#DisplayOnly -0.278869 # Main_RecrDev_2002
#DisplayOnly -0.116994 # Main_RecrDev_2003
#DisplayOnly 0.249558 # Main_RecrDev_2004
#DisplayOnly 0.345602 # Main_RecrDev_2005
#DisplayOnly 0.535842 # Main_RecrDev_2006
#DisplayOnly 0.42472 # Main_RecrDev_2007
#DisplayOnly 0.278701 # Main_RecrDev_2008
#DisplayOnly 0.22598 # Main_RecrDev_2009
#DisplayOnly 0.0783544 # Main_RecrDev_2010
#DisplayOnly -0.0446061 # Main_RecrDev_2011
#DisplayOnly 0 # Late_RecrDev_2012
#DisplayOnly 0 # ForeRecr_2013
#DisplayOnly 0 # Impl_err_2013
#
#Fishing Mortality info 
0.3 # F ballpark for tuning early phases
-2001 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
4 # max F or harvest rate, depends on F_Method
# no additional F input needed for Fmethod 1
# if Fmethod=2; read overall start F value; overall phase; N detailed inputs to read
# if Fmethod=3; read N iterations for tuning for Fmethod 3
4  # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms
#_LO HI INIT PRIOR PR_type SD PHASE
 0 2 0 0.03 0 99 -1 # InitF_1FISHERY1
#
#_Q_setup
 # Q_type options:  <0=mirror, 0=float_nobiasadj, 1=float_biasadj, 2=parm_nobiasadj, 3=parm_w_random_dev, 4=parm_w_randwalk, 5=mean_unbiased_float_assign_to_parm
#_for_env-var:_enter_index_of_the_env-var_to_be_linked
#_Den-dep  env-var  extra_se  Q_type
 0 0 0 4 # 1 FISHERY1
 0 0 0 0 # 2 BIOSURVEY
#
1 #_0=read one parm for each fleet with random q; 1=read a parm for each year of index
#_Q_parms(if_any)
# LO HI INIT PRIOR PR_type SD PHASE
 -15 1 -13.7207 0 -1 99 1 # Q_base_1_FISHERY1
 -15 1 0.195438 0 -1 99 1 # Q_walk_1y_1984
 -15 1 -0.101053 0 -1 99 1 # Q_walk_1y_1985
 -15 1 0.237619 0 -1 99 1 # Q_walk_1y_1986
 -15 1 0.24708 0 -1 99 1 # Q_walk_1y_1987
 -15 1 0.0176417 0 -1 99 1 # Q_walk_1y_1988
 -15 1 0.124721 0 -1 99 1 # Q_walk_1y_1989
 -15 1 -0.0649931 0 -1 99 1 # Q_walk_1y_1990
 -15 1 -0.0523668 0 -1 99 1 # Q_walk_1y_1991
 -15 1 0.500307 0 -1 99 1 # Q_walk_1y_1992
 -15 1 -0.274408 0 -1 99 1 # Q_walk_1y_1993
 -15 1 0.443784 0 -1 99 1 # Q_walk_1y_1994
 -15 1 0.421927 0 -1 99 1 # Q_walk_1y_1995
 -15 1 -0.382813 0 -1 99 1 # Q_walk_1y_1996
 -15 1 0.24384 0 -1 99 1 # Q_walk_1y_1997
 -15 1 0.0553134 0 -1 99 1 # Q_walk_1y_1998
 -15 1 0.0237295 0 -1 99 1 # Q_walk_1y_1999
 -15 1 0.258938 0 -1 99 1 # Q_walk_1y_2000
 -15 1 -0.367735 0 -1 99 1 # Q_walk_1y_2001
 -15 1 0.58384 0 -1 99 1 # Q_walk_1y_2002
 -15 1 -0.219176 0 -1 99 1 # Q_walk_1y_2003
 -15 1 -1.02103 0 -1 99 1 # Q_walk_1y_2004
 -15 1 0.133392 0 -1 99 1 # Q_walk_1y_2005
 -15 1 0.189612 0 -1 99 1 # Q_walk_1y_2006
 -15 1 -0.0327963 0 -1 99 1 # Q_walk_1y_2007
 -15 1 0.239307 0 -1 99 1 # Q_walk_1y_2008
 -15 1 0.128956 0 -1 99 1 # Q_walk_1y_2009
 -15 1 -0.204174 0 -1 99 1 # Q_walk_1y_2010
 -15 1 -0.202837 0 -1 99 1 # Q_walk_1y_2011
#
#_size_selex_types
#discard_options:_0=none;_1=define_retention;_2=retention&mortality;_3=all_discarded_dead
#_Pattern Discard Male Special
 0 0 0 0 # 1 FISHERY1
 0 0 0 0 # 2 BIOSURVEY
#
#_age_selex_types
#_Pattern ___ Male Special
 12 0 0 0 # 1 FISHERY1
 11 0 0 0 # 2 BIOSURVEY
#_LO HI INIT PRIOR PR_type SD PHASE env-var use_dev dev_minyr dev_maxyr dev_stddev Block Block_Fxn
 0 5 2 2 -1 99 -1 0 0 0 0 0 1 2 # AgeSel_1P_1_FISHERY1
 0 2 0.1 0.1 -1 99 -1 0 0 0 0 0 1 2 # AgeSel_1P_2_FISHERY1
 0 20 2 2 -1 99 -1 0 0 0 0 0 0 0 # AgeSel_2P_1_BIOSURVEY
 0 20 20 2 -1 99 -1 0 0 0 0 0 0 0 # AgeSel_2P_2_BIOSURVEY
#_Cond 0 #_custom_sel-env_setup (0/1) 
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no enviro fxns
1 #_custom_sel-blk_setup (0/1) 
 0 5 3.77192 2 -1 99 1 # AgeSel_1P_1_FISHERY1_BLK1repl_1968
 0 4 2.43143 2 -1 99 1 # AgeSel_1P_1_FISHERY1_BLK1repl_2004
 0 3 1.81023 2 -1 99 1 # AgeSel_1P_2_FISHERY1_BLK1repl_1968
 0 4 0.76997 2 -1 99 1 # AgeSel_1P_2_FISHERY1_BLK1repl_2004
#_Cond No selex parm trends 
#_Cond -4 # placeholder for selparm_Dev_Phase
1 #_env/block/dev_adjust_method (1=standard; 2=logistic trans to keep in base parm bounds; 3=standard w/ no bound check)
#
# Tag loss and Tag reporting parameters go next
0  # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
1 #_Variance_adjustments_to_input_values
#_fleet: 1 2 
  0 0.1 #_add_to_survey_CV
  0 0 #_add_to_discard_stddev
  0 0 #_add_to_bodywt_CV
  1 1 #_mult_by_lencomp_N
  0 0 #_mult_by_agecomp_N
  1 1 #_mult_by_size-at-age_N
#
4 #_maxlambdaphase
1 #_sd_offset
#
0 # number of changes to make to default Lambdas (default value is 1.0)
# Like_comp codes:  1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=sizeage; 8=catch; 
# 9=init_equ_catch; 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14=Morphcomp; 15=Tag-comp; 16=Tag-negbin
#like_comp fleet/survey  phase  value  sizefreq_method
#
# lambdas (for info only; columns are phases)
#  1 1 1 1 #_CPUE/survey:_1
#  1 1 1 1 #_CPUE/survey:_2
#  1 1 1 1 #_agecomp:_1
#  1 1 1 1 #_agecomp:_2
#  1 1 1 1 #_init_equ_catch
#  1 1 1 1 #_recruitments
#  1 1 1 1 #_parameter-priors
#  1 1 1 1 #_parameter-dev-vectors
#  1 1 1 1 #_crashPenLambda
0 # (0/1) read specs for more stddev reporting 
 # 0 1 -1 5 1 5 1 -1 5 # placeholder for selex type, len/age, year, N selex bins, Growth pattern, N growth ages, NatAge_area(-1 for all), NatAge_yr, N Natages
 # placeholder for vector of selex bins to be reported
 # placeholder for vector of growth ages to be reported
 # placeholder for vector of NatAges ages to be reported
999

