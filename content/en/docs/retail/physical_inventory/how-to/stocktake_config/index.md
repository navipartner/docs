---
title: "Configure stock-take"
description: "After a template is created, a stock-take configuration may be created using the selected template."
lead: ""
date: 2023-07-06T15:24:54+02:00
lastmod: 2023-07-06T15:24:54+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "stocktake_config-9124a04d031617f12c0a81e05145ac45"
weight: 100
toc: true
type: docs
---
Each stock take requires a specific configuration to describe a particular stock take. All the settings from the template are available. After a template is created, a stock-take configuration may be created using the selected template: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Stock-Take Configurations**, and choose the related link.
2. Click **New**. 
3. Fil in **Code**, **Description**, **Location Code (optional)**, and **Stock-Take Calculation Date** (the date for which the inventory should be calculated - the current stock-count will be based on this date).
4. Populate the **Stock-Take Template Code** to get all settings from the template.     
   If a template doesn't exist, you can create a new one from here. 

    {{< alert icon="📝" text="Templates can include the <b>Location Code</b>, which may be altered when selecting a template."/>}}

    ![stock_take_configuration_card](stock_take_configuration_card.png)
