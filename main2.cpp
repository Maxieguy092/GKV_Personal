#include <GL/glut.h>
#include <cmath>

float xRotation = -90.0f;
float yRotation = 0.0f;
float zRotation = 90.0f;

// Fixed camera positions (no longer controllable)
float cameraX = 0.0f;
float cameraY = 2.0f;
float cameraZ = 4.0f;
float centerX = 0.0f;
float centerY = 0.0f;
float centerZ = 0.0f;
float upX = 0.0f;
float upY = 1.0f;
float upZ = 0.0f;
float rotateSpeed = 2.0f;

// Add projection mode variable
int projectionMode = 1; // 1 for perspective (default), 0 for orthographic
int orthoView = 0;      // 0 = default, 1 = top, 2 = front, 3 = right, 4 = left, 5 = back

const float SAUCER_RADIUS = 1.0f;
const float SAUCER_HEIGHT = 0.15f;
const float NECK_LENGTH = 0.7f;
const float NECK_RADIUS = 0.15f;
const float HULL_LENGTH = 1.5f;
const float HULL_RADIUS = 0.3f;
const float NACELLE_LENGTH = 1.4f;
const float NACELLE_RADIUS = 0.1f;
const float NACELLE_PYLON_HEIGHT = 0.4f;
const float NACELLE_PYLON_WIDTH = 0.1f;
const float NACELLE_PYLON_LENGTH = 0.1f;

// Orthographic dimensions
const float ORTHO_WIDTH = 10.0f;
const float ORTHO_HEIGHT = 10.0f;

void drawCylinder(float radius, float height, int slices, int stacks) {
    GLUquadricObj *quadric = gluNewQuadric();
    gluQuadricDrawStyle(quadric, GLU_FILL);
    gluQuadricNormals(quadric, GLU_SMOOTH);
    gluCylinder(quadric, radius, radius, height, slices, stacks);
    gluDeleteQuadric(quadric);
}

void drawDisc(float innerRadius, float outerRadius, int slices, int rings) {
    GLUquadricObj *quadric = gluNewQuadric();
    gluQuadricDrawStyle(quadric, GLU_FILL);
    gluQuadricNormals(quadric, GLU_SMOOTH);
    gluDisk(quadric, innerRadius, outerRadius, slices, rings);
    gluDeleteQuadric(quadric);
}

void drawSphere(float radius, int slices, int stacks) {
    GLUquadricObj *quadric = gluNewQuadric();
    gluQuadricDrawStyle(quadric, GLU_FILL);
    gluQuadricNormals(quadric, GLU_SMOOTH);
    gluSphere(quadric, radius, slices, stacks);
    gluDeleteQuadric(quadric);
}

