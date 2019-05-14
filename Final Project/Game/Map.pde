class Map{
  PImage tile0;// = loadImage("tile0.png");
  PImage tile1;// = createImage(32, 32, RGB);
  PImage tile2;// = createImage(32, 32, RGB);
  PImage tile3;
  PImage tile4;
  PImage tile5;
  PImage tile6;
  PImage tile7;
  PImage tile8;
  PImage tile9;
  PImage tile10;
  PImage tile11;
  PImage tile12;
  PImage tile13;
  PImage tile14;
  PImage tile15;
  PImage tile16;
  PImage tile17;
  PImage tile18;
  PImage tile19;
  PImage tile20;
  PImage tile21;
  PImage tile22;
  PImage tile23;
  PImage tile24;
  PImage tile25;
  PImage tile26;
  PImage tile27;
  PImage tile28;
  PImage tile29;
  PImage tile30;
  PImage tile31;
  PImage tile32;
  PImage tile33;
  PImage tile34;
  PImage tile35;
  PImage tile36;
  PImage tile37;
  PImage tile38;
  PImage tile39;
  PImage tile40;
  PImage tile41;
  PImage tile42;
  PImage tile43;
  PImage tile44;
  PImage tile45;
  PImage tile46;
  PImage tile47;
  PImage tile48;
  PImage tile49;
  PImage tile50;
  PImage tile51;
  PImage tile52;
  PImage tile53;
  PImage tile54;
  PImage tile55;
  PImage tile56;
  PImage tile57;
  PImage tile58;
  PImage tile59;
  PImage tile60;
  PImage tile61;
  PImage tile62;
  PImage tile63;
  PImage tile64;
  PImage tile65;
  PImage tile66;
  PImage tile67;
  PImage tile68;
  PImage tile69;



  PImage[] TileArray = {tile0, tile1, tile2, tile3, tile4, tile5, tile6, tile7, tile8, tile9, tile10,
                        tile11, tile12, tile13, tile14, tile15, tile16, tile17, tile18, tile19, tile20,
                        tile21, tile23, tile24, tile25, tile26, tile27, tile28, tile29, tile30, tile31,
                        tile32, tile33, tile34, tile35, tile36, tile37, tile38, tile39, tile40, tile41,
                        tile42, tile43, tile44, tile45, tile46, tile47, tile48, tile49, tile50, tile51,
                        tile52, tile53, tile54, tile55, tile56, tile57, tile58, tile59, tile60, tile61};
  
  
  int[] tiles = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                 0, 0, 5, 8, 5, 8, 5, 61, 0, 0,
                 4, 4, 6, 9, 6, 9, 6, 9, 4, 4,
                 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
                 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,
                 2, 60, 2, 60, 2, 60, 2, 60, 2, 60,
                 3, 60, 3, 60, 3, 60, 3, 60, 3, 60,
                 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,
                 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,
                 60, 60, 60, 60, 60, 60, 60, 52, 60, 60};
  
  void setTiles(int[] map){
    tiles = map;
  }
  
  int[] getTiles(){
    return tiles;
      
  }
  
  int getXY(int x, int y){
    int i = (y / 32) * 10 + (x / 32);
    return tiles[i];
  }
  
}