#README WSS
-----------

- More info: https://docs.google.com/spreadsheets/d/1q_A7E8PapufAmSmBiNRyJ_8LZwbgWCHQ/edit?usp=sharing&ouid=101885581723254841170&rtpof=true&sd=true
- Upload here <cmbd_x_wss_zzz> CSV semicolon files. 
- The file should always have prefix cmbd_x_wss_ (example: cmbd_1_wss_20201000).

##Schemas
---------

CMBD1 Format
Organization_Identifier;Organization_Name;Claim_Patient_Identifier;Claim_Insurance_Coverage_Period;Claim_Patient_Name;Claim_Patient_Family;Claim_Patient_Identifier_Tax;Claim_Patient_Identifier_NN;Claim_Patient_BirthDate;Claim_Patient_Gender;Claim_Patient_Address_State;Claim_Patient_Address_State_Text;Claim_Patient_Address_City;Claim_Patient_Address_City_Text;Claim_Insurance_Coverage_SubscriberId;Claim_Insurance_Coverage_Class_Name;Claim_Total;Claim_Encounter_Diagnosis_Condition_CM;Claim_Encounter_ReasonReference_Identifier;Claim_Encounter_ReasonReference_Identifier_Type
1;text;text;text;text;text;text;text;1970-01-01 00:00:00;text;text;text;text;text;text;text;1.5;text;text;text

CMBD2 Format
Organization_Identifier;Organization_Name;Claim_Patient_Identifier;Claim_Encounter_Identifier;Claim_Insurance_PreAuthRef;Invoice_Identifier;Claim_Encounter_Class;Claim_Provider_Identifier;Claim_Provider_Name;Claim_CareTeam_Provider_Identifier_Responsible;Claim_CareTeam_Provider_Name_Responsible;Claim_CareTeam_Provider_Identifier_Prescribing;Claim_CareTeam_Provider_Name_Prescribing;Claim_Encounter_Period_Start;Claim_Encounter_Period_End;Claim_Accident_Type;Claim_Encounter_ServiceType;Claim_Encounter_DischargeDisposition;Claim_Diagnosis_OnAdmission;Claim_Procedure_PerformedDateTime_Surgical;Claim_Procedure_Age_Surgical;Claim_Procedure_Age_Surgical_Ventilation;Claim_Item_Net;Claim_Items_UnitPrice;Claim_Insurance_ClaimResponse_Item_Adjudication_Value
1;text;text;text;text;text;1;text;text;text;text;text;text;1970-01-01 00:00:00;1970-01-01 00:00:00;1;1;1;text;1970-01-01 00:00:00;1.5;1.5;1.5;1.5;1.5

CMBD3 Format 
Organization_Identifier;Organization_Name;Claim_Patient_Identifier;Claim_Encounter_Identifier;CoverageEligibilityResponse_Outcome;Claim_Insurance_PreAuthRef;Claim_Item_ProductOrService;Claim_Item_ProductOrService_Text;Claim_Item_ServicedDate;Claim_Item_Quantity;Claim_Item_UnitPrice;Claim_Item_Net;Claim_Insurance_ClaimResponse_Item_Adjudication_Value
1;text;text;text;text;text;text;text;1970-01-01 00:00:00;1.5;1.5;1.5;1.5

CMBD4 Format
Organization_Identifier;Organization_Name;Encounter_Subject_Patient_Identifier;Encounter_Identifier;Encounter_Diagnosis_Note;Encounter_Procedure_Note;EpisodeOfCare_Text;EpisodeOfCare_Format
1;text;text;text;text;text;text;text

##Examples
----------

CMBD1 Example
Organization_Identifier;Organization_Name;Claim_Patient_Identifier;Claim_Insurance_Coverage_Period;Claim_Patient_Name;Claim_Patient_Family;Claim_Patient_Identifier_Tax;Claim_Patient_Identifier;Claim_Patient_BirthDate;Claim_Patient_Gender;Claim_Patient_Address_State;Claim_Patient_Address_State_Text;Claim_Patient_Address_City;Claim_Patient_Address_City_Text;Claim_Insurance_Coverage_SubscriberId;Claim_Insurance_Coverage_Class_Name;Claim_Total;Claim_Encounter_Diagnosis_Condition_Claim_Diagnosis_OnAdmission;Claim_Encounter_ReasonReference_Identifier;Claim_Encounter_ReasonReference_Identifier_Type
1;APROSS;2-00935XXX-00-8;1999-08;XXX;IRIARTXXX;27009351XXX;00935XXX;1931-06-30 00:00:00;F;X;CORDOBA;10460;CORDOBA;1;A.PRO.S.S;16100.28;;;
1;APROSS;2-00940XXX-00-9;2018-08;XXX;PORTO XXX;27009406XXX;00940XXX;1931-10-08 00:00:00;F;X;CORDOBA;10460;CORDOBA;1;A.PRO.S.S;11168.58;C50;1;ONCOLOGICOS
1;APROSS;2-00940XXX-00-9;2018-08;XXX;PORTO XXX;27009406XXX;00940XXX;1931-10-08 00:00:00;F;X;CORDOBA;10460;CORDOBA;1;A.PRO.S.S;11168.58;C50,R52;22;TRATAMIENTO DEL DOLOR
1;APROSS;2-00940XXX-00-9;1978-10;XXX;PORTO XXX;27009406XXX;00940XXX;1931-10-08 00:00:00;F;X;CORDOBA;10460;CORDOBA;1;A.PRO.S.S;11168.58;C50;1;ONCOLOGICOS
1;APROSS;2-00940XXX-00-9;1978-10;XXX;PORTO XXX;27009406XXX;00940XXX;1931-10-08 00:00:00;F;X;CORDOBA;10460;CORDOBA;1;A.PRO.S.S;11168.58;C50,R52;22;TRATAMIENTO DEL DOLOR

