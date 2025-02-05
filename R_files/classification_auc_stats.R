data_first_classification = read.csv('predictions_classification_test_first.csv')
data_second_classification = read.csv('predictions_classification_test_second.csv')

print('### First ophthalmologist DME Classification ###')

print('First ophthalmologist DME classification - DME-0 class')
roc_first_DME_0 = roc(data_first_classification$DME.0.Label, data_first_classification$DME.0.Prob) 
roc_first_DME_0
ci(roc_first_DME_0)

print('First ophthalmologist DME classification - DME-1 class')
roc_first_DME_1 = roc(data_first_classification$DME.1.Label, data_first_classification$DME.1.Prob)
roc_first_DME_1
ci(roc_first_DME_1)

print('First ophthalmologist DME classification - DME-2 class')
roc_first_DME_2 = roc(data_first_classification$DME.2.Label, data_first_classification$DME.2.Prob)
roc_first_DME_2
ci(roc_first_DME_2)

print('### Second ophthalmologist DME Classification ###')

print('Second ophthalmologist DME classification - DME-0 class')
roc_second_DME_0 = roc(data_second_classification$DME.0.Label, data_second_classification$DME.0.Prob)
roc_second_DME_0
ci(roc_second_DME_0)

print('Second ophthalmologist DME classification - DME-1 class')
roc_second_DME_1 = roc(data_second_classification$DME.1.Label, data_second_classification$DME.1.Prob)
roc_second_DME_1
ci(roc_second_DME_1)

print('Second ophthalmologist DME classification - DME-2 class')
roc_second_DME_2 = roc(data_second_classification$DME.2.Label, data_second_classification$DME.2.Prob)
roc_second_DME_2
ci(roc_second_DME_2)
