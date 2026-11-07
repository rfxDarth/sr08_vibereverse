.class Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$1;
.super Ljava/lang/Object;
.source "CalendarCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->access$000(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 63
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->access$000(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->setDateDisplay(Ljava/util/Calendar;)V

    .line 64
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->access$100(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setChecked(Z)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->access$200(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;Z)V

    .line 69
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->access$300(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemChange;

    move-result-object p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->access$000(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;)Ljava/util/Calendar;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemChange;->OnCellItemChange(Ljava/util/Calendar;)V

    return-void
.end method
