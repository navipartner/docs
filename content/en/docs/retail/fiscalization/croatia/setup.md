---
title: "Set up fiscalization compliance - Croatia"
description: "This article details how to configure NP Retail for compliance in Croatia."
lead: ""
date: 2023-10-19T11:40:31+02:00
lastmod: 2023-10-19T11:40:31+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-08ce29d068c6a7c334f6808a4f4c0fc5"
weight: 175
toc: true
type: docs
---

Croatia has online and software fiscalization. Transactions need to be sent in real time to the Tax Authority (at the moment of printing the fiscal bill). Retailers are obligated to issue the bills and customers are obligated to take the bill before leaving the store.

The Croatian Fiscal Law does not define fiscal receipt preview. According to the law, the mandatory data is defined, but not its position on the fiscal receipt.

This article details how to configure NP Retail for compliance with Croatian fiscal laws.

1. Go to **POS Audit Profiles** page, enable the audit log, and set the **Audit Handler** to **CRO_FINA**.      
2. Open the **CRO Tax Fiscalization Setup**, and enable the fiscalization compliance with Croatia by activating the **Enable CRO Fiscalisation** toggle switch.
3. Move on to the **Digital Certificate Information** panel, and provide the password provided by FINA in the **Signing Certificate Password** field.
4. Click **Upload Certificate**, and provide a certificate that was provided by FINA.       
   **Certificate Subject OIB** field is populated with the certificate upload.
5. Move on to the **Fiscalization Environment Setup** panel, and provide the **Environment URL**.     
6. Move on to the **No. Series Setup** panel, and add the number series by which fiscal bills should be numbered in the **Bill No. Series** field. 
7. Provide the number series that the accompanying documents will have in the **Accompanying Document No. Series** field.       

   Croatian Fiscal Law defines that:

   - Every fiscal year, the receipt number should start from 1, i.e. the numbering should be restarted every fiscal year.
   - No gaps are allowed in receipt numbering.
   - The receipt number needs to contain a POS ID and a Store ID.
   - No leading zeros are allowed.

   To achieve all of the above:

   - Number series should be set for every fiscal year in advance, with a fiscal year starting date.
   - The staring number should be set as 1.
   - The **Allow Gaps in Nos.** checkmark should not be checked.

   ![croatian_fiscalization5](croatian_fiscalization5.PNG)

8. Make sure the **Salesperson/Purchaser Card** contains a cashier **Name** that is displayed on the fiscal receipt, and the OIB that is mandatory in the XML message.      
   If the OIB isn't populated, the cashier won't be able to log into the POS.

   ![croatian_fiscalization6](croatian_fiscalization6.PNG)
  