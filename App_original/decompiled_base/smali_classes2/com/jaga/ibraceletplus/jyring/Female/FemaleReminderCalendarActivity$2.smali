.class Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$2;
.super Ljava/lang/Object;
.source "FemaleReminderCalendarActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemClick;


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

    .line 103
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellClick(Landroid/view/View;Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->notifyChanges()V

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 108
    check-cast p1, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06047d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)I

    move-result p1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 121
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;Ljava/util/Calendar;)V

    return-void

    .line 115
    :cond_1
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;Ljava/util/Calendar;)I

    :cond_2
    :goto_0
    return-void
.end method
