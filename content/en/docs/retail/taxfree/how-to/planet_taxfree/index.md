---
title: "Set up Planet tax-free integration"
description: "The Planet integration is performed in several sections of Business Central that are described in this article."
lead: ""
date: 2024-12-02T12:17:57+01:00
lastmod: 2024-12-02T12:17:57+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "planet_taxfree-f6cb87d29b84129475339abdf6e88e2c"
weight: 166
toc: true
type: docs
---

Integration with Planet tax-free offers several benefits, such as simplification of complex tax-free shopping for eligible customers thanks to automated VAT refunds and reduced number of manual errors. 

To establish integration with the Planet tax-free solution, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Tax Free Profiles** and select the related link.               
   The page which contains all POS tax free profiles created in the environment is displayed. Here, you can link the tax free parameters to each available POS unit.
2. Click **New** and define [<ins>all necessary options<ins>]({{< ref "../../../pos_profiles/reference/tax_free_ref/tax_free_ref.md" >}}).   
   The **Code** field is mandatory. 
3. In the **Handler ID** field, select the **PREMIER_PI** for the Planet integrated solution.    
   As soon as you specify the handler ID, you need to set the accompanying parameters.
4. Click **Set Parameters** in the ribbon.     
   Populate the [<ins>parameter-related fields<ins>]({{< ref "../../reference/params_ref/index.md" >}}).
5. Choose between **PROD** or **TEST** to determine whether the integration will be established on the production environment, or not.         
   The **PROD** option should be selected for customers. 