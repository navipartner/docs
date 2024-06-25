---
title: "Set up fiscalization compliance - Austria"
description: "NP Retail is integrated with the Fiskaly API solution that makes the usage of NaviPartner's POS solution compliant with Austrian fiscal laws."
lead: ""
date: 2024-06-25T11:19:25+02:00
lastmod: 2024-06-25T11:19:25+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-45e8788a08cf0330a426cc460fc96dfc"
weight: 835
toc: true
type: docs
---

NP Retail is integrated with the Fiskaly API solution that makes the usage of NaviPartner's POS solution compliant with Austrian fiscal laws. 

{{< alert icon="💡" text="NP Retail application communicates with Fiskaly API that communicates then with FinanzOnline (FON), official Austrian national portal for submitting transactions. All transactions are signed by certified security signing device – PrimeSign. " />}}

To configure NP Retail for compliance with Austrian fiscal laws, follow the provided steps:

1. Navigate to the **AT Fiscalization Setup** administrative section.
2. Enable the **AT Fiscalization Enabled** toggle switch.      
   The **Fiskaly API URL** field is automatically populated as a result. 
3. Expand the **FinanzOnline Credentials** section, and populate the available fields.      
   The FinanzOnline credentials are unique for each company/legal entity. They are provided by FON when a client registers as a FinanzOnline Cash Register web service user. More information can be found in the [<ins>FinanzOnline handbook<ins>](https://finanzonline.bmf.gv.at/eLearning/BMF_Handbuch_Registrierkassen.pdf) (pages 60-63).
4. Create a POS audit profile that will be used for all POS units that are going to be used. Make sure the following configurations are applied: 
   - Select **AT_FISKALY** as the **Audit Handler**.
   - Make sure the **Audit Log Enabled** toggle switch is active. 
   - Make sure the **Allow Sales and Return in the Same Transaction** toggle switch is disabled. 







<iframe width="560" height="315" src="https://www.youtube.com/embed/3AWFsa9u_Qg?si=tti_NF2Mlh29yFkn" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>