---
title: "NP RFID app features"
description: "Learn more about the NP RFID app features in this article."
lead: ""
date: 2023-07-13T12:58:55+02:00
lastmod: 2023-07-13T12:58:55+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "rfid_features-ff5f2266595e7086511b6aae0024600a"
weight: 360
toc: true
type: docs
---

The NP RFID app consists of the following features and sections:

## Counting (COUNT)

The **Counting** section is used for recording shop and stock counts, as well as stock refills, if any are required. 

To learn more about the counting process, refer to the article on performing the shop and stock count.

## Shipping and Receiving (SHIP)

The **SHIP** section is used for recording the shipping and receiving operations. Every time items are shipped or received, you can record the process with the app, and then scan the shipped/received items to check if everything is in order. 

A prerequisite for recording these processes is to create the accompanying documents in Business Central:

- [<ins>sales orders<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/sales-how-sell-products)
- [<ins>transfer orders<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/inventory-how-transfer-between-locations)
- direct transfer orders (reclassification journals)

After the necessary documents have been created, you can initiate the shipping/receiving process, count the items that are to be shipped, and finalize the process. 

  {{< alert icon="📝" text="The shipping/receiving contents are usually stored in boxes, and it's recommended to place them in areas separate from the warehouse, so that no additional RFID tags are picked up during the scan."/>}}

When the process is finalized, you can see the results in the **RFID Documents** section in Business Central. A document is automatically generated when the counting is done, and it contains the total number of scanned RFID tags. 

## Tags (TAGS)

In the **TAGS** section, you can link an RFID tag from Business Central to a specific item, thus creating a unique code for it. You can also perform a scan to check how many available tags are valid, and if any need to be fixed. 
