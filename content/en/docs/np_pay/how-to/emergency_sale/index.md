---
title: "Make a sale on NP Retail Emergency mPOS"
description: "Use the NP Retail Emergency mPOS to process a transaction by adding items, selecting a payment method, and completing the sale. If the internet is unavailable, sales will sync automatically once connectivity is restored."
lead: ""
date: 2025-02-06T11:52:25+01:00
lastmod: 2025-02-06T11:52:25+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "emergency_sale-9c8dfd5b735a1c6115841a7339a30fdb"
weight: 999
toc: true
type: docs
---

Use the NP Retail Emergency mPOS to process a transaction by adding items, selecting a payment method, and completing the sale. If the internet is unavailable, sales will sync automatically once connectivity is restored.

## Prerequisite

- Make sure your device of choice is properly [<ins>set up<ins>]({{< ref "../emergency_pos/index.md" >}}).      
  For more information on devices, refer to the [<ins>feature overview<ins>]({{< ref "../../explanation/emergency_mpos/index.md" >}}).

## Procedure

1. Open the **NP Retail Emergency mPOS** app on your device.      
   The home screen is displayed.

    {{< alert icon="📝" text="If unsynchronized sales exist, you’ll be prompted to sync them."/>}}

2. Tap **New Sale**

   ![emergency_1_1](Images/emergency_1_1.png)

3. Scan or add items manually.
4. (Optional) If needed, edit or remove lines with the buttons that appear from swiping the item to the right and left respectively.

     ![emergency_10](Images/emergency_10.png)

5. Tap the **Cart** icon to proceed to payment.

    ![emergency_9](Images/emergency_9.png) 

6. Choose a payment method and complete the transaction.       
   If the sufficient amount has been paid, the **End of Sale** pop-up window is displayed.

    ![emergency_11](Images/emergency_11.png)
   
7. Provide the customer's phone number and email, and tick the checkbox next to the preferred receipt format (SMS or Email).    
   The customer will get the receipt after the sale is synchronized to Business Central and the next job queue is resolved.
   
8. Tap **End Sale**.     
   The sale is finished and you are redirected back to the home screen.


## Checking sale history

- If you wish, you can access **History** to view past transactions.

    ![emergency_12](Images/emergency_12.png)

- Tap a sale to see details.

    ![emergency_13](Images/emergency_13.png)

## Troubleshooting and support

- If needed, use the **Help** page to view logs and troubleshoot errors.

  {{< alert icon="📝" text="Error and crash events are automatically collected, but enabling the Logs feature extends the info written to a local file."/>}}

- Upload logs for developer review if issues persist.

    ![emergency_7](Images/emergency_7.png)


  {{< alert icon="⚠️" text="Be cautious when using <b>Delete Database</b> — this action is irreversible."/>}}