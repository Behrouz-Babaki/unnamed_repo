%module bfcheck
%{
#include "bfcheck.hpp"
%}

%include "std_vector.i"
namespace std {
  %template(vi)  vector< int >;
  %template(vvi) vector< vector< int > >;
  %template(vd)  vector< double >;
  %template(vvd) vector< vector< double > >;
}

class BF_Checker {
public:
  BF_Checker(std::vector< std::vector < int > > graph,
	     std::vector< std::vector< double > > cl_constraints,
	     std::vector< std::vector< double > > ml_constraints,
	     int k, double gamma);
  bool is_feasible(void);
  double get_best(void);
  std::vector< std::vector< int > > get_clusters(void);
};

