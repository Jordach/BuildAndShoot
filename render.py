class Cube(object):


def __init__(self, position, color,tree):

    self.position = position
    self.x = position[0]
    self.y = position[1]
    self.z = position[2]
    self.color = color
    self.tree = tree

num_faces = 6

vertices = [ (0.0, 0.0, 1.0),
             (1.0, 0.0, 1.0),
             (1.0, 1.0, 1.0),
             (0.0, 1.0, 1.0),
             (0.0, 0.0, 0.0),
             (1.0, 0.0, 0.0),
             (1.0, 1.0, 0.0),
             (0.0, 1.0, 0.0) ]

normals = [ (0.0, 0.0, +1.0),  # front
            (0.0, 0.0, -1.0),  # back
            (+1.0, 0.0, 0.0),  # right
            (-1.0, 0.0, 0.0),  # left 
            (0.0, +1.0, 0.0),  # top
            (0.0, -1.0, 0.0) ] # bottom

vertex_indices = [ (0, 1, 2, 3),  # front
                   (4, 5, 6, 7),  # back
                   (1, 5, 6, 2),  # right
                   (0, 4, 7, 3),  # left
                   (3, 2, 6, 7),  # top
                   (0, 1, 5, 4) ] # bottom    

def render(self):                

    glColor( self.color )

    # Adjust all the vertices so that the cube is at self.position
    vertices = [tuple(Vector3(v) + self.position) for v in self.vertices]

    # Draw all 6 faces of the cube
    glBegin(GL_QUADS)

    for face_no in xrange(self.num_faces):

        glNormal3dv( self.normals[face_no] )

        v1, v2, v3, v4 = self.vertex_indices[face_no]

        glVertex( vertices[v1] )
        glVertex( vertices[v2] )
        glVertex( vertices[v3] )
        glVertex( vertices[v4] )            

    glEnd()
def getneighbors(self):
    x = self.x
    y = self.y
    z = self.z
    return ((x,y,z+1),(x+1,y,z),(x,y+1,z),(x-1,y,z),(x,y-1,z),(x,y,z-1))

def checkneighbors(self):
    if not self.tree:
        return True
    positions = self.getneighbors()
    for pos in positions:
        result = self.tree.search(pos)
        if not result:
            return True
    return False
