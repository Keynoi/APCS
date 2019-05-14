import java.util.Queue;

int[] map1 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                 0, 0, 13, 15, 15, 15, 15, 61, 0, 0,
                 4, 4, 14, 16, 16, 16, 16, 17, 4, 4,
                 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
                 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,
                 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
                 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
                 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,
                 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,
                 60, 60, 60, 60, 60, 60, 60, 52, 60, 60};
 
  int[] map2 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                 0, 0, 5, 8, 5, 8, 5, 8, 0, 0,
                 4, 4, 6, 9, 6, 9, 6, 9, 4, 4,
                 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
                 60, 18, 21, 24, 26, 29, 32, 34, 60, 60,
                 60, 19, 22, 22, 27, 30, 33, 62, 60, 60,
                 60, 20, 23, 25, 28, 31, 60, 60, 60, 60,
                 60, 60, 60, 3, 60, 60, 60, 60, 60, 60,
                 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,
                 60, 60, 60, 60, 60, 60, 60, 52, 60, 60};
  
                 
                 
                 
  int[] map3 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                 60, 60, 41, 60, 60, 60, 69, 60, 60, 60,
                 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,
                 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,
                 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,
                 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,
                 60, 60, 52, 60, 60, 60, 68, 60, 60, 60,
                 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
                 
  int[] map4 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                 39, 53, 54, 55, 39, 39, 39, 39, 39, 39,
                 39, 40, 40, 40, 39, 44, 44, 39, 39, 39,
                 39, 65, 66, 67, 39, 64, 64, 39, 39, 39,
                 38, 38, 38, 38, 38, 38, 38, 38, 46, 63,
                 38, 38, 38, 38, 38, 38, 38, 38, 47, 43,
                 41, 41, 41, 41, 38, 38, 38, 38, 48, 50,
                 41, 41, 41, 41, 38, 38, 38, 38, 49, 51,
                 41, 41, 69, 41, 38, 38, 38, 38, 38, 38};
                 
  int[] map5 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                 0, 0, 13, 15, 15, 15, 15, 61, 0, 0,
                 4, 4, 14, 16, 16, 16, 16, 17, 4, 4,
                 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
                 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,
                 60, 2, 60, 60, 2, 2, 2, 2, 60, 2,
                 60, 3, 60, 60, 3, 3, 3, 3, 60, 3,
                 2, 60, 2, 60, 2, 2, 60, 2, 60, 2,
                 3, 60, 3, 60, 3, 3, 60, 3, 60, 3,
                 60, 60, 60, 60, 60, 60, 60, 52, 60, 60};                

Player platek = new Player();
Map map = new Map();

