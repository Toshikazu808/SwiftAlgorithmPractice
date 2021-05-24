import UIKit

var greeting = "Hello, playground"

// Minesweeper
// Does a mine exist in a coordinate?

func createGrid(width: Int, height: Int) -> [[Bool]] {
   var doubleArray: [[Bool]] = [[]]
   for i in 0..<width {
      for j in 0..<height {
         doubleArray[i][j] = false
      }
   }
   return doubleArray
}

func checkForMine(grid: [[Bool]], x: Int, y: Int) -> Bool {
   if x < 0 || y < 0 {
      return false
   }
   if grid.count < 1 || grid[0].count < 1 {
      return false
   }
   if x >= grid.count || y >= grid[0].count {
      return false
   }
   return grid[x][y]
}

func placeMines(grid: [[Bool]], mines: Int) -> [[Bool]] {
   let width: Int = grid[0].count
   let height: Int = grid.count
   var g = grid
   
   if mines > width * height {
      return g
   } else {
      for _ in 0..<mines {
         var xCoordinate: Int = Int.random(in: 0..<width)
         var yCoordinate: Int = Int.random(in: 0..<height)
         var hasMine = checkForMine(grid: g, x: xCoordinate, y: yCoordinate)
         
         while hasMine {
            xCoordinate = Int.random(in: 0..<width)
            yCoordinate = Int.random(in: 0..<height)
            hasMine = checkForMine(grid: g, x: xCoordinate, y: yCoordinate)
         }
         g[xCoordinate][yCoordinate] = true
      }
      return g
   }
}

func playMineSweeper() {
   let grid = createGrid(width: 10, height: 10)
   placeMines(grid: grid, mines: 3)
   let hasMine: Bool = checkForMine(grid: grid, x: 0, y: 2);
   print(hasMine)
}

