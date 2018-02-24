#ifdef QT_version
#include "heteval.h"
#include <QtWidgets/QApplication>
#include <sys/resource.h>
#endif // Qt_version
#include <iostream>

int main(int argc, char *argv[])
{
	std::cout<<"Hello world!"<<std::endl;
	#ifdef QT_version
    QApplication a(argc, argv);
    HETEVAL w;
    w.showMaximized();
    return a.exec();
    #endif // Qt_version
}
