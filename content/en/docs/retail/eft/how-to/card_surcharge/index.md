---
title: "Set up card surcharge for terminal payments"
description: "This topic describes the process of setting up terminal payments to handle EFT transactions which include a surcharge, which results in the amount received from the terminal being higher than the amount requested from the POS."
lead: ""
date: 2023-07-11T12:27:07+02:00
lastmod: 2023-07-11T12:27:07+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "card_surcharge-7eed0384642de1cadf97b168ed5314b2"
weight: 216
toc: true
type: docs
---

This topic describes the process of setting up terminal payments to handle EFT transactions which include a surcharge, which results in the amount received from the terminal being higher than the amount requested from the POS.

If you accept payments through your terminal, there may be a surcharge included in the payment. The reason for this can stem from the payment agreement itself, the Dynamic Currency Conversion on the terminal, or even the established setup on the **Customer** card.

{{< alert icon="📝" text="It is not possible to send a surcharge amount to the terminal directly. The surcharge is attached to the transaction and card holder."/>}}

## Prerequisites

- Have an [EFT Setup]({{< ref "../../intro.md" >}}) with a POS Payment Method which has Processing Type as EFT.
- Have a G/L Account you want to use for Surcharges.

## Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Payment Method List**, and choose the related link.     
   The list of POS payment methods is displayed.
2. Select the **POS Payment Method** that you have set up in EFT Setup with your EFT Integration.       
   This will usually be **T** or **TERMINAL**.
3. On the **POS Payment Method Card** populate the **EFT Surcharge Account No.** with the **No.** of your G/L account.      
   Now, whenever you have surcharge on a terminal transaction, the surcharge amount will be added to the POS Sales Line as the selected G/L account.


