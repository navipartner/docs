---
title: "Set up external terminal integration"
description: "You can use the External Terminal integration, either as an additional security measure when using terminals that are not integrated with NP Retail or as backup with additional information."
lead: ""
date: 2023-07-06T09:44:23+02:00
lastmod: 2023-07-06T09:44:23+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "external_terminal_integration-536fc2482463d0de3ea19ef416144f46"
weight: 670
toc: true
type: docs
---

You can use the External Terminal integration, either as an additional security measure when using terminals that are not integrated with NP Retail or as backup with additional information. It can also be used if another EFT Transaction is lost between the EFT Terminal and the POS where you can see that the terminal has accepted the transaction, but there are no other ways to transfer from the EFT Terminal to the POS.

To set up POS Unit 01 to use the External Terminal that requires the card numbers, but not the cardholder’s name, follow the provided steps:

## Prerequisite

- Have a **POS Payment Method TMAN** with the **EFT Processing Type**.

## Procedure

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **EFT Setup**, and choose the related link.       
2.	In **Payment Type POS** insert **TMAN**.      
    **TMAN** is used as a POS Payment Method to separate it from the regular **T** **POS Payment Method**.
3.	In **POS Unit No.** insert **01**.
4.	In the **EFT Integration Type**, open the pop-up by clicking ![Elipsis icon](elipsis_icon.png) and select **EXTERNAL_TERMINAL**.
5.	With the line selected, navigate to the **Payment Type Parameters** and disable the **Enable Cardholder Popup** checkmark.
6.	Close the page to complete the setup.