data_first_detection = read.csv('predictions_detection_test_first.csv')
data_second_detection = read.csv('predictions_detection_test_second-adjust.csv')
data_ext_detection = read.csv('predictions_detection_test_ext.csv')

library(pROC)

# roc = roc(y_true, y_pred)
# ci(roc)

print('First ophthalmologist DME detection')
roc_first = roc(data_first_detection$Actual, data_first_detection$DME.Prob)
roc_first
ci(roc_first)

print('Second ophthalmologist DME detection')
roc_second = roc(data_second_detection$Actual, data_second_detection$DME.Prob)
roc_second
ci(roc_second)

print('Ext DME detection')
roc_ext = roc(data_ext_detection$Actual, data_ext_detection$DME.Prob)
roc_ext
ci(roc_ext)