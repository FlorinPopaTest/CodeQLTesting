/**
 * This is an automatically generated file
 *
 * @name Hello world
 * @kind problem
 * @problem.severity warning
 * @id csharp/example/hello-world
 */

import csharp

from File f
// where f.getExtension().matches("%cs\\%")
where
  (f.fromSource() or f.getExtension() = "cs") and
  f.getNumberOfLines() > 30
select f.getRelativePath(), "Number of Lines: " + f.getNumberOfLines().toString()
