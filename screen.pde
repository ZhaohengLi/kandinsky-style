class Screen {
  CD cd;
  ArrayList<Dot> dotList;
  ArrayList<Line> lineList;
  ArrayList<Grid> gridList;
  ArrayList<Curve> curveList;

  Screen() {
    this.cd = new CD(200, 200, 100);
    this.lineList = new ArrayList();
    this.lineList.add(new Line(2, 900, 200, 700));
    this.lineList.add(new Line(1, 100, 500, 440));
    this.lineList.add(new Line(3, 1100, 500, 400));
    this.dotList = new ArrayList();
    this.dotList.add(new Dot(101, 800, 200, 100));
    this.dotList.add(new Dot(102, 700, 600, 100));
    this.dotList.add(new Dot(103, 1000, 0, 300));
    this.dotList.add(new Dot(201, 800, 600, 300));
    this.gridList = new ArrayList();
    this.gridList.add(new Grid(2, 400, 200, 600));
    this.gridList.add(new Grid(1, 100, 300, 300));
    this.curveList = new ArrayList();
    this.curveList.add(new Curve(1, 500, 650, 600));
    this.curveList.add(new Curve(2, 100, 550, 400));
    
  }
  
  void update(boolean isBeat) {
    this.cd.update(isBeat);
    for (Line line : this.lineList) {
      line.update(isBeat);
    }
    for (Dot dot : this.dotList) {
      dot.update(isBeat);
    }
    for (Grid grid : this.gridList) {
      grid.update();
    }
    for (Curve curve : this.curveList) {
      curve.update();
    }
  }

  void display() {
    this.cd.display();
    for (Line line : this.lineList) {
      line.display();
    }
    for (Dot dot : this.dotList) {
      dot.display();
    }
    for (Grid grid : this.gridList) {
      grid.display();
    }
    for (Curve curve : this.curveList) {
      curve.display();
    }
  }
}
