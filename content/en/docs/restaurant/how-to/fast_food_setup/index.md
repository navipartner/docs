---
title: "Set up fast-food restaurant environment"
description: "This is an example procedure for setting up a working fast-food restaurant environment. Certain steps need to be taken when setting up all fast-food restaurants, while other depend on the restaurant's unique features."
lead: ""
date: 2024-08-07T12:48:11+02:00
lastmod: 2024-08-07T12:48:11+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "fast_food_setup-a911fde1d1b5e044f81858cf54de9520"
weight: 341
toc: true
type: docs
---

This is an example procedure for setting up a working fast-food restaurant environment. Certain steps need to be taken when setting up all fast-food restaurants, while other depend on the restaurant's unique features. The setup will be separated into several meaningful components:

## Restaurant Setup

The [<ins>**Restaurant Setup**<ins>]({{< ref "../../reference/setup/index.md" >}}) administrative section is where you can configure the general setup for the restaurant module. It covers basic elements such as the **No. Series**, **Seating Statuses**, **POS Actions** that are used in different processes, as well as options related to the integration with the KDS or printer and print templates for kitchen printers. Populate the necessary fields that dictate how the restaurant will be run, and move on to the following sections.

## Restaurant Card

You can create a new **Restaurant** entity in the **Restaurants** list in Business Central. Once you do, you can set up its **Restaurant Card** according to your business needs. 

You need to configure the general information and behavior of the restaurant. Use the following screenshot and the provided [<ins>Restaurant card reference guide<ins>]({{< ref "../../reference/restaurant_card/index.md" >}}) if needed.

  ![fastfood_1](Images/fastfood_1.PNG)

## Rest. Service Flow Profile Card

Set up the [<ins>service flow<ins>]({{< ref "../../reference/service_flow/index.md" >}}) to determine how the restaurant operations are performed. 

Note that the **NEW_WAITER_PAD** POS action that is used for configuring the autosave function on the waiter pad needs to have the following parameters defined in a fast-food setting:

  ![fastfood_2](Images/fastfood_2.PNG)

## Restaurant Kitchen Stations

There can be at least two [<ins>kitchen stations<ins>]({{< ref "../../explanation/kitchen/index.md" >}}) per a fast-food restaurant defined in the system. By default, all food is prepared in one stations, while the drinks are added in the packing stage. In certain cases, fryers can be defined as a standalone station.

  ![fastfood_3](Images/fastfood_3.PNG)

## Seating location

By default, a single seating location is created in the system, without the seats capacity.

  ![fastfood_4](Images/fastfood_4.PNG)

## Seating list

By default, a single seating is created in the system. 

  ![fastfood_5](Images/fastfood_5.PNG)

## Kitchen Station Selection Setup

Define the sequence in which a meal is passed from one station to another. Dish components can be prepared in parallel or as a part of a sequence. 

For example, in preparation of a Burger bundle meal, you can prepare the burger and the fries in parallel, but the full order will still be transferred to the packing station when both productions are completed. 

  ![fastfood_6](Images/fastfood_6.PNG)

## Flow statuses (to be skipped)

The flow statuses for serving don't apply to fast-food environments. You don't serve meal components separately, unlike in restaurants that employ a flow such as *Entrée > Main Course > Dessert > Cheese*.

## Rest. Item Routing Profile (to be skipped)

The [<ins>**Rest. Item Routing Profile**<ins>]({{< ref "../../explanation/routing_profiles/index.md" >}}) indicates under which serving step the dishes are going to be served, and which print/production category they refer to. In fast-food restaurants, there's only one serving step and one station. You only need to configure this profile if there are multiple stations in the fast-food environment. 

  ![fastfood_7](Images/fastfood_7.PNG)

### Serving steps

In a fast-food restaurant setting, the serving steps consist only of **MAIN**, as there's only a single serving step: *Production > Packing*.

  ![fastfood_8](Images/fastfood_8.PNG)

### Print/Prod. Categories

Since you're only using the production station in the fast-food scenario, the **Print/Prod Category** is used to determine which dish type is being produced. It doesn't have much effect on the routing for preparation and kitchen printers output. 

## POS unit setup

In the **POS Unit Card**, you don't use a specific profile for the restaurant, as you don't have a **Restaurant Floor Plan**. The POS layout will resemble any other retail POS, except that you can add POS actions for splitting bills and similar.

  ![fastfood_9](Images/fastfood_9.PNG)

## Restaurant notifications

### SMS functionality

When taking an order, you can notify the customer via SMS that their order is ready. This feature is useful for fast-food restaurants located in malls or parks. Customers can order their food and continue with their other activities instead of waiting in line for the food. Once ready for pick-up, the customer will receive an SMS to come pick up their order. 

You can add the necessary configurations in the [<ins>**SMS Setup**]({{< ref "../../../retail/communication/reference/sms_ref/index.md" >}}) administrative section.   

  ![fastfood_10](Images/fastfood_10.PNG)

In the backend, a job queue checks if there's an SMS to be sent, and sends it to the recipient automatically. The format of the SMS is defined in the relevant SMS template. 

### Restaurant notification setup

Refer to the [<ins>**Restaurant Notification Setup** reference guide<ins>]({{< ref "../../reference/notification_setup/index.md" >}}) for more information on the available fields and options.

### SMS template for restaurant notifications

You can define the template which will be used when sending restaurant notifications in the form of an SMS. The content of the said template may vary depending on the reason it's sent for, e.g. delayed order, order ready for pickup etc. 

  ![fastfood_11](Images/fastfood_11.PNG)

For example, when sending an SMS to notify customers that their order is ready, the message can be as simple as *"Your order #-- is ready."*

  ![fastfood_12](Images/fastfood_12.PNG)