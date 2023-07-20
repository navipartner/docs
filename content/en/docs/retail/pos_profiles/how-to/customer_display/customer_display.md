---
title: "Set up Customer Display Profile"
description: ""
lead: ""
date: 2023-07-05T10:42:08+02:00
lastmod: 2023-07-05T10:42:08+02:00
draft: false
images: []
menu:
  docs:
    parent: "pos_profiles"
    identifier: "customer_display-2a4a943981df0a57cb801d7c71fb300e"
weight: 21
toc: true
type: docs
---

You can set up the content of customer display in **Display Setup**. Here, it is possible to:

- set the parameters for the customer display per each cash register. 
- change the look and feel of the customer display.
- change the place in which the receipt is located.
- set up whether any media is downloaded.

## Prerequisites

 - Have at least one POS unit set up for sales in the system.
 - Have a dedicated customer display hardware attached to POS units that will inherit this configuration.

## Procedure 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Unit List**, and choose the related link. 
   A list of all existing POS units is displayed. 
2. Click on the POS unit you wish to set up the **Customer Display** for.  
   The **POS Unit Card** popup window is displayed.
3. In the **Profiles** panel, click the dropdown next to the **POS Display Profile**, and then **New**.  
   A new **POS Display Profile** will be opened and ready for input.
4. Fill out the **Code** field.
5. Click the dropdown next to the **Display Content Code**, and then click the **Select from full list** button.
6. From the page **Select - Display Content**, you click on the **Content Line** field on the far right to open another page called **Display Content Lines**.
7. Click **New** to input a URL or to upload an image.    
   Add more lines for a slideshow of images.
8. Go back to the **POS Display Profile**, and enable **Activate** to allow the customer display of POS Units to use this **POS Display Profile**.

{{< alert icon="📝" text="The fields in the <b>Receipt</b> panel are used for customizing the display of sales lines."/>}}

{{< alert icon="📝" text="If the customer display is blank, try pressing <b>Alt + Tab</b> to check if the window is displayed in the background. If the customer display is displayed on the wrong screen or if the new media content is not displayed, go to POS Unit Display and update the information."/>}}

{{< alert icon="⚠️" text="Remember to restart the POS when updating either the <b>POS Display Profile</b> or <b>POS Unit Display</b>."/>}}

