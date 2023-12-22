---
title: "Set up Flexiiterm integration (EFT)"
description: "Flexiiterm is used for integrating NaviPartner with the older NETS PSAM terminals. To set up the integration, refer to this guide."
lead: ""
date: 2023-07-06T09:45:18+02:00
lastmod: 2023-07-06T09:45:18+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "flexiiterm-ba37384b4fdd1ae23baad510db9c5400"
weight: 662
toc: true
type: docs
---

Flexiiterm is used for integrating NaviPartner with the older NETS PSAM terminals, e.g., Ingenico IPP350 terminals. 

To set up POS Unit 04 to use Flexiiterm integration, follow the provided steps:

## Prerequisites

- Have a **POS Payment Method T** with the **EFT Processing Type**. 
- Install the **Flexiiterm** app on the local POS PC.

## Procedure

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **EFT Setup**, and choose the related link.     
2.	Provide **T** in the **Payment Type POS**.       
    The **T** is used as a general **POS Payment Method** for making the terminal calls.
3.	Insert **04** in **POS Unit No**.
4.	In **EFT Integration Type** open the pop-up window by clicking ![Elipsis icon](elipsis_icon.png) and select **Flexiiterm**.

 {{< alert icon="⚠️" text="Since the connection method is set up in the Flexiiterm application, and everything is handled through files locally on the POS, no further setup is required. In the <b>Payment Type Parameters</b> there are options to set <b>CVM</b> (for example force Signature) or force terminal to work offline."/>}}