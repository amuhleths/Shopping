// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
    $("#people-table").tableDnD({
        onDrop: function(table, row) {
            var rows = table.tBodies[0].rows;
            var debugStr = "";
            for (var i=0; i<rows.length; i++) {
                debugStr += rows[i].id+",";
            }
            $.post("/people/sort", { people: debugStr });
        },
        dragHandle: "drag",
        onDragClass: "highlight"
    });
});
