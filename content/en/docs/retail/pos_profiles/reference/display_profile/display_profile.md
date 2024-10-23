---
title: "POS Display Profile"
description: "With this profile, you can configure the visual elements that will be displayed on POS unit screens. For example, you can choose whether the receipt will be visible, where it will be placed, and for how long it will be displayed. "
lead: ""
date: 2023-07-04T15:01:55+02:00
lastmod: 2023-07-04T15:01:55+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "display_profile-cf257216b65432727a668aa9fed112ae"
weight: 122
toc: true
type: docs
---

With this profile, you can configure the visual elements that will be displayed on POS unit screens. For example, you can choose whether the receipt will be visible, where it will be placed, and for how long it will be displayed. 

The following fields can be set up in each **POS Display Profile**:
 

| Field Name      | Description |
| ----------- | ----------- |
| **Code**       | Specifies the unique code of the profile.     |
| **Description**   | Specifies the short description of a profile.        |
| **Activate**  |  Activate the POS Display Profile on the customer display. |
| **Price ex. VAT** | Specifies whether the prices are visible without the VAT on the POS. |
| **Image Rotation Interval** |  Specifies the time-delay between the images (the number of milliseconds during which an image is displayed). |
| **Custom Display Codeunit** |  Specifies the customized codeunit used for out-of-the-box functionality. Adding a Codeunit ID here will expand on the base functionality and/or set the usage or limitations that could override the existing fields. If using a **Custom Display Codeunit**, read the documentation on that Codeunit. |
| **Display Content Code** | Specifies the **Display Content Code** group that will be used for this POS Display Profile. Display Content Codes are groupings of either images, videos, or URLs. This is where the media displayed on the customer display is uploaded or linked to. |
| **Hide Receipt** | Remove the receipt from the customer display. |
| **Receipt Duration** | Specifies the number of milliseconds during which an receipt remains on-screen. |
| **Receipt Width** | Specifies the width of the whole receipt on the Customer Display. |
| **Receipt Placement** | Specifies the alignment of the receipt on the screen. It can be **Right**, **Left**, and **Center**. |
| **Receipt Description Padding** | Specifies the size of the field containing the **Sales Line Description**. |
| **Receipt Total Padding** | Specifies the size of the fields that contain the **Sales Line Totals** (i.e. The **Quantity** is multiplied by the **Unit Price**). |
| **Receipt Grand Total Padding** |  Specifies the size of the field that contains the total for the entire sale. |

![POS_display](POS_display.png)


Once the POS Display Profile is defined, you can set it on the POS unit of your choice by adding the predefined POS Display Profile in the **POS Display Profile** field.

![POS_unit_dis](POS_display1.png)

#### See also

- [<ins>POS profile overview<ins>]({{< ref "../../intro.md" >}})
- [<ins>Set up POS Display Profile<ins>]({{< ref "../../how-to/customer_display/customer_display.md" >}})
- [<ins>Set up the POS HTML Display Profile<ins>]({{< ref "../../how-to/html_profile/html_profile/index.md" >}})