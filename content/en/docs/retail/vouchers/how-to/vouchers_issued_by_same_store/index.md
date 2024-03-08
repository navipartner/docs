---
title: "Create vouchers issued and redeemed by the same store"
description: "Create vouchers issued and redeemed by the same store in the context of Bring It To You Ltd. fictional example store."
lead: ""
date: 2023-08-16T13:59:41+02:00
lastmod: 2023-08-16T13:59:41+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "vouchers_issued_by_same_store-9916cc1a8d7444973a557427bc8c1576"
weight: 139
toc: true
type: docs
---

To create a Gift Retail Voucher, follow the provided steps:  

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Retail Voucher Types**, and choose the related link.      
   A list of all existing Retail Vouchers is displayed. 
2. **Click New**.     
   The **Retail Voucher Card** popup window is displayed.       
3. Populate all the necessary fields in the **General** section.   
   In the **General** section you can define the **Code** and **Description** of a voucher. This section also contains the number of open, closed, and archived vouchers. These statistics are automatically generated.
4. Populate the necessary fields in the **Send Voucher** section as indicated in the **Example** column below.     

| Field Name      | Description | Example | 
| ----------- | ----------- | ----------- |
| **Send Voucher Module** | Specifies the module used for sending the retail voucher.  | **DEFAULT** |
| **Account No.**  | When the voucher is issued, the specified account is debited with the value of the voucher. If there is VAT on the account, the amount is the net of the VAT on this account, whereas the VAT component is on the VAT account. Nevertheless, the value of the voucher is the total amount and will be used as the total amount on redeeming. The VAT Business Group is set on the General Ledger account. | **A/C Code**  |
| **Partner Code**  | This field is used when you set the Global Voucher to be used by the partner shop. | **BLANK**  |
| **Allow Top-up**  | If this field is active, the voucher’s owner can come to the shop and add funds on top of the original value to increase it. Consequently, when they decide to redeem the voucher, its value will be higher. This function is typically used for gift vouchers. | **Not Activated**  |
| **Minimum Amount Issue**  | The shop can’t issue a voucher below the specified amount, instead opting to return the cash instead. Typically, this amount is specified for credit vouchers, but can also be applied for gift vouchers where the shop’s policy is not to sell vouchers below a specified value.  | **0**   |
| **Max Voucher Count**  | Specifies the maximum number of vouchers that can be issued.  For example, a shop may decide to issue birthday vouchers but want to set a limit of how many Birthday Vouchers are going to be issued in total. For example, if you want to issue up to the maximum of 100 Birthday Vouchers, you should insert 100 as the limit in this field. | **0 – No Limits**  |
| **No. Series**   | This number series is used in full or in part of the numbering of the issued voucher. | **NPR-GIF**  |
| **Archivation No. Series**  | Specifies the number series which is used when archiving a used voucher.  | **NPR-GIF-A**  |
| **Reference No. Type**   | Defines the format that the voucher number is expressed in. It can be a no series for EAN13 or a pattern which will combine different syntax to form the voucher number. | **EAN13**  |
| **Manual Reference number on Sales Orders** | If this field is activated, it specifies if vouchers created on a sales order will have a manually entered reference number instead of an automatically generated reference number. | Deactivated |
| **Reference No. Pattern** | The number consists of a combination of different patterns. | **29[N][S][N*2]**; **Explanation**: **[S]** - voucher number, **[N]** - random number, **[N*2]** - 2 random numbers, **[AN]** - random character, **[AN*3]** - 3 random characters | 
| **Print Object Type** | Specifies the print object type for the voucher type. | **Template** |
| **Print Object ID** | If you specify a Codeunit or Report, you can set the code in this field. |   |
| **Print Template Code**  |   | **EPSON_RVOUCH_GIFT** | 
| **E-mail Template Code** |   | **RETAILGIFT** |
| **SMS Template Code**  |   | **GCSMS**  | 
| **Send Method via POS** | This field defines how the voucher will be sent when sold on the POS. | **Print**  |
| **Voucher Message**  | A message can be inserted in this field. |   |

5. Populate the necessary fields in the **Setup Voucher** section. 
   In the **Setup Voucher** section, you can define the amount on the voucher. All vouchers created from this voucher type will contain the value you provide here.  
   You can also define POS stores in which vouchers can be used (if POS store group is entered, voucher can be used only in stores set up in POS store group) and a fixed date period during which the vouchers will be valid (starting and ending date). 

![vouchers1](vouchers1.PNG)

6. Populate the necessary fields in the **Validate Voucher** section.     
   This section defines different validations that can be set for the voucher.   

![vouchers2](vouchers2.PNG)

| Field Name      | Description | Example | 
| ----------- | ----------- | ----------- |
| **Validate Voucher Module**  | Specifies different ways of validating the voucher when it is scanned on POS. The following options are available: **DEFAULT** - the voucher will be redeemed if it is within the valid period and issued by the store; **GLOBAL** - the voucher will be redeemed if it is within the valid period and issued by the store or the associated stores. | **DEFAULT** |
| **Validate Customer No.** | If this field is selected and a voucher was issued to a customer this voucher can be spent only by that customer. | Deactivated | 
| **Valid Period** | Specifies the validity period of the voucher from the date it is issued. | **3Y** |

7. Populate the necessary fields in the **Apply Payment** section.     
   Rules for redeeming vouchers are created in the **Apply Payment** section. In this section there are three modules for validating vouchers. 

| Field Name      | Description | Example | 
| ----------- | ----------- | ----------- |
| **Apply Payment Method** | Specifies the rules for applying the voucher as payment on POS. The following options are available: **Default** - Implies that the voucher will be redeemed in total. If the sales amount is lower than the voucher amount, you can create a credit voucher that will be used as a refund for the difference in value. This configuration is done in **Setup** > **Setup Apply Payment** on the card; **Partial** - Implies that the voucher amount will be used partially, and that the leftover amount can be used another time; **Limit** - Implies that the voucher amount will be applied on a sale if the sale amount is equal to or higher than the value of the voucher. If the sale value is lower than the voucher value, an error message will be displayed, and the salesperson will not be allowed to redeem the voucher. | **Default** | 
| **Payment Type** | The Payment Method that is used when redeeming the voucher. The General Ledger account to be credit when using this payment method is defined in the POS Posting Setup.   | **G** | 

{{< alert icon="📝" text="The Credit Voucher will follow the same type of settings as the Gift Voucher."/>}}