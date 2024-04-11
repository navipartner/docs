---
title: "Restaurant card"
description: "You can define the particularities that is associated with a Restaurant, such as the Service Flow profile and Kitchen integration."
lead: ""
date: 2023-08-22T11:47:39+02:00
lastmod: 2023-08-22T11:47:39+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "restaurant_card-49281eb737d3fb3c4438c95237ea52cf"
weight: 343
toc: true
type: docs
---
You can define the particularities that is associated with a Restaurant, such as the Service Flow profile and Kitchen integration.

| Field Name      | Description |
| ----------- | ----------- |
| **Code/Name** | Specifies the name of the restaurant. If the restaurant is a part of a building complex, there can be several restaurant types in which the serving procedure and the production integration need to be defined. | 

#### Restaurant configuration examples

- **Fine-dining restaurant** - This is an à la carte restaurant in which payment is carried out after dining. It has more than one kitchen that prepares the food. 
- **Burger place** - Payment is carried out as soon as the order is placed, before serving. It has one kitchen in the back area. 
- **Pizza place** - Payment is carried out as soon as the order is placed, before serving. The food is prepared in front of the customer.
- **Take-away kiosk** - Payment is carried out as soon as the order is placed, with food being prepared in front of the customer. There's no seating arrangement.

| Field Name      | Description |
| ----------- | ----------- |
| **Auto Send Kitchen Order** | Specifies whether the order is automatically sent to the kitchen once placed. | 
| **Resend All On New Lines** | Specifies whether all lines on the waiter pad are sent to the kitchen when new lines are added to the waiter pad. | 
| **Kitchen Printing Active** | Specifies whether the kitchen printing is active. |
| **KDS Active** | Specifies whether KDS is active or not. |
| **Order ID Assign. Method** | Specifies the assignment method of the order ID. | 
| **Station Req. Handl. On Serving** | Specifies how kitchen station production requests should be handled, if the product has been served prior to the production being completed. | 

#### See also

- [<ins>Restaurant transactions flow<ins>]({{< ref "../../explanation/restaurant_flow/index.md" >}})
- [<ins>Restaurant seating plan (POS)<ins>]({{< ref "../../explanation/restaurant_seating_plan/index.md" >}})
- [<ins>Restaurant POS View/POS menus<ins>]({{< ref "../../explanation/pos_view/index.md" >}})