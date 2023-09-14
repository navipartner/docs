---
title: "Set up reimbursement templates"
description: "Learn more about the setup procedure for the reimbursement templates."
lead: ""
date: 2023-08-01T15:33:44+02:00
lastmod: 2023-08-01T15:33:44+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "template_setup-ce767a93ed4c36c76b48fbd79b272813"
weight: 251
toc: true
type: docs
---
To set up the reimbursement templates, follow the provided steps:


1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Reimbursement Template**, and choose the related link.        
   The Reimbursement Template consists of two major parts:

   - Data collection - the data is found and recovered in the form of reimbursement entries
   - Reimbursement - the data is collected and processed while balancing the reimbursement entries.

2. Click **New**.   
   A new empty line is added.
3. Provide a unique code used for identifying the template. 
4. Provide a description which explains the purpose of the template.
5. Select the **Data Collection Module** that will be used: 
   - **CUST_LEDGERS** - Customer Ledger Entries (Invoice and Credit Memo)
   - **GL_ENTRIES** - G/L Entries
   - **POINT_ENTRIES** - Membership Point Entries
   - **VEND_LEDGERS** - Vendor Ledger Entries (Invoice and Credit Memo)
6. Under the **Action Tab: Data Collection Filters** set the parameters for data collection.     
   The parameters depend on your selection of the data collection module from the previous step.    
7. Select the **Reimbursement Module** that will be used:
   - **PROVISION** - posts the percentage of the data collection amount to the G/L
   - **PURCH_DOC_DISCOUNT** - the purchase document discount
   - **SALES_INVOICE** - the sales invoice
8. Under the **Action Tab: Reimbursement Provision Setup**, set the parameters for data reimbursement.    
   The parameters depend on your selection of the data collection module.    
   The description of the reimbursement parameters are automatically displayed in the **Reimbursement Summary** field.