void drawEnterprise() {
    glPushMatrix();
    
        glRotatef(xRotation, 1.0f, 0.0f, 0.0f);
        glRotatef(yRotation, 0.0f, 1.0f, 0.0f);
        glRotatef(zRotation, 0.0f, 0.0f, 1.0f);
        
        glColor3f(0.8f, 0.8f, 0.8f);
        glPushMatrix();
        glTranslatef(0.0f, 0.0f, -SAUCER_HEIGHT/2);
        drawCylinder(SAUCER_RADIUS, SAUCER_HEIGHT, 32, 2);

        glPushMatrix();
        glTranslatef(0.0f, 0.0f, SAUCER_HEIGHT);
        drawDisc(0.0f, SAUCER_RADIUS, 32, 2);
        glPopMatrix();
        
        drawDisc(0.0f, SAUCER_RADIUS, 32, 2);
        
        glColor3f(0.7f, 0.7f, 0.7f);
            glPushMatrix();
            glTranslatef(0.0f, 0.0f, SAUCER_HEIGHT);
            drawSphere(SAUCER_HEIGHT, 16, 16);
            glPopMatrix();
        glPopMatrix();
        
        glColor3f(0.75f, 0.75f, 0.75f);
        glPushMatrix();
            glTranslatef(0.0f, -0.2f, -NECK_LENGTH);
            glRotatef(-45.0f, 1.0f, 0.0f, 0.0f);
            drawCylinder(NECK_RADIUS, NECK_LENGTH, 16, 2);
            glPushMatrix();
                glTranslatef(0.0f, 0.0f, 0.7f);
                // glRotatef(15.0f, 1.0f, 0.0f, 0.0f);
                drawCylinder(NECK_RADIUS, NECK_LENGTH - 0.45f, 16, 2);
            glPopMatrix();
        glPopMatrix();
        
        //neck
        glColor3f(0.7f, 0.7f, 0.7f);
        glPushMatrix();
        glTranslatef(0.0f, 0.03f, (-NECK_LENGTH - HULL_LENGTH/2) + 0.6f);
        glRotatef(90.0f, 1.0f, 0.0f, 0.0f);
        drawCylinder(HULL_RADIUS, HULL_LENGTH, 24, 4);
        
        glPushMatrix();
            glTranslatef(0.0f, 0.0f, HULL_LENGTH);
            drawDisc(0.0f, HULL_RADIUS, 24, 2);
        glPopMatrix();
        
            drawDisc(0.0f, HULL_RADIUS, 24, 2); 
        glPopMatrix();
        
        // glColor3f(0.65f, 0.65f, 0.65f);
        // glPushMatrix();
        // glTranslatef((-HULL_RADIUS - NACELLE_PYLON_WIDTH/2) - 0.3f, 0.0f, -NECK_LENGTH - HULL_LENGTH/4);
        
        // glPushMatrix();
        // glScalef(NACELLE_PYLON_LENGTH, NACELLE_PYLON_WIDTH, NACELLE_PYLON_HEIGHT);
        // glutSolidCube(1.0f);
        // glPopMatrix();
        
        // glPushMatrix();
        // glTranslatef((2 * HULL_RADIUS + NACELLE_PYLON_WIDTH), 0.0f, 0.0f);
        // glScalef(NACELLE_PYLON_LENGTH, NACELLE_PYLON_WIDTH, NACELLE_PYLON_HEIGHT);
        // glutSolidCube(1.0f);
        // glPopMatrix();
        // glPopMatrix();
        
        glColor3f(0.6f, 0.6f, 0.8f);
        
        glPushMatrix();
        glTranslatef((-HULL_RADIUS - NACELLE_PYLON_WIDTH/2) - 0.3f, -0.5f, -NECK_LENGTH - HULL_LENGTH/4 - (NACELLE_PYLON_HEIGHT/2) + 0.86f);
        glRotatef(90.0f, 1.0f, 0.0f, 0.0f);
        drawCylinder(NACELLE_RADIUS, NACELLE_LENGTH, 20, 4);
        
        glColor3f(0.9f, 0.2f, 0.2f);
        glPushMatrix();
        glTranslatef(0.0f, 0.0f, NACELLE_LENGTH);
        drawDisc(0.0f, NACELLE_RADIUS, 20, 2);
        glPopMatrix();
        
        glColor3f(0.7f, 0.7f, 0.7f);
        drawDisc(0.0f, NACELLE_RADIUS, 20, 2);

        glPushMatrix();
            glTranslatef(0.2f, -0.2f, 0.1f);
            glRotatef(90.0f, 1.0f, 0.0f, 0.0f);
            glRotatef(40.0f, 0.0f, 1.0f, 0.0f);
            glScalef(0.1f, 0.1f, 0.6f);
            glutSolidCube(1.0f);
        glPopMatrix();

        glPopMatrix();
        
        glPushMatrix();
        glTranslatef((-HULL_RADIUS - NACELLE_PYLON_WIDTH/2) + 1.0f, -0.5f, -NECK_LENGTH - HULL_LENGTH/4 - (NACELLE_PYLON_HEIGHT/2) + 0.86f);
        glRotatef(90.0f, 1.0f, 0.0f, 0.0f);
        glColor3f(0.6f, 0.6f, 0.8f);
        drawCylinder(NACELLE_RADIUS, NACELLE_LENGTH, 20, 4);
        
        glColor3f(0.9f, 0.2f, 0.2f);
        glPushMatrix();
        glTranslatef(0.0f, 0.0f, NACELLE_LENGTH);
        drawDisc(0.0f, NACELLE_RADIUS, 20, 2);

        glPushMatrix();
            glTranslatef(-0.2f, -0.2f, -1.3f);
            glRotatef(90.0f, 1.0f, 0.0f, 0.0f);
            glRotatef(40.0f, 0.0f, -1.0f, 0.0f);
            glScalef(0.1f, 0.1f, 0.6f);
            glutSolidCube(1.0f);
        glPopMatrix();

        glPopMatrix();
        
        glColor3f(0.7f, 0.7f, 0.7f);
        drawDisc(0.0f, NACELLE_RADIUS, 20, 2);
        glPopMatrix();
        
    glPopMatrix();
}

