---
title: "Variety table"
description: "After a new variety is created, it's necessary to also create a variety table. There can be many different types of varieties - for example, there can be multiple different types of the Variety Size, depending on the item which is created."
lead: ""
date: 2023-07-10T22:50:37+02:00
lastmod: 2023-07-10T22:50:37+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "variety_table_ref-7cfa29ea5bf1f9ab4dc8aa00a84a7488"
weight: 192
toc: true
type: docs
---

After a new variety is created, it's necessary to also create a variety table. There can be many different types of varieties - for example, there can be multiple different types of the Variety Size, depending on the item which is created (some items can have sizes that range from 30 to 35, while others can have sizes like S, M, L etc.).

The following options are available in the **Variety Table** administrative section:

| Field Name      | Description |
| ----------- | ----------- |
| **Code**       | Specifies the unique code for a variety.    |
| **Description**   | Specifies a short description for a variety which informs users about its characteristics.      |
| **Use in Variant Description**, **Pre Tag in Variant Description** and **Use Description**  | All of these fields work in the same way as described in the [Variety (reference guide)]({{< ref "../variety_ref/index.md" >}}) topic. Most of the values are copied from a variety when a new record is created.  |
| **Lock Table** | Tick this checkbox you don't want the new values to be included in the **Variety Table** e.g. any changes to the size tables, where the values are static, will not be applied. This option is useful if you wish to prohibit daily users from adding values by mistake.  |
