for i in 0 1 2 3 4 
do
    # python eval_randnk.py \
    #     -tr uniref100/uniref100_train_split_${i} \
    #     -te uniref100/uniref100_test_split_${i}_curate \
    #     -p 0.00001 -up 0.005 -s 100 -EP True ; 
    python eval_randnk.py \
        -n uniref100/uniref10_split${i}_supcon \
        -tr uniref100/uniref100_train_split_${i} \
        -te uniref100/uniref100_test_split_${i}_curate \
        -p 0.00001 -up 0.005 -s 100
done
 
# ------------------ for promiscuous enzymes ------------------ #
# python -u .\eval_randnk.py \
#     -te uniref10_prom_split_test_curate \
#     -tr uniref10_prom_split_train \
#     -n uniref10_prom_triplet \
#     -p 0.0001 -up 0.05 -s 100

#python eval_randnk.py -n uniref10/uniref10_split0_supcon -tr uniref10/uniref10_train_split_0 -te uniref10/uniref10_test_split_1_curate -p 0.00001 -up 0.005 -s 100 -o 256

# python -u .\eval_randnk.py  -te uniref100_prom_split_test_curate  -tr uniref100_prom_split_train  -EP true  -p 0.0001 -up 0.05 -s 100
# python -u ./train-supcon.py -t uniref10/uniref10_train_split_3 -n uniref10_split3_supcon > out/uniref10_split3_supcon.out
python -u ./train-supcon.py -t uniref1/uniref1_train_split_3 -n uniref1_split3 >> uniref1_split3.out