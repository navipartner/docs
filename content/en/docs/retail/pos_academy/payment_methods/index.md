---
title: "Payment methods"
description: "There are multiple payment methods used for performing payment for the direct POS sales. They can be set as buttons on the POS. "
lead: ""
date: 2023-08-03T13:26:28+02:00
lastmod: 2023-08-03T13:26:28+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "payment_methods-af7ff7fc8568cf49da80e985849aa16c"
weight: 10
toc: true
type: docs
---

There are multiple payment methods used for performing payment for the direct POS sales. They can be set as buttons on the POS.  

Payment directly from the POS results in a created **Payment Line** in the relevant **POS Entry**, and when posted, general ledger entries on a G/L account are set in **POS Posting Setup**. 

## Pay with Cash 

#### Prerequisites 

- Select **Cash** as a **POS Payment Method**. 
- Have a button set up with **Action Type = Payment Type** and Action **Code = Cash**. 

#### Procedure 

1. Open the POS. 
2. Press the Test Items button.      
   A table with available items is displayed. 
3. Select the **Tommy Hilfiger Gingham Shirt** item.      
   The **Item Variants Lookup** window is displayed. 
4. Select the size and color. 
5. Press **Go to payment**. 
6. Finish the sale by pressing the **Cash Payment** button. 
7. Confirm the amount in the **Cash** pop-up window.     
   When the POS entry has been posted, you will see that the customer ledger entry is closed with this payment. 

## Pay with a Credit Voucher 

#### Prerequisites 

- Have the **TG POS Payment Method** selected for credit vouchers. 
- Have a **CREDITVOUCHER** created as a **Retail Voucher Type** and set the **POS Payment Method TG** for it. 
- Have a button set up with the POS action **SCAN_VOUCHER** and the parameter **VoucherTypeCode CREDITVOUCHER**. 

#### Procedure 

1. Open the POS. 
2. Press the Test Items button.     
   A table with available items is displayed. 
3. Select **Tommy Hilfiger Gingham Shirt**.     
   The Item Variants Lookup window is displayed. 
4. Select the size and color. 
5. Press **Go to payment**. 
6. Press the **Redeem Credit Voucher** button. 
7. Input the **Credit Voucher’s Reference No. 2802000002460**.     
   The sale is concluded. 


## Pay with a Gift Voucher 

#### Prerequisites 

- Have the **G POS Payment Method** selected for gift vouchers. 
- Have a **GIFTVOUCHER** created as a **Retail Voucher Type** and set the **POS Payment Method G** for it.  
- Have a **CREDITVOUCHER** created as a **Retail Voucher Type** and set as **Return Voucher Type** for a **GIFTVOUCHER**. 
- Have a button set up with the **SCAN_VOUCHER** POS action and the parameter **VoucherTypeCode GIFTVOUCHER**. 

#### Procedure 

1. Open the POS. 
2. Press the **Test Items** button. 
3. Select **Tommy Hilfiger Gingham Shirt**.     
   The **Item Variants Lookup** window is displayed. 
4. Select the size and color. 
5. Press G**o to payment**. 
6. Press the **Redeem Gift Voucher** button. 
7. Press **Scan Retail Gift Voucher – Full Redeem**. 
8. Input the **Gift Voucher’s Reference No. 2907100107135**. 
9. Confirm that the remaining amount should be issued as a **Credit Voucher**.     
   The sale is concluded. 

## Pay with Foreign Currencies 

#### Prerequisites 

- Have **USD** selected as a P**OS Payment Method** with the **Currency Code USD** and the **Fixed Rate 650.00**. 
- Have a button set up with the **Action Type = Payment Type** and the **Action Code = USD**. 

#### Procedure 

1. Open the POS. 
2. Press the **Test Items** button. 
3. Select **Tommy Hilfiger Gingham Shirt**.     
   The Item Variants Lookup window is displayed. 
4. Select the size and color.    
   The item’s price in the local currency is 550. 
5. Press **Go to payment**. 
6. Select **US Dollar**.     
   The item’s price in US dollars is 85. 
7. Press **OK**.   
   The sale is concluded. 

## Paying with Multiple Payment Types 

#### Prerequisites 

- Have **Cash** selected as a **POS Payment Method**. 
- Have a button set up with the A**ction Type = Payment Type** and the **Action Code = Cash**. 
- Have a **GIFTVOUCHER** created as a **Retail Voucher Type** and set the **POS Payment Method G** for it.  
- Have a button set up with the **SCAN_VOUCHER POS** action and the parameter **VoucherTypeCode GIFTVOUCHER**. 

#### Procedure 

1. Open the POS. 
2. Press the button **Test Items**. 
3. Select **Tommy Hilfiger Gingham Shirt**.      
   The **Item Variants Lookup** window is displayed. 
4. Select the size and color.    
   The total amount of the sale is 550. 
5. Press **Go to payment**. 
6. Press the **Redeem Gift Voucher** button. 
7. Press the **Scan Retail Gift Voucher – Full Redeem** button. 
8. Input the **Gift Voucher’s Reference No. 2905100111787**.      
   The voucher amount is 100.     
   The remaining amount of 450 will be paid in cash.     
9. Press **Cash Payment**. 
10. Press **OK**.      
   The sale is concluded. 