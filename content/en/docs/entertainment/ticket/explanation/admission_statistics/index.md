---
title: "Admission statistics"
description: "In the attraction industry, customers require statistics for analysis."
lead: ""
date: 2023-08-23T12:54:01+02:00
lastmod: 2023-08-23T12:54:01+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "admission_statistics-604d2aad5a7e10cc38ba103c0e52b7d8"
weight: 264
toc: true
type: docs
---

In the attraction industry, customers require statistics for analysis. There are two types of statistics:

- Quick Statistics provide "today's numbers", which can be accessed from the POS. 
- Ticket Access Statistics Matrix provides flexible multidimensional access statistics page available in Business Central.

## Quick Statistics

This method makes use of a flow field in the **Admission Schedule Entry** to quickly calculate the number of admissions. However, if a ticket is used, and then revoked, it will be excluded from the admitted count. This method is primarily used for calculating the capacity limit, and a cancelled ticket would require the ticket-holder to depart from the location. 

The **Action Code** used on the POS to set up the **Quick Statistics** button is **TM_TICKETMGMT_3** and **Function Admission Count**. The **Admission Code** needs to contain information about the quick statistics it is needed for. 

## Ticket Access Statistics Matrix

This method is more precise, but since it aggregates the admissions, it doesn't instantly provide the admissions of the current day. For example, a revoked ticket is counted as a valid admission even though it has been cancelled. This is due to it still being a valid admission that has been recorded in the system. The aggregated data will not change over time as opposed to how the flow filter works, which creates a new sum every time it is executed.