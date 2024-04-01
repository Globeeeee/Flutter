from collections import deque

def bfs(graph, start):
    visited = set()
    queue = deque([start])
    visited.add(start)
    counter = 0

    while queue:
        vertex = queue.popleft()
        print(vertex, end=' ')
        counter += 1

        for neighbor in graph[vertex]:
            if neighbor not in visited:
                queue.append(neighbor)
                visited.add(neighbor)

    return counter

graph = {
    5: [3, 7],
    3: [2, 4],
    7: [8],
    2: [],
    4: [8],
    8: [],
}

start_node = 5
print("BFS traversal starting from node", start_node, ":")
total_visited = bfs(graph, start_node)
print("\nTotal nodes visited:", total_visited)
