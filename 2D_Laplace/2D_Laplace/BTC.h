
#pragma once


#include <string>
#include <vector>
#include "QuickSort.h"
#include "NormalDist.h"

#define GNUplot




using namespace std;


class CBTC  
{
public:
    bool structured;
    CBTC();
    CBTC(int n);
    virtual ~CBTC();
    int n;
    vector<double> t;
    vector<double> C;

    string name;
    string unit;
    string defaultUnit;
    vector<string> unitsList;
    vector<double> D;

    double interpol(double x);
    double interpol_D(double x);
    CBTC interpol(vector<double> x);
    CBTC interpol(CBTC &x);
    CBTC(const CBTC &C);
    CBTC(string Filename);
    CBTC& operator = (const CBTC &C);
    void readfile(string);
    void writefile(string Filename);
    double maxC();
    double minC();
    void setnumpoints(int);
    CBTC Log();
    CBTC Log(double min);
    double std();
    double mean();
    double percentile(double x);
    double percentile(double x, int limit);
    double mean(int limit);
    double std(int nlimit);
    double mean_log(int limit);
    double integrate();
    double integrate(double t);
    double integrate(double t1, double t2);
    int lookupt(double t);
    double average();
    double average(double t);
    double slope(double tt);
    CBTC distribution(int n_bins, int limit);
    void append(double x);
    void append(double tt, double xx, double weight=1);
    void append(CBTC &CC);
    CBTC& operator+=(CBTC &v);
    CBTC& operator%=(CBTC &v);
    CBTC make_uniform(double increment);
    CBTC extract(double t1, double t2);
    vector<double> trend();
    double mean_t();
    CBTC add_noise(double std, bool);
    void assign_D();
    void clear();
    double wiggle();
    double wiggle_corr(int _n=10);
    bool wiggle_sl(double tol);
    double maxfabs();
    double max_fabs;
    void knock_out(double t);
    double AutoCor1(int i=0);
    bool file_not_found = false;
    CBTC getcummulative();
    CBTC Exp();
    CBTC fabs();
    CBTC derivative(); 
    //GUI 
    //QList <QMap <QVariant, QVariant>> CBTC::compact() const;

    CBTC(double a, double b, const vector<double>&x);
    CBTC(double a, double b, const CBTC &btc);
    CBTC(const vector<double> &t, const vector<double> &C);
    CBTC(vector<double>&, int writeInterval = 1);
    bool error = false;
    double rank(int i);
    CBTC rank();
    CBTC rank_bd(int nintervals = 100);
    CBTC map_to_standard_normal(int nintervals);
    CBTC uniform_cummulative(int nintervals=100);
    CBTC unlog();
    CBTC distribution_fw(int n_bins, int limit, string s="");
    CBTC make_flux_weighted(string log);
    CBTC distribution_log(int n_bins, int limit);
    vector<double> weight; 
    bool weighted = false; 
	
};

double diff(CBTC &BTC_p, CBTC &BTC_d);
double diff_abs(CBTC &BTC_p, CBTC &BTC_d);
double diff_log(CBTC &BTC_p, CBTC &BTC_d, double lowlim);
double diff_norm(CBTC &BTC_p, CBTC &BTC_d);
double diff(CBTC BTC_p, CBTC BTC_d, int scale);
double diff(CBTC BTC_p, CBTC BTC_d, CBTC Q);
double diff2(CBTC BTC_p, CBTC BTC_d);
double diff_mixed(CBTC &BTC_p, CBTC &BTC_d, double lowlim, double std_n, double std_ln);
double ADD(CBTC &BTC_p, CBTC &BTC_d);
double diff_relative(CBTC &BTC_p, CBTC &BTC_d, double m);
double R2(CBTC BTC_p, CBTC BTC_d);
double R(CBTC BTC_p, CBTC BTC_d, int nlimit);
CBTC operator*(double, CBTC);
CBTC operator*(CBTC, double);
CBTC operator*(CBTC&, CBTC&);
CBTC operator/(CBTC, CBTC);
CBTC operator/(CBTC BTC1, double x);
CBTC operator+(CBTC, CBTC);
CBTC operator-(CBTC, CBTC);
CBTC operator%(CBTC, CBTC);
CBTC operator&(CBTC, CBTC);
CBTC operator>(CBTC BTC1, CBTC BTC2);
double XYbar(CBTC BTC_p, CBTC BTC_d);
double X2bar(CBTC BTC_p, CBTC BTC_d);
double Y2bar(CBTC BTC_p, CBTC BTC_d);
double Ybar(CBTC BTC_p, CBTC BTC_d);
double Xbar(CBTC BTC_p, CBTC BTC_d);
CBTC operator+(CBTC v1, CBTC v2); 
double prcntl(vector<double> C, double x);
vector<double> prcntl(vector<double> C, vector<double> x);
double sgn(double val);
int sgn(int val);
double sum_interpolate(vector<CBTC>, double t);
double R2_c(CBTC BTC_p, CBTC BTC_d);
double norm2(CBTC BTC1);
CBTC max(CBTC A, double b);
double pos(double x);
double neg(double x);

