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
weight: 146
toc: true
type: docs
---
To set up the reimbursement templates, follow the provided steps:


1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Reimbursement Template**, and choose the related link.        
   The Reimbursement Template consists of two major parts:

   - Data collection - the data is found and recovered in the form of reimbursement entries
   - Reimbursement - the data is collected and processed while balancing the data reimbursement entries

2. Click **New**.   
   A new empty line is added.
3. Insert a code to identify the template with. 
4. Provide a description which explains the purpose of the template.
5. Select the **Data Collection Module** to be used from the following: 
   - **CUST_LEDGERS** - Customer Ledger Entries (Invoice and Credit Memo)
   - **GL_ENTRIES** - G/L Entries
   - **POINT_ENTRIES** - Membership Point Entries
   - **VEND_LEDGERS** - Vendor Ledger Entries (Invoice and Credit Memo)
6. Under the **Action Tab: Data Collection Filters** set the parameters for data collection. The parameters depend on which modules you've previously selected.    
   They are based on the related table fields of that module. The description of the selected module for data collection is automatically displayed in the **Data Collection Summary** field.
7. Select the **Reimbursement Module** to be used from the following:
   - **PROVISION** - post percentage of data collection amount to the G/L
   - **PURCH_DOC_DISCOUNT** - the purchase document discount
   - **SALES_INVOICE** - the sales invoice
8. Under the **Action Tab: Reimbursement Provision Setup**, set parameters for data reimbursement.    
   The parameters depend on the selected module. These setup consist of accounts and posting groups affected by processing.      
   The description of the module selected for reimbursement is automatically displayed in the **Reimbursement Description** field.      
   The description of the reimbursement parameters set for the reimbursement are automatically displayed in the **Reimbursement Summary** field.