class Bullet{
    float x, y;
    Bullet(float _x, float _y){
        x = _x;
        y = _y;
    }
    boolean isTouched(float pX, float pY){
        float d = sqrt((pX-x)*(pX-x) + (pY-y)*(pY-y));
        if(d < 30){
            return true;
        }
        return false;
    }
    void updatePosition(int shooter){
        /* ToDo Player or Enemy? */
        if(shooter == 0){
            x += 30;
        }else{
            x -= 10;
        }
    }
    void display(){
        ellipseMode(CENTER);
        fill(#FF0000);
        ellipse(x, y, 10, 10);
    }
}