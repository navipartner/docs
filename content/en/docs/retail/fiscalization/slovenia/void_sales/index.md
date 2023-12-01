---
title: "Void/return sales (Slovenian fiscalization)"
description: "Item return on the POS is done by choosing the Other Function button, followed by Return Sales, after which you can choose if the return is in the form of a Cash Sales Reverse, or a Credit Memo.  "
lead: ""
date: 2023-12-01T09:53:25+01:00
lastmod: 2023-12-01T09:53:25+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "void_sales-07cffcb1a49f7058256ce649d8aa299c"
weight: 180
toc: true
type: docs
---

Item return on the POS is done by choosing the **Other Function** button, followed by **Return Sales**, after which you can choose if the return is in the form of a **Cash Sales Reverse**, or a **Credit Memo**.  

## Void/return sales with the Cash Sales Reverse action

1. Press **Cash Sales Reverse** on the POS when you need to record sale return.       
   The **Reverse Sale** window is displayed.
2. Provide the **Receipt Number**, and press **OK**.      
   The sales line on the POS display is displayed in negative amounts as a result. 

   {{< alert icon="📝" text="If there are some items in the receipt that don't need to be returned, you need to specify them as such when negative sales lines appear on the POS view."/>}}

3. Confirm the negative amounts, if everything is in order. 
4. Finalize the sale with the desired payment method.      
   The amount and quantity are negative on the receipt, and in the XML message sent to the TA.      
   The XML message also contains the information from the original receipt, before it was reversed.