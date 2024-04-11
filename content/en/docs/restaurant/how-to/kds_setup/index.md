---
title: "Set up KDS"
description: ""
lead: ""
date: 2024-04-11T10:46:53+02:00
lastmod: 2024-04-11T10:46:53+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "kds_setup-027de2bef2455b4cdd53b139c1867a7b"
weight: 341
toc: true
type: docs
---

There are several administrative sections that need to be configured to suit your restaurant setup. 

In the Restaurant Setup administrative section, there's a field Serving Step Discovery Method in the Kitchen Integration panel. Identifies which items are going to be produced for the kitchen, and which can't be produced. 

Rest. Item Routing Profiles administrative section in Business Central

These are actually groups of connected food items, e.g. meat with salad (prepared in different kitchen stations so they can each prepare a portion that they're meant to produce, but served as a part of the same dish)

Set up profiles, and assign the serving step at which the item is to be served in the dining process. Entre, main, desert. The system needs to know at which step the items need to be ready. Fast food - one serving steps; fine dining - multiple serving steps that need to be identified by the system, and placed orders in the kitchen in the correct order for doing the production.
Print production categories column - identify to which kitchen station the order is to be sent. There can be multiple kitchen stations (burger station, fry station, grill, pizza, dessert), they need to receive orders only for items relevant to them. 

Item routing profiles are assigned to items. Navigate to an item card that you need. E.g. burger 
Navigate to the item's NPR Properties panel, and check the value in the Rest. Item Routing Profile field. Assign this item to the item group defined by this profile. Then, the system will know to which kitchen station it needs to send this item, and at which step it should be served to customers.

E.g. Preserved lemon chicken skewers with summer salad (grilled meat with salad routing profile)

Kitchen Station Selection Setup administrative section

Identify which restaurant and kitchen station to send each product category

If the serving step is MAIN and the category code is BURGER, it will go to the kitchen station called BURGER.

In the back end, you need to create categories first, followed by profiles. First go to routing profiles, and click the Print./Prod. Categories, then select one of the previously created categories from the list. 

Log into the POS
Select the restaurant from the list (fine dining or fast food)
Select an available table from the floor plan to place an order
The New Waiterpad window is displayed
Pick a number of guests that are seated around the table. Optionally, provide personal information of one of the guests, such as name and phone number.
Place an order by selecting the Preserved lemon chicken skewers with summer salad from the POS menu
Press **Request (Run) Next Serving**.

Navigate to Business Central/Open KDS from Minor Tom. Check if it's called Expedite View or something similar?