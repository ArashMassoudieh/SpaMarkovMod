#pragma once
#include "Pathway.h"
#include <vector>
#include <string>

using namespace std; 
class CPathwaySet
{
public:
	CPathwaySet();
	CPathwaySet(const CPathwaySet &P);
	CPathwaySet &operator=(const CPathwaySet &P);
	~CPathwaySet();
	vector<CPathway> paths; 
	void write(string filename);
	void append(const CPathway& P);
	int max_num_points();
	void create(int n, CDistribution *dist, double x_min, double x_max, double kappa, double dx);
	void write_vtk(vtkSmartPointer<vtkPolyDataMapper>, string filename);
	vtkSmartPointer<vtkPolyDataMapper> pathways_vtk_pdt_vtp(double z_factor=1, double offset=0);
	CPathway snapshotattime(double t);
	CPathway snapshotatlocation(double x);
	void make_uniform_at_x(double dx);
	void make_uniform_at_t(double dt);
	vector<double> get_pair_v(int increment);
	CBTCSet get_pair_v(int increment, int n);
	CBTC get_BTC(double x, int n_bins);
        CBTC get_BTC_points(double x);
	

};

