---
title: "Create item journal templates"
description: "In Business Central, the item journal is used for posting adjustments, which is why it's necessary to create the item journal template and the batch for the adjustment on the item first."
lead: ""
date: 2023-07-06T15:28:00+02:00
lastmod: 2023-07-06T15:28:00+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "item_journal_template-b81a02eb9bbe78c4c56c7d968d3ceaff"
weight: 196
toc: true
type: docs
---

In Business Central, the item journal is used for posting adjustments, which is why it's necessary to create the item journal template and the batch for the adjustment on the item first. 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Item Journal Templates**, and choose the related link.
2. Crate a **New** template, and make sure that it's clear from its name, description, and other fields that it deals with the physical inventory.
3. Open **Batches** found in the **Related** dropdown list. 
4. Create a new batch, and name it **DEFAULT** (if one isn't already created in your environment).        
   This batch will be used for the purpose of counting inventory content. 
5. In the **No. Series** field, select the number series that is associated with the physical journal inventory (e.g **IJNL-PHYS**).
6. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Stock-Take Templates**, and choose the related link.
7. Click **New**, followed by the **Crate Default Template** action in the dropdown that is displayed.