---
title: "Set up payment methods "
description: "The POS Payment Method Card is where you will define what payment method is going to be accepted on the POS.  "
lead: ""
date: 2023-08-08T15:48:03+02:00
lastmod: 2023-08-08T15:48:03+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "payment_method-ceaa5a638b68042bc41da7194c15d032"
weight: 21
toc: true
type: docs
---
The **POS Payment Method Card** is where you will define what payment method is going to be accepted on the POS.  

![payment1](payment1.PNG)

| Article Name      | Description | Example  |
| ----------- | ----------- | ----------- |
| **Code** | The code given to the POS Payment Method (e.g., **CASH**, **AMEK**, **DINERS**, **GV - Gift Voucher**). | |
| **Description** | The short description of the payment method.  |  |
| **Processing Type** | The manner in which the POS Method is processed. Many reports are based on this field, so it’s important to provide the adequate type carefully. You can choose between: **Cash**, **Voucher**, **Check**, **EFT**, **Payout** & **Foreign Voucher**. |   |
| **Return Payment Method Type** | Specify which payment method will be returned as change on concluded transactions.  | **K** (Cash) | 
| **Block POS Payment** | If you wish to stop using a POS payment method that has been used in the past, you can activate this option. | Disabled |
| **Open Drawer** | Specifies if the drawer will be opened after the POS transaction ends when the selected POS Payment Method is used in transaction.  | |
| **Bin for Virtual-Count** | This field is used if you set a POS payment method to be self-counted and you don’t need to count it manually.  |  |
| **Include in Counting** | Determines if the POS Payment Method will be counted when you perform balancing.  |  |
| **Currency Code** | If you use a foreign currency, you will need to set the currency code here. |  |
| **Fixed Rate** | You can specify the **Fixed Rate** which will be used to convert 100 units of foreign currency into local currency. **Example**: 1 FCY = 6.15 LCY, hence the value to be inserted = 100 x 6.15 = 615 instead of 6.15. |  |
| **Use Standard Exchange Rate** | Instead of defining a fixed rate in the **POS Payment Card** itself, you can use the Business Central currency rate, defined in **Currencies**. |
| **POS Condensed** | As the transactions are posted from POS Entry into General Ledger, you can set that the posting for payment be consolidated for that POS Payment Method.  | Specifying a custom **posting description** requires the **Post Condensed** option to be set to **TRUE**.   |
| **Condensed Posting Description** | Set description of the entry by using different syntax. | %1 -> POS Unit No; %2 -> POS Store Code; %3 -> Posting Date; %4 -> POS Period Register No; %5 -> POS Payment Bin Code |
| **Zero as default on pop-up** | When you move to the **POS Payment View**, the system will suggest an amount to be paid based on the sub-total of all sale lines. If this flag is enabled, the pop-up which usually appears with the sub-total amount will not have a suggested figure. Instead, it will show zero amount. | Disabled |
| **Auto End Sale** | When completing a payment and receiving sufficient cash or any payment method to cover the sale amount, the system automatically completes the sale and returns to the **POS Sale View**, ready for the next sale.  | Enabled |
| **No Min Amount on Web Orders** | Specifies if there is a limit for the **Minimum Amount** for the selected **POS Payment Method** on **Web Orders**. | Disabled |
| **Warning pop-up on Return** | If activated, you will get a warning message on the POS when a return is being performed | Disabled |
| **Rounding Precision** | The specified rounding precision depends on what the lowest change supported by the business is. This difference will be created as a rounding figure on the ticket. | **0.50** |
| **Rounding Type** | Determines how the figures are rounded.  | **Nearest** In this case, you will round to the nearest 0.50 denominator. |
| **Rounding Gains Account** | If there is a gain due to the rounding action, the figure will go into this account. |  |
| **Rounding Losses Account** | If there is a loss due to the rounding action, the figure will go into this account. |  |
| **Min Amount** | You can set a minimum amount for accepting a particular POS Payment Method. In certain countries, businesses will not accept a credit card if the amount of sale is lower than 100, as the commission rates are too high.    | Leave it blank. |
| **Max Amount** | You can set a maximum amount for accepting a particular POS Payment Method.  | Leave it blank. | 

{{< alert icon="📝" text="It’s recommended to format MIN and MAX values like -200.000 and 200.000, since it is very unusual to make sales exceeding those amounts. Salespeople may accidentally scan a barcode into the amount box, and finish the sale, with a large amount. This affects revenue reporting etc. Of course, the sales can be reversed afterwards, but the large figures may not reflect positively on the ledgers and reports.  Having set a min/max amount blocks the sales from being finalized and makes sure that such mistakes are avoided."/>}}

| Article Name      | Description | Example  |
| ----------- | ----------- | ----------- |
| **Allow Refund** | For certain POS Payment Methods, you can set that it’s possible to do refund with the payment method used for the payment. | Activated. | 
| **Reverse Unrealized VAT** | This field appears when the processing type is a **Voucher**. On redeeming a voucher, the initial VAT calculated on issuing the voucher can be reversed. For this to work, the General Ledger account associated with voucher needs to have a VAT setup in place.  | |

{{< alert icon="📝" text="The Denominations must be set for the currencies on the <b>POS Payment Card</b>."/>}}

<iframe width="560" height="315" src="https://www.youtube.com/embed/czGJ2OqvsNw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>