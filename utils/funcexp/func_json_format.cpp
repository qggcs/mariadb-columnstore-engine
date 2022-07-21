#include <string_view>
using namespace std;

#include "functor_json.h"
#include "functioncolumn.h"
using namespace execplan;

#include "rowgroup.h"
using namespace rowgroup;

#include "joblisttypes.h"
using namespace joblist;

#include "jsonhelpers.h"
using namespace funcexp::helpers;

namespace funcexp
{
CalpontSystemCatalog::ColType Func_json_format::operationType(FunctionParm& fp,
                                                              CalpontSystemCatalog::ColType& resultType)
{
  return fp[0]->data()->resultType();
}

string Func_json_format::getStrVal(rowgroup::Row& row, FunctionParm& fp, bool& isNull,
                                   execplan::CalpontSystemCatalog::ColType& type)
{
  const string_view jsExp = fp[0]->data()->getStrVal(row, isNull);
  if (isNull)
    return "";

  int tabSize = 4;
  json_engine_t jsEg;

  if (fmt == DETAILED)
  {
    if (fp.size() > 1)
    {
      tabSize = fp[1]->data()->getIntVal(row, isNull);
      if (isNull)
        return "";

      if (tabSize < 0)
        tabSize = 0;
      else if (tabSize > TAB_SIZE_LIMIT)
        tabSize = TAB_SIZE_LIMIT;
    }
  }

  json_scan_start(&jsEg, fp[0]->data()->resultType().getCharset(), (const uchar*)jsExp.data(),
                  (const uchar*)jsExp.data() + jsExp.size());

  string ret;
  if (doFormat(&jsEg, ret, fmt, tabSize))
  {
    isNull = true;
    return "";
  }

  isNull = false;
  return ret;
}
}  // namespace funcexp
