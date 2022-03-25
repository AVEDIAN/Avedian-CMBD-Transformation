#README
-------

- More info: https://docs.google.com/spreadsheets/d/1Xz5dS7Dj7_F42MyyDlRLL9pN8F3JmaLynStQf--kJyY/edit
- Upload here <cmbd_x_wh_zzz> CSV semicolon files. 
- The file should always have prefix cmbd_x_wh_ (example: cmbd_1_wh_20201000).

##Schemas
---------

CMBD1 Format
Organization_Identifier;Organization_PartOf;Encounter_Hospitalization_Origin_PartOf;Encounter_Hospitalization_Origin;Encounter_Hospitalization_Origin_Name;Encounter_Subject_Patient_Identifier;Encounter_Identifier;Encounter_Subject_Patient_Birthdate;Encounter_Subject_Patient_Gender;Encounter_Period_Start;Encounter_Period_End;Encounter_ServiceType;Encounter_DischargeDisposition;Encounter_Diagnosis_Condition_Claim_Diagnosis_OnAdmission;Encounter_ReasonReference_Procedure_PerformedDateTime_Surgical;Encounter_ReasonReference_Procedure_Age_Surgical;Encounter_ReasonReference_Procedure_Age_Surgical_Ventilation;Encounter_EpisodeOfCare_CareManager_Team;Encounter_EpisodeOfCare_CareManager_Team_Qualification_Code;Encounter_EpisodeOfCare_Diagnosis_Condition_Severity;Claim_Total;Claim_Items_UnitPrice;Encounter_Class
text;1;text;text;text;text;text;1970-01-01T00:00:00;text;1970-01-01T00:00:00;1970-01-01T00:00:00;1;1;text;1970-01-01T00:00:00;1.5;1.5;text;text;1;1.5;1.5;text

CMBD2 Format
Organization_Identifier;Organization_PartOf;Claim_Patient_Identifier;Claim_Encounter_Identifier;Claim_Payee_Party;Claim_Payee_Party_Name;Claim_Insurance_Coverage_SubscriberId;Claim_Insurance_Coverage_Class_Name;Claim_Use;Claim_Insurance_Coverage_Type;Claim_Item_Net;Claim_Item_UnitPrice;Claim_Response_Item_Adjudication_Value
text;1;text;text;text;text;text;text;1;1;1.5;1.5;1.5

CMBD3 Format 
Organization_Identifier;Organization_PartOf;Claim_Patient_Identifier;Claim_Encounter_Identifier;Claim_Payee_Party;Claim_Payee_Party_Name;Claim_Item_Revenue;Claim_Item_Revenue_Text;Claim_Item_ProductOrService_Coding;Claim_Item_ProductOrService;Claim_Item_ProductOrService_Text;Claim_Item_Category;Claim_Item_Quantity;Claim_Item_UnitPrice;Claim_Item_Net;Claim_Response_Item_Adjudication_Value
text;1;text;text;text;text;text;text;text;text;text;text;1.5;1.5;1.5;1.5

CMBD4 Format
Organization_Identifier;Organization_PartOf;Encounter_Subject_Patient_Identifier;Encounter_Identifier;Encounter_Diagnosis_Note;Encounter_Procedure_Note;Encounter_EpisodeOfCare_Text;Encounter_EpisodeOfCare_Format
text;1;text;text;text;text;text;text

##Examples
----------

