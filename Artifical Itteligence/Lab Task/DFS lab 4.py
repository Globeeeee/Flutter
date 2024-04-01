from collections import deque

def dfs(graph, start, visited=None, counter=None):
    if visited is None:
        visited = set()
    if counter is None:
        counter = [0]
    visited.add(start)
    print(start, end=' ')
    counter[0] += 1
    for neighbor in graph[start]:
        if neighbor not in visited:
            dfs(graph, neighbor, visited, counter)

graph = {
    5: [3, 7],
    3: [2, 4],
    7: [8],
    2: [],
    4: [8],
    8: [],
}

start_node = 5
print("DFS traversal starting from node", start_node, ":")
counter = [0]
dfs(graph, start_node, counter=counter)
print("\nTotal nodes visited:", counter[0])
