class Player extends Character{
    Player(){
        characterImage = loadImage("./imgs/player.png");
        characterImage.resize(80, 80);
    }
    
    void setPosition(float _x, float _y){
        x = _x;
        y = _y;
        spd = 8;
    }
    
    void updatePosition(){
        int newKey = key;
        if(KeyCondition.getCondition('W')){
            y -= spd;
        }
        if(KeyCondition.getCondition('A')){
            x -= spd;
        }
        if(KeyCondition.getCondition('S')){
            y += spd;
        }
        if(KeyCondition.getCondition('D')){
            x += spd;
        }
    }
}