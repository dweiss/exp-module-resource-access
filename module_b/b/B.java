package b;

import a.A;

public class B {
  public static void main(String[] args) {
    System.out.println("A.class.getResource(\"a.resource\"): " + A.class.getResource("a.resource"));
  }
}