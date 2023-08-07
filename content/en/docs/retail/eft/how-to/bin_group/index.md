---
title: "Set up a new EFT BIN group"
description: "If a credit card is used, it can be found in the EFT AID Mapping List. It will select the corresponding EFT Mapping Group, instead of looking for Card Issuer ID and then EFT BIN Ranges individually."
lead: ""
date: 2023-07-06T09:31:52+02:00
lastmod: 2023-07-06T09:31:52+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "bin_group-c1f96cc5fd0ba531fc7b210e23d8a905"
weight: 216
toc: true
type: docs
---

Follow the provided steps to set up a new **EFT Mapping Group NC** with a Card Number range of **501900** to **501999**, which has a **Card Application ID** of **A0000001211010** and a **Card Issuer ID** of **50** and map this to P**OS Payment Method** code **DAN**.

If a credit card is used, it can be found in the **EFT AID Mapping List**. It will select the corresponding EFT Mapping Group, instead of looking for Card Issuer ID and then EFT BIN Ranges individually.

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **EFT Mapping Group List**, and choose the related link.         
2.	Click **New** to create a new group.
3.	In **Code** provide **NC**, and fill out the **Description**.
4.	Add **10** in the **Priority** field.        
    If the credit card is mapped to more than one **EFT Mapping Group** (e.g., in the **EFT BIN Range** of two different groups) the group with the lowest priority is selected.
5.	In **Card Issuer ID** provide **50**.
6.	In **EFT Mapping Group Payment Links** provide **DAN** in the **Payment Type POS**.
7.	In **EFT BIN Ranges** select a new line to update the top line with the **BIN Group Priority** and populate **BIN From** with **501900**.
8.  Populate **BIN To** with **501999**.     
    This means that any card that starts with 5019 is included in this range.
9.	In the **EFT AID Mapping List** section provide **A000000121** in the **Registered application provider ID**, then input **1010** in **ApplicationID**. 
10. In **Bin Group Code** fill in **NC** from the **EFT Mapping Group Card**.

![eft_bin_group](eft_bin_group.PNG)

  {{< alert icon="⚠️" text="The <b>Card Application ID</b> consists of two parts, the <b>Registered application provider ID</b> (RID) and the <b>ApplicationID</b> (AID)."/>}}
