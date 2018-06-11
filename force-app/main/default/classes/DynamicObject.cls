public class DynamicObject {
    private Map<String, Object> fields;
    
    public DynamicObject() {
        fields = new Map<String, Object>();

        System.debug('test');
    }

    public DynamicObject put(String fieldname, String fieldvalue) {
        if (fields.containsKey(fieldname)) {
            System.debug('Overwriting value for field <' + fieldname + '>');
        } 

        fields.put(fieldname, fieldvalue);
        return this;
    }

    public DynamicObject remove(String fieldname) {
        if (fields.containsKey(fieldname)) {
            fields.remove(fieldname);
        } else {
            System.debug('No such field <' + fieldname + '> to remove');
        }
        return this;
    }
}