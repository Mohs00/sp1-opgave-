PImage russia, saudi, egypt, uruguay, france, australia, peru, denmark;
PImage portugal, spain, morocco, iran, argentina, iceland, croatia, nigeria;

void setup() {
  size(900, 500);
  background(10, 30, 80); 

  russia = loadImage("data/russia.png");
  saudi = loadImage("saudi_arabia.png");
  egypt = loadImage("egypt.png");
  uruguay = loadImage("uruguay.png");
  france = loadImage("france.png");
  australia = loadImage("australia.png");
  peru = loadImage("peru.png");
  denmark = loadImage("denmark.png");
  portugal = loadImage("portugal.png");
  spain = loadImage("spain.png");
  morocco = loadImage("morocco.png");
  iran = loadImage("iran.png");
  argentina = loadImage("argentina.png");
  iceland = loadImage("iceland.png");
  croatia = loadImage("croatia.png");
  nigeria = loadImage("nigeria.png");

  // Tegn grupper med de korrekte farver
  drawGroup("GROUP A", new String[]{"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"},
            new PImage[]{russia, saudi, egypt, uruguay}, 50, 50, color(173, 216, 230)); // Lyseblå tekst

  drawGroup("GROUP B", new String[]{"FRANCE", "AUSTRALIA", "PERU", "DENMARK"},
            new PImage[]{france, australia, peru, denmark}, 500, 50, color(255, 255, 0)); // Gul tekst

  drawGroup("GROUP C", new String[]{"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"},
            new PImage[]{portugal, spain, morocco, iran}, 50, 250, color(173, 216, 230)); // Lyseblå tekst

  drawGroup("GROUP D", new String[]{"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"},
            new PImage[]{argentina, iceland, croatia, nigeria}, 500, 250, color(255, 255, 0)); // Gul tekst
}

void drawGroup(String groupName, String[] teams, PImage[] flags, int x, int y, color textColor) {
  fill(textColor); // Sætter tekstfarven afhængigt af gruppen
  textSize(20);
  textAlign(CENTER);
  text(groupName, x + 100, y - 10); 

  for (int i = 0; i < teams.length; i++) {
    fill(255); // Hvid baggrund for holdnavne
    rect(x, y + i * 40, 200, 30);
    
    
    int flagX = x + 5; 
    int flagY = y + i * 40 + 5; 
    int flagWidth = 30;
    int flagHeight = 20;
    image(flags[i], flagX, flagY, flagWidth, flagHeight);
    
    fill(0); 
    textSize(16);
    textAlign(LEFT);
    text(teams[i], x + 45, y + 22 + i * 40); 
  }
}
