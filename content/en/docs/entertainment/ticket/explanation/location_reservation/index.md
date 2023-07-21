---
title: "Location vs. reservation/event"
description: ""
lead: ""
date: 2023-07-12T16:11:58+02:00
lastmod: 2023-07-12T16:11:58+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "location_reservation-6c4be90b4fe38cd1e719035db11e0df4"
weight: 173
toc: true
type: docs
---

Admission objects define what tickets are valid for. Admission objects can be either of either the location or an event type, and are defined in **Ticket Admission**:

- **Locations** are typically physical, such as a museum, while events are something within the location, such as a guided tour.
With a few exceptions they work the same. 
-	**Events** admissions, for example, are valid for specific time, while location admissions are valid for any time within a timeframe.

You also have to set **Schedule type** in **Ticket Schedule** where you define when a location is accessible or when an event occurs:

- **Location** does not have any capacity control and do not require reservation.
- **Event** creates a reservation entry which is relevant for capacity control.