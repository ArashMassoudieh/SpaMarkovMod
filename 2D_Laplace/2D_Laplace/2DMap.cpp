#include "2DMap.h"
#include <fstream>
#include <string>

TDMap::TDMap()
{
    //ctor
}

TDMap::~TDMap()
{
    //dtor
}

TDMap::TDMap(unsigned int number_of_bins, double low_lim, double up_lim)
{
    reset(number_of_bins, number_of_bins, low_lim, up_lim, low_lim, up_lim);
}

TDMap::TDMap(unsigned int number_of_bins_x, unsigned int number_of_bins_y, double low_lim_x, double up_lim_x, double low_lim_y, double up_lim_y)
{
    reset(number_of_bins_x, number_of_bins_y, low_lim_x, up_lim_x, low_lim_y, up_lim_y);
}

TDMap::TDMap(const TDMap& other)
{
    val = other.val;
    x_bin = other.x_bin;
    y_bin = other.y_bin;
}

TDMap& TDMap::operator=(const TDMap& rhs)
{
    if (this == &rhs) return *this; // handle self assignment
    val = rhs.val;
    x_bin = rhs.x_bin;
    y_bin = rhs.y_bin;
    return *this;
}

void TDMap::reset(unsigned int number_of_bins_x, unsigned int number_of_bins_y, double low_lim_x, double up_lim_x, double low_lim_y, double up_lim_y)
{
    val.resize(number_of_bins_x);
    for (unsigned int i=0; i<number_of_bins_x; i++)
        val[i].resize(number_of_bins_y);

    x_bin.resize(number_of_bins_x+1);
    y_bin.resize(number_of_bins_y+1);

    for (unsigned int i=0; i<number_of_bins_x+1; i++)
        x_bin[i] = low_lim_x + (up_lim_x-low_lim_x)/number_of_bins_x*i;


    for (unsigned int i=0; i<number_of_bins_y+1; i++)
        y_bin[i] = low_lim_y + (up_lim_y-low_lim_y)/number_of_bins_y*i;
}

void TDMap::set_val(unsigned int i, unsigned int j, double value)
{
    val[i][j] = value;
}

void TDMap::add_val(unsigned int i, unsigned int j, double value)
{
    val[i][j] += value;
}

double TDMap::sum()
{
    double sum = 0;
    for (unsigned int i=0; i<val.size(); i++)
        for (unsigned int j=0; j<val[i].size(); j++)
            sum+=val[i][j];

    return sum;
}

double TDMap::marginal_x(unsigned int i)
{
    double sum = 0;
    for (unsigned int j=0; j<val[i].size(); j++)
        sum+=val[i][j];

    return sum;
}

double TDMap::marginal_y(unsigned int j)
{
    if (j>val[0].size())
        return 0;
    double sum = 0;
    for (unsigned int i=0; i<val.size(); i++)
        sum+=val[i][j];

    return sum;
}

vector<double> TDMap::marginal_x()
{
    vector<double> out;
    for (unsigned int i=0; i<val.size(); i++)
        out.push_back(marginal_x(i));

    return out;
}

vector<double> TDMap::marginal_y()
{
    vector<double> out;
    for (unsigned int j=0; j<val[0].size(); j++)
        out.push_back(marginal_y(j));

    return out;
}


void TDMap::normalize()
{
    double s = sum();
    for (unsigned int i=0; i<val.size(); i++)
        for (unsigned int j=0; val[i].size(); j++)
            val[i][j] = val[i][j]/s;

}

void TDMap::normalise_x()
{
    vector<double> s = marginal_x();
    for (unsigned int i=0; i<val.size(); i++)
        for (unsigned int j=0; val[i].size(); j++)
            val[i][j] = val[i][j]/s[i];

}

void TDMap::normalize_y()
{
    vector<double> s = marginal_y();
    for (unsigned int i=0; i<val.size(); i++)
        for (unsigned int j=0; val[i].size(); j++)
            val[i][j] = val[i][j]/s[j];
}

double TDMap::get_val(unsigned int i, unsigned int j)
{
    if (i<val.size() && j<val[0].size())
        return val[i][j];
    return 0;
}

void TDMap::writetofile(string filename)
{
    ofstream file(filename);
    file << ",";
    for (unsigned int i=0; i<val.size(); i++)
    {
        file << "," << (x_bin[i] + x_bin[i+1])/2;
    }
    file << endl;
    for (unsigned int j=0; j<val[0].size(); j++)
    {
        file << (y_bin[j] + y_bin[j+1])/2 << ",";
        for (unsigned int i=0; i<val.size(); i++)
            file << val[i][j] << ",";
        file << endl;
    }

}
