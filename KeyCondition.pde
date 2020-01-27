static class KeyCondition{
    static HashMap<Integer, Boolean> key;

    static void initialize(){
        key = new HashMap<Integer, Boolean>();

        key.put(87, false); // W
        key.put(65, false); // A
        key.put(83, false); // S
        key.put(68, false); // D
        key.put(72, false); // H
    }

    static void putCondition(int code, boolean condition){
        key.put(code, condition);
    }

    static boolean getCondition(int code){
        return key.get(code);
    }
}