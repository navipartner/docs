---
title: "POS processes"
description: "Learn how to handle the initial POS processes like starting the day in POS, inserting the initial float, and printing the balance for each POS."
lead: ""
date: 2023-08-03T09:22:27+02:00
lastmod: 2023-08-03T09:22:27+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "processes-83b839eb36a29f03035f26a32a9dd53b"
weight: 6
toc: true
type: docs
---
Learn how to handle the initial POS processes like starting the day in POS, inserting the initial float, printing the balance for each POS, and find out more about the opening balance and other related components.

## Starting the day in POS   

You can track the current POS unit state at any point during the day. There are three states of POS units in total:

#### Open

This is the default state during the daily operation. When the POS is opened, the salesperson needs to log in and perform the POS balancing if it hasn’t been done at the end of the previous day. When the POS is opened for the very first time, balancing is optional.

#### Closed

After the balancing is completed at the end of the day, the POS unit status switches to closed. Following the successful authentication, the "new float" amounts from the previous balancing are displayed and need to be confirmed. If the contents aren’t confirmed, the balancing process will be forced. 

#### End of day

When a POS Unit is being balanced, it enters the end-of-day state.

- The X-Report returns the POS unit state to Open.
- The Z-Report sets the POS unit state to Closed if successful or returns its state to Open if unsuccessful. 

## Open the POS for the first time

1. Enter the password on the **Login** page to authenticate yourself.
2. Press **OK**.     
   The POS is open.

## Insert the initial float for a POS unit

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

##  Generate the X Report on each POS

The X report provides an overview of the day’s activities performed on the POS unit up until the point of the report’s generation. Such activities include daily transactions, discounts, turnover, and tax summary. The X report also provides the option to count the amount of money accumulated in the POS unit so far.

To print the balance, follow the provided steps:

1. Open the **POS**.
2. Click **Other Functions**.
3. Click **POS action – POS Unit X-Report**.    
   There are 5 tabs – **Overview**, **Discount**, **Turnover**, **Tax Summary** and **Show All**.
4. Click the tabs to see information regarding all transactions that took place in the POS on the current day.

<iframe width="560" height="315" src="https://www.youtube.com/embed/oQFDJ1WTdyk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>