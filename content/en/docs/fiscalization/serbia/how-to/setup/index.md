---
title: "Set up fiscalization compliance - Serbia"
description: "This article contains information about the Serbian fiscal laws and the necessary compliance aspects for NP Retail."
lead: ""
date: 2023-11-03T14:47:35+01:00
lastmod: 2023-11-03T14:47:35+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-c800f680c39acc466ac72845f30fe8d4"
weight: 817
toc: true
type: docs
---

This article details how to configure NP Retail for compliance with Serbian fiscal laws.

1. Go to the **POS Audit Profiles** page, and create a new audit profile that you will use for all POS units.
2. Activate the **Audit Log Enabled** toggle switch for the created audit profile, and set the **Fill Sale Fiscal No. On** to **Successful Sales**, then select **RS_FISKALIZACIJA** as the **Audit Handler**.
3. Navigate to **RS Tax Fiscalisation Setup**, and enable **RS Fiscalisation**.
4. Provide the **Configuration URL**, and click **Fill SUF Configuration** to add the official date for the API.
5. Navigate to **POS Unit Mapping**, and create a separate record for each POS unit you have.       
   For each POS unit you need to specify the **Sandbox Token**, **Sandbox JID** and **Sandbox PIN** (this information is received once the registration with the TA is complete).
6. Set up the payment method mappings in **POS Payment Method Mapping**, and create an entry for each payment method.       
   The supported payment methods are:

   - Cash
   - Mobile Money
   - Card
   - Voucher
   - Wire transfer
   - And several others

7. Open **VAT Posting Setup Mapping**, and create an entry for each combination of the VAT product and VAT business posting groups.
