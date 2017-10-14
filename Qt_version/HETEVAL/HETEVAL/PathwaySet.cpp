#include "PathwaySet.h"
#include "StringOP.h"
#include "Grid.h"



CPathwaySet::CPathwaySet()
{
}

CPathwaySet::CPathwaySet(const CPathwaySet & P)
{
	paths = P.paths;
}

CPathwaySet &CPathwaySet::operator=(const CPathwaySet & P)
{
	paths = P.paths;
	return *this; 
}


CPathwaySet::~CPathwaySet()
{
}

void CPathwaySet::write(string filename)
{
	ofstream file;
	file.open(filename.c_str());
	for (int j = 0; j < paths.size(); j++)
	{
		file << "t_" << numbertostring(j) << ",x_" << numbertostring(j) << ",y_" << numbertostring(j) << ",u_" << numbertostring(j) << ",v_" << numbertostring(j) << ",u_" << numbertostring(j) << ",z_" << numbertostring(j);
	}
	file << endl; 
	for (int i = 0; i < max_num_points(); i++)
	{
		for (int j = 0; j < paths.size(); j++)
		{
			if (i < paths[j].positions.size())
				file << paths[j].positions[i].t << "," << paths[j].positions[i].x << "," << paths[j].positions[i].y << "," << paths[j].positions[i].v[0] << "," << paths[j].positions[i].v[1] << "," << paths[j].positions[i].u << "," << paths[j].positions[i].z << ",";
			else 
				file << "," << "," << "," << "," << "," << "," << ",";
		}
		file << endl;
	}

file.close();
}

void CPathwaySet::append(const CPathway & P)
{
	paths.push_back(P);
}

int CPathwaySet::max_num_points()
{
	int max_np = 0; 
	for (int i = 0; i < paths.size(); i++)
		max_np = max(max_np, int(paths[i].positions.size()));

	return max_np; 
}

void CPathwaySet::create(int n, CDistribution * dist, double x_min, double x_max, double kappa, double dx)
{
	for (int i = 0; i < n; i++)
	{
		CPathway P;
		P.create(dist, x_min, x_max, kappa, dx);
		append(P);
	}
}

void CPathwaySet::write_vtk(vtkSmartPointer<vtkPolyDataMapper> mapper, string filename)
{
	
	
	vtkSmartPointer<vtkXMLPolyDataWriter> writer =
		vtkSmartPointer<vtkXMLPolyDataWriter>::New();
	writer->SetFileName(filename.c_str());
	writer->SetInputData(mapper->GetInput());
	// This is set so we can see the data in a text editor.
	writer->SetDataModeToAscii();
	writer->Write();

}

vtkSmartPointer<vtkPolyDataMapper> CPathwaySet::pathways_vtk_pdt_vtp(double z_factor, double offset)
{
	vector<vtkSmartPointer<vtkPolyData>> outarray;
	for (int i = 0; i < paths.size(); i++)
		outarray.push_back(paths[i].pathway_vtk_pdt_vtp(z_factor, offset));

	vtkSmartPointer<vtkAppendPolyData> appendFilter =
		vtkSmartPointer<vtkAppendPolyData>::New();
#if VTK_MAJOR_VERSION <= 5
	appendFilter->AddInputConnection(input1->GetProducerPort());
	appendFilter->AddInputConnection(input2->GetProducerPort());
#else
	for (int i = 0; i < outarray.size(); i++)
		appendFilter->AddInputData(outarray[i]);
#endif
	appendFilter->Update();

	vtkSmartPointer<vtkPolyDataMapper> mapper =
		vtkSmartPointer<vtkPolyDataMapper>::New();
#if VTK_MAJOR_VERSION <= 5
	mapper->SetInputConnection(polydata->GetProducerPort());
#else
	mapper->SetInputConnection(appendFilter->GetOutputPort());
#endif

	return mapper;
}

CPathway CPathwaySet::snapshotattime(double t)
{
	CPathway Ptwy;
	for (int i = 0; i < paths.size(); i++)
		Ptwy.append(paths[i].get_position_at_t(t));

	return Ptwy;
}

CPathway CPathwaySet::snapshotatlocation(double x)
{
	CPathway Ptwy;
	for (int i = 0; i < paths.size(); i++)
		Ptwy.append(paths[i].get_position_at_x(x));

	return Ptwy;
}

void CPathwaySet::make_uniform_at_x(double dx)
{
	for (int i = 0; i < paths.size(); i++)
		paths[i] = paths[i].make_uniform_x(dx);
}

void CPathwaySet::make_uniform_at_t(double dt)
{
	for (int i = 0; i < paths.size(); i++)
		paths[i] = paths[i].make_uniform_t(dt);

}



vector<double> CPathwaySet::get_pair_v(int increment)
{
	vector<double> v(2);
	int i = int(unitrandom()*paths.size());
	int j = int((paths[i].positions.size()- increment)*unitrandom());
	v[0] = paths[i].positions[j].v[0];
	v[1] = paths[i].positions[j + increment].v[0];
	return v;
}

CBTCSet CPathwaySet::get_pair_v(int increment, int n)
{
	CBTCSet out(2);
	for (int i = 0; i < n; i++)
	{
		vector<double> v = get_pair_v(increment);
		out.append(double(i), v);
	}
	return out; 

}

CBTC CPathwaySet::get_BTC(double x, int n_bins)
{
	CBTC BTC;
	for (int i = 0; i < paths.size(); i++)
		BTC.append(i, paths[i].get_cross_time(x));
	
	return BTC.distribution(n_bins,0);

}

CBTC CPathwaySet::get_BTC_points(double x)
{
	CBTC BTC;
	for (int i = 0; i < paths.size(); i++)
		BTC.append(i, paths[i].get_cross_time(x));

	return BTC; 

}
	

