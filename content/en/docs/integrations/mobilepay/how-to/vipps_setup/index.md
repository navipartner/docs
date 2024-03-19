---
title: "Set up Vipps MobilePay integration"
description: "The purpose of this integration is to make payment in the stores easy with static QR codes. Follow the instructions in this article to set it up."
lead: ""
date: 2024-03-19T11:53:50+01:00
lastmod: 2024-03-19T11:53:50+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "vipps_setup-7696973ea9223159ec52fc3a87faf4d3"
weight: 675
toc: true
type: docs
---

Vipps MobilePay is the most recently developed version of the MobilePay solution that supports the same features (with the improvement of also extending to Norwegian market), but has different setup procedure. Its purpose is to make payment in stores easy, with static QR codes generated in the mobile wallet app. 

To set up the Vipps MobilePay integration, make sure the prerequisites are met, and follow the provided steps:

#### Prerequisites

- Sign into the Vipps MobilePay portal in order to collect the following data:
  - **Merchant Serial Number** (Msn)
  - **Client Id**
  - **Subscription key** (either one will work)
  - **OBS**: For on-prem solutions, a username/password is needed for the setup. Both existing and new users can be used for this purpose. Bear in mind that if the password is changed, the login will no longer work. 

#### Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **EFT Setup**, and select the related link.
2. Create a new entry with the desired payment type, POS unit number, and choose the **VIPPS_MOBILEPAY** integration.
3. Open the **Payment Type Parameters**.      
   The **Vipps MobilePay Integration Config** page is displayed.
4. Select the desired log level and close the page.      
   The recommended level is **Error**.
5. Open the **POS Unit Parameters**.     
   The **Vipps MobilePay Unit Configuration** page is displayed.
6. Click the three dots in the **Merchant Serial Number** field.    
   The **Vipps MobilePay Stores List** is displayed.
7. Create a new Vipps store by taking the following actions:    
   - Provide the merchant information from the Prerequisites in the **Vipps MobilePay Store** page. 
   - Click the three dots in the **Webhook Reference** field. 
   - Click **Create Webhook**.
   - (Situational) If the tenant is on-prem, the **OnPrem Additional Setup** page needs to be filled in accordingly:
     - **Config Name** - a name that is easily distinguishable should be provided here (e.g. Company-Msn, where "Msn" stands for a "merchant serial number").
     - Username/Password for the user that can access Business Central via the SOAP webservice. If the user doesn't exist yet, it needs to be created.      
   A message is displayed with information that a NaviPartner developer needs to perform setup externally.
8. Navigate back to the **Vipps MobilePay Unit Configuration** page. 
9. Click the three dots in the **Static QR ID** field.      
   The **Vipps MobilePay Static QRs List** is displayed.
10. Click either **Create a new QR** for a brand-new Vipps MobilePay Static QR code (you can find this QR on the Vipps MobilePay portal and print it out after it has been created) or **Create/Update MobilePay QR** for recreating an existing MobilePay QR code (the Beacon ID) in the new Vipps MobilePay system.
11. (Situational) If the tenant is a Cloud/SaaS environment:
    - Navigate to the **Vipps MobilePay Unit Configuration** page.
    - Click **Create Setup (Admin)** to allow the Vipps MobilePay webhook to send the information to Business Central. This action requires administrator-level permissions to be granted. 

#### See also

- [<ins>Use MobilePay QR code on customer screen<ins>]({{< ref "../qr_code.md" >}})