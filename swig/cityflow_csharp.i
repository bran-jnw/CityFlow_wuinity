/* File : cityflow_csharp.i */
%module CityFlow

%include "std_shared_ptr.i"
%include "exception.i"
%include "typemaps.i"
%include "std_string.i"
%include "std_vector.i"
%include "std_map.i"
%include "std_pair.i"
%include "std_list.i"
%include "std_deque.i"

/* This will be included in the generated wrapper file */
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

	typedef unsigned int size_t;
%}

/* Tell SWIG about things*/

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

typedef unsigned int size_t;

/*%apply bool & INOUT { bool & };
%apply char* & INOUT { char* & };
%apply CityFlow::Vehicle & INOUT { CityFlow::Vehicle & };
%apply CityFlow::Point & INOUT { CityFlow::Point & };*/

/*deque*/
%template(VehicleDeque) std::deque<CityFlow::Vehicle*>;

/*map*/
%template(StringDoubleMap) std::map<std::string, double>;

%template(StringIntMap) std::map<std::string, int>;

%template(StringStringVectorMap) std::map<std::string, std::vector<std::string>>;

%template(StringStringMap) std::map<std::string, std::string>;

/*list*/
%template(VehicleList) std::list<CityFlow::Vehicle>;
%template(VehiclePointerList) std::list<CityFlow::Vehicle*>;

%template(VehicleListList) std::list<std::list<CityFlow::Vehicle>>;

/*pair*/
%template(PointPointPair) std::pair<CityFlow::Point, CityFlow::Point>;

/*vector*/
%template(StringVector) std::vector<std::string>;
%template(IntVector) std::vector<int>;

%template(CrossVector) std::vector<CityFlow::Cross>;
%template(CrossPointerVector) std::vector<CityFlow::Cross*>;

%template(DrivableVector) std::vector<CityFlow::Drivable>;
%template(DrivablePointerVector) std::vector<CityFlow::Drivable*>;

%template(IntersectionVector) std::vector<CityFlow::Intersection>;

%template(LaneVector) std::vector<CityFlow::Lane>;
%template(LanePointerVector) std::vector<CityFlow::Lane*>;

%template(LaneLinkVector) std::vector<CityFlow::LaneLink>;
%template(LaneLinkPointerVector) std::vector<CityFlow::LaneLink*>;

%template(LightPhaseVector) std::vector<CityFlow::LightPhase>;

%template(RoadVector) std::vector<CityFlow::Road>;
%template(RoadPointerVector) std::vector<CityFlow::Road*>;

%template(SegmentVector) std::vector<CityFlow::Segment>;

%template(VehicleVector) std::vector<CityFlow::Vehicle*>;

%template(PointVector) std::vector<Point>;

%template(RoadLinkVector) std::vector<RoadLink>;