CMBD1 Example
Organization_Identifier;Organization_PartOf;Encounter_Hospitalization_Origin_PartOf;Encounter_Hospitalization_Origin;Encounter_Hospitalization_Origin_Name;Encounter_Subject_Patient_Identifier;Encounter_Identifier;Encounter_Subject_Patient_Birthdate;Encounter_Subject_Patient_Gender;Encounter_Period_Start;Encounter_Period_End;Encounter_ServiceType;Encounter_DischargeDisposition;Encounter_Diagnosis_Condition_Claim_Diagnosis_OnAdmission;Encounter_ReasonReference_Procedure_PerformedDateTime_Surgical;Encounter_ReasonReference_Procedure_Age_Surgical;Encounter_ReasonReference_Procedure_Age_Surgical_Ventilation;Encounter_EpisodeOfCare_CareManager_Team;Encounter_EpisodeOfCare_CareManager_Team_Qualification_Code;Encounter_EpisodeOfCare_Diagnosis_Condition_Severity;Claim_Total;Claim_Items_UnitPrice;Encounter_Class
1;1;110011864201;01;HUM;534095;534095-3;1937-12-09 10:10:15;F;2014-12-31 1a:58:00;2015-01-04 12:32:00;1;1;(I500,),(I500,);;0;0;jgil,jgil;MEDICINA INTERNA,MEDICINA INTERNA;0;0;0;0
1;1;110011864201;01;HUM;105437;105437-9;1967-06-26 00:10:02;M;2014-12-29 15:30:00;2015-01-15 19:01:00;1;1;(C833,),(C833,);;0;0;puzuriaga,julparr;MEDICO GENERAL URGENCIAS,MEDICINA GENERAL;0;0;0;0
1;1;110011864201;01;HUM;916513;916513-1;1987-01-01 00:00:00;M;2014-12-30 16:11:00;2015-01-01 14:36:00;1;1;(Y450,),(Y450,);;0;0;ycano,jhquintero;MEDICO GENERAL URGENCIAS,MEDICO GENERAL URGENCIAS;0;0;0;0
1;1;110011864201;01;HUM;132143;132143-5;1963-07-20 00:00:00;F;2014-12-12 06:45:00;2015-02-15 14:03:00;1;1;(K85X,),(K85X,);;0;0;cmancera,cmancera;MEDICINA GENERAL,MEDICINA GENERAL;0;0;0;0

CMBD2 Example
Organization_Identifier;Organization_PartOf;Claim_Patient_Identifier;Claim_Encounter_Identifier;Claim_Payee_Party;Claim_Payee_Party_Name;Claim_Insurance_Coverage_SubscriberId;Claim_Insurance_Coverage_Class_Name;Claim_Use;Claim_Insurance_Coverage_Type;Claim_Item_Net;Claim_Item_UnitPrice;Claim_Response_Item_Adjudication_Value
1;1;138722;138722-12;26;EPS SANITAS SA;;;1;1;27947617;19325891.242;a
1;1;136758;136758-8;02;NUEVA EPS SA;;;1;1;4278672;2132324.55;0
1;1;194751;194751-7;26;EPS SANITAS SA;;;1;1;3404426;2685047.92;b
1;1;15934;15934-10;02;NUEVA EPS SA;;;1;1;10668449;6949715.61;0

CMBD3 Example
Organization_Identifier;Organization_PartOf;Claim_Patient_Identifier;Claim_Encounter_Identifier;Claim_Payee_Party;Claim_Payee_Party_Name;Claim_Item_Revenue;Claim_Item_Revenue_Text;Claim_Item_ProductOrService_Coding;Claim_Item_ProductOrService;Claim_Item_ProductOrService_Text;Claim_Item_Category;Claim_Item_Quantity;Claim_Item_UnitPrice;Claim_Item_Net;Claim_Response_Item_Adjudication_Value
1;1;138722;138722-12;26;EPS SANITAS SA;0170;FAR1;FARMACIA;21696;EQUIPO DE INFUSION SIMPLE CON SITIO DE  INYECCION REF: VL ST01-ST02;;11;122892;289586;0
1;1;138722;138722-12;26;EPS SANITAS SA;0170;0451;FARMACIA;902209;HEMOGRAMA III  HEMOGLOBINA HEMATOCRITO RECUENTO DE ERITROCITOS INDICES ERITROCITARIOS LEUCOGRAMA RECUENTO DE PLAQUETAS INDICES PLAQUETARIOS Y MORFOLOGIA ELECTRONICA  AUTOMATIZADO;;14;112154;200998;0
1;1;138722;138722-12;26;EPS SANITAS SA;0170;FAR1;FARMACIA;10850;LACTATO DE RINGER 500ML BOLSA;0170;81;88597;355266;0
1;1;138722;138722-12;26;EPS SANITAS SA;0170;FAR1;FARMACIA;10086;AMLODIPINO 5MG TABLETA;;89;979;9879;0

CMBD4 Example
Organization_Identifier;Organization_PartOf;Encounter_Subject_Patient_Identifier;Encounter_Identifier;Encounter_Diagnosis_Note;Encounter_Procedure_Note;Encounter_EpisodeOfCare_Text;Encounter_EpisodeOfCare_Format
1;1;1036264276;3897173;fisura,dolor de cuello,diarrea,fiebre;;Texto del historial completo;TXT
1;1;1020404773;3901875;calambre,sangrado,resfrio;Procedimiento 1,Procedimiento 2,procedimiento 3;Texto del historial completo 2;TXT
1;1;1023656544;3907042;desgarro,fisura de columna;Procedimiento 3,Procedimiento 4,Procedimiento 5;Texto del historial completo 3;TXT