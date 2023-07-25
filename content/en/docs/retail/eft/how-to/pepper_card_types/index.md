---
title: "Set up additional Pepper Card types"
description: "When paying through the terminal that uses Pepper, it’s recommended to use a single POS Payment Method for triggering the Terminal Payment. However, if you want to be able to see that your POS Entry List is using specific cards and post the payments in different G/L accounts, you can set up the **Pepper Card Types** for specific cards and map them to the specific POS Payment Methods."
lead: ""
date: 2023-07-06T10:09:23+02:00
lastmod: 2023-07-06T10:09:23+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pepper_card_types-c9165d2570f985a8ffa3c3a2e6ce9c38"
weight: 26
toc: true
type: docs
---

When paying through the terminal that uses Pepper, it’s recommended to use a single POS Payment Method for triggering the Terminal Payment (the one set up in the EFT Setup administrative section). However, if you want to be able to see that your POS Entry List is using specific cards and post the payments in different G/L accounts, you can set up the **Pepper Card Types** for specific cards and map them to the specific POS Payment Methods.

To set up China Union Pay as a new **Pepper Card Type**, follow the provided steps:

## Prerequisites

- Create a **POS Payment Method** called **CUP**, which stands for the China Union Pay. 

## Procedure

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Pepper Card Types**, and choose the related link.         	
2.	On a new line provide **12** in **Code**.      
    The number 12 is what Pepper uses as an identifier for China Union Pay payments.

 {{< alert icon="⚠️" text="If you receive a payment that isn’t mapped correctly, you can check what Card Type is used in the EFT Transaction Requests and create a new one/edit an existing one."/>}}

3.	Provide **China Union Pay** in the **Description**.
4.	Open the drop-down menu in **Payment Type POS** and select the **CUP** **POS Payment Method**.       
    The setup is complete. When accepting payments on the terminal with the Card Type 12 you will be using the CUP POS Payment Method.
