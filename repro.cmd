@echo off

javac module_a\*.java module_a\a\*.java
javac module_b\*.java module_b\b\*.java --module-path . 

echo Classpath mode:
java -classpath module_a;module_b b.B

echo Module mode:
java --module-path . --module module_b/b.B

echo Module mode with forced opens:
java --module-path . --add-opens module_a/a=module_b --module module_b/b.B
