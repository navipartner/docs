---
title: "Set up fiscalization compliance - Slovenia"
description: "This article details how to configure NP Retail for compliance in Slovenia."
lead: ""
date: 2023-11-30T10:50:49+01:00
lastmod: 2023-11-30T10:50:49+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-40843c64f0f9f80aae276c880653cdcc"
weight: 821
toc: true
type: docs
---

Slovenia have online and software fiscalization. Transactions need to be sent in real time to the Tax Authority (at the moment of printing the fiscal bill). Retailers are obligated to issue the bills, and customers are obligated to take the bill before leaving the store. 

The Slovenian Fiscal Law does not define fiscal receipt preview. According to the law, the mandatory data are defined, but not their position on the fiscal receipt. 

This article details how to configure NP Retail for compliance with Slovenian fiscal laws.

1. Go to **POS Audit Profiles** page, enable the audit log, and set the **Audit Handler** to **SI_DAVKI**.      
2. Open the **SI Tax Fiscalization Setup**, and enable the fiscalization compliance with Slovenia by activating the **Enable SI Fiscalization** toggle switch.
3. Move on to the **Signing Certificate Setup** panel, and provide the password provided by the Ministry of Finance in the **Signing Certificate Password** field.
4. Click **Upload Certificate**, and provide a certificate that was provided by the Ministry of Finance.     
   The **Certificate Subject Identification** is populated with certificate upload.  
5. Move on to the **Fiscalization Environment Setup** panel, and provide the **Environment URL**.
6. Move on to the **No. Series Setup** panel, and add the number series by which fiscal bills should be numbered in the **Bill No. Series** field (e.g. **SI_FISK**).        
   
   The Slovenian Fiscal Law defines that: 
   - No gaps are allowed in receipt numbering. 
   - The receipt number should also contain a POS ID and a Store ID. 
   - No leading zeros are allowed. 

   To achieve all the above:  

   - The starting number should be set as 1. 
   - **Allow Gaps in Nos.** must not be checked. 

    {{< alert icon="📝" text="Resetting numbering at the beginning of the fiscal year is neither mandatory nor prohibited. If the taxpayer internally defines that numbering for every fiscal year starts from the beginning, the number series should be set in advance for every fiscal year. "/>}}

7. Make sure the **Salesperson/Purchaser Card** contains a cashier **Name** that is displayed on the fiscal receipt.
8. Provide the **Salesperson Tax Number** that consists of at least 8 characters.      
   The salesperson tax number is a mandatory segment of the XML message.
9. Make sure the **Salesperson ID** (Cashier ID) is transparent on the fiscal receipt, and sent as such to the TA in the XML message.  