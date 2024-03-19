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
6. 