class GameState extends State{
    PImage bgimg;
    int frameCnt = 0;
    Player p;
    ArrayList<Enemy> enemies = new ArrayList<Enemy>();
    GameState(){
        /* bgimg */
        bgimg = loadImage("./imgs/space.jpg");
        bgimg.resize(0, height);

        p = new Player();
        p.setPosition(200, height / 2);

        for(int i = 0; i < 5; i++){
          enemies.add(new Enemy(800 - (50 * i), 400 - (50 * i)));
        }
    }
    void drawState(){
        /* bgimg */
        imageMode(CENTER);
        image(bgimg, width/2, height/2);
        
        /* Heading */ 
        textSize(60);
        fill(0, 0, 100);
        colorMode(HSB, 360, 100, 100);
        text("Stage 1", width / 2, height / 2 - 300);
               
        /* Enemies */
        for(Enemy e:enemies){
            if(frameCnt % 60 == 0){
                e.shotBullet();
            }
            /* Enemy Bullets */
            for(Bullet b:e.bullets){
                if(!b.isTouched(p.getX(), p.getY())){
                    b.updatePosition(1);
                }
                b.display();
            }

            e.updateBullets();
            e.updatePosition();
            e.display();
        }

        /* PlayerBullets */
        if(KeyCondition.getCondition('H')){
            if(frameCnt % 5 == 0){
                p.shotBullet();
            }
        }
        for(Bullet b:p.bullets){
            b.updatePosition(0);
            b.display();
        }

        p.updateBullets();
        p.updatePosition();
        p.display();
        
        frameCnt++;
    }
    State decideState(){
        return this;
    }
}