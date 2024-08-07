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

There can be at least two kitchen stations per a fast-food restaurant defined in the system. By default, all food is prepared in one stations, while the drinks are added in the packing stage. In certain cases, fryers can be defined as a standalone station.

  ![fastfood_3](Images/fastfood_3.PNG)

## Seating location

By default