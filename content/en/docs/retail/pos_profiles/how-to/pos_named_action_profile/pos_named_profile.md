---
title: "Set up POS Named Action Profile"
description: "POS Named Action Profile is a necessary setup component for having fully operational POS units."
lead: ""
date: 2023-05-11T11:51:19+02:00
lastmod: 2023-05-11T11:51:19+02:00
draft: false
images: 
menu:
  docs:
    parent: "pos_profiles"
    identifier: "pos_named_action_profile-8d88255ebbdc0a7e0e611a1203702b52"
weight: 121
toc: true
type: docs
---

To ensure you have a fully operational POS unit, certain actions need to be set correctly. This is done with the POS Named Actions profile.   
Follow the provided steps to set all actions that need to be set in order to set the **POS Named Action Profile**.

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Actions Profiles** and choose the related link.
2. Create **New**.    
   The **POS Named Actions Profile** window is displayed. 
3. Type in the code in the **General** section.
4. Populate the fields in the **Actions** section with the correct actions:

| Field Name      | Description |
| ----------- | ----------- |
| **Login Action Code** (required)       | Add the action *LOGIN*.     |
| **Text Enter Action Code** (required)   | Add the action *TEXT_ENTER*.        |
| **Item Insert Action Code** (required)  | Add the action *ITEM*. |
| **Payment Action Code** (required) | Add the action *PAYMENT*. |
| **Customer Action Code** (required) | Add the action *INSERT_CUSTOMER* or *CUSTOMER_SELECT*. |
| **Lock POS Action Code** | Add the action *LOCK_POS*. |
| **Unlock POS Action Code** | Add the action *UNLOCK_POS* |
| **On Before Payment View Action Code** | Populate this field with an action that should work before finishing the payment in the POS. |
| **Idle Timeout Action Code** | Add the action *SS_IDLE_TIMEOUT*. |
| **Admin Menu Action Code** | Add the action *SS_ADMIN_MENU*. |

![POS_NAMED](POS_Ac_Set.png)

## Next steps

### Add the POS Named Action Profile to the POS Unit

After setting up the POS Named Actions Profile, you need to add it to the POS Unit.

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Unit list** and choose the related link.

2. Open the **POS Unit Card**.
3. Provide the prepared POS profile in the **POS Named Action Profile** field. 

#### See also

- [<ins>POS actions<ins>]({{< ref "../../../pos_processes/reference/pos_actions_ref/index.md" >}})