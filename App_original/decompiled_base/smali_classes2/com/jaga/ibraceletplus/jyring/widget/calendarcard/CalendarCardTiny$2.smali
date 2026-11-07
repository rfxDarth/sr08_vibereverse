.class Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny$2;
.super Ljava/lang/Object;
.source "CalendarCardTiny.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;)V
    .locals 7

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDayOfMonth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;->access$000(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;)Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;->access$000(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCardTiny;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-nez p2, :cond_0

    .line 89
    invoke-virtual {p1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setChecked(Z)V

    return-void

    .line 91
    :cond_0
    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setChecked(Z)V

    :cond_1
    return-void
.end method
