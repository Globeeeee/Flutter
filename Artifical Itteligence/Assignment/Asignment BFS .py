from collections import deque

def bfs_with_goal(graph, start, goal):
    visited = set()
    queue = deque([(start, [start])]) 
    loop_counter = 0

    while queue:
        loop_counter += 1
        vertex, path = queue.popleft()
        if vertex == goal:
            print("Goal reached! Path:", path)
            break  
        if vertex not in visited:
            visited.add(vertex)
            for neighbor in graph[vertex]:
                if neighbor not in visited:
                    queue.append((neighbor, path + [neighbor]))  

    print("Total loop iterations:", loop_counter)

graph = {
    'A': ['B', 'C'],
    'B': ['A', 'D', 'E'],
    'C': ['A', 'F'],
    'D': ['B'],
    'E': ['B', 'F'],
    'F': ['C', 'E']
}

print("BFS Traversal with Goal:")
bfs_with_goal(graph, 'A', 'F')
