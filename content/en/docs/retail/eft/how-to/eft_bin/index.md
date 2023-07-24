---
title: "Set up EFT BIN mapping"
description: "In most Terminal Integrations (other than Pepper Integration and External Terminal) the **EFT Mapping Group List** is used for mapping various credit cards to the POS Payment Methods so that the payments can be posted correctly in the **POS Posting Setup**."
lead: ""
date: 2023-07-06T10:03:06+02:00
lastmod: 2023-07-06T10:03:06+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "eft_bin-eb300474ae2ac7ae58d2661bad9cd3b6"
weight: 26
toc: true
type: docs
---

In most Terminal Integrations (other than Pepper Integration and External Terminal) the **EFT Mapping Group List** is used for mapping various credit cards to the POS Payment Methods so that the payments can be posted correctly in the **POS Posting Setup**.

## Find relevant information from the EFT Transaction Request

To ensure that terminals are mapped correctly, and that the payments are received as expected, you need to create an EFT BIN group. 

To find the relevant information for the EFT Mapping Group in a previous Sales Ticket No. 100090, follow the provided steps: 

1.	Navigate to **EFT Transaction Requests** page.
2.	Search for **Sales Ticket No. 100090**.
3.	With the line selected, open the **Page Inspection** using the keyboard shortcut **Ctrl + F1**.
4.	In the **Page Inspection** search for **Card Number** and note down the figures before ‘*’ characters.      
    When searching in the ranges for EFT BIN Ranges the system searches for the same number of characters up till the first ‘*’, which in most cases is 6 numbers.
5.	In the **Page Inspection** search for **Card Application ID** and note down the entire ID.
6.	In the **Page Inspection** search for **Card Issuer ID** and note down the entire ID.     
    You now have enough information to create a new EFT Mapping Group and do the mapping correctly.

## Next steps

As soon as you've completed the EFT BIN mapping, you can move on to [setting up a new EFT BIN group]({{< ref "../bin_group/index.md" >}}).