// Set up the camera based on orthographic view type
void setupOrthoCamera() {
    switch (orthoView) {
        case 1: // Top view (fixed)
            cameraX = 0.0f;
            cameraY = 10.0f;
            cameraZ = 0.0f;
            centerX = 0.0f;
            centerY = 0.0f;
            centerZ = 0.0f;
            // Important fix: set up vector for top view
            upX = 0.0f;
            upY = 0.0f;
            upZ = -1.0f;
            break;
        case 2: // Front view
            cameraX = 0.0f;
            cameraY = 0.0f;
            cameraZ = 10.0f;
            centerX = 0.0f;
            centerY = 0.0f;
            centerZ = 0.0f;
            upX = 0.0f;
            upY = 1.0f;
            upZ = 0.0f;
            break;
        case 3: // Right view
            cameraX = 10.0f;
            cameraY = 0.0f;
            cameraZ = 0.0f;
            centerX = 0.0f;
            centerY = 0.0f;
            centerZ = 0.0f;
            upX = 0.0f;
            upY = 1.0f;
            upZ = 0.0f;
            break;
        case 4: // Left view
            cameraX = -10.0f;
            cameraY = 0.0f;
            cameraZ = 0.0f;
            centerX = 0.0f;
            centerY = 0.0f;
            centerZ = 0.0f;
            upX = 0.0f;
            upY = 1.0f;
            upZ = 0.0f;
            break;
        case 5: // Back view
            cameraX = 0.0f;
            cameraY = 0.0f;
            cameraZ = -10.0f;
            centerX = 0.0f;
            centerY = 0.0f;
            centerZ = 0.0f;
            upX = 0.0f;
            upY = 1.0f;
            upZ = 0.0f;
            break;
        default: // Default perspective view
            cameraX = 0.0f;
            cameraY = 2.0f;
            cameraZ = 4.0f;
            centerX = 0.0f;
            centerY = 0.0f;
            centerZ = 0.0f;
            upX = 0.0f;
            upY = 1.0f;
            upZ = 0.0f;
            break;
    }
}

// Modified to implement both projection modes
void setProjection(int width, int height) {
    float aspectRatio = (float)width / (float)height;
    
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    
    if (projectionMode == 1) {
        // Perspective projection
        gluPerspective(45.0f, aspectRatio, 0.1f, 100.0f);
        
        // Reset to default camera for perspective
        cameraX = 0.0f;
        cameraY = 2.0f;
        cameraZ = 4.0f;
        centerX = 0.0f;
        centerY = 0.0f;
        centerZ = 0.0f;
        upX = 0.0f;
        upY = 1.0f;
        upZ = 0.0f;
    } else {
        // Orthographic projection
        float orthoWidth = ORTHO_WIDTH;
        float orthoHeight = ORTHO_WIDTH / aspectRatio;
        glOrtho(-orthoWidth/2, orthoWidth/2, -orthoHeight/2, orthoHeight/2, 0.1f, 100.0f);
        
        // Set camera position based on orthographic view
        setupOrthoCamera();
    }
    
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
}

void display() {
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glLoadIdentity();
    
    gluLookAt(cameraX, cameraY, cameraZ,  
              centerX, centerY, centerZ,  
              upX, upY, upZ);
    
    drawEnterprise();
    
    // Display current projection mode on screen
    glDisable(GL_LIGHTING);
    glMatrixMode(GL_PROJECTION);
    glPushMatrix();
    glLoadIdentity();
    gluOrtho2D(0, 800, 0, 600);
    glMatrixMode(GL_MODELVIEW);
    glPushMatrix();
    glLoadIdentity();
    glColor3f(1.0f, 1.0f, 1.0f);
    glRasterPos2i(10, 580);
    
    const char* mode;
    if (projectionMode == 1) {
        mode = "Mode: Perspective (1)";
    } else {
        switch (orthoView) {
            case 1: mode = "Mode: Orthographic - Top View (3)"; break;
            case 2: mode = "Mode: Orthographic - Front View (4)"; break;
            case 3: mode = "Mode: Orthographic - Right View (5)"; break;
            case 4: mode = "Mode: Orthographic - Left View (6)"; break;
            case 5: mode = "Mode: Orthographic - Back View (7)"; break;
            default: mode = "Mode: Orthographic - Default View (0)"; break;
        }
    }
    
    for (const char* c = mode; *c != '\0'; c++) {
        glutBitmapCharacter(GLUT_BITMAP_9_BY_15, *c);
    }
    
    // Show key controls
    glRasterPos2i(10, 560);
    const char* controls = "Keys: 0=Ortho Default, 1=Perspective, 3-7=Ortho Views";
    for (const char* c = controls; *c != '\0'; c++) {
        glutBitmapCharacter(GLUT_BITMAP_9_BY_15, *c);
    }
    
    glPopMatrix();
    glMatrixMode(GL_PROJECTION);
    glPopMatrix();
    glMatrixMode(GL_MODELVIEW);
    glEnable(GL_LIGHTING);
    
    glutSwapBuffers();
}

