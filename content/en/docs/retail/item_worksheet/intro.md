---
title: "Item worksheet overview"
description: "The item worksheet is a feature which helps maintain item-related data easily and efficiently with minimal entry time."
lead: ""
date: 2023-07-06T13:53:52+02:00
lastmod: 2023-07-06T13:53:52+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-0e3b7814d8c306991b28f34616abf5b6"
weight: 200
toc: true
type: docs
---

The item worksheet is a feature which helps maintain item-related data easily and efficiently with minimal entry time.

It supports data import from various data sources, like text or Excel sheets. You can transform data into the Business Central variant structure, and check for inconsistencies and errors. Users can also perform manual and visual checks and adjustments. There is an option to keep the history records for review and auditing purposes.

It is also possible to setup the custom mapping per Excel sheet template. The functionality is structured as a standard Business Central Worksheet with an option to register lines.

The general flow is as follows:

1. Set up the import using [<ins>Item Worksheet Template<ins>]({{< ref "reference/template/template_ref.md" >}}) and [<ins>Item Worksheet<ins>]({{< ref "how-to/create/index.md" >}}).
2. Import the external file, suggest Item Worksheet lines via Business Central, or enter the lines manually.
3. Manually check and adjust the imported data.
4. Validate the data in the worksheet.
5. Implement the modifications or create new items/variants by [<ins>registering<ins>]({{< ref "explanation/register/index.md" >}}) the worksheet. 

#### See also

- [<ins>Item Worksheet Template<ins>]({{< ref "reference/template/template_ref.md" >}})
- [<ins>Create an Item Worksheet line<ins>]({{< ref "how-to/create/index.md" >}})
- [<ins>Adding variety values to the worksheet<ins>]({{< ref "explanation/add_variety/index.md" >}})