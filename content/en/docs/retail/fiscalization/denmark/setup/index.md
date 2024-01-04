---
title: "Set up fiscalization compliance - Denmark"
description: "This article details how to configure NP Retail for compliance in Denmark."
lead: ""
date: 2023-12-22T16:28:18+01:00
lastmod: 2023-12-22T16:28:18+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-30487cc0fcaf82ac3f94c006648d6e85"
weight: 184
toc: true
type: docs
---

Follow the provided steps to set up fiscalization compliance with Danish fiscal laws:

1. Go to **POS Audit Profiles** page, enable the audit log, and set the **Audit Handler** to **DK_SKAT**.      
   Make sure this audit profile is set for all POS units in the **POS Unit List**
2. Open the **DK Fiscalization Setup** page, and enable the fiscalization compliance with Denmark by activating the **Enable DK Fiscalisation** toggle switch.
3. Request a self-signed certificate from NaviPartner, with a proper algorithm that caters to the specific customer's needs.
4. Provide the **Certificate Password** in the designated field located in the **Sign Certificate** panel, then upload the certificate received from NaviPartner via the **Upload Certificate** action in the ribbon.     
5. In the **SAFTCash** panel, populate the fields used for forming the request for additional information for exporting an XML file to a SAF-T Cash Register.       
   The **SAF-T Contact No.** field should correspond to the number of the contact/employee.