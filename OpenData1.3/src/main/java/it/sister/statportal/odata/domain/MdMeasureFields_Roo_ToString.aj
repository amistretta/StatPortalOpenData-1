// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.sister.statportal.odata.domain;

import java.lang.String;

privileged aspect MdMeasureFields_Roo_ToString {
    
    public String MdMeasureFields.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Alias: ").append(getAlias()).append(", ");
        sb.append("Description: ").append(getDescription()).append(", ");
        sb.append("IdData: ").append(getIdData()).append(", ");
        sb.append("MeasureField: ").append(getMeasureField()).append(", ");
        sb.append("MeasureUnits: ").append(getMeasureUnits()).append(", ");
        sb.append("DecimalPlaces: ").append(getDecimalPlaces()).append(", ");
        sb.append("Pos: ").append(getPos()).append(", ");
        sb.append("Id: ").append(getId());
        return sb.toString();
    }
    
}