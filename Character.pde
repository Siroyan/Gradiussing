abstract class Character{
    int hp;
    boolean deadFlag = false;
    ArrayList<Bullet> bullets = new ArrayList<Bullet>();

    PImage characterImage;
    float x, y, spd;
    
    void shotBullet(){
        if(!isDead()){
            bullets.add(new Bullet(this.x, this.y));
        }
    }

    void updateBullets(){
        ArrayList<Bullet> tmpBullets = new ArrayList<Bullet>();
        for(Bullet b:bullets){
            if(!b.isDead()){
                tmpBullets.add(b);
            }
        }
        bullets = tmpBullets;
    }

    void hit(){
        hp--;
    }

    void updateDeadOrAlive(){
        if(this.hp == 0){
            deadFlag = true;
        }
    }

    boolean isDead(){
        return deadFlag;
    }

    void display(){
        if(!this.isDead()){
            image(characterImage, x, y);
        }
    }
    
    float getX(){
        return x;
    }
    float getY(){
        return y;
    }
}