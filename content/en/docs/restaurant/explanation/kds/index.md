---
title: "Kitchen Display System"
description: "Kitchen Display System is intended for both restaurant staff and customers to track the order status more easily."
lead: ""
date: 2024-04-01T09:14:52+02:00
lastmod: 2024-04-01T09:14:52+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "kds-ef98fe44c8022008f6c74759de482e04"
weight: 321
toc: true
type: docs
---

The Kitchen Display System (KDS) is built on top of the NP Restaurant module. Its main purpose is to provide easy and reliable restaurant order status tracking. The feature spans across two displays, one intended for customers to see how much time remains until they can collect their order, and the other intended for the restaurant staff to move the prepared items between virtual stations and statuses to reflect the actual preparation cycle. 

By default, the prepared food needs to go through at least two stations before it can be collected. These are typically the kitchen station and the packing station. As soon as a customer purchases their order, the request for preparation is automatically created. The order will then be displayed in the first column of the customer-facing screen - **Order Taken**. As soon as preparation starts, the order is moved to **In Progress**, and so on, until fully prepared and ready.

The transition between the preparation and packing stations is tracked on a screen that only the restaurant staff has access to. Once the dish is prepared and packed, the customer is notified through their screen that they can come to the counter and collect the order. 

![kds_customer](Images/kds_customer.png)

As soon as a member of the kitchen staff logs into the POS, they will see that the order is displayed on the **Kitchen Order Request** screen. The color in which the order is displayed indicates the estimated time of preparation. Additionally, if any extra add-ons need to be applied, they will be stated here, as well.  

{{< alert icon="📝" text="It's necessary to double-click the prepared order for it to be moved from the <b>Order Taken</b> window to <b>In Progress</b>. "/>}}

The green color indicates that the order preparation is still within the expected time frame, whereas the yellow color indicates the order is taking a bit longer than expected to be completed. The red color implies that the order is taking too long to be prepared. 

{{< alert icon="📝" text="In Business Central, you can set up notifications which will be sent to the specified employees, e.g. restaurant manager if the preparation time exceeds the expected time range."/>}}

Certain items aren't required to go through the kitchen station during the preparation process, e.g. fries. They are typically set to be handled by the packing station exclusively. There are also combined orders, consisting of both the articles prepared in the kitchen and the articles handled only by the packing station. In such cases, the order shouldn't be moved to the packing station until the main dish is prepared in the kitchen station.
