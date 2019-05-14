import javax.swing.JOptionPane;

class Player{
  PImage front;
  PImage back;
  PImage right;
  PImage left;
  PImage current;
  String direction = "DOWN";
  int x = 288;
  int y = 154;
  
  void move(){
    if (keyPressed == true && key == CODED){
    if (keyCode == UP){
      direction = "UP";
      if (y + 6 > 0)
      if (map.getXY(x, y - 26) == 38 || map.getXY(x, y - 26) == 41 || map.getXY(x, y - 26) == 52 || map.getXY(x, y - 26) == 60 || map.getXY(x, y - 26) == 68 || map.getXY(x, y - 26) == 69)
        y -= 32;
    }
    else if (keyCode == DOWN){
      direction = "DOWN";
      if (y + 6 < height - 32)
      if (map.getXY(x, y + 38) == 38 || map.getXY(x, y + 38) == 41 || map.getXY(x, y + 38) == 52 || map.getXY(x, y + 38) == 60 || map.getXY(x, y + 38) == 68 || map.getXY(x, y + 38) == 69)
        y += 32;
    }
    else if (keyCode == LEFT){
      direction = "LEFT";
      if (x > 0)
      if (map.getXY(x - 32, y + 6) == 38 || map.getXY(x - 32, y + 6) == 41 || map.getXY(x - 32, y + 6) == 52 || map.getXY(x - 32, y + 6) == 60 || map.getXY(x - 32, y + 6) == 68 || map.getXY(x - 32, y + 6) == 69)
        x -= 32;
    }
    else if (keyCode == RIGHT){
      direction = "RIGHT";
      if (x < width - 32)
      if (map.getXY(x + 32, y + 6) == 38 || map.getXY(x + 32, y + 6) == 41 || map.getXY(x + 32, y + 6) == 52 || map.getXY(x + 32, y + 6) == 60 || map.getXY(x + 32, y + 6) == 68 || map.getXY(x + 32, y + 6) == 69)
        x += 32;
    }
    }
    if (keyPressed == true){
      if (key == 'c' || key == 'C'){
       keys.enqueue(keys.dequeue());
       System.out.println("Switched keys.");
      }
      if (key == ESC) exit();
      if (key == ENTER){
      doThings();
      }
    }
  }
  
  void swap(){
    disappear(map);
    move();
    display();
  }
  
  void disappear(Map map){
    PImage c = pickTile(map, x, y + 6);
    image(c, x, y + 6);
    c = pickTile(map, x, y - 26);
    image(c, x, y - 26);
  }
  
  void display(){
    if (direction == "UP")
      current = back;
    if (direction == "DOWN")
      current = front;
    if (direction == "LEFT")
      current = left;
    if (direction == "RIGHT")
      current = right;
    image(current, x, y);
    delay(50);
  }
  
  void setXY(int ecks, int dee){
    x = ecks;
    y = dee;
  }
  
  void interact(){
    ChangeMap(map,x,y);
    disappear(map);
    display();
  }
  void doThings(){
    System.out.println();
    if (x == 128 && y == 218 && direction == "UP" && map.getTiles() == map2)
      if (events == 0){
        System.out.println("You look up the student records; there appear to be quite a few troublemakers in this grade...\nChecking desks would probably be a wise decision.");
        events++;
      }
      else System.out.println("Maybe try the fourth desk from the left in one classroom, and then the leftmost desk in the front row in the other?");
    if (x == 64 && y == 218 && direction == "UP" && map.getTiles() == map2){
      if (keys.front() == 0){
      JOptionPane.showMessageDialog(frame, "YOU FOUND THE KEY! EVERYONE GETS AN A+!!!!!", "The End", JOptionPane.INFORMATION_MESSAGE);
      exit();
      }
      else if (keys.front() == 2)
      System.out.println("Your face turns red and you quickly shut the drawer that the key opened. Let's never speak of it again.");
      else
      System.out.println("It's locked!! We really need to get in here, but this must not be the right key!");
    }
    if (x == 288 && y == 282 && direction == "UP" && map.getTiles() == map4){
      System.out.println("Now's not the time for the bathroom, you have a class to teach!\nPhew, it also REEKS in here...");
    }
    if (x == 96 && y == 218 && direction == "UP" && map.getTiles() == map1 && events == 1){
      System.out.println("Some poor kid left their keys in here! OR are they your keys? Only one way to find out!");
      keys.enqueue(1);
      events++;
    }
    if (x >= 64 && x <= 224 && y == 122 && direction == "UP" && map.getTiles() == map5){
      System.out.println("There's some good chalk over there! You pocket some.");
    }
    if (x == 32 && y == 218 && direction == "UP" && map.getTiles() == map5 && events == 2){
      System.out.println("You found a key in the desk! It could be yours, but you've already forgotten what it looked like... Better try it!");
      keys.enqueue(1);
      events++;
    }
    if (x == 288 && y == 282 && direction == "UP" && map.getTiles() == map5 && events == 3){
      System.out.println("There's a balled up piece of paper in the desk:\n'I hid the key under a tile in the bathroom in front of the left urinal. Come get it after school.' It's initialed JC. What could this mean?");
      System.out.println("You also find a key in the desk, which is definitely one of yours, but you don't recall what it goes to.");
      keys.enqueue(2);
      events++;
    }
    if (x == 160 && y == 154 && map.getTiles() == map4)
      if (events != 4) System.out.println("The tile is somewhat unstable under your feet. You ought to point this out to someone.");
      else{
      System.out.println("The tile rattles...It's loose! You lift up the tile and find a key hidden underneath.\nThis is your key! Better head back to the filing cabinet and get the key ready!");
      keys.enqueue(0);
    }
  }
  
   
void ChangeMap(Map map, int x, int y){
    int[] current = map.getTiles();
    if (current == map3){
      if (pickTile(map,x,y + 6) == map.tile41){ 
        map.setTiles(map1);
        setXY(192,282);
      }
      if (pickTile(map,x,y + 6) == map.tile69){
        map.setTiles(map5);
        setXY(192,282);
      }
      if (pickTile(map,x,y + 6) == map.tile52){
        map.setTiles(map2);
        setXY(192,282);
      }
      if (pickTile(map,x,y + 6) == map.tile68){
        map.setTiles(map4);
        setXY(32, 282);
      }
    }  
    if (current == map1 && pickTile(map,x,y + 6) == map.tile52){
       map.setTiles(map3);
       setXY(64,90);
    }
    if (current == map2 && pickTile(map,x,y + 6) ==  map.tile52){
       map.setTiles(map3);
       setXY(96,218);
    }
    if (current == map4 && pickTile(map,x,y + 6) == map.tile69){
       map.setTiles(map3);   
       setXY(160,218);
    }
    if (current == map5 && pickTile(map,x,y + 6) == map.tile52){
      map.setTiles(map3);
      setXY(192,90);
    }
    drawMap(map);
  }

  
  
 
  
}