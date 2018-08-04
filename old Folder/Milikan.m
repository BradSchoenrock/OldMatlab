%Program to solve the Milikin oil drop experiment
%Versoin 2008-04-24 B.S.

clear all;
q1=262.7e-19;
q2=47.2e-19;
q3=45.9e-19;
q4=61.6e-19;
q5=106.5e-19;

q12=abs(q1-q2);
q13=abs(q1-q3);
q14=abs(q1-q4);
q15=abs(q1-q5);

q23=abs(q2-q3);
q24=abs(q2-q4);
q25=abs(q2-q5);

q34=abs(q3-q4);
q35=abs(q3-q5);

q45=abs(q4-q5);

Q=[q1 q2 q3 q4 q5 q12 q13 q14 q15 q23 q24 q25 q34 q35 q45]';
s=size(Q,1);
lower=round(min(Q)/2.0e-19);
upper=round(max(Q)/1.5e-19);
l=1;
for k=lower:1:upper
    
    CH(:,l)=Q/k;
    l=l+1;
end
n=l-1;
m=0;
for c=1:1:n
    for r=1:1:s
        if (CH(r,c)>1.5e-19) && (CH(r,c)<2.0e-19)
            m=m+1;
            CF(m)=CH(r,c);
        end
    end
end
Q0=Q/1e-19
CFF=CF'/1e-19
qe=sum(CF)/m

%{
Q0 =
  262.7000
   47.2000
   45.9000
   61.6000
  106.5000
  215.5000
  216.8000
  201.1000
  156.2000
    1.3000
   14.4000
   59.3000
   15.7000
   60.6000
   44.9000
CFF =
    1.8000
    1.9625
    1.6000
    1.7444
    1.5700
    1.9957
    1.9522
    1.9667
    1.9125
    1.8708
    1.8880
    1.8360
    1.7960
    1.8154
    1.7654
    1.7269
    1.7481
    1.7000
    1.6630
    1.6857
    1.6393
    1.6036
    1.6276
    1.5828
    1.5483
    1.5733
    1.5300
    1.9767
    1.5226
    1.9871
    1.9129
    1.9548
    1.9250
    1.8531
    1.8937
    1.8667
    1.7970
    1.8364
    1.8118
    1.7441
    1.7824
    1.7600
    1.6943
    1.7314
    1.7111
    1.6472
    1.6833
    1.6649
    1.6027
    1.6378
    1.6211
    1.5605
    1.5947
    1.5795
    1.5205
    1.5538
    1.5400
    1.5150
    1.5024
    1.9722
    1.9364
    1.9018
    1.8684
    1.8362
    1.8051
    1.7750
    1.7459
    1.7177
    1.6905
    1.6641
    1.6385
    1.6136
    1.5896
    1.5662
    1.5435
    1.5214
    1.9772
    1.9525
    1.9284
    1.9049
    1.8819
    1.8595
    1.8376
    1.8163
    1.7954
    1.7750
    1.7551
    1.7356
    1.7165
    1.6978
    1.6796
    1.6617
    1.6442
    1.6271
    1.6103
    1.5939
    1.5778
    1.5620
    1.9911
    1.5465
    1.9716
    1.5314
    1.9524
    1.5165
    1.9337
    1.5019
    1.9152
    1.8972
    1.8794
    1.9954
    1.8620
    1.9771
    1.9890
    1.8450
    1.9591
    1.9709
    1.8282
    1.9414
    1.9532
    1.8117
    1.9241
    1.9357
    1.7955
    1.9071
    1.9186
    1.7796
    1.8904
    1.9018
    1.7640
    1.8739
    1.8852
    1.7487
    1.8578
    1.8690
    1.7336
    1.8419
    1.8530
    1.7188
    1.8263
    1.8373
    1.7042
    1.8109
    1.8218
    1.6899
    1.7958
    1.8067
    1.6758
    1.7810
    1.7917
    1.6620
    1.7664
    1.7770
    1.6484
    1.7520
    1.7626
    1.6350
    1.7379
    1.7484
    1.6218
    1.7240
    1.7344
    1.6088
    1.7103
    1.7206
    1.5960
    1.6969
    1.7071
    1.5835
    1.6836
    1.6937
    1.5711
    1.6705
    1.6806
    1.5589
    1.6577
    1.6677
    1.5469
    1.6450
    1.6550
    1.5351
    1.9902
    1.6326
    1.6424
    1.5235
    1.9752
    1.6203
    1.6301
    1.5120
    1.9604
    1.6082
    1.6179
    1.5007
    1.9459
    1.5963
    1.6059
    1.9316
    1.5846
    1.5941
    1.9175
    1.5730
    1.5825
    1.9036
    1.5616
    1.5710
    1.8899
    1.5504
    1.5597
    1.8764
    1.5393
    1.5486
    1.8631
    1.5284
    1.5376
    1.8500
    1.5176
    1.5268
    1.8371
    1.5070
    1.5161
    1.8243
    1.5056
    1.8117
    1.7993
    1.7871
    1.7750
    1.7631
    1.7513
    1.7397
    1.7283
    1.7170
    1.7058
    1.6948
    1.6840
    1.6732
    1.6627
    1.6522
    1.6419
    1.6317
    1.6216
    1.6117
    1.6018
    1.5921
    1.5825
    1.5731
    1.5637
    1.5544
    1.5453
    1.5363
    1.5273
    1.5185
    1.5098
    1.5011
qe =
  1.7260e-019
%}