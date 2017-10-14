#include "heteval.h"
#include <QtWidgets/QApplication>
#include <sys/resource.h>

int main(int argc, char *argv[])
{
	
    const rlim_t kStackSize = 16000 * 1024 * 1024;   // min stack size = 16 MB
    struct rlimit rl;
    int result;

    result = getrlimit(RLIMIT_STACK, &rl);
    if (result == 0)
    {
        if (rl.rlim_cur < kStackSize)
        {
            rl.rlim_cur = kStackSize;
            result = setrlimit(RLIMIT_STACK, &rl);
            if (result != 0)
            {
                fprintf(stderr, "setrlimit returned result = %d\n", result);
            }
        }
    }
    QApplication a(argc, argv);
    HETEVAL w;
    w.showMaximized();
    return a.exec();
}
