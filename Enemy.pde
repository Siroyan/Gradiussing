class Enemy extends Character{
    Enemy(float _x, float _y){
        hp = 5;
        spd = 8;
        characterImage = loadImage("./imgs/enemy.png");
        characterImage.resize(40, 40);
        x = _x;
        y = _y;
    }

    void updatePosition(){
        y += 1;
    }
}