---
title: "Create item addons and attach them to main items"
description: "This is the main procedure for creating item add-ons that is common for all custom configurations."
lead: ""
date: 2024-03-11T15:50:35+01:00
lastmod: 2024-03-11T15:50:35+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_and_attach_item_addon-e5969801dd11d56f2efea6c26b94aca6"
weight: 111
toc: true
type: docs
---

This is the main procedure for creating [<ins>item add-ons<ins>]({{< ref "../../explanation/item_addons/index.md" >}}) that is common for all custom configurations. Follow the provided instructions to create item add-ons:

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Item AddOns**, and choose the related link.    
    A list of all existing item add-ons is displayed.
2.	Click **New** to create a new add-on.    
    The **Item AddOn Card** is displayed.
3.	Populate the necessary fields in the **General** and **Lines** sections, described in this [<ins>reference article<ins>]({{< ref "../../reference/item_addon_ref/index.md" >}}) in more detail.
    Now you can either attach the item add-on to the main item, or create the POS button for the standalone item add-on menu to be used on the POS.

## Attach item add-ons to the main item

{{< alert icon="❗" text="Any custom configuration you may wish to perform should be done between the common creation steps and this procedure. For more details, refer to the <a href=\"/docs/retail/pos_processes/how-to/custom_configurations_item_addons/\">article with custom configuration examples</a>."/>}} 

1.	Navigate to the **Item Card** of the main item.
2.	In the **NPR Properties** section, insert the item add-on code in the **Item AddOn No**.     
    Whenever you scan the main item, a second line is added on the POS for the item add-on.

![item_addon1](item_addon1.PNG)

#### See also

- [Item addons]({{< ref "../../explanation/item_addons/index.md" >}})
- [<ins>Item add-on custom configurations<ins>]({{< ref "../custom_configurations_item_addons/index.md" >}})