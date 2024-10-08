﻿/**
 * @name dependencies
 * @description finds and lists referenced dependencies
 * @kind problem
 * @problem.severity error
 * @tags setup_check
 * @id setup
 */

 import csharp
 from PackageDependencies deps, string name
 where deps.getADependency(name, _) and name.matches("Swashbuckle")
 select deps, "Dependency foundhere'" + name + "'."