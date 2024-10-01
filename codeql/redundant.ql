/**
* @id codeql/redundant
* @name Bas's empty blocks
* @description Find my empty bloc statement
* @kind problem
* @tags empty
*       bas
*/

import csharp

from BlockStmt blk
where blk.isEmpty()
select blk, "This 'if' statement is redundant."