abstract class Character{
    ArrayList<Bullet> bullets = new ArrayList<Bullet>();
    PImage characterImage;
    float x, y, spd;
    
    void shotBullet(){
        bullets.add(new Bullet(this.x, this.y));
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