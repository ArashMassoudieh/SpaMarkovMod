#ifdef QT_version
#include "heteval.h"
#include <QtWidgets/QApplication>
#include <sys/resource.h>
#endif // Qt_version
#include <iostream>
#include "Grid.h"


int main(int argc, char *argv[])
{
	#ifdef QT_version
    QApplication a(argc, argv);
    HETEVAL w;
    w.showMaximized();
    return a.exec();
    #else
    string filename;
    cout<<"Enter the input file name: ";
    cin>>filename;
    //cout << "reading [" << filename << "]..." << endl;
    filename = "/home/arash/Projects/UpscalingInputs/test.txt";
    CGrid G(filename);
    cout << "running [" << filename << "]..." << endl;
    G.runcommands_qt();
    return 0;
    #endif // Qt_version
}
