---
title: "Set up mobile POS view"
description: "Mobile view setup is defined exactly in the same way as in the non-mobile scenarios. There are default views for the login, sale, and payment functions."
lead: ""
date: 2023-07-06T14:56:41+02:00
lastmod: 2023-07-06T14:56:41+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "mpos_view-8487a84932441083bae974c0e2039a6c"
weight: 131
toc: true
type: docs
---

Mobile view setup is defined exactly in the same way as in the non-mobile scenarios. There are default views for the login, sale, and payment functions. This is the default arrangement that Transcendence applies if there are no custom views defined.

To define a new mobile view, follow the provided steps:

## Prerequisites in Business Central

1. Create three new POS views - **MPOS LOGIN**, **MPOS-SALE**, and **MPOS-PAY**.     
   
    ![MPOS VIEW](mpos_view1.png) 

   Leave the **JSON** field empty to make the default one automatically selected.
2. Navigate to the **POS Default Views** administrative section.
3. Assign a POS unit to the created POS views.      
4. Create the following entries in the **POS Menu** section:
   - **MOBILE-DRAWER**
   - **MOBILE-ITEMS**
   - **MOBILE-PAYMENT**
   - **SWIPE-ACTIONS**
5. Create a new MPOS QR code in **MPOS QR Code List**.
6. Click **Set Defaults**, and then **Create QR Code**.    
   The necessary QR code is now generated.

## Procedure on the mobile device

1. Download the **NP Retail POS** application from the app store and install it.
2. Open the **NP Retail POS** app.
3. Press **D365 BUSINESS CENTRAL - ONPREM** and scan the QR code generated in the last step of the Business Central portion of setup.     
   This step is only necessary if the app is opened for the first time. 
4. Navigate to the homepage and press **POS**.

