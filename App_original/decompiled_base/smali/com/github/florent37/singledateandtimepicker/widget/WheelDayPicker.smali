.class public Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;
.super Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;
.source "WheelDayPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker$OnDaySelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker<",
        "Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_FORMAT_PATTERN:Ljava/lang/String; = "EEE d MMM"


# instance fields
.field private customDateFormat:Ljava/text/SimpleDateFormat;

.field private dayCount:I

.field private onDaySelectedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker$OnDaySelectedListener;

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x16c

    .line 25
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->dayCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x16c

    .line 25
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->dayCount:I

    return-void
.end method

.method private convertItemToDate(I)Ljava/util/Date;
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v2}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 133
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getData()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 135
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 136
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    iget-object v4, v4, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->label:Ljava/lang/String;

    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->getTodayText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 142
    :goto_1
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->getTodayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x6

    sub-int/2addr p1, v3

    .line 145
    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->add(II)V

    .line 146
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method private getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->customDateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private getTodayText()Ljava/lang/String;
    .locals 1

    .line 57
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$string;->picker_today:I

    invoke-virtual {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected generateAdapterValues(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v2}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 77
    :cond_0
    iget p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->dayCount:I

    mul-int/lit8 p1, p1, -0x1

    :goto_0
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x5

    .line 78
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    :goto_1
    const/4 v3, 0x1

    if-gez p1, :cond_1

    .line 80
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 81
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 82
    new-instance v5, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    invoke-virtual {p0, v3}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 86
    :cond_1
    new-instance p1, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->getTodayText()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct {p1, v1, v5}, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 89
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 91
    :goto_2
    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->dayCount:I

    if-ge v2, v1, :cond_2

    .line 92
    invoke-virtual {p1, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 93
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 94
    new-instance v5, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    invoke-virtual {p0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public getCurrentDate()Ljava/util/Date;
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getCurrentItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->convertItemToDate(I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected init()V
    .locals 3

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE d MMM"

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 40
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method protected initDefault()Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;
    .locals 3

    .line 52
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->getTodayText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method protected bridge synthetic initDefault()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->initDefault()Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    move-result-object v0

    return-object v0
.end method

.method protected onItemSelected(ILcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->onDaySelectedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker$OnDaySelectedListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p2, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->label:Ljava/lang/String;

    iget-object p2, p2, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->date:Ljava/util/Date;

    invoke-interface {v0, p0, p1, v1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker$OnDaySelectedListener;->onDaySelected(Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;ILjava/lang/String;Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onItemSelected(ILjava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->onItemSelected(ILcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;)V

    return-void
.end method

.method public setCustomLocale(Ljava/util/Locale;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setCustomLocale(Ljava/util/Locale;)V

    .line 46
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "EEE d MMM"

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 47
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public setDayCount(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->dayCount:I

    return-void
.end method

.method public setDayFormatter(Ljava/text/SimpleDateFormat;)Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 106
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->customDateFormat:Ljava/text/SimpleDateFormat;

    .line 107
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->updateAdapter()V

    return-object p0
.end method

.method public setOnDaySelectedListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker$OnDaySelectedListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->onDaySelectedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker$OnDaySelectedListener;

    return-void
.end method

.method public setTodayText(Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;)V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 153
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 154
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    iget-object v2, v2, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->label:Ljava/lang/String;

    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->getTodayText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->notifyDatasetChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
