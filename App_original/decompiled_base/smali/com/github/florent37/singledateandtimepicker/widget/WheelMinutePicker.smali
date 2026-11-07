.class public Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;
.super Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;
.source "WheelMinutePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnFinishedLoopListener;,
        Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnMinuteChangedListener;
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
.field private onFinishedLoopListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnFinishedLoopListener;

.field private onMinuteChangedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnMinuteChangedListener;

.field private stepMinutes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private convertItemToMinute(Ljava/lang/Object;)I
    .locals 0

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private findIndexOfMinute(I)I
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 56
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v2, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemText(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_0

    return v1

    .line 63
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public findIndexOfDate(Ljava/util/Date;)I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getMinuteOf(Ljava/util/Date;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->findIndexOfMinute(I)I

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

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3b

    if-gt v0, v1, :cond_0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->stepMinutes:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getCurrentMinute()I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->getCurrentItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->convertItemToMinute(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 78
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 81
    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xc

    .line 82
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->getCurrentLocale()Ljava/util/Locale;

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

    const/4 v0, 0x5

    .line 34
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->stepMinutes:I

    return-void
.end method

.method protected bridge synthetic initDefault()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->initDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDefault()Ljava/lang/String;
    .locals 2

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v1, 0xc

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishedLoop()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onFinishedLoop()V

    .line 123
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->onFinishedLoopListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnFinishedLoopListener;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnFinishedLoopListener;->onFinishedLoop(Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onItemSelected(ILjava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->onItemSelected(ILjava/lang/String;)V

    return-void
.end method

.method protected onItemSelected(ILjava/lang/String;)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onItemSelected(ILjava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->onMinuteChangedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnMinuteChangedListener;

    if-eqz p1, :cond_0

    .line 116
    invoke-direct {p0, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->convertItemToMinute(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnMinuteChangedListener;->onMinuteChanged(Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;I)V

    :cond_0
    return-void
.end method

.method public setOnFinishedLoopListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnFinishedLoopListener;)Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->onFinishedLoopListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnFinishedLoopListener;

    return-object p0
.end method

.method public setOnMinuteChangedListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnMinuteChangedListener;)Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->onMinuteChangedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnMinuteChangedListener;

    return-object p0
.end method

.method public setStepSizeMinutes(I)V
    .locals 1

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 89
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->stepMinutes:I

    .line 90
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->updateAdapter()V

    :cond_0
    return-void
.end method
