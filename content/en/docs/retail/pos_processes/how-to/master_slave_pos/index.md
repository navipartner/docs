---
title: "Configure master/slave POS units"
description: "To configure relations between POS units for balancing it is necessary to set up master POS unit and assign it to all slave POS units."
lead: ""
date: 2023-07-11T12:33:34+02:00
lastmod: 2023-07-11T12:33:34+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "master_slave_pos-80dcf8dde400e5dee810b945ea670086"
weight: 113
toc: true
type: docs
---

To configure relations between POS units for balancing it is necessary to set up master POS unit and assign it to all slave POS units.

To set up this connection, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Units** and open the related link.
   
2. Open the POS unit you want to set up, and from the **Profiles** section open the **POS End of Day Profile**.

3. In the **End of Day Type** choose **Master & Slave**, and in **Master POS Unit No.** insert POS unit that will be the master unit.

4. Insert the same **POS End of Day Profile** in all POS units which will be slave units of the master unit assigned in the profile you created.

5. Insert the same **POS End of Day Profile** in the POS unit which you assigned as master.

#### See also

- [<ins>Use the POS Layout Setup Wizard<ins>]({{< ref "../create_pos_unit/index.md" >}})
- [<ins>POS profile overview<ins>]({{< ref "../../../pos_profiles/intro.md" >}})