---
title: "Set up variety matrix facilities on Sales Orders"
description: "The Variety Matrix is used for configuring detailed item lines on various orders by matching the available attributes."
lead: ""
date: 2023-07-10T22:46:51+02:00
lastmod: 2023-07-10T22:46:51+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "matrix-222f0bb1a0d7fdcca5d75094cbc7bd96"
weight: 96
toc: true
type: docs
---

The Variety Matrix is used for configuring detailed item lines on various orders by matching the available attributes. To set up variety matrix facilities on sales orders, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Variety Setup** and open the related link.   
2. Enable **Pop up Variety Matrix**.     
   Now, if an item with variants is selected on sales and purchase documents, the variety matrix will pop up. 
    
    {{< alert icon="📝" text="In normal circumstances, the user will insert a line, item code, then select the required variant code, and continue to set the quantity. Therefore, for each variety, it will be necessary to insert an item and variant code manually."/>}}

3. Create a new **Sales Order** or edit an existing one in the **Open** status.
4. In the **Lines** section add an item which has variants available.     
   The **Variety Matrix** popup window is displayed.     
5. Insert the quantity to be sold.      
   Based on the matrix, the required lines will be automatically inserted. 

## Next steps

### Set up variety matrix facilities on Sales Return Orders, Purchase Orders, and Return Purchase Orders

The same procedure should be followed to enable the **Variety Matrix** popup window on **Sales Return Orders**, **Purchase Orders**, and **Return Purchase Orders**. The only difference being that you need to start from one of those respective administrative sections. 
