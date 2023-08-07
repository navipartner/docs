---
title: "Take a photo on the POS"
description: "The Take Photo feature can be enabled on POS units, and give an option to cashiers to take photos of products that customers have returned to stores."
lead: ""
date: 2023-07-12T13:35:26+02:00
lastmod: 2023-07-12T13:35:26+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "take_photo-70e894c282a71e4c700e5a97690ce107"
weight: 113
toc: true
type: docs
---

The **Take Photo** feature can be enabled on POS units, and give an option to cashiers to take photos of products that customers have returned to stores. This action can be added in a form of a button in any POS menu and used during active POS sales. To use this feature, follow the provided steps:

## Prerequisites

- Add the **Take Photo** [button to the POS menu]({{< ref "../../../pos_layout/how-to/new_button/index.md" >}}) you want it to be displayed in.       
  The action you need to attach to the button is **TAKE_PHOTO**.

## Procedure

1. Click **POS** in the Role Center's ribbon, followed by **Open POS**.     
   The POS login screen is displayed.
2. Enter the **Salesperson Code** in the provided field to log in.
   The button to which the **TAKE_PHOTO** action is attached can be found in the menu you've previously placed it in.
3. Click the **TAKE_PHOTO** button.    
   The **Take a picture** popup window from the integrated camera is displayed.    
4. Snap the picture, and click **Use** to upload it and connect it to the active POS sale if you're satisfied with the result. If not, you can **Retake** it.      
   The image is linked to the transaction posted in the **POS Entries** administrative section in Business Central.
5. To access the posted images, navigate to the **POS Entry List** from the Business Center's Role Center. 
6. Click **Yes** next to the **Images Exist** line in the **POS Entry Factbox** to access all images taken with the feature.     
   The **POS Entry Media Info List** window is displayed. In it, you can add comments, download the photos or take new ones.

    ![take_photo](take_photo_feature.PNG)

<iframe width="560" height="315" src="https://www.youtube.com/embed/XmVeUrNa42U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
