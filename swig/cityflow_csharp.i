/* File : cityflow_csharp.i */
%module CityEngine

%{
	#include "..\src\engine\engine.h"
	#include "..\src\engine\archive.h"
	#include "..\src\flow\flow.h"
	#include "..\src\flow\route.h"
	#include "..\src\roadnet\roadnet.h"
	#include "..\src\roadnet\trafficlight.h"
	#include "..\src\utility\barrier.h"
	#include "..\src\utility\optionparser.h"
	#include "..\src\utility\utility.h"
	#include "..\src\vehicle\lanechange.h"
	#include "..\src\vehicle\router.h"
	#include "..\src\vehicle\vehicle.h"
%}

#%rename (ConsumeDataInput) d_CI;
%rename(MultiplyValue) operator*(const Point &A, double k);
%rename(SubtractPoint) operator-(const Point &A, const Point &B);
%rename(AddPoint) operator+(const Point &A, const Point &B);
%rename(Negative) operator-(const Point &A);

/* Let's just grab the original header file here */
%include "..\src\engine\engine.h"
%include "..\src\engine\archive.h"
%include "..\src\flow\flow.h"
%include "..\src\flow\route.h"
%include "..\src\roadnet\roadnet.h"
%include "..\src\roadnet\trafficlight.h"
%include "..\src\utility\barrier.h"
%include "..\src\utility\optionparser.h"
%include "..\src\utility\utility.h"
%include "..\src\vehicle\lanechange.h"
%include "..\src\vehicle\router.h"
%include "..\src\vehicle\vehicle.h"