int events = 0;                
                 
                 
PImage pickTile(Map map, int x, int y){
  int z = map.getXY(x, y);
  if (z == 0)
    return map.tile0;
  else if (z == 1)
    return map.tile1;
  else if (z == 2)
    return map.tile2;
  else if (z == 3)
    return map.tile3;
  else if (z == 4)
    return map.tile4;
  else if (z == 5)  
    return map.tile5;
  else if (z == 6)
    return map.tile6;
  else if (z == 7)
    return map.tile7;
  else if (z == 8)
    return map.tile8;
  else if (z == 9)
    return map.tile9;
  else if (z == 10)
    return map.tile10;
  else if (z == 11)  
    return map.tile11;
  else if (z == 12)
    return map.tile12;
  else if (z == 13)
    return map.tile13;
  else if (z == 14)
    return map.tile14;
  else if (z == 15)
    return map.tile15;
  else if (z == 16)
    return map.tile16;
  else if (z == 17)
    return map.tile17;
  else if (z == 18)  
    return map.tile18;
  else if (z == 19)
    return map.tile19;
  else if (z == 20)
    return map.tile20;
  else if (z == 21)
    return map.tile21;
  else if (z == 22)
    return map.tile22;
  else if (z == 23)
    return map.tile23;
  else if (z == 24)
    return map.tile24;
  else if (z == 25)  
    return map.tile25;
  else if (z == 26)
    return map.tile26;
  else if (z == 27)
    return map.tile27;
  else if (z == 28)
    return map.tile28;
  else if (z == 29)
    return map.tile29;
  else if (z == 30)
    return map.tile30;
  else if (z == 31)
    return map.tile31;
  else if (z == 32)  
    return map.tile32;
  else if (z == 33)
    return map.tile33;
  else if (z == 34)
    return map.tile34;
  else if (z == 35)
    return map.tile35;
  else if (z == 36)
    return map.tile36;
  else if (z == 37)
    return map.tile37;
  else if (z == 38)
    return map.tile38;
  else if (z == 39)  
    return map.tile39;
  else if (z == 40)
    return map.tile40;
  else if (z == 41)
    return map.tile41;
  else if (z == 42)
    return map.tile42;
  else if (z == 43)
    return map.tile43;
  else if (z == 44)
    return map.tile44;
  else if (z == 45)
    return map.tile45;
  else if (z == 46)  
    return map.tile46;
  else if (z == 47)
    return map.tile47;
  else if (z == 48)
    return map.tile48;
  else if (z == 49)
    return map.tile49;
  else if (z == 50)
    return map.tile50;
  else if (z == 51)
    return map.tile51;
  else if (z == 52)
    return map.tile52;
  else if (z == 53)
    return map.tile53;
  else if (z == 54)
    return map.tile54;
  else if (z == 55)
    return map.tile55;
  else if (z == 56)
    return map.tile56;
  else if (z == 57)
    return map.tile57;
  else if (z == 58)
    return map.tile58;
  else if (z == 59)
    return map.tile59;
  else if (z == 60)  
    return map.tile60;
  else if (z == 61)
    return map.tile61;
  else if (z == 62)
    return map.tile62;
  else if (z == 63)
    return map.tile63;
  else if (z == 64)
    return map.tile64;
  else if (z == 65)
    return map.tile65;
  else if (z == 66)
    return map.tile66;
  else if (z == 67)
    return map.tile67;
  else if (z == 68)
    return map.tile68;
  else return map.tile69;
}




public interface Queue<E>{
    
    public void enqueue(E element);
    public E dequeue() throws EmptyQueueException;
    public E front() throws EmptyQueueException;
    public int size();
    public boolean isEmpty();
}


public class EmptyQueueException extends RuntimeException{
  public EmptyQueueException(String error){
    super(error);
  }
  
}


public class FullQueueException extends RuntimeException{
  public FullQueueException(String error){
    super(error);
  }
  
}


Queue<Integer> keys = new ItemQueue<Integer>();

class ItemQueue<E> implements Queue<E>{
  
  private E[] _queue;
  private int _size, _front, _rear;
  private final static int CAPACITY = 7;
  
  public ItemQueue(int capacity){
    _queue = (E[]) new Object[capacity];
    _size = _rear = 0;
    _front = -1;
    
  }
  
  public ItemQueue(){
    this(CAPACITY);
  }
  
  public int size(){
    return _size;
  }
  
  public boolean isEmpty(){
    return size() == 0;
  }
  
  public E front() throws EmptyQueueException{
    if (isEmpty())
      throw new EmptyQueueException("Queue is empty.");
    return _queue[_front];
  }
  
  public E dequeue() throws EmptyQueueException{
    E ans = front();
    _queue[_front] = null;
    _size--;
    if (!isEmpty())
      _front = (1 + _front) % _queue.length;
    else{
      _front = -1;
      _rear = 0;
    }
    return ans;
  }
  
  public void enqueue(E value) throws FullQueueException{
    if (size() == _queue.length)
      throw new FullQueueException("Full stack.");
    _queue[_rear] = value;
    _size++;
    if (size() == 1) _front = _rear;
    _rear = (_rear + 1) % _queue.length;
  }
  
  public String toString(){
    String ans ="[";
    if (size() > 0) ans += _queue[_front];
    if (size() > 1) 
      for (int i = (_front + 1) % _queue.length; i != _rear; i = (i+1) % _queue.length)
      ans += ", " + _queue[i];
    ans += "]";
    return ans;
  }
  
  
  public void cycle() throws EmptyQueueException{
    enqueue(dequeue());
  }
 
  
}


void drawMap(Map map){
  for (int i = 0; i < map.tiles.length; i++){
    int x = (i % 10) * 32;
    int y = (i / 10) * 32;
    PImage img = (pickTile(map, x, y));
    image(img, x, y);
  }
}


