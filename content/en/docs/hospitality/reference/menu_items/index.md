---
title: "Restaurant menu items"
description: "Reference for menu item availability status and the routing profile requirement on NPRE menu items."
lead: ""
date: 2026-07-07T00:00:00+00:00
lastmod: 2026-07-07T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "menu_items-8d20f4a1c9b64e07af1e5c3d20976b18"
weight: 116
toc: true
type: docs
---

Menu items are the items you make orderable in a restaurant menu. This page documents two settings that control whether an item can be added to a menu and whether guests can see and order it.

## Status

Each menu item has a **Status** field that controls its visibility and orderability. It is shown on the menu items list and on the menu items part of a menu category.

| Status | Behavior |
| --- | --- |
| **Active** | The item is shown on the menu and can be ordered. |
| **Inactive (visible)** | The item is shown on the menu but cannot be ordered (for example, temporarily sold out). |
| **Inactive (hidden)** | The item is not shown on the menu. |

Use **Inactive (visible)** when you want guests to still see an item that is temporarily unavailable, and **Inactive (hidden)** to remove it from the menu without deleting it.

## Routing profile requirement

An item can only be added to a restaurant menu if the item card has a **Rest. Item Routing Profile** set. If the field is blank, adding or changing the item on a menu is blocked with an error asking you to set the item's routing profile first.

This prevents menu items that have no kitchen routing, which would otherwise be silently skipped when orders are sent to the kitchen. Set the routing profile on the item before adding it to a menu — see [<ins>Restaurant item routing profiles<ins>]({{< ref "../../explanation/routing_profiles/index.md" >}}).
