---
title: "Set up salespeople/purchasers"
description: "By default, a seller code is required to log into the register. This help ensure that unauthorized parties can't gain access to the POS unit, and brings up the collection of statistics that cater to each employee."
lead: ""
date: 2023-07-12T13:25:48+02:00
lastmod: 2023-07-12T13:25:48+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "salespeople-3da62a3951b547f924a54e291328adb5"
weight: 113
toc: true
type: docs
---

By default, a seller code is required to log into the register. This help ensure that unauthorized parties can't gain access to the POS unit, and brings up the collection of statistics that cater to each employee.

Follow the provided steps to set up salespeople/purchasers:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Salespeople/Purchasers**, and choose the related link.     
   The list of all sellers that exist in the systems is displayed.
2. Click **New** to create a new seller. 
3. Populate the following mandatory fields: 

| Field Name      | Description |
| ----------- | ----------- |
| **Code** | the code can be anything you want, it's used to track all created sellers.  |
| **Name** | the clerk's name.   |

4. If needed, populate the following optional fields:  

| Field Name      | Description |
| ----------- | ----------- |
| **Job Title** | You can add the salesperson's job title here. | 
| **Email** | This field is used for the salesperson's email address. | 
| **Phone No.** | The employee's phone number can be provided here. | 
| **Department Code/Project Code** | If the business uses these codes, you can provide them here. | 
| **Commission Percent** | This field can store the individual employee's commission rate. |
| **Blocked** | If active, it isn’t possible to create transactions associated with this salesperson’s code. | 
| **POS Unit Password** | This password is used by the salesperson to log into the POS unit. This password is numeric and unique. |
| **POS Unit Group** | This field is used for assigning a salesperson to a POS unit group, which consequently allows that salesperson to only be able to work on POS units within that group. | 
| **Supervisor** | If active, the salesperson is treated as a supervisor on the POS, which provides them with the adequate security clearance level.  | 


{{< alert icon="📝" text="It's not possible to delete former employees from this list, or reuse codes for new employees, as this can create distortions in the statistics, and in the book entries."/>}}
