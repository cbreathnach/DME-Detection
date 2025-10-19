# Compute confidence intervals based on confusion matrices for each state 
# DME Classification
library(epiR)

# Conf_matrix = [ TP, FP, FN, TN ]

# DME Classification M0 - first ophthalmologist 
conf_m_1_0 <- as.table(matrix(c(126,6,8,99), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_1_0, conf.level = 0.95, method = "wilson", digits=4)
print(rval)

# DME Classification M1 - first ophthalmologist 
conf_m_1_1 <- as.table(matrix(c(16,9,13,201), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_1_1, conf.level = 0.95, method = "wilson", digits=4)
print(rval)

# DME Classification M2 - first ophthalmologist 
conf_m_1_2 <- as.table(matrix(c(71,11,5,152), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_1_2, conf.level = 0.95, method = "wilson", digits=4)
print(rval)


# DME Classification M0 - second ophthalmologist 
conf_m_2_0 <- as.table(matrix(c(117,15,9,98), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_2_0, conf.level = 0.95, method = "wilson", digits=4)
print(rval)

# DME Classification M1 - second ophthalmologist 
conf_m_2_1 <- as.table(matrix(c(15,10,16,198), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_2_1, conf.level = 0.95, method = "wilson", digits=4)
print(rval)

# DME Classification M2 - second ophthalmologist 
conf_m_2_2 <- as.table(matrix(c(71,11,11,146), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_2_2, conf.level = 0.95, method = "wilson", digits=4)
print(rval)