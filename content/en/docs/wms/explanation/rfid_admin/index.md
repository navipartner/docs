---
title: "RFID administrative sections in Business Central"
description: "The RFID administrative sections are used to help you perform various jobs related to counting, shipping, receiving, and tagging items."
lead: ""
date: 2023-07-13T13:00:07+02:00
lastmod: 2023-07-13T13:00:07+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "rfid_admin-b7d7b849c18470c040ade9c89793be23"
weight: 360
toc: true
type: docs
---

The RFID administrative sections are used to help you perform various jobs related to counting, shipping, receiving, and tagging items. The following sections are available: 

## Counting schedule

The **Counting Schedule** administrative section is used for scheduling counting jobs in shops and stockrooms. You simply need to specify the **Location Code** of the store, and the days on which the count will be performed. The **Earliest Start Date/Time** field is automatically generated according to the specified location's working hours and the selected days for the count.  

  {{< alert icon="📝" text="It's recommended to schedule each count if there is a large number of items that need to be scanned, as a physical journal entry needs to be created each time the counting is done. Therefore, if physical inventory journal entries are created for counting on a scheduled basis, the time required for counting will be reduced."/>}}

## Antenna

The **Antenna** section is used for setting up the process of importing RFID documents from software other than Business Central, and for storing these imported documents. If an external scanner is used for the RFID scan, any related data can be uploaded and stored in Business Central. 


## Joined Tags

The **Joined Tags** administrative section is used for storing the RFID tags joined in the [NP RFID]({{< ref "../rfid_features/index.md" >}}) app. 

## EPC Data List

The **EPC** (Electronic Product Code) **Data List** administrative section is used for storing the keys which are created by combining reference item numbers and reference item variant codes to produce unique IDs for every physical object in the stock.

## Countings

A line is created in the **Countings** administrative section when you initiate the stock count.

When you open the line, you can see stockroom, sales floor, what has been refilled or if it has been posted or not. 
