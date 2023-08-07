---
title: "Create a CS RFID tag model"
description: "Learn how to create CS RFID tag models in Business Central."
lead: ""
date: 2023-07-13T13:05:37+02:00
lastmod: 2023-07-13T13:05:37+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_rfid_tag-3d40f4d36828c67905e131ae7c5cc6f9"
weight: 359
toc: true
type: docs
---

The first step in setting up the RFID is to make a selection in regards to the type of label that corresponds to your inventory. You can choose between small labels (e.g. for jewelry), medium labels (e.g. for clothing), and large labels (e.g. for furniture). Once this is decided, users need to buy the labels, as well as the RFID printer used for printing labels and the IDs inside the tags themselves. Each label needs to be unique.

To create CS RFID tag models in Business Central, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **CS RFID Tag Models** and choose the related link.        
   The list of CS RFID tags is displayed. From here, you can also create new tags.
2. Click **New**.
3. The first four digits of the tag should be provided in the **Family** column.     
   These digits represent the identification of a common property that the items share. 
4. The four digits that follow should be provided in the **Model** column.       
   These digits represent the ID that signifies the item model. 
5. Tick **Discontinue** if the family/model is not in use anymore. 
6. In the **Tag Length**, you can specify how many digits the tag will consist of.     
   All changes are automatically saved.
