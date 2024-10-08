/**
 * @name Number of lines
 * @description Try to avoid too muchh lines code in single file
 * @kind problem
 * @problem.severity error
 * @precision medium
 * @id csharp/number-of-lines
 * @tags maintainability
 *       statistical
 *       non-attributable
 */

import csharp

from File f
// where f.getExtension().matches("%cs\\%")
where
  (
    f.fromSource()
    or
    f.getExtension() = "cs"
  ) and
  f.getNumberOfLines() > 30
select f, "Number of Lines: " + f.getNumberOfLines().toString()
