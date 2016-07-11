//Add a Question Box creation to the Event object

//The even object handles sequential events.

//If you need to create a Question Box AFTER a cutscene, for instance, use this.
with Event
{
    args = 0;
    args[0] = argument[0];
    args[1] = argument[1];
    args[2] = argument[2];
    ds_list_add(event_list,scrCreateQuestionBox,args);
}
with Event
{
    args = 0;
    args[0] = other.id;
    args[1] = 0;
    ds_list_add(event_list,triggerEntityEvent,args);
}
