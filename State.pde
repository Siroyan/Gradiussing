/* ゲームの状態の抽象クラス */
abstract class State{
    long startTime;
    float nowTime;
    float endTime;

    State(){
        startTime = millis();
    }

    State doState(){
        nowTime = (millis() - startTime) / 1000.0;
        drawState();
        return decideState();
    }

    abstract void drawState();
    abstract State decideState();
}