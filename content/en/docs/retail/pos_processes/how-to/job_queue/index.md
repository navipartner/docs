---
title: "Set up job queue to post POS entries"
description: "After the sale is finalized, the POS entry is created. This entry has **Post item entry status** and **Post Entry Status - UNPOSTED**. The entry can be posted manually, but it is more common to create jobs in **Job Queue Entry**, which will post the entry."
lead: ""
date: 2023-07-12T13:30:54+02:00
lastmod: 2023-07-12T13:30:54+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "job_queue-ea5f6e4dec8cdb2d66a215838332c0ec"
weight: 14
toc: true
type: docs
---

After the sale is finalized, the POS entry is created. This entry has **Post item entry status** and **Post Entry Status - UNPOSTED**. The entry can be [posted manually]({{< ref "../manually_post_pos_entries/index.md" >}}), but it is more common to create jobs in **Job Queue Entry**, which will post the entry. To set up this flow, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Job Queue Entries**, and choose the related link.     

2. Set up the following jobs:  

    - **NPR POS Post Item Entries - Code Unit 6059770**    
    This job is used for posting the sale to item ledger entries. It is usually set up with **No. of minutes between runs = 1**, so the inventory in all locations can be updated every minute. 

    ![6059770](6059770.PNG)

    - **NPR POS Post GL entries – Code Unit 6014699**     
     This job is used for posting sales and payments to G/L accounts.

    ![6059770](6014699.PNG)

    - **NPR Post Inventory Cost to G/L – Code Unit 6014683**    
     This job is used for posting inventory to G/L accounts.

     ![6014683](6014683.PNG)

All data is automatically saved.