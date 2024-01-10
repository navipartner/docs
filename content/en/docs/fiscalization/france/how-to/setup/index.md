---
title: "Set up fiscalization compliance - France"
description: "This article details how to configure NP Retail for compliance in France in relation to the NF 525 legislation."
lead: ""
date: 2023-07-06T13:21:43+02:00
lastmod: 2023-07-06T13:21:43+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "compliance_setup-5a1e34629199d62b25441266cdecf781"
weight: 812
toc: true
type: docs
---

This article details how to configure NP Retail for compliance in France in relation to the NF 525 legislation.

1. Lock down all elements that shouldn't be modifiable from a POS in the **Permission Sets** administrative section of Business Central.    
   All setup mentioned in this article needs to be locked or at least **FR Compliance Setup** and **POS Audit Profile** as they control the fundamental setup for the NF 525 compliance.
2. Configure all entities that should be tracked for changes via the **Change Log** in Business Central.       
   All setup mentioned in this article should be configured.
3. Create one audit profile, and use it for all POS units. Activate the **Audit Log Enabled** option, and select **NF_525** as the **Audit Handler**.       
    This will automatically block opening of the POS on that POS Unit if any other setup is non-compliant. 
4. Reach out to NaviPartner for a self-signed certificate that is specific to your customer with the proper algorithm. 
5. On the **FR Compliance Setup** page, upload a password-protected export of the certificate with the correct password inserted in the **Signing Certificate Password** field.
6. On the **FR Compliance Setup** page you can set up the POS-unit-specific number series under the **Unit No. Series Setup** action. Beware that no prefix must be used, neither numbers or letters. Start from 1.  
7. Make sure that the **Company Information** in Business Central contains the core company information, such as the intra-comm, VAT ID and APE.  
8. Make sure that the **POS Store** administrative section in NPRetail contains other all the retail-specific base information such as store name, address, city, and Siret number. 
9. Initialize the JET for a new POS unit in the **FR Compliance Setup** page by clicking **Initialize JET**.
10. On the **FR Compliance Setup** page, you can log a partner modification to the system by clicking **Log Partner Modification**.
11. On the **FR Compliance Setup** page you need to set up the following period calculation formulas to comply with NF525:
    - **Yearly Workshift Duration**: 1Y
    - **Monthly Workshift Duration**: 1M
12. To make sure that the grand total events only count items, vouchers, services etc. that include VAT, you must set up a **VAT Identifier** filter on the **FR Compliance Setup** page that matches all non-zero VAT identifiers.
13. The following object needs to be configured to run nightly in the **Job Queue** administrative section -  codeunit 6184851 "NPR FR Audit Arch. Workshifts".
14. On the **FR Compliance Setup** page you need to set up the following API keys for auto archiving to work:
    - "Auto Archive URL" - Reach out to NaviPartner for the correct URL to use.
    - "Auto Archive API Key" - Reach out to NaviPartner for the correct API key to use.
    - "Auto Archive SAS" - Reach out to NaviPartner for the correct SAS to use.
15. On the **Print Template List** page you can use the **Deploy Package** action to download NaviPartner's default templates.       
    The two of these need to be configured to achieve the fiscalization compliance:
    - EPSON_RECEIPT_2_FR, as the sales receipt print.
    - EPSON_END_OF_DAY_Z_FR, as the end-of-day/balancing print.

Once all of the listed setup steps are completed, the footer in all active sales and payment screens on the POS will display the software name, fiscal version and certification number.  

The following setup will be enforced by the solution as it is required for french compliance. If any of this is misconfigured the POS will refuse to open: 
- "Sale Fiscal No. Series" in **POS Audit Profile** must have a number series configured without prefix.
- "Credit Sale Fiscal No. Series" in **POS Audit Profile** must have a number series configured without prefix.
- "Balancing Fiscal No. Series" in **POS Audit Profile** must have a number series configured without prefix.
- "Fill Sale Fiscal No. On" in **POS Audit Profile** must be set to be filled only for successful sales.
- "Print Receipt On Sale Cancel" in **POS Audit Profile** must be disabled.
- "Do Not Print Receipt On Sale" in **POS Audit Profile** must be disabled.
- "Allow Zero Amount Sales" in **POS Audit Profile** must be disabled.
- "Require Item Return Reason" in **POS Audit Profile** must be enabled.
- "End of Day Type" in **POS End of Day Profile** must be set to "Individual".
- "End of Day Frequency" in **POS End of Day Profile** must be set to "Daily".
- "Registration Number" on the **POS Store** must be filled (Siret number in france).
- "Name" on the **POS Store** must be filled.
- "Country/Region Code" on the **POS Store** must be filled.
- "Address" on the **POS Store** must be filled.
- "VAT Registration Number" in **Company Information** must be filled.
- "APE Code" in **Company Information** must be filled.
- Print templates in **Report Selection Retail** for "Balancing" and "Sales Receipt" must be setup to french templates.