#pragma once
#include "Vector.h"

class CPosition
{
public:
	CPosition();
	CPosition(const CPosition &P);
	CPosition& operator=(const CPosition &P);
	~CPosition();
	double x; //x location
	double y; //y location 
	double t; // time
	double u; //projected velocity to uniform distribution
	double z; //projected velocity to standard Gaussian
	double v_eff; //t / x;
	double t_eff; //x / t;

	CVector v; // velocity vector
	double getvar(string var);
};

CPosition operator+(const CPosition, const CPosition);
CPosition operator-(const CPosition, const CPosition);
CPosition operator*(double, CPosition);
CPosition operator*(CPosition p1, double d);
CPosition operator/(CPosition, double);



