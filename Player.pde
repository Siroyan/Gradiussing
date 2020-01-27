class Player extends Character{
    Player(float _x, float _y){
        hp = 10;
        spd = 8;
        characterImage = loadImage("./imgs/player.png");
        characterImage.resize(80, 80);
        x = _x;
        y = _y;
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