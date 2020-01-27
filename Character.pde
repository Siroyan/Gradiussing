abstract class Character{
    ArrayList<Bullet> bullets = new ArrayList<Bullet>();
    ArrayList<Bullet> tmpBullets = new ArrayList<Bullet>();

    PImage characterImage;
    float x, y, spd;
    
    void shotBullet(){
        bullets.add(new Bullet(this.x, this.y));
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

    void display(){
        image(characterImage, x, y);
    }
    
    float getX(){
        return x;
    }
    float getY(){
        return y;
    }
}