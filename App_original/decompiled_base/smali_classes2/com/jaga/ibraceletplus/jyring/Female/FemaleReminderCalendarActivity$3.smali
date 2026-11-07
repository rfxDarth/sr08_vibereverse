.class Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$3;
.super Ljava/lang/Object;
.source "FemaleReminderCalendarActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->initCalendar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCellItemChange(Ljava/util/Calendar;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return-void

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->getDateDisplay()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;Ljava/util/Calendar;)V

    return-void

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->getDateDisplay()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;Ljava/util/Calendar;)I

    return-void
.end method
