.class public Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;
.super Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;
.source "WheelDayOfMonthPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$DayOfMonthSelectedListener;,
        Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$FinishedLoopListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private daysInMonth:I

.field private finishedLoopListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$FinishedLoopListener;

.field private listener:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$DayOfMonthSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected generateAdapterValues(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 32
    :goto_0
    iget v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->daysInMonth:I

    if-gt v1, v2, :cond_0

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "%02d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getCurrentDay()I
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->getCurrentItemPosition()I

    move-result v0

    return v0
.end method

.method public getDaysInMonth()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->daysInMonth:I

    return v0
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic initDefault()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->initDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDefault()Ljava/lang/String;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->today()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getDay(Ljava/util/Date;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishedLoop()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onFinishedLoop()V

    .line 52
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->finishedLoopListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$FinishedLoopListener;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$FinishedLoopListener;->onFinishedLoop(Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onItemSelected(ILjava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->onItemSelected(ILjava/lang/String;)V

    return-void
.end method

.method protected onItemSelected(ILjava/lang/String;)V
    .locals 0

    .line 71
    iget-object p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->listener:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$DayOfMonthSelectedListener;

    if-eqz p2, :cond_0

    .line 72
    invoke-interface {p2, p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$DayOfMonthSelectedListener;->onDayOfMonthSelected(Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;I)V

    :cond_0
    return-void
.end method

.method public setDayOfMonthSelectedListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$DayOfMonthSelectedListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->listener:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$DayOfMonthSelectedListener;

    return-void
.end method

.method public setDaysInMonth(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->daysInMonth:I

    return-void
.end method

.method public setOnFinishedLoopListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$FinishedLoopListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->finishedLoopListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$FinishedLoopListener;

    return-void
.end method