void loadImages(){
  map.tile0 = loadImage("tile0.png");
  map.tile1 = loadImage("tile1.png");
  map.tile2 = loadImage("tile2.png");
  map.tile3 = loadImage("tile3.png");
  map.tile4 = loadImage("tile4.png");
  map.tile5 = loadImage("tile5.png");
  map.tile6 = loadImage("tile6.png");   
  map.tile7 = loadImage("tile7.png");
  map.tile8 = loadImage("tile8.png");
  map.tile9 = loadImage("tile9.png");
  map.tile10 = loadImage("tile10.png");
  map.tile11 = loadImage("tile11.png");
  map.tile12 = loadImage("tile12.png");
  map.tile13 = loadImage("tile13.png");
  map.tile14 = loadImage("tile14.png");
  map.tile15 = loadImage("tile15.png");
  map.tile16 = loadImage("tile16.png");
  map.tile17 = loadImage("tile17.png");
  map.tile18 = loadImage("tile18.png");
  map.tile19 = loadImage("tile19.png");
  map.tile20 = loadImage("tile20.png");
  map.tile21 = loadImage("tile21.png");
  map.tile22 = loadImage("tile22.png");
  map.tile23 = loadImage("tile23.png");
  map.tile24 = loadImage("tile24.png");
  map.tile25 = loadImage("tile25.png");
  map.tile26 = loadImage("tile26.png");
  map.tile27 = loadImage("tile27.png");
  map.tile28 = loadImage("tile28.png");
  map.tile29 = loadImage("tile29.png");
  map.tile30 = loadImage("tile30.png");   
  map.tile31 = loadImage("tile31.png");
  map.tile32 = loadImage("tile32.png");
  map.tile33 = loadImage("tile33.png");
  map.tile34 = loadImage("tile34.png");
  map.tile35 = loadImage("tile35.png");
  map.tile36 = loadImage("tile36.png");
  map.tile37 = loadImage("tile37.png");
  map.tile38 = loadImage("tile38.png");
  map.tile39 = loadImage("tile39.png");
  map.tile40 = loadImage("tile40.png");
  map.tile41 = loadImage("tile41.png");
  map.tile42 = loadImage("tile42.png");   
  map.tile43 = loadImage("tile43.png");
  map.tile44 = loadImage("tile44.png");
  map.tile45 = loadImage("tile45.png");
  map.tile46 = loadImage("tile46.png");
  map.tile47 = loadImage("tile47.png");
  map.tile48 = loadImage("tile48.png");
  map.tile49 = loadImage("tile49.png");
  map.tile50 = loadImage("tile50.png");
  map.tile51 = loadImage("tile51.png");
  map.tile52 = loadImage("tile52.png");
  map.tile53 = loadImage("tile53.png");
  map.tile54 = loadImage("tile54.png");
  map.tile55 = loadImage("tile55.png");
  map.tile56 = loadImage("tile56.png");
  map.tile57 = loadImage("tile57.png");
  map.tile58 = loadImage("tile58.png");
  map.tile59 = loadImage("tile59.png");
  map.tile60 = loadImage("tile60.png");
  map.tile61 = loadImage("tile61.png");
  map.tile62 = loadImage("tile62.png");
  map.tile63 = loadImage("tile63.png");
  map.tile64 = loadImage("tile64.png");
  map.tile65 = loadImage("tile65.png");
  map.tile66 = loadImage("tile66.png");
  map.tile67 = loadImage("tile67.png");
  map.tile68 = loadImage("tile68.png");
  map.tile69 = loadImage("tile69.png");
  
  platek.front = loadImage("platek.png");
  platek.back = loadImage("platekback.png");
  platek.right = loadImage("platekright.png");
  platek.left = loadImage("platekleft.png");
  platek.current = platek.front;
}



void setup(){
  size (320, 320);
  String s = "Mr. Platek, you've lost the key to your filing cabinet filled with grades!\nUse the arrows keys to move and the enter key to inspect objects! Press C to cycle through keys.";
  System.out.println(s);
  loadImages();
  keys.enqueue(1);
  map.setTiles(map3);
  drawMap(map);
}
  
void draw(){
  platek.swap();
  platek.interact();
}