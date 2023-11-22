---
title: "Create item add-ons"
description: "This is the main procedure for creating item add-ons that is common for all customized configurations that are described in the further parts of this guide."
lead: ""
date: 2023-08-18T10:45:21+02:00
lastmod: 2023-08-18T10:45:21+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-8304634eca878d6fc504c26c9f0af0c8"
weight: 48
toc: true
type: docs
---

This is the main procedure for creating item add-ons that is common for all customized configurations that are described in the [<ins>further parts of this guide<ins>]({{< ref "../custom_configurations/index.md" >}}). Follow the provided instructions to create item add-ons:

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Item AddOns**, and choose the related link.    
    A list of all existing item add-ons is displayed.
2.	Click **New** to create a new add-on.    
    The **Item AddOn Card** is displayed.
3.	Populate the necessary fields in the **General** and **Lines** sections, described in this [<ins>reference article<ins>]({{< ref "../../../pos_processes/reference/item_addon_ref/index.md" >}}) in more detail.
    Now you can either attach the item add-on to the main item, or create the POS button for the standalone item add-on menu to be used on the POS.

## Attach item add-ons to the main item

{{< alert icon="❗" text="Any custom configuration you may wish to perform should be done between the common creation steps and this procedure. For more details, refer to the <a href=\"/docs/retail/pos_academy/item_addons/custom_configurations/\">article with custom configuration examples</a>."/>}} 

1.	Navigate to the **Item Card** of the main item.
2.	In the **NPR Properties** section, insert the item add-on code in the **Item AddOn No**.     
    Whenever you scan the main item, a second line is added on the POS for the item add-on.

![item_addon1](item_addon1.PNG)