// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.sister.statportal.odata.domain;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import it.sister.statportal.odata.domain.MdDataFilesPK;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect MdDataFilesPK_Roo_Json {
    
    public String MdDataFilesPK.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static MdDataFilesPK MdDataFilesPK.fromJsonToMdDataFilesPK(String json) {
        return new JSONDeserializer<MdDataFilesPK>().use(null, MdDataFilesPK.class).deserialize(json);
    }
    
    public static String MdDataFilesPK.toJsonArray(Collection<MdDataFilesPK> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<MdDataFilesPK> MdDataFilesPK.fromJsonArrayToMdDataFilesPKs(String json) {
        return new JSONDeserializer<List<MdDataFilesPK>>().use(null, ArrayList.class).use("values", MdDataFilesPK.class).deserialize(json);
    }
    
}