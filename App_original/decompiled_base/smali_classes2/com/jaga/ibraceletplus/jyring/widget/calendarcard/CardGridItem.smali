.class public Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;
.super Ljava/lang/Object;
.source "CardGridItem.java"


# instance fields
.field private data:Ljava/lang/Object;

.field private date:Ljava/util/Calendar;

.field private dayOfMonth:Ljava/lang/Integer;

.field private enabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->enabled:Z

    .line 14
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->setDayOfMonth(Ljava/lang/Integer;)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getDate()Ljava/util/Calendar;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->date:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDayOfMonth()Ljava/lang/Integer;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->dayOfMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->enabled:Z

    return v0
.end method

.method public isToday()Z
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->date:Ljava/util/Calendar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 59
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 62
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 66
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    .line 67
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v5, v4, :cond_1

    const/4 v4, 0x5

    .line 68
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v3, v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public setData(Ljava/lang/Object;)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public setDate(Ljava/util/Calendar;)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->date:Ljava/util/Calendar;

    return-object p0
.end method

.method public setDayOfMonth(Ljava/lang/Integer;)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->dayOfMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEnabled(Z)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->enabled:Z

    return-object p0
.end method
