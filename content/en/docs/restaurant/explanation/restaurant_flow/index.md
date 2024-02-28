---
title: "Restaurant transactions flow"
description: "This article contains the typical flow of various steps involved in the Restaurant module."
lead: ""
date: 2023-08-23T11:14:27+02:00
lastmod: 2023-08-23T11:14:27+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "restaurant_flow-98ac82355821d432297505ee303e5c13"
weight: 321
toc: true
type: docs
---

Here are some of the typical flow components involved in the Restaurant module:

## Make a seat ready

Users need to navigate to the **Seating List**, and manually change the status of the seat to **READY** when preparing to open the restaurant and start admitting guests. 

## Seating

Waiters log into their POS, and select free seatings for their guests from the **Restaurant Seating Plan View**. When you click on the table, you will see the **New Waiterpad** pop-up window in which you can enter the **Number of Guests**, as well as the **Name** of the guest group.

## Ordering

When the waiters are done providing information in **New Waiterpad**, the **Sales** view of the POS is opened, and the order can be started on. 

![restaurant17](restaurant17.PNG)

## Requesting preparation

As soon as the waiter receives the order, they can start preparations from the various kitchen stations in the **Request Serving Flow**. To do this, they need to press **Request (Run) Next Serving**, which initiates the predefined serving steps. Alternatively, the waiter can choose to do each step manually by pressing the **Run** buttons individually. 

## Kitchen/Bar preparation

Once the service steps are requested, the preparation order is displayed on the KDS, or a printer, for each kitchen station. From the **Kitchen Request List**, select the kitchen station, and the KDS for that station will be displayed as the result.

Once the meal is prepared by the kitchen station, it is ready to be served. 

## Send Serving Ready

The waiter will be notified in their **Kitchen Request List** that the plate is ready to be served. Then, they can add the **Set Served** checkmark, and start physically serving the guests. 

![restaurant18](restaurant18.PNG)

## Additional order

If, during the course of the meal, a guest wishes to order an additional meal/drink, the waiter can recall the waiter pad, and add new orders on it. Then, they can send the new lines for **Requesting Preparation** to the respective kitchen stations.

## Serving & completing the order

At this stage, the waiter prints a pre-receipt to present it to the guests, and receive their payment. The guests can pay a single bill, or ask for it to be split. After that, the waiter finalizes the payment from the POS, and prints the actual sales ticket. The seat is freed automatically, and set to **READY** for the next arriving guest, as per the previously established **Restaurant Setup**.

#### See also

- [<ins>Listings<ins>]({{< ref "../listings/index.md" >}})
- [<ins>Kitchen<ins>]({{< ref "../kitchen/index.md" >}})
- [<ins>Seating<ins>]({{< ref "../seating_layout/index.md" >}})
- [<ins>Grouping<ins>]({{< ref "../seating_grouping/index.md" >}})