---
title: "Warehouse employees"
description: "Each user who performs warehouse activities needs to be set up as a warehouse employee assigned to one default location and potentially more non-default locations."
lead: ""
date: 2023-07-13T13:04:20+02:00
lastmod: 2023-07-13T13:04:20+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "warehouse_employees-1993e6d964cb44cb80223a6ba35e49d8"
weight: 360
toc: true
type: docs
---

Each user who performs warehouse activities needs to be set up as a warehouse employee assigned to one default location and potentially more non-default locations. 
This user setup filters all warehouse activities across the database to the employee's location so that the employee can only perform the warehouse activities at the default location. 

A user can be assigned to additional non-default locations for which the employee can view activity lines but not perform the activities.

  {{< alert icon="📝" text="One default location should be assigned to the user. This will be the location set on the mobile device. The user has the option to change the default location on the mobile device to any location that has been set for them in <b>Warehouse Employees</b>."/>}}
