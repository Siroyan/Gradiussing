State state;
void setup(){
    /* screen */
    smooth();
    frameRate(60);
    size(1200, 800);
    state = new GameState();
    KeyCondition.initialize();
}

void draw(){
    state = state.doState();
}

void keyPressed(){
    KeyCondition.putCondition(keyCode, true);
}

void keyReleased(){
    KeyCondition.putCondition(keyCode, false);
}