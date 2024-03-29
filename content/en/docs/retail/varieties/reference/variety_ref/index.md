---
title: "Variety"
description: "The Variety administrative section contains the list of varieties created in the environment, along with some of their basic properties."
lead: ""
date: 2023-07-10T22:51:29+02:00
lastmod: 2023-07-10T22:51:29+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "variety_ref-3b3beff9490b922cf297180f022950f1"
weight: 192
toc: true
type: docs
---

The **Variety** administrative section contains the list of varieties created in the environment, along with some of their basic properties. The following options are available when setting up varieties in this section:

 Field Name      | Description |
| ----------- | ----------- |
| **Code**       | Specifies the unique code for a variety.    |
| **Description**   | Specifies a short description for a variety which informs users about its characteristics.      |
| **Use in Variant Description**  |  This field is taken into account only if the **Variant Description** or **Variant Description 2** fields are set to **Variety table setup first 50** or **Variety Table Setup Next 50**. If enabled, this variety will be used to generate the description to the variant.  |
| **Custom Description** | If an item and a variant are selected in sales/purchase lines, the item description will be copied on the sales/purchase line description, and the variant will be copied in the **Description 2**.  |
|  **Pre Tag in Variant Description**  | The description on the variant will be generated with this tag in front of the value. **Example**: *Co:RED/Le:72/Ws:37*  |
|  **Use Description Field**  | Specifies if it's the **Code** field or the **Description** field of the **Variant Value** that is used in generating the variant description. Only works if **Use in Variant Description** is ticked.  |

<iframe width="560" height="315" src="https://www.youtube.com/embed/DWCgtBz6-2c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


#### See also

- [<ins>Set up variety matrix facilities on Sales Orders<ins>]({{< ref "../../how-to/matrix.md" >}})
- [<ins>Create varieties in Business Central<ins>]({{< ref "../../how-to/create_variety.md" >}})
- [<ins>Block a variant<ins>]({{< ref "../../how-to/block_variant.md" >}})