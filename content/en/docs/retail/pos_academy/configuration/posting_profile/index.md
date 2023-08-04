---
title: "Set up POS Posting Profile "
description: "Each POS unit can have a different set of posting rules which are set up in the POS Posting Profile administrative section."
lead: ""
date: 2023-08-04T13:01:05+02:00
lastmod: 2023-08-04T13:01:05+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "posting_profile-7b5ccf63acb952b3ae4ad6f58fd9fa50"
weight: 16
toc: true
type: docs
---

Each POS unit can have a different set of posting rules which are set up in the **POS Posting Profile** administrative section. 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Posting Profile**, and choose the related link. 
2. Create **New**. 
3. Add **the Code in** the indicated field.       
   In this specific case, the code should be set as **DEFAULT**. 
4. Add **a Description** such as **Default POS Posting Profile**. 
5. Choose between the **Store** and the **Customer** in the **Default POS Posting Setup** field.      
   This setup determines whether the posting setup of customer or of POS store will be used on sales where you have a customer attached to it.  
6. Set the value of the **Source Code** field to **RETAIL**. 
7. Set the posting group **NATIONAL** in the **General Business Posting Group** field. 
8. Set the VAT posting group **NATIONAL** in the **VAT Business Posting Group** field. 

{{< alert icon="📝" text="The <b>Tax Area Code</b> and <b>Tax Liable</b> fields are only used in the US localization."/>}}

{{< alert icon="📝" text="The <b>POS Period Register No. Series</b> is defined only if the posting to the <b>General Ledger</b> is done by posting the period compression."/>}}

{{< alert icon="📝" text="The <b>VAT Customer No.</b> is used if a customer is assigned to the POS store."/>}}

9. Define how the POS entries will be posted in **Posting Compression**.     
   In this example, the compression is performed **Per POS Entry**, but the following options are available: 
   - **Uncompressed** – Every POS entry line is posted as-is in the General Ledger.  
   - **Per POS Entry** – The lines are compressed per an account code within that entry.      
      Example: If there are 3 lines for a sale with the same revenue account, the entry is compressed into one line in the General Ledger entry for that transaction.  
   - **Per POS Period** – All transactions within that POS period are compressed by the same General Ledger account.  
      Example: 100 sales lines are compressed as 1 line in the General Ledger.

  {{< alert icon="📝" text="As the record is kept in Business Central for the Bring It to You Retail Store Ltd, you should not set the interface to an external ERP system in the <b>Auto Process External POS Sales</b> option. "/>}}

10. Use the **Max POS Posting Differences** field to define the maximum allowed difference caused by the difference between currencies.      
    It is set as a buffer of 0.50.  
11. Define the General Ledger account **8410** on which these differences are posted in the Difference Account. 
12. Define the General Ledger account **9140** in which all sales rounding amounts are posted in the **POS Sales Rounding Account** field. 
13. Add **0.50** in the **POS Sales Amount Rounding** field to determine the decimal space on which the rounding is performed. 
14. Set the **Rounding Type** to **Nearest**.

<iframe width="560" height="315" src="https://www.youtube.com/embed/NACqyx-5Jc4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>