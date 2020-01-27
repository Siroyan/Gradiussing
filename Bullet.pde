class Bullet{
    float x, y;
    boolean deadFlag = false;
    Bullet(float _x, float _y){
        x = _x;
        y = _y;
    }
    boolean isTouched(float pX, float pY){
        float d = sqrt((pX-x)*(pX-x) + (pY-y)*(pY-y));
        if(d < 30){
            kill();
            return true;
        }
        return false;
    }
    void kill(){
        deadFlag = true;
    }
    boolean isDead(){
        return deadFlag;
    }
    void updatePosition(int shooter){
        /* ToDo Player or Enemy? */
        if(shooter == 0){
            x += 30;
        }else{
            x -= 10;
        }
        /* 画面外に出た弾を無効化 */
        if(this.x < 0 || width < this.x) kill();
        if(this.y < 0 || height < this.y) kill();
    }
    void display(){
        ellipseMode(CENTER);
        fill(#FF0000);
        ellipse(x, y, 10, 10);
    }
}