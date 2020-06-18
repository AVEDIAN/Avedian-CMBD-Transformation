#!/bin/bash
echo "------------------------------" 
echo "Script for v7 -> v9 conversion"
echo "------------------------------" 
echo ""

read -p "Please input the CMBD1 filename: " cmbd1
echo "------------------------------" 
echo "Starting CMBD1 " $cmbd1 " conversion... 🏁"
cmbd1_header="HosId;HosEntCod;CodPreSgs;CodSucur;Descripcion;HisCliId;EpiNum;FechaNacimiento;Sexo;FechaIngreso;FechaEgreso;ViaDeIngreso;EstadoALaSalida;DiagnosticosPOAs;FechaIntervencionQuirurgica;TiempoQuirurgico;TiempoVentilacionMecanica;MedicosTratantes;Especialidades;EventoAdversoCalificado;EpiImpFac;EpiImpCos"
dos2unix -n $cmbd1 step1.cmbd1
echo "Step 1 done"
awk '{printf "%s;%s\n", "6;3",$0}' step1.cmbd1 > step2.cmbd1
echo "Step 2 done"
awk '{printf "%s%s\n", $0, ";0;0"}' step2.cmbd1 > step3.cmbd1
echo "Step 3 done"
awk 'BEGIN{FS=OFS=";"} {$15=$15" "$16; $17=$17" "$18;$16=$18="";print $0}' step3.cmbd1 > step4.cmbd1
echo "Step 4 done"
cut -f 1-15,17,19- -d ';' step4.cmbd1 > step5.cmbd1
echo "Step 5 done"
awk 'BEGIN{FS=OFS=";"} {$19="("$19","$20"),("$21","$22"),("$23","$24"),("$25","$26"),("$27","$28"),("$29","$30"),("$31","$32"),("$33","$34"),("$35","$36"),("$37","$38"),("$39","$40"),("$41","$42"),("$43","$44"),("$45","$46"),("$47","$48"),("$49","$50")";print $0}'  step5.cmbd1 > step6.cmbd1
echo "Step 6 done"
cut -f 1-19,51- -d ';' step6.cmbd1 > step7.cmbd1
echo "Step 7 done"
sed -i 's/\([[:digit:]]\)\,\([[:digit:]]\)/\1.\2/g' step7.cmbd1 > step8.cmbd1
echo "Step 8 done"
awk 'BEGIN{FS=OFS=";"} {$21 += $25 + $29;$22 = 0; print $0}' step8.cmbd1 > step9.cmbd1
echo "Step 9 done"
awk 'BEGIN{FS=OFS=";"} {$36=$36","$38","$40;$37=$37","$39","$41; print $0}' step9.cmbd1 > step10.cmbd1
echo "Step 10 done"
cut -f 1-11,15-22,36,37,43- -d ';' step10.cmbd1 > step11.cmbd1
echo "Step 11 done"
awk 'BEGIN{FS=OFS=";"} {gsub(",\\(,\\)", "", $16); gsub(",,", ",", $20); gsub(",,", ",", $21); print $0}' step11.cmbd1 > step12.cmbd1
echo "Step 12 done"
awk 'BEGIN{FS=OFS=";"} {$22=($22=="NO"?0:$22);$22=($22=="BAJO"?1:$22);$22=($22=="MEDIO"?2:$22);$22=($22=="ALTO"?3:$22); print $0}' step12.cmbd1 > step13.cmbd1
echo "Step 13 done"
awk 'BEGIN{FS=OFS=";"} {if($10){split($10,datetime," "); split(datetime[1],date,"/"); time = datetime[2] ? datetime[2] : "00:00:00"; $10=date[3]"-"date[2]"-"date[1]" " time}; print $0}' step13.cmbd1 > step14.cmbd1
echo "Step 14 done"
awk 'BEGIN{FS=OFS=";"} {if($12){split($12,datetime," "); split(datetime[1],date,"/"); time = datetime[2] ? datetime[2] : "00:00:00"; $12=date[3]"-"date[2]"-"date[1]" " time}; print $0}' step14.cmbd1 > step15.cmbd1
echo "Step 15 done"
awk 'BEGIN{FS=OFS=";"} {if($13){split($13,datetime," "); split(datetime[1],date,"/"); time = datetime[2] ? datetime[2] : "00:00:00"; $13=date[3]"-"date[2]"-"date[1]" " time}; print $0}' step15.cmbd1 > step16.cmbd1
echo "Step 16 done"
awk 'BEGIN{FS=OFS=";"} {if($17){split($17,datetime," "); split(datetime[1],date,"/"); time = datetime[2] ? datetime[2] : "00:00:00"; $17=date[3]"-"date[2]"-"date[1]" " time}; print $0}' step16.cmbd1 > step17.cmbd1
echo "Step 17 done"
cut -f 1-7,10- -d ';' step17.cmbd1 > upload.cmbd1
sed -i "1s/.*/$cmbd1_header/" upload.cmbd1
echo "Final step done"
echo "End of CMBD1 conversion, the file for upload is: upload.cmbd1 🚀"
echo "------------------------------" 
echo ""

