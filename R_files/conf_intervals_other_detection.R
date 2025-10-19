# Compute confidence intervals based on confusion matrices for each situation
library(epiR)

# Conf_matrix = [ TP, FP, FN, TN ]

# DME Detection - first ophthalmologist 
conf_m_1 <- as.table(matrix(c(96,9,9,125), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_1, conf.level = 0.95, method = "wilson", digits=4)
print(rval)

# DME Detection - second ophthalmologist 
conf_m_2 <- as.table(matrix(c(97,8,16,118), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_2, conf.level = 0.95, method = "wilson", digits=4)
print(rval)

# DME Detection - ext test set
conf_m_ext <- as.table(matrix(c(230,33,20,217), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_ext, conf.level = 0.95, method = "wilson", digits=4)
print(rval)