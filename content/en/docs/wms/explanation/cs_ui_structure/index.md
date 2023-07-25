---
title: "CS UI structure"
description: "The **CS UI Structure** administrative section contains the current app layout and hierarchy of CS UIs organized in a single table. All changes you make here will be reflected in the menu of the mobile device."
lead: ""
date: 2023-07-13T11:02:17+02:00
lastmod: 2023-07-13T11:02:17+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "cs_ui_structure-17e4b050730ce47adb0ff936cd3435be"
weight: 193
toc: true
type: docs
---
The **CS UI Structure** administrative section contains the current app layout and hierarchy of CS UIs organized in a single table. All changes you make here will be reflected in the menu of the mobile device.

  {{< alert icon="📝" text="From here, you can also modify the individual CS UI setup by selecting a CS UI code from the table, and then clicking **CS UI** in the ribbon."/>}}

All CS UIs applied to the structure are interconnected via the **Next UI** fields which can be seen when modifying all of the CS UIs from the list.

![CS UI Next UI](wms_cs_ui_next_ui.PNG)

If you create a new CS UI, and you wish to apply it to the structure, you can do so by adding its CS UI code to the **Next UI** field.

Likewise, if you wish to remove a certain CS UI from the structure, you can do so by deleting the value from the **Next UI** field, and then clicking **Refresh Structure** in the **CS UI Structure** ribbon to see the changes.

{{< alert icon="⚠️" text="Be careful when removing parent CS UIs from the structure. Always check whether you need some of its children CS UIs first."/>}}