---
title: "Set up POS Input Box profiles"
description: "The POS input box profiles are used for setting up which data will be recognized in the input box of POS units. "
lead: ""
date: 2024-05-07T16:12:58+02:00
lastmod: 2024-05-07T16:12:58+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "input_box_prof-c67083dee1077e35f02a588c3738289f"
weight: 121
toc: true
type: docs
---

The POS input box profiles are used for setting up the type of data that will be recognized in the POS unit input boxes. There are two types of POS input box profiles - one is used in the **Sale View**, and the other one in the **Payment View** of the POS unit. 

![input_box_profiles](Images/input_box_profiles.PNG)

Therefore, it is necessary to define two separate profiles for each view when configuring the **POS Unit Card**. There is a set of triggers or events that perform the desired actions in two different input boxes on the POS when enabled. 

1. Click the  ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Input Box Setups**, and choose the related link.      
   A list of all existing POS input box setups is displayed. You can modify them accordingly.
2. Click **New**.
3. Insert a unique **Code** for the input box setup method, and a **Description** in the designated fields. 
4. Select a **POS View**.   
   This selection determines whether it will be used in the sale POS box or the payment POS box.
5. Move onto [<ins>setting up the **POS Input Box Setup Events**<ins>]({{< ref "../../reference/input_box_profile/input_box_profile.md" >}}).     
   The events trigger actions for inserting data in the **POS Input Box**. 

{{< alert icon="📝" text="If there is a single profile setup for sale, and a single profile setup for payment, it's recommended to name them accordingly to avoid mixing them up. You can always create new sets of profiles by providing unique code and description."/>}}

6. Attach the created POS input box profiles to the appropriate POS unit via its **POS Unit Card**.

  ![pos_unit_input_boxes](Images/pos_unit_input_boxes.PNG)


#### See also

- [<ins>Create a new POS unit<ins>]({{< ref "../../../pos_processes/how-to/create_pos_unit/index.md" >}})
- [<ins>POS profiles<ins>]({{< ref "../../intro.md" >}})