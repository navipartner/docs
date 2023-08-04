---
title: "Insert the initial float for a POS unit"
description: "A float is an amount of cash that needs to be available in the POS at the beginning of each workday."
lead: ""
date: 2023-08-04T09:54:50+02:00
lastmod: 2023-08-04T09:54:50+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "initial_float-47f3e0caa760b9f48777d4837cb93199"
weight: 7
toc: true
type: docs
---
A float is an amount of cash that needs to be available in the POS at the beginning of each workday. To set up the initial float for POS units, follow the provided steps in Business Central: 

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Payment Bin**, and open the related link. 
2.	Select the **POS Payment Bin** number **1** for which you need to assign the initial float, and click **Insert Initial Float** in the ribbon.      
    A window with all available POS payment methods is displayed.      

    {{< alert icon="📝" text="You can set a filter on the payment methods that you want to count in the balancing screen, so that you reduce the number of records in the list."/>}}

3.	Click **Edit List**, and in the **Amount** select the currency of the cash placed in the POS payment bin for that POS unit. 

      {{< alert icon="📝" text="Once the initial float is inserted and confirmed by clicking <b>OK</b>, you can no longer correct it on the same page. If you try to correct/change the initial float, an error message stating that the initial float already exists will be displayed."/>}}

4.	The next time you open a POS, you will be greeted by a prompt for confirming the float.      
    This concludes the configuration of the opening balance.

### Fix an incorrect initial float 

If a mistake is made, when you open the POS unit for the first time, you will have the option to count and correct this error. If everything is in order, you will receive the confirmation screen which states if the physical float is the same as the float inserted in the **POS Payment Bin Set Float** page.

However, if the floats don't match, you can perform a count, and balance the POS unit before you start working on it. 

1. Click **No** in the **Confirm Bin Contents** window.
2. Click **Yes** when asked whether you want to initiate the balancing process.      
   The window for balancing is displayed, and you can correct the incorrect initial float.

<iframe width="560" height="315" src="https://www.youtube.com/embed/oQFDJ1WTdyk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>