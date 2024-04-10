---
title: "Set up NP Pay Cloud"
description: "To set up NP Pay as the payment service provider for the cloud architecture, follow the steps in this guide."
lead: ""
date: 2023-07-06T09:26:08+02:00
lastmod: 2023-07-06T09:26:08+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "adyen-0991cf03db560c76b5529177e684d032"
weight: 626
toc: true
type: docs
---

To set up NP Pay Cloud payment service provider on a POS unit, follow the provided steps:

#### Prerequisites

- Create the API credentials connected to the store and the terminal via the Adyen Web admin menu.

#### Procedure

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **EFT Setup**, and choose the related link.     
2.	In **Payment Type POS** provide **T**.       
    The T payment type uses NP Pay as the payment service provider. 
3.	Provide the number of the POS unit you wish to attach NP Pay to in **POS Unit No**. 
4.	In **EFT Integration Type** open the pop-up by clicking ![Elipsis icon](elipsis_icon.png) and select **ADYEN_CLOUD**.
5.	With the line selected, navigate to the **Payment Type Parameters**.
6.	Insert the value from **Adyen API Credentials** in the **API Key** field.
7.	Close the page and navigate to **POS Unit Parameters**.
8.	In the **POS ID** insert the terminal ID.      
    The ID is usually expressed in the following format: [Terminal Type] - [Serial Number] - for example P400Plus-123123123.