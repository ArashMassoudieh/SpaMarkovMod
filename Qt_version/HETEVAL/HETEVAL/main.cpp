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

	TDMap M(10,5,0,10,0,5);
	for (int i=0; i<10; i++)
        for (int j=0; j<5; j++)
        {
            cout<< i << "," << j << endl;
            M.set_val(i,j,exp(-pow(i-5,2)-pow(j-2.5,2)*5));
        }

    cout<< "Normalizing..." << endl;
    M.normalize();
    cout << "Writing..." << endl;
	M.writetofile_GNU("Matrix.gnu","myPlot.png");

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

//filename = "/home/arash/Projects/Upscaling_outputs/input_test_BTC_log_normal_loop_std1_l_iso_res_corr_s_1.txt";
