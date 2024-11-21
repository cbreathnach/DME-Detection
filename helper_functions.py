def print_sens_spec_3class(cm): 
    # Sensitivity and Specificity 
    # Class 0 
    tp_0 = cm[0][0]
    fp_0 = cm[1][0] + cm[2][0]
    tn_0 = cm[1][1] + cm[1][2] + cm[2][1] + cm[2][2]
    fn_0 = cm[0][1] + cm[0][2]
    total_0 = tp_0 + fp_0 + tn_0 + fn_0

    sen_0 = tp_0 / (tp_0 + fn_0)
    spec_0 = tn_0 / (tn_0 + fp_0)

    print("Checking Class 0...")
    print("TP = " + str(tp_0))
    print("FP = " + str(fp_0))
    print("TN = " + str(tn_0))
    print("FN = " + str(fn_0))
    print("Total Count = " + str(total_0))
    print("Sensitivity = " + str(sen_0))
    print("Specificity = " + str(spec_0))
    print("\n")


    # Class 1
    tp_1 = cm[1][1]
    fp_1 = cm[0][1] + cm[2][1]
    tn_1 = cm[0][0] + cm[0][2] + cm[2][0] + cm[2][2]
    fn_1 = cm[1][0] + cm[1][2]
    total_1 = tp_1 + fp_1 + tn_1 + fn_1

    sen_1 = tp_1 / (tp_1 + fn_1)
    spec_1 = tn_1 / (tn_1 + fp_1)

    print("Checking Class 2...")
    print("TP = " + str(tp_1))
    print("FP = " + str(fp_1))
    print("TN = " + str(tn_1))
    print("FN = " + str(fn_1))
    print("Total Count = " + str(total_1))
    print("Sensitivity = " + str(sen_1))
    print("Specificity = " + str(spec_1))
    print("\n")


    # Class 2
    tp_2 = cm[2][2]
    fp_2 = cm[0][2] + cm[1][2]
    tn_2 = cm[0][0] + cm[0][1] + cm[1][0] + cm[1][1]
    fn_2 = cm[2][0] + cm[2][1]
    total_2 = tp_2 + fp_2 + tn_2 + fn_2

    sen_2 = tp_2 / (tp_2 + fn_2)
    spec_2 = tn_2 / (tn_2 + fp_2)

    print("Checking Class 3...")
    print("TP = " + str(tp_2))
    print("FP = " + str(fp_2))
    print("TN = " + str(tn_2))
    print("FN = " + str(fn_2))
    print("Total Count = " + str(total_2))
    print("Sensitivity = " + str(sen_2))
    print("Specificity = " + str(spec_2))
    print("\n")
    
    
def print_sens_spec_2class(cm):
    # Sensitivity and Specificity 
    tn = cm[0][0]
    tp = cm[1][1] 
    fn = cm[1][0]
    fp = cm[0][1]
    
    total = tn+tp+fn+fp

    sen = ( (tp) / (tp + fn) )
    spec = ( (tn) / (tn + fp) )
    
    print("Checking Predictions...")
    print("TP = " + str(tp))
    print("FP = " + str(fp))
    print("TN = " + str(tn))
    print("FN = " + str(fn))
    print("Total Count = " + str(total))
    print("Sensitivity = " + str(sen))
    print("Specificity = " + str(spec))
    print("\n")