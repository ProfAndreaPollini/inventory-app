# diagramma logico

categories(pk:id,name)
items(pk:id, description, fk:category )
tags(pk:id,name)
items_tags(pk:id,fk:tag_id, fk:item_id,)
teachers(pk:id, name, surname)
rental(pk:id,item_id,teacher_id, start_date, end_date)
