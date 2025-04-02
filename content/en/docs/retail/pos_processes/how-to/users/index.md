---
title: "Set up users"
description: "This guide describes how to configure additional user information in the system. After creating a user and assigning permission sets, you must define their role-specific settings. "
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

This guide describes how to configure additional user information in the system. After creating a user and assigning permission sets, you must define their role-specific settings. This includes managing access to POS units, setting posting date restrictions, and entering personal details such as email and phone number.

To set up users in Business Central, make sure the prerequisite is met, and follow the provided steps: 

#### Prerequisite

- Users and POS units must be created in the system.
- Required codes for setup must be available.

#### Procedure 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **User Setup**, and choose the related link.      
   A list of existing user setups appears. If none exist, the list will be empty. 
2. Click **New** to create a new record. 
3. Populate the following fields: 

| Field Name      | Description |
| ----------- | ----------- |
| **User ID** | Select an existing user and enter any necessary details. |
| **Allow Posting from/to** | Defines the active posting period for the user. Leave blank for unrestricted posting. |
| **Allow Deferral Posting from/to** | Specifies the period during which the user can post deferrals. Not applicable to NP Retail functions. |
| **Register Time** | Tracks the user’s session duration from login to logout. Unexpected interruptions (e.g., idle timeouts or crashes) are not recorded. |
| **Salesperson/Purch. Code** | Assigns a salesperson or purchaser code to the user. |
| **Sales Resp. Ctr. Filter** | Filters users by their assigned sales responsibility center. | 
| **Purchase Resp. Ctr. Filter** | Assigns a Business Center purchase responsibility center to the user. |
| **Time Sheet Admin** | Identifies whether the user is a time sheet administrator. Time sheet administrators can access and modify all time sheets. Not applicable to NP Retail functions. | 
| **POS Unit No.** | Determines the POS unit for the user. If left empty, the user must select a POS unit at login, and the system updates the field accordingly. | 
| **Allow POS Unit Switch** | If enabled, users will be allowed to log into different POS units. |
| **POS Unit Switch Filter** | If **Allow POS Unit Switch** is enabled, you can specify which POS units the users are able to switch between.  If left empty, the user can access any POS unit.  |
| **Backoffice Restaurant Code** | Specifies the restaurants accessible to the user in the Restaurant Module. |
| **E-mail** | Stores the user’s email address. Required if the user needs email permissions in NP Retail.  |
| **Anonymize Customers** | If enabled, users will be able to anonymize customer data. |
| **Allow Membership Entry Edit** | If enabled, users will be able to modify the membership entry. |
| **Phone No.** | Specifies the user’s phone number. |

By following these steps, you can successfully configure user settings in NP environments.

<iframe width="560" height="315" src="https://www.youtube.com/embed/kJ6cjtj56VE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe