---
title: "Add Belgian eID feature to POS"
description: "The Belgian eID feature enables retailers to integrate with different loyalty services to give Belgian customers discounts or vouchers."
lead: ""
date: 2023-12-05T15:08:34+01:00
lastmod: 2023-12-05T15:08:34+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "belgian_eid-ca54e852126c34696431ef4b039852c9"
weight: 140
toc: true
type: docs
---

The Belgian eID feature enables retailers to integrate with different loyalty services to give Belgian customers discounts or vouchers. When set up, the POS operator can read Belgian electronic identity cards to retrieve customers' data. The retrieved information is then stored in Business Central, and can be processed to link the customer to their purchases. 

To add the feature to the POS screen, make sure that the requirements for its usage are met, and follow the provided steps:

## Prerequisites

- Have the NP Retail version 28.0 or newer.
- Download and install the [Hardware Connector]({{< ref "../../../gettingstarted/hw_connector.md" >}}) feature.
- Make sure you have a compatible card reader and a Belgian eID card.

## Procedure

1. Open the POS and log in with your **Salesperson Code**.
2. Open the POS editor.     
   The POS editor options are displayed in the ribbon.
3. Click on the button slot of your choice, and then click **Edit**.     
   The **Edit Button** window is displayed.
4. Provide an adequate caption (e.g. **Read Belgian eID**).
5. Open the dropdown next to the **Action** field, and select **Other** from the list.     
   The list of additional POS actions is displayed.
6. Search for the **READ_BEID** action, and click its **Code** to add it.
7. Click **Save**, then click **Save** again in the POS editor.      
   You are prompted to choose between overwriting the current layout or saving the configuration as a new one. As soon as you make your selection, the action is added to the POS screen.

## Next steps - Read the Belgian eID from POS

1. Insert the Belgian eID card into the card reader.      
   You can do this either before or after activating the feature.
2. Press the previously added **Read Belgian eID** button on the POS.      
   You are notified that the eID card is being read.      
   As soon as the process is finished, a pop-up window with the customer information is displayed, e.g. their first name.
3. Press **OK** to complete the process. 
