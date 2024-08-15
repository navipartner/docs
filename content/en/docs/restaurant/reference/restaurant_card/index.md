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
You can define the general information and behavior of the restaurant's system in the **Restaurant Card**: 

| Field Name      | Description |
| ----------- | ----------- |
| **Code/Name** | Specifies the name of the restaurant. If the restaurant is a part of a building complex, there can be several restaurant types in which the serving procedure and the production integration need to be defined. | 
| **Service Flow Profile** | Specifies the service flow profile assigned to the restaurant. Service flow profiles define general restaurant service flow options, such as the stage at which the waiter pads need to be closed, when the seating needs to be cleared, etc. In the case of a fast food restaurant, the service flow profile should ideally be **FastFood restaurant with payment upfront**. |
| **Default Number of Guests** | Specifies the default number of guests when a new waiter pad is created in a restaurant. **Default** implies that the value is going to be inherited from the restaurant setup. The option you select here can be overridden for each seating location individually. | 


#### Restaurant configuration examples

- **Fine-dining restaurant** - This is an à la carte restaurant in which payment is carried out after dining. It has more than one kitchen station that prepares the food. 
- **Burger place** - Payment is carried out as soon as the order is placed, before serving. It has one kitchen in the back area. 
- **Pizza place** - Payment is carried out as soon as the order is placed, before serving. The food is prepared in front of the customer.
- **Take-away kiosk** - Payment is carried out as soon as the order is placed, with food being prepared in front of the customer. There's no seating arrangement.

| Field Name      | Description |
| ----------- | ----------- |
| **Auto Send Kitchen Order** | Specifies whether or not kitchen orders are automatically created as soon as new products are saved to waiter pads. | 
| **Resend All On New Lines** | Specifies whether both the new and the existing product lines are sent to the kitchen each time a new set of products is saved to a waiter pad. | 
| **Print on POS Sale Cancel** | Specifies whether the quantity updates for items included in a cancelled POS sale should be printed and sent to the kitchen. The requests for items with zero quantity are typically printed whenever a sale is cancelled. If the **Default** option is selected, it is implied that the configuration is inherited from the **Restaurant Setup**. | 
| **Kitchen Printing Active** | Specifies whether the kitchen printing is active. |
| **KDS Active** | Specifies whether KDS is active or not. If this setup is performed for a fast-food restaurant, there is a special front-end KDS that can be used. |
| **Order ID Assign. Method** | Specifies whether a new kitchen order is created or if an existing kitchen order is updated whenever a new set of products is added to an existing waiter pad. This can affect the preparation order of dishes prepared at their respective kitchen stations.  | 
| **Station Req. Handl. On Serving** | Specifies how the existing kitchen station production requests should be handled if a product has been served prior to the production being completed. For fast-food restaurant setup, it's recommended to select **Finish All**.  |
| **Order is Ready for Serving** |  Specifies at which point kitchen orders are assigned the **Ready for Serving** status. For fast-food restaurants, it's recommended to select **When All Requests Are Ready**. | 

#### See also

- [<ins>Restaurant transactions flow<ins>]({{< ref "../../explanation/restaurant_flow/index.md" >}})
- [<ins>Restaurant seating plan (POS)<ins>]({{< ref "../../explanation/restaurant_seating_plan/index.md" >}})
- [<ins>Restaurant POS View/POS menus<ins>]({{< ref "../../explanation/pos_view/index.md" >}})