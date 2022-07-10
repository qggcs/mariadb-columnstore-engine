#include <string>
using namespace std;

#include "functor_json.h"
#include "functioncolumn.h"
using namespace execplan;

#include "rowgroup.h"
using namespace rowgroup;

#include "joblisttypes.h"
using namespace joblist;

#include "jsonfunchelper.h"
using namespace funcexp::helpers;

namespace funcexp
{
CalpontSystemCatalog::ColType Func_json_array::operationType(FunctionParm& fp,
                                                             CalpontSystemCatalog::ColType& resultType)
{
  return fp.size() > 0 ? fp[0]->data()->resultType() : resultType;
}

string Func_json_array::getStrVal(rowgroup::Row& row, FunctionParm& fp, bool& isNull,
                                  execplan::CalpontSystemCatalog::ColType& type)
{
  if (fp.size() == 0)
    return "[]";

  string ret("[");

  ret.append(getJsonValue(row, fp[0]));

  for (size_t i = 1; i < fp.size(); i++)
  {
    ret.append(", ");
    ret.append(getJsonValue(row, fp[i]));
  }

  ret.append("]");
  return ret;
}

}  // namespace funcexp
