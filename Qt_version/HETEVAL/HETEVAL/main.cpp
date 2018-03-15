#ifdef QT_version
#include "heteval.h"
#include <QtWidgets/QApplication>
#include <sys/resource.h>
#endif // Qt_version
#include <iostream>
#include "Grid.h"
#include "2DMap.h"

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
    filename = "/home/arash/Projects/UpscalingInputfiles/input_test_BTC_log_normal_loop_std1_l_iso_res_corr_s_1.txt";
    CGrid G(filename);
    cout << "running [" << filename << "]..." << endl;
    G.runcommands_qt();
    return 0;
    #endif // Qt_version
}

//filename = "/home/arash/Projects/Upscaling_outputs/input_test_BTC_log_normal_loop_std1_l_iso_res_corr_s_1.txt";
