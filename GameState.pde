class GameState extends State{
    PImage bgimg;
    int frameCnt = 0;
    Player player;
    ArrayList<Enemy> enemies = new ArrayList<Enemy>();
    GameState(){
        /* bgimg */
        bgimg = loadImage("./imgs/space.jpg");
        bgimg.resize(0, height);

        player = new Player(200, height / 2);
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
            for(Bullet enemyBullet:e.bullets){
                if(enemyBullet.isTouched(player)){
                    player.hit();
                    enemyBullet.kill();
                }
                enemyBullet.updatePosition(1);
                enemyBullet.display();
            }

            e.updateBullets();
            e.updateDeadOrAlive();
            e.updatePosition();
            e.display();
        }

        /* PlayerBullets */
        if(KeyCondition.getCondition('H')){
            if(frameCnt % 5 == 0){
                player.shotBullet();
            }
        }
        for(Bullet playerBullet:player.bullets){
            for(Enemy enemy:enemies){
                if(playerBullet.isTouched(enemy)){
                    enemy.hit();
                    playerBullet.kill();
                }
            }
            playerBullet.updatePosition(0);
            playerBullet.display();
        }

        player.updateBullets();
        player.updateDeadOrAlive();
        player.updatePosition();
        player.display();
        
        frameCnt++;
    }
    State decideState(){
        return this;
    }
}