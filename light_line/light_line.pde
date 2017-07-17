void setup() {
    size(700, 700);
    /*
     * 背景色を指定する
     * 引数が1つの場合、rgbで色を指定でき
     * background(140, 140, 140)と同じ指定になる
     */
    background(140);
}

void draw() {
    /*
     * colorMode()でProcessingがカラーデータを解釈する方法を変更する
     * 今回、第１引数にHSBを指定しているため
     * 第２引数には色相、第3引数には彩度、第4引数には明度が指定される
     */
    colorMode(HSB, 700, 100, 700);

    /*
     * mouseX、mouseYにはマウスの現在の座標が格納されている
     * pmouseX、pmouseYには現在のフレームの前のフレームのマウスの座標が格納されている
     * mousePressed()やmouseMoved()のようなマウスイベントの内部で参照されると
     * 異なる値を持つことがあある
     */
    println(mouseX + " " + mouseY + " " + pmouseX + " " + pmouseY); 

    if (mousePressed) {
        /*
         * 前のフレームの座標から現在のフレームの座標まで線を引く
         */
        line(pmouseX, pmouseY, mouseX, mouseY);
        stroke(mouseX, 80, mouseY);
        fill(mouseY * .5, 23, mouseX * .5);
    }

    strokeWeight(abs(mouseX - pmouseX));
}

/*
 * mousePressed()はマウスボタンが押される度に呼び出される
 * またmouseButton変数を使用して、どのボタンが押されたかなどが判別できる
 */
void mousePressed() {
    background(140);
}