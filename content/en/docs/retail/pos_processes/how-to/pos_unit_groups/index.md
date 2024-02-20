---
title: "Set up POS unit groups"
description: "If you wish the salesperson to have access only to a specified group of POS units, you can establish this setup in the POS Unit Groups administrative section."
lead: ""
date: 2023-10-04T10:16:45+02:00
lastmod: 2023-10-04T10:16:45+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pos_unit_groups-a864fc524ff3dbf22426a7ddfff50f34"
weight: 113
toc: true
type: docs
---

If you wish the salesperson to have access only to a specified group of POS units, you can establish this setup in the **POS Unit Groups** administrative section. To make a new POS unit group, make sure the prerequisites are met, and follow the provided steps:

## Prerequisites

- Set up all [<ins>POS units<ins>]({{< ref "../create_pos_unit/index.md" >}}) you wish to group, as well as their [<ins>POS store<ins>]({{< ref "../../../pos_store/how-to/new/index.md" >}}).
- Create [<ins>salespeople<ins>]({{< ref "../salespeople/index.md" >}}) who will be charged with the specified POS unit groups. 

## Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Unit Group**, and choose the related link.     
   A list of all existing POS unit groups is displayed. 
2. Click **New**.      
   The **POS Unit Group** popup window is displayed. 
3. Provide the group code (**No.**) and the short description (**Description**) for the group in the header section. 
4. Select the POS units that you wish to group from the **POS Unit List**
5. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Salespeople/Purchasers**, and choose the related link.     
   A list of all existing salespeople and purchasers is displayed. 
6. Open the card of the salesperson you wish to assign to the POS unit group you've previously created. 
7. Navigate to the **Security** section, and add the code of the POS unit group in the **POS Unit Group** field.     
   If the salesperson attempts to access a POS unit that isn't a part of the defined POS unit group, they will be notified that their access to the POS unit is denied.

#### See also

- [<ins>POS profiles<ins>]({{< ref "../../../pos_profiles/intro.md" >}})
- [<ins>Sales price maintenance<ins>]({{< ref "../../reference/sales_price_maintenance/index.md" >}})