class Enemy extends Character{
    Enemy(float _x, float _y){
        characterImage = loadImage("./imgs/enemy.png");
        characterImage.resize(40, 40);
        x = _x;
        y = _y;
    }
    
    void setPosition(float _x, float _y){
        x = _x;
        y = _y;
        spd = 8;
    }
    
    void updatePosition(){
        y += 1;
    }
}