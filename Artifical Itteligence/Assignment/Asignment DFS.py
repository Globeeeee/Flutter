def dfs_with_goal(graph, start, goal):
    visited = set()
    stack = [(start, [start])]  
    loop_counter = 0

    while stack:
        loop_counter += 1
        vertex, path = stack.pop()
        if vertex == goal:
            print("Goal reached! Path:", path)
            break 
        if vertex not in visited:
            visited.add(vertex)
            for neighbor in reversed(graph[vertex]): 
                if neighbor not in visited:
                    stack.append((neighbor, path + [neighbor]))  

    print("Total loop iterations:", loop_counter)

graph = {
    'A': ['B', 'C'],
    'B': ['A', 'D', 'E'],
    'C': ['A', 'F'],
    'D': ['B'],
    'E': ['B', 'F'],
    'F': ['C', 'E']
}

print("DFS Traversal with Goal:")
dfs_with_goal(graph, 'A', 'F')
