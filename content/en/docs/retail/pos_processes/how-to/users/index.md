---
title: "Set up users"
description: "This topic describes the process of setting up additional information relating to users in the system."
lead: ""
date: 2024-03-15T13:40:59+01:00
lastmod: 2024-03-15T13:40:59+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "users-4f87598f439fc78b1ea6a922c1abec77"
weight: 113
toc: true
type: docs
---

This topic describes the process of setting up additional information relating to users in the system. After creating a user with the accompanying permission sets, it is necessary to provide additional information regarding their role in the system – to allow/limit access to POS units or to some of the actions within them, to set allowed posting dates, and to provide personal information like e-mail and phone number.

To set up users in Business Central, make sure the prerequisite is met, and follow the provided steps: 

#### Prerequisite

- Users and POS Units need to be created in the system, as well as the codes that are necessary for completing this setup.

#### Procedure 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **User Setup**, and choose the related link.      
   A list of all pre-established user setup is displayed. It can be empty if none was created before. 
2. Click **New** to create a new record. 
3. Populate the following fields: 

| Field Name      | Description |
| ----------- | ----------- |
| **User ID** | Choose from the list of existing users and add information which might be necessary for the specific user. |
| **Allow Posting from/to** | These 2 dates allow to set restrictions for users to be active for a specific period. If you leave the value blank, the user will not have any restrictions when posting. |
| **Allow Deferral Posting from/to** | Specifies the period in which the user is allowed to post deferrals to the company. These fields are not applicable to NP Retail functions. |
| **Register Time** | Specifies whether to register the user's time usage defined as the time spent from when the user logs in to when the user logs out. Unexpected interruptions, such as idle session timeout, terminal server idle session timeout, or a client crash are not recorded. |
| **Salesperson/Purch. Code** | Specifies the code for the salesperson or purchaser for the user. |
| **Sales Resp. Ctr. Filter** | Specifies the code for filtering users according to their respective sales responsibility centers. | 
| **Purchase Resp. Ctr. Filter** | Specifies the code for the Business Center purchase responsibility center to which you want to assign the user. |
| **Time Sheet Admin** | This field is not applicable to NPR functions. It specifies if a user is a time sheet administrator. A time sheet administrator can access any time sheet and then edit, change, or delete it. | 
| **POS Unit No.** | If provided, when a user logs into the POS for the first time, the system recognizes which POS Unit needs to be run. If left empty, the users get a dialog box to choose which POS Unit to log into, and that ID will be written in this field. This info will be overwritten with the ID of the POS Unit on which the user was logged into the previous time. | 
| **Allow POS Unit Switch** | If enabled, users will be able to log into different POS units. |
| **POS Unit Switch Filter** | If **Allow POS Unit Switch** is enabled, you can specify which POS units the users are able to switch between. If left empty, the user will be able to use any POS unit.  |
| **Backoffice Restaurant Code** | You can set which restaurants the user can access in the Restaurant Module. |
| **E-mail** | Specifies the user's e-mail address. In NP Retail, if the user is allowed to send information via email, this field needs to be populated.  |
| **Anonymize Customers** | If enabled, users will be able to anonymize customers in the system. |
| **Allow Membership Entry Edit** | If enabled, users will be able to change the membership entry. |
| **Phone No.** | Specifies the user’s phone number. |

<iframe width="560" height="315" src="https://www.youtube.com/embed/kJ6cjtj56VE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe