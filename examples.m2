
-- Examples

load "top.m2"
needsPackage "Matroids" 
load "graphUtils.m2"

-- input
G1 = graph({{0,1},{1,2},{2,3},{3,0}}) -- square (NOT SOLVABLE: it does not satisfy the necessary condition on #edges)
G2 = graph({{0,1},{1,2},{2,0},{1,3},{3,4},{4,1}}) -- two triangles with common node (NOT SOLVABLE: it is not biconnected) 
G3 = graph({{0,1},{1,2},{2,3},{3,4},{4,0}}) -- pentagon (NOT SOLVABLE)


-- UNKNOWN graphs with 8 nodes (they are finite solvable but not solvable with moves)
G4=graph({{0,1},{0,2},{0,7},{1,3},{1,4},{2,3},{3,5},{4,5},{4,6},{5,6},{6,7}}) -- SOLVABLE -- Fig5 left (Trager paper)
G5=graph({{0,1},{0,6},{0,7},{1,3},{1,5},{2,3},{2,4},{2,5},{2,7},{4,5},{4,6}}) -- SOLVABLE
G6=graph({{0,1},{0,6},{0,7},{1,3},{2,3},{2,5},{2,7},{3,4},{4,5},{4,6},{5,7}}) -- SOLVABLE
G7=graph({{0,1},{0,6},{0,7},{1,3},{1,4},{2,3},{2,5},{2,7},{4,5},{4,6},{5,7}}) -- SOLVABLE
G8=graph({{0,1},{0,5},{0,6},{0,7},{1,3},{2,3},{2,4},{2,7},{3,4},{4,5},{4,6}}) -- SOLVABLE

-- UNKNOWN graphs with 9 nodes (they are finite solvable but not solvable with moves)
G9=graph({{0,8},{0,1},{0,4},{0,7},{1,2},{2,3},{2,8},{2,6},{3,4},{5,6},{4,5},{6,7}}) -- SOLVABLE
G10=graph({{0,8},{0,1},{0,5},{0,7},{1,2},{2,3},{2,6},{3,8},{3,4},{5,6},{4,5},{6,7}}) -- SOLVABLE
G11=graph({{0,8},{0,1},{0,7},{1,2},{2,3},{2,5},{2,7},{3,8},{3,4},{5,6},{4,5},{6,7}}) -- SOLVABLE
G12=graph({{0,8},{0,1},{0,7},{1,2},{2,3},{2,5},{3,7},{3,8},{3,4},{5,6},{4,5},{6,7}}) -- SOLVABLE
G13=graph({{0,8},{0,1},{0,7},{1,2},{1,5},{2,3},{3,8},{3,4},{5,6},{4,7},{4,5},{6,7}}) -- NOT SOLVABLE (0,2)
G14=graph({{0,8},{0,1},{0,7},{1,2},{1,5},{2,3},{2,6},{3,4},{5,6},{4,8},{4,5},{6,7}}) -- NOT SOLVABLE (0,2)
G15=graph({{0,8},{0,1},{0,7},{1,2},{1,5},{2,3},{3,7},{3,4},{5,6},{4,8},{4,5},{6,7}}) -- NOT SOLVABLE (0,2)
G16=graph({{0,8},{0,1},{0,7},{1,2},{2,5},{2,3},{2,7},{3,4},{5,6},{4,8},{4,5},{6,7}}) -- SOLVABLE
G17=graph({{0,8},{0,1},{0,3},{0,7},{1,2},{2,3},{2,6},{3,4},{5,6},{4,8},{4,5},{6,7}}) -- SOLVABLE
G18=graph({{0,8},{0,1},{0,7},{1,2},{2,3},{2,6},{2,8},{3,4},{5,6},{4,8},{4,5},{6,7}}) -- SOLVABLE
G19=graph({{0,8},{0,1},{0,7},{1,2},{1,6},{2,3},{2,8},{3,4},{5,6},{4,8},{4,5},{6,7}}) -- NOT SOLVABLE (0,2)
G20=graph({{0,8},{0,1},{0,7},{1,2},{2,3},{2,8},{3,4},{5,6},{4,8},{4,5},{6,8},{6,7}}) -- SOLVABLE
G21=graph({{0,8},{0,1},{0,3},{1,2},{1,6},{2,3},{3,4},{5,6},{4,8},{4,5},{7,8},{6,7}}) -- NOT SOLVABLE (0,2)
G22=graph({{0,8},{0,1},{0,4},{1,2},{1,5},{2,3},{2,7},{3,4},{5,6},{4,5},{7,8},{6,7}}) -- NOT SOLVABLE (0,2)
G23=graph({{0,8},{0,1},{0,4},{1,2},{2,3},{2,6},{3,4},{5,6},{4,5},{4,7},{7,8},{6,7}}) -- SOLVABLE
G24=graph({{0,8},{0,1},{0,5},{0,7},{1,2},{2,3},{2,4},{3,8},{3,6},{4,5},{4,6},{6,7}}) -- NOT SOLVABLE (0,2)
G25=graph({{0,8},{0,1},{0,4},{1,2},{2,3},{2,7},{3,8},{3,4},{4,5},{4,6},{5,7},{6,7}}) -- SOLVABLE
G26=graph({{0,8},{0,1},{0,7},{1,3},{1,6},{2,3},{2,4},{2,8},{3,5},{4,5},{4,6},{6,7}}) -- NOT SOLVABLE (0,2)
G27=graph({{0,8},{0,1},{0,7},{1,3},{1,6},{2,3},{2,4},{2,8},{3,5},{4,5},{5,6},{6,7}}) -- NOT SOLVABLE (0,2)
G28=graph({{0,8},{0,1},{0,4},{0,7},{1,6},{2,3},{2,4},{2,8},{3,6},{4,5},{5,6},{6,7}}) -- SOLVABLE
G29=graph({{0,8},{0,1},{0,5},{0,6},{1,2},{2,3},{2,4},{2,8},{3,6},{4,5},{5,7},{6,7}}) -- SOLVABLE
G30=graph({{0,8},{0,1},{1,2},{1,5},{2,3},{2,4},{3,8},{3,6},{4,5},{5,7},{6,7},{7,8}}) -- NOT SOLVABLE (0,2) 

-- graphs with 10 nodes
G31 = graph({{0,1},{0,8},{0,2},{0,5},{1,3},{1,5},{2,9},{2,3},{2,7},{4,5},{4,6},{6,8},{6,9},{6,7}}) -- SOLVABLE
G32 = graph({{0,1},{0,8},{0,7},{0,5},{1,3},{1,5},{2,9},{2,3},{2,7},{4,5},{4,6},{6,8},{6,9},{6,7}}) -- SOLVABLE
G33 = graph({{0,1},{0,8},{0,5},{1,5},{1,3},{1,7},{2,9},{2,3},{2,7},{4,5},{4,6},{6,8},{6,9},{6,7}}) -- SOLVABLE
G34 = graph({{0,1},{0,8},{0,9},{0,7},{1,3},{2,8},{2,9},{2,3},{2,4},{4,5},{4,6},{6,3},{6,5},{6,7}}) -- SOLVABLE 
G35 = graph({{0,1},{0,8},{0,9},{0,4},{1,3},{2,7},{2,9},{2,3},{3,8},{3,6},{4,5},{4,8},{6,5},{6,7}}) -- SOLVABLE 
G36 = graph({{0,1},{0,8},{0,9},{1,2},{1,3},{1,6},{2,4},{2,3},{2,9},{2,7},{4,5},{4,8},{6,5},{6,7}}) -- SOLVABLE 
G37 = graph({{0,1},{0,8},{0,5},{1,4},{1,3},{1,7},{2,8},{2,3},{2,9},{2,7},{4,5},{4,6},{8,9},{6,7}}) -- SOLVABLE 
G38 = graph({{0,1},{0,8},{0,4},{0,7},{1,3},{2,9},{2,3},{7,3},{4,9},{5,6},{4,5},{4,6},{8,9},{6,7}}) -- SOLVABLE 

