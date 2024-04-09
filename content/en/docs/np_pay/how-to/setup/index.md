---
title: "Set up NP Pay"
description: "Both the terminal and the POS are required to set up NP Pay."
lead: ""
date: 2023-07-06T09:26:08+02:00
lastmod: 2023-07-06T09:26:08+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "adyen-0991cf03db560c76b5529177e684d032"
weight: 681
toc: true
type: docs
---

Adyen as the terminal provider is set up with the Adyen Cloud integration. Both the terminal and the POS are required to establish the connection to the Adyen Cloud. 

To set up **POS Unit 03** to use Adyen Cloud integration, follow the provided steps:

## Prerequisites

- Have a terminal from Adyen.
- Create the API credentials connected to the store and the terminal via the Adyen Web admin menu

## Procedure

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **EFT Setup**, and choose the related link.     
2.	In **Payment Type POS** provide **T**.       
    The T is used as a general **POS Payment Method** for making terminal calls.
3.	Provide **03** in **POS Unit No**. 
4.	In **EFT Integration Type** open the pop-up by clicking ![Elipsis icon](elipsis_icon.png) and select **ADYEN_CLOUD**.
5.	With the line selected, navigate to the **Payment Type Parameters**.
6.	Insert the value from **Adyen API Credentials** in the **API Key** field.
7.	Close the page and navigate to **POS Unit Parameters**.
8.	In the **POI ID** insert the ID of the terminal from Adyen.      
    The ID is usually expressed in the following format: [Terminal Type] - [Serial Number] - for example P400Plus-123123123.