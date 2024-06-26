Warning messages:
  1: In model.response(mf, "numeric") :
  using type = "numeric" with a factor response will be ignored
  2: In Ops.factor(y, z$residuals) : ‘-’ not meaningful for factors
  > model_1 <- lm(KIDS_LT5Y_recode ~ RRACE, data = Household_Pulse_data) 
  Warning messages:
    1: In model.response(mf, "numeric") :
    using type = "numeric" with a factor response will be ignored
  2: In Ops.factor(y, z$residuals) : ‘-’ not meaningful for factors
  > summary(Household_Pulse_data$KIDS_LT5Y_recode) 
  0     1 
  63953  7199 
  > model_1 <- lm(as.numeric(KIDS_LT5Y_recode) ~ RRACE, data = Household_Pulse_data) 
  > summary(model_1) 
  
  Call:
    lm(formula = as.numeric(KIDS_LT5Y_recode) ~ RRACE, data = Household_Pulse_data)
  
  Residuals:
    Min       1Q   Median       3Q      Max 
  -0.13321 -0.09576 -0.09576 -0.09576  0.90424 
  
  Coefficients:
    Estimate Std. Error t value Pr(>|t|)    
  (Intercept) 1.095758   0.001256 872.408  < 2e-16 ***
    RRACEBlack  0.019609   0.003986   4.919 8.71e-07 ***
    RRACEAsian  0.034458   0.005334   6.460 1.05e-10 ***
    RRACEOther  0.037455   0.005007   7.481 7.46e-14 ***
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
  
  Residual standard error: 0.3013 on 71148 degrees of freedom
  Multiple R-squared:  0.001512,	Adjusted R-squared:  0.00147 
  F-statistic: 35.92 on 3 and 71148 DF,  p-value: < 2.2e-16
  
  > model_1 <- ggplot(Household_Pulse_data, aes(x = RRACE, fill = KIDS_LT5Y))
  > model_1 + geom_bar(position = "fill") + 
    +     scale_fill_viridis_d(option = "mako", begin = 0.3, end = 0.85)
  > model_2 <- lm(as.numeric(KIDS_LT5Y_recode) ~ RRACE + MHLTH_NEED, data = Household_Pulse_data) 
  > summary(model_2) 
  
  Call:
    lm(formula = as.numeric(KIDS_LT5Y_recode) ~ RRACE + MHLTH_NEED, 
       data = Household_Pulse_data)
  
  Residuals:
    Min       1Q   Median       3Q      Max 
  -0.38260 -0.01307 -0.01307 -0.01307  0.99233 
  
  Coefficients:
    Estimate Std. Error t value Pr(>|t|)    
  (Intercept)                                          1.013073   0.001227 825.868  < 2e-16 ***
    RRACEBlack                                          -0.005403   0.003456  -1.564   0.1179    
  RRACEAsian                                          -0.005098   0.004628  -1.102   0.2707    
  RRACEOther                                           0.008121   0.004340   1.871   0.0614 .  
  MHLTH_NEEDall children need mental health treatment  0.044745   0.007265   6.159 7.37e-10 ***
    MHLTH_NEEDsome but not all children                  0.223028   0.005601  39.821  < 2e-16 ***
    MHLTH_NEEDno, none of the children                   0.361405   0.002377 152.016  < 2e-16 ***
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
  
  Residual standard error: 0.2609 on 71145 degrees of freedom
  Multiple R-squared:  0.2516,	Adjusted R-squared:  0.2515 
  F-statistic:  3986 on 6 and 71145 DF,  p-value: < 2.2e-16
  
  > model_2 <- ggplot(Household_Pulse_data, aes(x = KIDS_LT5Y, fill= MHLTH_NEED)) 
  > model_2 <- geom_bar(model_1 + geom_bar(position = "fill") + 
                          +                         +     scale_fill_viridis_d(option = "mako", begin = 0.3, end = 0.85) 
                        + 
                          + model_2 <- geom_bar(model_1 + geom_bar(position = "fill") + 
                                                  Error: unexpected symbol in:
                                                  "
model_2"
                                                > model_2 <- geom_bar(model_1 + geom_bar(position = "fill") + 
                                                                        +                         +     scale_fill_viridis_d(option = "mako", begin = 0.3, end = 0.85)  
                                                                      + model_2 <- geom_bar(model_1 + geom_bar(position = "fill") + 
                                                                                              Error: unexpected symbol in:
                                                                                              "                        +     scale_fill_viridis_d(option = "mako", begin = 0.3, end = 0.85)  
model_2"
                                                                                            > model_2 <- geom_bar(model_1 + geom_bar(position = "fill") + 
                                                                                                                    +                              scale_fill_viridis_d(option = "mako", begin = 0.3, end = 0.85)   
                                                                                                                  + model_2 <- geom_bar(model_1 + geom_bar(position = "fill") + 
                                                                                                                                          Error: unexpected symbol in:
                                                                                                                                          "                             scale_fill_viridis_d(option = "mako", begin = 0.3, end = 0.85)   
model_2"
                                                                                                                                      
                                                                                                                                        > model_3 <- ggplot(Household_Pulse_data, aes(x = KIDS_LT5Y, fill = MHLTH_NEED)) 
                                                                                                                                        > model_3 <- geom_bar(position = "fill") 
                                                                                                                                        >          scale_fill_viridis_d(option = "mako", begin = 0.3, end = 0.85)    
                                                                                                                                        <ggproto object: Class ScaleDiscrete, Scale, gg>
                                                                                                                                          aesthetics: fill
                                                                                                                                        axis_order: function
                                                                                                                                        break_info: function
                                                                                                                                        break_positions: function
                                                                                                                                        breaks: waiver
                                                                                                                                        call: call
                                                                                                                                        clone: function
                                                                                                                                        dimension: function
                                                                                                                                        drop: TRUE
                                                                                                                                        expand: waiver
                                                                                                                                        get_breaks: function
                                                                                                                                        get_breaks_minor: function
                                                                                                                                        get_labels: function
                                                                                                                                        get_limits: function
                                                                                                                                        guide: legend
                                                                                                                                        is_discrete: function
                                                                                                                                        is_empty: function
                                                                                                                                        labels: waiver
                                                                                                                                        limits: NULL
                                                                                                                                        make_sec_title: function
                                                                                                                                        make_title: function
                                                                                                                                        map: function
                                                                                                                                        map_df: function
                                                                                                                                        n.breaks.cache: NULL
                                                                                                                                        na.translate: TRUE
                                                                                                                                        na.value: NA
                                                                                                                                        name: waiver
                                                                                                                                        palette: function
                                                                                                                                        palette.cache: NULL
                                                                                                                                        position: left
                                                                                                                                        range: environment
                                                                                                                                        rescale: function
                                                                                                                                        reset: function
                                                                                                                                        scale_name: viridis_d
                                                                                                                                        train: function
                                                                                                                                        train_df: function
                                                                                                                                        transform: function
                                                                                                                                        transform_df: function
                                                                                                                                        super:  <ggproto object: Class ScaleDiscrete, Scale, gg>
                                                                                                                                          > model_3 <- ggplot(Household_Pulse_data, aes(x = KIDS_LT5Y, fill = MHLTH_NEED)) 
                                                                                                                                        > model_3 <- geom_bar(position = "fill") 
                                                                                                                                        > model_3 <- ggplot(Household_Pulse_data, aes(x = KIDS_LT5Y, fill = MHLTH_NEED)) 
                                                                                                                                        > model_3 <- geom_bar(position = "fill")  
                                                                                                                                        Call:
                                                                                                                                          lm(formula = as.numeric(KIDS_LT5Y_recode) ~ RRACE + MHLTH_NEED + 
                                                                                                                                               TENURE, data = Household_Pulse_data)
                                                                                                                                        
                                                                                                                                        Coefficients:
                                                                                                                                          (Intercept)                                           RRACEBlack  
                                                                                                                                        1.073732                                            -0.013099  
                                                                                                                                        RRACEAsian                                           RRACEOther  
                                                                                                                                        -0.007185                                             0.005247  
                                                                                                                                        MHLTH_NEEDall children need mental health treatment                  MHLTH_NEEDsome but not all children  
                                                                                                                                        0.047786                                             0.225661  
                                                                                                                                        MHLTH_NEEDno, none of the children                   TENUREhousing owned free and clear  
                                                                                                                                        0.363619                                            -0.084268  
                                                                                                                                        TENUREhousing owned with mortgage                                 TENUREhousing rented  
                                                                                                                                        -0.063938                                            -0.064030  
                                                                                                                                        TENUREhousing occupied without rent  
                                                                                                                                        -0.067423  
                                                                                                                                        model_4 <- glm(as.numeric(Household_Pulse_data$KIDS_LT5Y) ~ Household_Pulse_data$RRACE + Household_Pulse_data$MHLTH_NEED+ Household_Pulse_data$TENURE + Household_Pulse_data$EEDUC)  
                                                                                                                                        > View(model_3)
                                                                                                                                        > model_5 <- glm(as.numeric(Household_Pulse_data$KIDS_LT5Y) ~ Household_Pulse_data$RRACE*Household_Pulse_data$MHLTH_NEED*Household_Pulse_data$TENURE*Household_Pulse_data$EEDUC)
                                                                                                                                      
                                                                                                                                        > to begin I factor recoded the respones in the KIDS_LT5Y to make "NA' into 0 and "Kid in HH under 5" into 1. THis way the Computer can process the data better. THen I used the "lm" 
function to carrying out a regression. In my Lm forumala i wanted to see the interaction between having Kids in the house hold under 5 or "KID_LT5Y" and race. I wanted to see if differnt racial groups have differnt responses to having younger children in the home. While every racial group had a statiscially signifact results
the african american group had a higher result than the other racial groupds. That is model 1. After that I decided to make a graph to represent my findings which is model 2.  I then created another graph which looked at this time Kids in  the HH under 5 and Mental health condition, that is model 3. THen I did a another regression
using the "glm" function to find an interaction between, Kids in the HH under 5, Mental health needs, Race, tenure and education. I then did the same again for model 5 this time i mutiplied the varibales, race, mental health, tenure and education. 

For this week's article reading I was reading the "The great rewiring: is social media really behind an epidemic of teenage mental illness?" article and looking at the reference section to see the other research that 
the authors used to prove thier work. From those other papers, it seems that social media cannot be soley blamed for the rise in mental health illnesses in American youth. What is most likey happening is a combination of factors from the COVID-19 pandemic,
more people going to get mental health diagnoses, economic trends and external politcal factors which are all working with social media to cause an increase in mental health illness. My job now is to collect and show the data and how it proves that social media cannot 
be the sole factor for a rise in mental health issues. I will continue to reserach and look for data sets for my project. 
