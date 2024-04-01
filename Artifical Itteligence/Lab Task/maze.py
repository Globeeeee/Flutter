from pyMaze import maze,COLOR,agent
from random import *
from copy import deepcopy
#Global variables
No_of_Rows=15
No_of_Columns=15
Population_size=400
population=[]


#Function to generate random population
def random_population():
    pop=[]
#For square maze and rectangular maze where number of rows less or equal to no of columns
    if (No_of_Rows<=No_of_Columns):
        for i in range(Population_size):
            pop.append(1)
            for j in range(No_of_Columns-2):
                pop.append(randint(1,No_of_Rows))
            pop.append(No_of_Rows)
            population.append(pop) 
            pop=[]
#For rectangular maze where number of rows greater than number of columns
    elif(No_of_Rows>No_of_Columns):
        for i in range(Population_size):
            pop.append(1)
            for j in range(No_of_Rows-2):
                pop.append(randint(1,No_of_Columns))
            pop.append(No_of_Columns)
            population.append(pop)
            pop=[]

#Function for mutation
def Mutation():
#For square and rectangular maze where number of rows less than or equal to number of columns
    if(No_of_Rows<=No_of_Columns):
        for i in population:
            i[randint(1,No_of_Columns-2)]=randint(1,No_of_Rows)
    elif(No_of_Rows>No_of_Columns):
        for i in population:
            i[randint(1,No_of_Rows-2)]=randint(1,No_of_Columns)

#Function for cross over
def Cross_Over():
    for i in range(0,Population_size//2,2):
        Parent_1=deepcopy(population[i])
        Parent_2=deepcopy(population[i+1])
        if(No_of_Rows<=No_of_Columns):
            cut_point=randint(1,No_of_Columns-2)
            for j in range(cut_point,No_of_Columns):
                Parent_1[j],Parent_2[j]=Parent_2[j],Parent_1[j]
        else:
            cut_point=randint(1,No_of_Rows-2)
            for j in range(cut_point,No_of_Rows):
                Parent_1[j],Parent_2[j]=Parent_2[j],Parent_1[j]
        population[(Population_size//2)+i]=Parent_1
        population[(Population_size//2)+(i+1)]=Parent_2
#Function to calculate fitness
def hurdles():
    Obstacles = 0
    for i in Path:
        for j in range(len(i)-1):
            if i[j+1][0]-i[j][0]>0 and i[j+1][1]==i[j][1]:
                if my_map[i[j]]["S"]==0:
                    Obstacles+=1
            if i[j+1][0]-i[j][0]<0 and i[j+1][1]==i[j][1]:
                if my_map[i[j]]['N']==0:
                    Obstacles+=1
            if i[j+1][1]-i[j][1]>0 and i[j+1][0]==i[j][0]:
                if my_map[i[j]]["E"]==0:
                    Obstacles+=1
            if i[j+1][1]-i[j][1]<0 and i[j+1][0]==i[j][0]:
                if my_map[i[j]]["W"]==0:
                    Obstacles+=1
        OBs.append(Obstacles)
        Obstacles=0
def count_step():
    for i in Path:
        Steps_count.append(len(i))
def no_of_turns():
    turns=0
    for i in population:
        for j in range(len(i)-1):
            if (i[j+1]!=i[j]):
                turns+=1
        Turns.append(turns)
        turns=0
def Calculate_path():
    path=[]
    for i in population:
        if No_of_Rows<=No_of_Columns:
            for j in range(No_of_Columns-1):
                if (i[j+1]-i[j])>=0:
                    for k in range (i[j],i[j+1]+1):
                        path.append((k,j+1))
                if i[j+1]-i[j]<0:
                    for k in range(i[j],i[j+1]-1,-1):
                        path.append((k,j+1))
            path.append((No_of_Rows,No_of_Columns))
        elif No_of_Rows>No_of_Columns:
            for j in range(No_of_Rows-1):
                if (i[j+1]-i[j])>=0:
                    for k in range (i[j],i[j+1]+1):
                        path.append((j+1,k))
                if i[j+1]-i[j]<0:
                    for k in range(i[j],i[j+1]-1,-1):
                        path.append((j+1,k))
            path.append((No_of_Rows,No_of_Columns))
        Path.append(path)
        path=[]
def Fitness():
    Calculate_path()
    hurdles()
    count_step()
    no_of_turns()
    w_hurdles=3
    w_turns=2
    w_steps=2
    for i in range(Population_size):
        obs_fit=1-((OBs[i]-min(OBs))/(max(OBs)-min(OBs)))
        Obs_Fitness.append(obs_fit)
        turn_fit=1-((Turns[i]-min(Turns))/(max(Turns)-min(Turns)))
        Turn_Fitness.append(turn_fit)
        step_fit=1-((Steps_count[i]-min(Steps_count))/(max(Steps_count)-min(Steps_count)))
        steps_Fitness.append(step_fit)
        fitness=100*(w_hurdles*obs_fit)*(((w_turns*turn_fit)+(w_steps*step_fit))/(w_steps*w_turns))
        Total_fitness.append(fitness)

def sorting():
    for i in range(Population_size-1):
        for j in range(i+1,Population_size):
            if(Total_fitness[j]>Total_fitness[i]):
                Total_fitness[i], Total_fitness[j]=Total_fitness[j], Total_fitness[i]
                population[i],population[j]=population[j],population[i]
    
def is_solution():
    sol=[]
    for i in range(Population_size):
        if(Total_fitness[i]>=0 and OBs[i]==0):
            sol=Path[i]
            for j in range(len(sol)-1):
                Final.update({sol[j+1]:sol[j]})
            return 1
    return 0
            
# Main Function
m=maze(No_of_Rows,No_of_Columns)
m.CreateMaze(theme=COLOR.dark,loopPercent=100)
a=agent(m,shape='arrow',footprints=True)
my_map=m.maze_map

random_population()
itr=0
while True:
    Path=[]
    Turns=[]
    OBs=[]
    Steps_count=[]
    Obs_Fitness=[]
    Turn_Fitness=[]
    steps_Fitness=[]
    Total_fitness=[]
    Final={}
    itr+=1
    Fitness()
    h=is_solution()
    if h:
        print(f"Solution found in iteration {itr}")
        m.tracePath({a:Final})
        m.run()
        break
    
    sorting()
    Cross_Over()
    Mutation()