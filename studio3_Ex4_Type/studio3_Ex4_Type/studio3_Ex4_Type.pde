PFont font;
int fontSize;

// holds the lines
String[] lineArray;
// This array will be used to split up the words on a line.
ArrayList<String> wordList;

int index = 0;

void setup() {
  
  
  // Enable anti-aliasing
  smooth();
  
  
  size(800, 800);
  wordList = new ArrayList<String>();
  
  // Load the text file into lineArray
  lineArray = loadStrings("sourceText.txt");
  
  // for each line in the array
  for (String line : lineArray) {
    // split the line
    String[] words = line.split(" ");
    // for each word in word
    for (String word : words) {
      wordList.add(word);
    }
  }
  
  // Print the wordList to check if words are added correctly
  println("Word List:");
  println(wordList);
}

void draw() {
  
  textAlign(CENTER);
  
  fontSize = 16;
  font = createFont("LetterGothicStd.otf", 16);
   fill(0);
   
   int y = 30; // Starting y-coordinate for text
  for (String word : wordList) {
    text(word, 50, y); // Draw each word at x=50, y=y
    y += fontSize + 5; // Move to the next line
  }
}
