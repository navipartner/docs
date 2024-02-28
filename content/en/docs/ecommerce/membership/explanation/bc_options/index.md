---
title: "Membership options - Business Central"
description: "This article contains descriptions of membership-related settings in Business Central."
lead: ""
date: 2023-11-21T11:04:45+01:00
lastmod: 2023-11-21T11:04:45+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "alteration-c0b0f34ba6494b2ac1561f7890f7328b"
weight: 312
toc: true
type: docs
---

Various aspects of the membership module can be configured in Business Central, and synced to Magento Webadmin. Here are some of the examples:

## Points setup

You can view and edit various options concerning memberships in the **Membership Card** of the desired membership type. For instance, you can view all points that a member has accumulated in the **Points** panel.

   ![member_points](member_points.PNG)

Additionally, in the **Magento M2 Membership Sign-up** column in the **Membership Sales Setup** administrative section, you can see the level of membership that the customer gets when they first sign up for the loyalty program.

## Membership alteration

It's possible to configure all membership alteration types such as upgrades, renewals, and extensions in the **Membership Alteration** administrative section in Business Central.

All of these alteration types, except for membership cancellation, can be accessed in Magento Webadmin, if you navigate to **Catalog** > **Products**, and open the **Add Products** dropdown. Each alteration type is linked to a distinct item number.

  {{< alert icon="❗" text="The <b>Membership Alteration</b> table is mainly used for retrieving the necessary sales item numbers, or other related details. Nothing should be modified in it. These sales items should be marked as Magento items, and synced with the Magento Webadmin database."/>}}

### Age-constraint setup

If you wish, you can set up the age constraint for the members in the **Membership Sales Setup**.

   ![age_constraint](Images/age_constraint.PNG)

#### See also

- [<ins>Register as a member on an e-commerce website<ins>]({{< ref "../../how-to/new_member/index.md" >}})
- [<ins>Custom pricing for members<ins>]({{< ref "../pricing/index.md" >}})
- [<ins>Membership options - Magento Webadmin<ins>]({{< ref "../magento_options/index.md" >}})
