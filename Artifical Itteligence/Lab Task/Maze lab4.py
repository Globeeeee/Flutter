from collections import deque
import random

class Maze:
    def __init__(self, rows, cols):
        self.rows = rows
        self.cols = cols
        self.grid = [[0 for _ in range(cols)] for _ in range(rows)]
        self.start = (0, 0)
        self.end = (rows-1, cols-1)
        self.generate()

    def generate(self):
        for row in range(self.rows):
            for col in range(self.cols):
                if random.random() < 0.3:
                    self.grid[row][col] = 1

    def is_valid_move(self, row, col):
        return 0 <= row < self.rows and 0 <= col < self.cols and self.grid[row][col] == 0

    def bfs(self):
        queue = deque([self.start])
        visited = set([self.start])
        parents = {}
        while queue:
            current = queue.popleft()
            if current == self.end:
                path = []
                while current in parents:
                    path.append(current)
                    current = parents[current]
                path.append(self.start)
                path.reverse()
                return path
            row, col = current
            neighbors = [(row-1, col), (row+1, col), (row, col-1), (row, col+1)]
            for neighbor in neighbors:
                n_row, n_col = neighbor
                if self.is_valid_move(n_row, n_col) and neighbor not in visited:
                    queue.append(neighbor)
                    visited.add(neighbor)
                    parents[neighbor] = current
        return None

    def display(self, path=None):
        for row in range(self.rows):
            for col in range(self.cols):
                if (row, col) == self.start:
                    print('S', end=' ')
                elif (row, col) == self.end:
                    print('E', end=' ')
                elif path and (row, col) in path:
                    print('.', end=' ')
                elif self.grid[row][col] == 1:
                    print('#', end=' ')
                else:
                    print(' ', end=' ')
            print()

    def display_with_visualization(self, path=None):
        print("Maze:")
        for row in range(self.rows):
            for col in range(self.cols):
                if (row, col) == self.start:
                    print('S', end=' ')
                elif (row, col) == self.end:
                    print('E', end=' ')
                elif path and (row, col) in path:
                    print('.', end=' ')
                elif self.grid[row][col] == 1:
                    print('#', end=' ')
                else:
                    print(' ', end=' ')
            print()
        print()

if __name__ == "__main__":
    maze = Maze(10, 10)
    maze.display_with_visualization()
    print("\nFinding path...")
    path = maze.bfs()
    if path:
        print("Path found!")
        maze.display_with_visualization(path)
    else:
        print("No path found!")
