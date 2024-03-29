---
title: "Variety group"
description: "Variety groups are combinations of varieties assembled according to a certain logic, which can be assigned to the items."
lead: ""
date: 2023-07-10T22:48:45+02:00
lastmod: 2023-07-10T22:48:45+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "group_ref-6a3441b9d917b06cd7b5f16abf8addb3"
weight: 192
toc: true
type: docs
---
Variety groups are combinations of varieties assembled according to a certain logic, which can be assigned to the items. The following options are available in the **Variety Group** administrative section: 


| Field Name      | Description |
| ----------- | ----------- |
| **Code**       | Specifies the unique code for a variety group.    |
| **Description**   | Specifies a short description for a variety group which informs users about its characteristics.      |
| **Cross Variety No.**  | You can choose a variety number (1 to 4) that will be displayed in the matrix horizontally. It is possible to override this selection on the **Item Card** later on.  |
| **No. Series** | Specifies the number series that will be used in the **Copy Naming Variety X** field.  |
| **Variety 1** | Specifies the variety that should be added as the first variety on the item. |
| **Variety 1 Table** | Specifies the variety table that should be added as the first variety table on the item. | 
| **Create Copy of Variety 1 Table** | If ticket, a copy of the table selected in the **Variety 1 Table** field will be created. All values in the table will be copied 1:1. |
| **Copy Naming Variety 1-1** | The following options are available: **Blank** - this selection results in an error if **Create Copy of Variety 1 Table** is ticked; **Table Code + No. Series** - the code of the **Variety 1 Table** + the next number from the number series will be used; **Table Code + Item No** - the code of the **Variety 1 Table** + the **Item Number** will be used.

{{< alert icon="📝" text="There are also fields for <b>Variety 2</b>, <b>Variety 3</b>, and <b>Variety 4</b> that are configured in the same way as <b>Variety 1</b>."/>}}

<iframe width="560" height="315" src="https://www.youtube.com/embed/7BQ8XESFc0I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### See also

- [<ins>Set up variety matrix facilities on Sales Orders<ins>]({{< ref "../../how-to/matrix.md" >}})
- [<ins>Create varieties in Business Central<ins>]({{< ref "../../how-to/create_variety.md" >}})
- [<ins>Block a variant<ins>]({{< ref "../../how-to/block_variant.md" >}})