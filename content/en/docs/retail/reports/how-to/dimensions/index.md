---
title: "Set up Global Dimensions"
description: "You can use Global Dimensions to set the analysis codes representing the shops."
lead: ""
date: 2023-07-10T22:28:48+02:00
lastmod: 2023-07-10T22:28:48+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "dimensions-c161140802eb3620e6a02324fa4979b3"
weight: 179
toc: true
type: docs
---

You can use Global Dimensions to set the analysis codes representing the shops. To define the Global Dimension, you first need to create it:

## Prerequisite

- You need to use the **NP Retail Manager** Role Center to be able to configure all segments of this setup. 

## Procedure in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Dimension**, and open the related link.       
2. Click **New**, and populate the **Name** and **Code** fields. 
3. Click **Dimension** in the ribbon, followed by **Dimension Values** in the dropdown that is displayed.    
   The **Dimension Values** administrative section is displayed. 
4. Click **New**, and provide the necessary values along with the adequate **Dimension Values Type**.

## Attach Global Dimensions to registers

The next requirement is to attach the dimension to the POS unit. A dimension will need to be attached to each POS unit by editing the POS Unit Card, and selecting the dimension shortcut to assign the dimension and dimension value.

{{< alert icon="📝" text="Bear in mind that the statistics use dimensions instead of locations."/>}}

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Unit List**, and open the related link.       
2. Select the POS unit you wish to edit from the list.
3. From the ribbon, click **Navigate**, followed by **Dimensions**.  
4. Assign the dimension to the POS unit by providing the adequate **Dimension Code** and **Dimension Value Code**.

## Enable chart visibility

If the chart isn't visible by default, click ![Gear that opens settings](gear_icon.PNG) in the top right corner, and then use the **Personalize** function in the **NP Retail Manager** Role Center. 

![personalize_rc_2](personalize_rc.png)

## Define chart type

After personalization, the view will be visible, and you will need to define the dimension by which you want to view the overview.    
To do this, navigate to the **Insights** section of the Role Center, and pick the created dimension in the **Chart Type** dropdown list.

![insights](insights1.png)
