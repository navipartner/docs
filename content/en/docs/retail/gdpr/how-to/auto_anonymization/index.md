---
title: "Anonymize customers automatically after a certain period"
description: ""
lead: ""
date: 2023-07-06T13:49:04+02:00
lastmod: 2023-07-06T13:49:04+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "auto_anonymization-1b6cb16f563e7fbb62e0590ace1d2f67"
weight: 141
toc: true
type: docs
---

You can anonymize multiple customers simultaneously after a certain period. To do so:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Customer GDPR Setup** and choose the related link.
2. In the **Anonymize After** field, how much time needs to pass before the data is anonymized.     
   For example, if it should be anonymized after one year, write **1Y**.
3. Filter by customer posting groups and general business posting groups in order to restrict the list of customers to be anonymized. 
4. Click **Extract Customers** to get a list of customers which will be anonymized based on the applied filters.    
   The extraction gives you an overview of how many members will be anonymized. You can view the extracted customers by clicking the **No. of Customers** flow field.
5. Set the **Enable Job Queue** to **TRUE** to activate the setup, and let the system handle the anonymization automatically.      
   When enabled, two job queues are created and activated with different parameters. 

    {{< alert icon="📝" text="The code unit to set up the task for running automatic customer anonymization is 6151060, and can be set up using the parameters <b>CHECK_PERIOD = No</b> and <b>CHECK_PERIOD = Yes and No_of_Customers</b> individually."/>}}
