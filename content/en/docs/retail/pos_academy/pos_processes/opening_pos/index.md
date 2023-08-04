---
title: "Starting the day in POS"
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

##  Generate the X Report on each POS

The X report provides an overview of the day’s activities performed on the POS unit up until the point of the report’s generation. Such activities include daily transactions, discounts, turnover, and tax summary. The X report also provides the option to count the amount of money accumulated in the POS unit so far.

To print the balance, follow the provided steps:

1. Open the **POS**.
2. Click **Other Functions**.
3. Click **POS action – POS Unit X-Report**.    
   There are 5 tabs – **Overview**, **Discount**, **Turnover**, **Tax Summary** and **Show All**.
4. Click the tabs to see information regarding all transactions that took place in the POS on the current day.

<iframe width="560" height="315" src="https://www.youtube.com/embed/oQFDJ1WTdyk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>