---
title: "Hungary Fiscalization - Laurel miniPOS Integration"
description: "A NP Retail integration with the Laurel miniPOS device used for hardware-based fiscalization in Hungary."
lead: ""
date: 2024-01-26T15:23:06+01:00
lastmod: 2024-01-26T15:23:06+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "HungaryFiscalization_Laurel-miniPOS"
weight: 816
toc: true
type: docs
---

Fiscalization in Hungary is hardware-based, and NP Retail supports this through an integration with the Laurel miniPOS device.
To use the solution, the Hardware Connector must be installed on the PC. For detailed instructions, see the [<ins>Hardware Connector installation guide<ins>]({{< ref "../../../../retail/gettingstarted/hw_connector.md" >}})

After completing the installation, follow the steps below to enable and configure fiscalization:
1. To enable fiscalization functions for Hungarian users, navigate to **HU Laurel Fiscalization Setup** and set the **HU Laurel Fiscalization** to **Enabled**.
2. Navigate to **POS Audit Profile** and create a new profile. Set the **Audit Handler** to **HU_LAUREL**.
Set this Audit Profile to **every POS Unit** that will be in use.
3. Navigate to **HU L POS Unit Mapping** and select POS Unit from table field **POS Unit No**. Enter Laurel license – provided from printer or partner.
4. Create a set of return reasons from the **Return Reasons** table.
In **HU Laurel Return Reason Mapping** table connect them with the relevant reasons from drop menu field **HU L Return Reason Code**. Every time when doing the return transaction, return reasons will show up on the POS screen and it is necessary to select the return reason.
5. Select the combination of VAT Business and Product posting groups from **HU Laurel VAT Posting Setup Mapping** table and set the **Laurel VAT Index** – VAT category that is available from printer. This way, the correct VAT category will be sent to the printer when POS transaction is finished.
6. Select the payment methods that will be used on POS and connect them with the relevant payment methods that are supported by fiscal printer from **HU Laurel POS Payment Mapping table**. Make sure that **Rounding Precision** for CASH payment method is set on 5,00 and **Rounding Type** is the nearest. All transactions will be registered in **HU Laurel POS Audit Log Aux.** Info table.


