---
title: "Set up Planet Payment integration"
description: "Planet Payment Electronic Funds Transfer integration is a viable payment option for customers who want a cloud terminal integration."
lead: ""
date: 2023-12-22T14:00:48+01:00
lastmod: 2023-12-22T14:00:48+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-346c6d490580c0fa2c8ec7f0f8a68c43"
weight: 665
toc: true
type: docs
---

Planet Payment Electronic Funds Transfer integration is a viable payment option for customers who want to establish and use a cloud terminal integration. This feature requires minimal setup, and no hardware dependencies.

To set up Planet Payment integration, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **EFT Setup**, and choose the related link.         
2. Create a new line with the **Payment Type POS** set to **T(Terminal)**.
3. Select the **POS Unit No.**, and set the **EFT Integration Type** to **PLANET_PAX**.
4. Open the  **POS Unit Parameters** in the ribbon.      
   The **Planet PAX Terminal Configurations** page is displayed.
5. Click **New**, and populate the following fields in the window that is displayed:
   - **Terminal ID** - this is the ID of the terminal, which is displayed on the terminal screen. If not, contact the vendor for this information.
   - **Location ID** - The **Location ID** is displayed on the terminal screen. If not, contact the vendor for this information.
   - **URL Endpoint** - Contact the vendor for this information.
6. Save and exit.     
   The terminal is now set up for the specified POS unit.