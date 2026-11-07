.class public Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;
.super Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;
.source "WheelHourPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$OnHourChangedListener;,
        Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$FinishedLoopListener;
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
.field private finishedLoopListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$FinishedLoopListener;

.field private hourChangedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$OnHourChangedListener;

.field private hoursStep:I

.field protected isAmPm:Z

.field private maxHour:I

.field private minHour:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private convertItemToHour(Ljava/lang/Object;)I
    .locals 2

    .line 137
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 138
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->isAmPm:Z

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 142
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public findIndexOfDate(Ljava/util/Date;)I
    .locals 5

    .line 69
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->isAmPm:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 72
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 73
    rem-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/Date;->setHours(I)V

    .line 74
    invoke-super {p0, v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->findIndexOfDate(Ljava/util/Date;)I

    move-result p1

    return p1

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->findIndexOfDate(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method protected generateAdapterValues(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->isAmPm:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->hoursStep:I

    :goto_0
    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->maxHour:I

    if-ge v0, v1, :cond_1

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->hoursStep:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 59
    :cond_0
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->minHour:I

    :goto_1
    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->maxHour:I

    if-gt v0, v1, :cond_1

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->hoursStep:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public getCurrentHour()I
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->getCurrentItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->convertItemToHour(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 82
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 85
    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    .line 86
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%1$02d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected init()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->isAmPm:Z

    .line 39
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->minHour:I

    const/16 v0, 0x17

    .line 40
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->maxHour:I

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->hoursStep:I

    return-void
.end method

.method protected bridge synthetic initDefault()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->initDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDefault()Ljava/lang/String;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->today()Ljava/util/Date;

    move-result-object v1

    iget-boolean v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->isAmPm:Z

    invoke-virtual {v0, v1, v2}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getHour(Ljava/util/Date;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishedLoop()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onFinishedLoop()V

    .line 176
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->finishedLoopListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$FinishedLoopListener;

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0, p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$FinishedLoopListener;->onFinishedLoop(Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onItemSelected(ILjava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->onItemSelected(ILjava/lang/String;)V

    return-void
.end method

.method protected onItemSelected(ILjava/lang/String;)V
    .locals 0

    .line 156
    invoke-super {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onItemSelected(ILjava/lang/Object;)V

    .line 158
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->hourChangedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$OnHourChangedListener;

    if-eqz p1, :cond_0

    .line 159
    invoke-direct {p0, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->convertItemToHour(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$OnHourChangedListener;->onHourChanged(Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setDefault(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->setDefault(Ljava/lang/String;)V

    return-void
.end method

.method public setDefault(Ljava/lang/String;)V
    .locals 1

    .line 94
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 95
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->isAmPm:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0xc

    .line 99
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setDefault(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setHourChangedListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$OnHourChangedListener;)Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->hourChangedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$OnHourChangedListener;

    return-object p0
.end method

.method public setIsAmPm(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->isAmPm:Z

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    .line 108
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->setMaxHour(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x17

    .line 110
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->setMaxHour(I)V

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->updateAdapter()V

    return-void
.end method

.method public setMaxHour(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    .line 117
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->maxHour:I

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->notifyDatasetChanged()V

    return-void
.end method

.method public setMinHour(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    .line 124
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->minHour:I

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->notifyDatasetChanged()V

    return-void
.end method

.method public setOnFinishedLoopListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$FinishedLoopListener;)Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->finishedLoopListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$FinishedLoopListener;

    return-object p0
.end method

.method public setStepSizeHours(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    .line 131
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->hoursStep:I

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->notifyDatasetChanged()V

    return-void
.end method
