---
title: "Replication overview"
description: "You can use the Replication Module to import data from one company to another (companies can belong to the same database or to different ones)."
lead: ""
date: 2023-07-05T16:37:49+02:00
lastmod: 2023-07-05T16:37:49+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "replication-042bf71aa7f29bb52da272ec6bf32f75"
weight: 185
toc: true
type: docs
---

You can use the Replication Module to import data from one company to another (companies can belong to the same database or to different ones).

Depending on how you set up the Replication Module, you can:

- import data to Store companies from a Master company (HQ).
- import data to a new database from an existing one.
- synchronize your application with a database used by another application.     

There is a predefined configuration created automatically when the **Replication Setup List** page is first opened, but you can also configure mapping of each table and column.

Newly created or modified records are identified with the field **Replication Counter** which is populated based on the [<ins>Business Central timestamp field<ins>](https://docs.microsoft.com/en-us/dynamics-nav/how-to--use-a-timestamp-field).

Import of new or modified records is handled by making API requests to the From Company (source company). API requests are based on the [<ins>Business Central Custom API pages<ins>](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-develop-custom-api).

#### See also

- [<ins>Set up Replication module<ins>]({{< ref "how-to/setup/index.md" >}})
- [<ins>Set up inventory sets<ins>]({{< ref "how-to/inventory_sets/index.md" >}})