read -p "Please input the CMBD2 filename: " cmbd2
echo "------------------------------" 
echo "Starting CMBD2 " $cmbd2 " conversion... 🏁"
cmbd2_header="HosId;HosEntCod;HisCliId;EpiNum;FinId;FinNom;PolId;PolNom;EsAseguradorPrincipal;RegAfi;ValFac;EpiCosAsi;MonIng"
dos2unix -n $cmbd2 step1.cmbd2
echo "Step 1 done"
awk '{printf "%s;%s\n", "6;3",$0}' step1.cmbd2 > step2.cmbd2
echo "Step 2 done"
awk 'BEGIN{FS=OFS=";"} {$6 = $6 ";";print $0}' step2.cmbd2 > step3.cmbd2
echo "Step 3 done"
sed 's/\([[:digit:]]\)\,\([[:digit:]]\)/\1.\2/g' step3.cmbd2 > step4.cmbd2
echo "Step 4 done"
awk 'BEGIN{FS=OFS=";"}{$9=($9=="NO"?0:1);print $0}' step4.cmbd2 > step5.cmbd2
echo "Step 5 done"
cut -f 1-10,12- -d ';' step5.cmbd2 > step6.cmbd2
echo "Step 6 done"
awk 'BEGIN{FS=OFS=";"} {$10=($10=="CONTRIBUTIVO"?1:$10);$10=($10=="SUBSIDIADO"?2:$10);$10=($10=="REGIMEN_EXCEPCION"?3:$10);$10=($10=="PARTICULAR"?4:$10);$10=($10=="SOAT"?5:$10);$10=($10=="RIESGOS"?6:$10);$10=($10=="PREPAGA"?7:$10);$10=($10=="COMPLEMENTARIO"?8:$10);$10=($10=="PRIVADA"?9:$10);$10=($10=="OTRO"?10:$10); print $0}' step6.cmbd2 > upload.cmbd2
echo "Step 7 done"
sed -i "1s/.*/$cmbd2_header/" upload.cmbd2
echo "Final step done"
echo "End of CMBD2 conversion, the file for upload is: upload.cmbd2 🚀"
echo "------------------------------"
echo ""

read -p "Please input the CMBD3 filename: " cmbd3
echo "------------------------------" 
echo "Starting CMBD3 " $cmbd3 " conversion... 🏁"
cmbd3_header="HosId;HosEntCod;HisCliId;EpiNum;FinId;FinNom;CenCosId;CenCosNom;TipoPrestacion;CodigoPrestacion;DescripcionDePrestacion;Presentacion;Cantidad;CostoDePractica;ValorFacturado;MontoIngresadoPorPrestacion"
dos2unix -n $cmbd3 step1.cmbd3
echo "Step 1 done"
awk '{printf "%s;%s\n", "6;3",$0}' step1.cmbd3 > step2.cmbd3
echo "Step 2 done"
awk 'BEGIN{FS=OFS=";"} {$6 = $6 ";";print $0}' step2.cmbd3 > step3.cmbd3
echo "Step 3 done"
awk 'BEGIN{FS=OFS=";"} {$8 = $8 ";";print $0}' step3.cmbd3 > step4.cmbd3
echo "Step 4 done"
sed 's/\([[:digit:]]\)\,\([[:digit:]]\)/\1.\2/g' step4.cmbd3 > upload.cmbd3
echo "Step 5 done"
sed -i "1s/.*/$cmbd3_header/" upload.cmbd3
echo "Final step done"
echo "End of CMBD3 conversion, the file for upload is: upload.cmbd3 🚀"