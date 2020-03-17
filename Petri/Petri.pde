
boolean pelletsExtant;
int INF = 999999999;
int currentAgent; 
int population = 0;
PelletPopulation p;
AgentPopulation a;

void setup () {
  ellipseMode(CENTER);
  size(900, 700);
  pelletsExtant = true;
  a = new AgentPopulation(5);
  p = new PelletPopulation(50);
}


void draw () {
  background(200);
  noStroke();
  ellipse(width/2, height/2, 600, 600);
  p.grow();
  p.display();
  p.checkIfExtinct();
  if(pelletsExtant){
    a.seekNearestPellet(p);
    a.display();
    a.update();
  } else {
    a.calculate();
    p = new PelletPopulation(p.size);
    pelletsExtant = true;
  }
}

void mousePressed () {
  println(population);
}