CMBD2 Example
Organization_Identifier;Organization_Name;Claim_Patient_Identifier;Claim_Encounter_Identifier;Claim_Insurance_PreAuthRef;Invoice_Identifier;Claim_Encounter_Class;Claim_Provider_Identifier;Claim_Provider_Name;Claim_CareTeam_Provider_Identifier_Responsible;Claim_CareTeam_Provider_Name_Responsible;Claim_CareTeam_Provider_Identifier_Prescribing;Claim_CareTeam_Provider_Name_Prescribing;Claim_Encounter_Period_Start;Claim_Encounter_Period_End;Claim_Accident_Type;Claim_Encounter_ServiceType;Claim_Encounter_DischargeDisposition;Claim_Diagnosis_OnAdmission;Claim_Procedure_PerformedDateTime_Surgical;Claim_Procedure_Age_Surgical;Claim_Procedure_Age_Surgical_Ventilation;Claim_Item_Net;Claim_Items_UnitPrice;Claim_Insurance_ClaimResponse_Item_Adjudication_Value
1;APROSS;2-10822XXX-00-0;1560377526XXX;1560377526;;3;903021965;SANCHEZ;20417;LAVARDAXXX;20417;LAVARXXX;2018-07-24 00:00:00;2018-07-24 00:00:00;1;6;9;;;0.00;0.00;126.68060;126.68060;0.00
1;APROSS;2-26382XXX-02-9;1760395417XXX;1760395417;;3;903000001;FARMACIA APROSS;32219;CORTES XXX;32219;CORTEXXX;2018-06-27 00:00:00;2018-06-27 00:00:00;1;8;9;;;0.00;0.00;74287.05000;74287.05000;0.00
1;APROSS;1-06423XXX-01-1;1760392059XXX;1760392059;;3;903213578;FERRI;32219;CORTES XXX;32219;CORTEXXX;2018-07-26 00:00:00;2018-07-26 00:00:00;1;6;9;;;0.00;0.00;169.22640;169.22640;0.00
1;APROSS;2-17043XXX-00-6;1560365724XXX;1560365724;;3;903219610;CENTRO MEDICO;24592;GONZALEXXX;24592;GONZAXXX;2018-07-02 00:00:00;2018-07-02 00:00:00;1;6;9;;;0.00;0.00;250.85200;250.85200;0.00
1;APROSS;2-04412XXX-00-6;1460293198XXX;1460293198;;3;903009163;CORDOBA VELEZ;24911;AMADO JXXX;24911;AMADOXXX;2018-07-04 00:00:00;2018-07-04 00:00:00;1;6;9;;;0.00;0.00;250.85200;250.85200;0.00

CMBD3 Example
Organization_Identifier;Organization_Name;Claim_Patient_Identifier;Claim_Encounter_Identifier;CoverageEligibilityResponse_Outcome;Claim_Insurance_PreAuthRef;Claim_Item_ProductOrService;Claim_Item_ProductOrService_Text;Claim_Item_ServicedDate;Claim_Item_Quantity;Claim_Item_UnitPrice;Claim_Item_Net;Claim_Insurance_ClaimResponse_Item_Adjudication_Value
1;APROSS;2-05897XXX-03-5;40000551XXX;A;40000551;5234696;SINLIP 10 mg comp.rec.x 30;2018-09-17 00:00:00;1;507.30;152.19;355.11
1;APROSS;2-05897XXX-03-5;40000551XXX;A;40000551;5489266;LERCADIP 20 mg comp.rec.x 30;2018-09-17 00:00:00;1;701.03;210.31;490.72
1;APROSS;2-07773XXX-00-5;40000328XXX;A;40000328;4950531;XALACOM gts.oft.x 2.5 ml;2018-09-17 00:00:00;1;456.79;137.04;319.75
1;APROSS;2-07773XXX-00-5;40000328XXX;A;40000328;4112311;;2018-09-17 00:00:00;1;533.25;266.63;266.62
1;APROSS;2-07773XXX-00-5;40000820XXX;A;40000820;4101682;LOPLAC 50 mg comp.x 30;2018-09-17 00:00:00;1;465.45;232.73;232.72

CMBD4 Example
Organization_Identifier;Organization_Name;Encounter_Subject_Patient_Identifier;Encounter_Identifier;Encounter_Diagnosis_Note;Encounter_Procedure_Note;EpisodeOfCare_Text;EpisodeOfCare_Format
1;1;1036264XXX;3897173;fisura,dolor de cuello,diarrea,fiebre;;Texto del historial completo;TXT
1;1;1020404XXX;3901875;calambre,sangrado,resfrio;Procedimiento 1,Procedimiento 2,procedimiento 3;Texto del historial completo 2;TXT
1;1;1023656XXX;3907042;desgarro,fisura de columna;Procedimiento 3,Procedimiento 4,Procedimiento 5;Texto del historial completo 3;TXT