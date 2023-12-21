---
title: "Set up Pepper payment with additional parameters"
description: "When paying through a Pepper Terminal, it is possible to send additional parameters along with the amount."
lead: ""
date: 2023-07-06T10:08:21+02:00
lastmod: 2023-07-06T10:08:21+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pepper_params-00a309a3188ef2fb26655f321b1682dc"
weight: 655
toc: true
type: docs
---

When paying through a Pepper Terminal, it is possible to send additional parameters along with the amount. This can either be done in the **Pepper Terminal Card** if additional parameters need to be sent each time the payment is performed or through the **POS Menus** button if you need to use the additional parameters only in certain scenarios - for example when paying with a specific card type that can only be used on a specific type of goods.

Follow the provided steps to create a button in the **SALE-LEFT** part of **POS Menu** for sending an amount to the terminal with additional parameter which states that the VIC Voucher Type is a Lunch Pass.

## Prerequisites

- Have the **EFT Setup** configured with the **Payment Type POS** as **T** and the **EFT Integration Type PEPPER**. 


## Procedure

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Menus**, and choose the related link.         	
2.	Select **SALE-LEFT** and click **Buttons**.
3.	Go to a new line and provide **LUNCH PASS** in **Caption**.
4.	In the **Action Type** drop-down select the **Action** type.
5.	In **Action Code** click ![Elipsis icon](elipsis_icon.png) to open the available **POS Actions**, search for **Pepper** and select the **EFT_PEPPER_PAYMENT POS Action**.
6.	With the line selected, click **Parameters** under the **Home** tab.
7.	In **Additional Parameters** fill in <VicVoucherTypeValue>lunch-pass</VicVoucherTypeValue>.
8.	In **Payment Method Code** provide **T**.
9.	Close the page.      
    A POS menu button is now added to the **SALE-LEFT** part of the POS. You can use it to send this additional parameter along with the amount to the terminal.