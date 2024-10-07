/**
 * @id cshartp/todocomment
 * @name TODO_comments
 * @description Finds comments containing the word TODO
 * @kind problem
 * @problem.severity recommendation
 * @tags comment
 *       TODO
 */
import csharp

from Comment c
where c.getText().regexpMatch("(?si).*\\bTODO\\b.*")
select c,"foobar"