void reshape(int width, int height) {
    glViewport(0, 0, width, height);
    setProjection(width, height);
}

void keyboard(unsigned char key, int x, int y) {
    switch (key) {
        case '0': // Switch to orthographic default view
            projectionMode = 0;
            orthoView = 0;
            reshape(glutGet(GLUT_WINDOW_WIDTH), glutGet(GLUT_WINDOW_HEIGHT));
            break;
        case '1': // Switch to perspective
            projectionMode = 1;
            reshape(glutGet(GLUT_WINDOW_WIDTH), glutGet(GLUT_WINDOW_HEIGHT));
            break;
        case '3': // Orthographic top view
            projectionMode = 0;
            orthoView = 1;
            reshape(glutGet(GLUT_WINDOW_WIDTH), glutGet(GLUT_WINDOW_HEIGHT));
            break;
        case '4': // Orthographic front view
            projectionMode = 0;
            orthoView = 2;
            reshape(glutGet(GLUT_WINDOW_WIDTH), glutGet(GLUT_WINDOW_HEIGHT));
            break;
        case '5': // Orthographic right view
            projectionMode = 0;
            orthoView = 3;
            reshape(glutGet(GLUT_WINDOW_WIDTH), glutGet(GLUT_WINDOW_HEIGHT));
            break;
        case '6': // Orthographic left view
            projectionMode = 0;
            orthoView = 4;
            reshape(glutGet(GLUT_WINDOW_WIDTH), glutGet(GLUT_WINDOW_HEIGHT));
            break;
        case '7': // Orthographic back view
            projectionMode = 0;
            orthoView = 5;
            reshape(glutGet(GLUT_WINDOW_WIDTH), glutGet(GLUT_WINDOW_HEIGHT));
            break;
        case 'j':
            yRotation -= rotateSpeed;
            break;
        case 'l':
            yRotation += rotateSpeed;
            break;
        case 'i':
            xRotation -= rotateSpeed;
            break;
        case 'k':
            xRotation += rotateSpeed;
            break;
        case 27: // ESC key
            exit(0);
            break;
    }
    
    glutPostRedisplay();
}

void init() {
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    glEnable(GL_DEPTH_TEST);
    
    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    
    GLfloat light_position[] = { 2.0f, 3.0f, 5.0f, 1.0f };
    GLfloat light_ambient[] = { 0.2f, 0.2f, 0.2f, 1.0f };
    GLfloat light_diffuse[] = { 1.0f, 1.0f, 1.0f, 1.0f };
    GLfloat light_specular[] = { 1.0f, 1.0f, 1.0f, 1.0f };
    
    glLightfv(GL_LIGHT0, GL_POSITION, light_position);
    glLightfv(GL_LIGHT0, GL_AMBIENT, light_ambient);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, light_diffuse);
    glLightfv(GL_LIGHT0, GL_SPECULAR, light_specular);
    
    glEnable(GL_COLOR_MATERIAL);
    glColorMaterial(GL_FRONT, GL_AMBIENT_AND_DIFFUSE);
    
    GLfloat mat_specular[] = { 0.5f, 0.5f, 0.5f, 1.0f };
    GLfloat mat_shininess[] = { 50.0f };
    
    glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular);
    glMaterialfv(GL_FRONT, GL_SHININESS, mat_shininess);
}

int main(int argc, char **argv) {
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB | GLUT_DEPTH);
    glutInitWindowSize(800, 600);
    glutInitWindowPosition(100, 100);
    glutCreateWindow("USS Enterprise From Star Trek");
    
    init();
    
    glutDisplayFunc(display);
    glutReshapeFunc(reshape);
    glutKeyboardFunc(keyboard);
    
    glutMainLoop();
    
    return 0;
}