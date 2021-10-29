#include <glad/glad.h>
#include <glfw3.h>
#include "MainWindow.h"
#include <QApplication>

int main(int argc, char* argv[])
{
#if 0
    QApplication a(argc, argv);

    QFont font = a.font();
    font.setPointSize(16);
    a.setFont(font);

    MainWindow mw;

    mw.show();
    a.exec();
#endif
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    return 0;
}