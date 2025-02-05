# Compute confidence intervals based on confusion matrices for each state 
# DME Classification
library(epiR)

# Conf_matrix = [ TP, FP, FN, TN ]

# DME Classification M0 - first ophthalmologist 
conf_m_1_0 <- as.table(matrix(c(131,19,3,86), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_1_0, conf.level = 0.95, method = "wilson", digits=4)
print(rval)

# DME Classification M1 - first ophthalmologist 
conf_m_1_1 <- as.table(matrix(c(26,4,23,186), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_1_1, conf.level = 0.95, method = "wilson", digits=4)
print(rval)

# DME Classification M2 - first ophthalmologist 
conf_m_1_2 <- as.table(matrix(c(50,9,6,174), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_1_2, conf.level = 0.95, method = "wilson", digits=4)
print(rval)


# DME Classification M0 - second ophthalmologist 
conf_m_2_0 <- as.table(matrix(c(122,28,3,86), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_2_0, conf.level = 0.95, method = "wilson", digits=4)
print(rval)

# DME Classification M1 - second ophthalmologist 
conf_m_2_1 <- as.table(matrix(c(27,3,40,169), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_2_1, conf.level = 0.95, method = "wilson", digits=4)
print(rval)

# DME Classification M2 - second ophthalmologist 
conf_m_2_2 <- as.table(matrix(c(43,16,4,176), nrow = 2, byrow = TRUE))
rval <- epi.tests(conf_m_2_2, conf.level = 0.95, method = "wilson", digits=4)
print(rval)