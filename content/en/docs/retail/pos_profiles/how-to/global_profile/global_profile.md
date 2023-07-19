---
title: "Set up POS Global Sales Profile"
description: ""
lead: ""
date: 2023-06-29T15:24:46+02:00
lastmod: 2023-06-29T15:24:46+02:00
draft: false
images: []
menu:
  docs:
    parent: "pos_profiles"
    identifier: "global_profile-e66fca50550421beeeb4a87f50f366f9"
weight: 10
toc: true
type: docs
---

If there are multiple companies, and each one has POS units, there is a way to create one master company in which all POS transactions will be documented. Once this is set up, all companies will send their POS transactions to the master company. To set up the POS Global Sales Profile, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Global POS Sales Setup** and choose the related link.     
2. Create **New**.
3. Add a **Code**.
4. Add a **Description**.
5. Choose the master company in the **Company name** field.

{{< alert icon="📝" text="The <b>Service URL</b> and <b>Authorization</b> fields will be automatically populated."/>}}

6. Click **Validate Global POS Sales setup** to complete the setup.

## Next steps

### Set up the global sales  profile on the POS unit

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Unit List** and choose the related link.
2. Open the **POS Unit Card** of the desired POS unit.
3. Select the prepared POS Global Sales setup in the **POS Global Sales Profile** field.


### Track POS transactions from companies (Global Sales Entries)

There's a way to track all POS transactions from other companies in the master company. 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Global Sales Entries** and choose the related link.
2. On this page you can see in which POS store, POS unit, and on which date the sales were completed in the POS. You can also see which items were sold in each transaction.
