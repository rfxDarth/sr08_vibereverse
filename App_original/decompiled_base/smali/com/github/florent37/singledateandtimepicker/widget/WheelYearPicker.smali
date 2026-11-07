.class public Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;
.super Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;
.source "WheelYearPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker$OnYearSelectedListener;
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
.field protected maxYear:I

.field protected minYear:I

.field private onYearSelectedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker$OnYearSelectedListener;

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;


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

.method private convertItemToYear(I)I
    .locals 1

    .line 100
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->minYear:I

    add-int/2addr v0, p1

    return v0
.end method

.method private getTodayText()Ljava/lang/String;
    .locals 1

    .line 50
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$string;->picker_today:I

    invoke-virtual {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected generateAdapterValues(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 77
    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->minYear:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 79
    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->minYear:I

    :goto_0
    iget v3, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->maxYear:I

    if-gt v1, v3, :cond_0

    .line 80
    invoke-virtual {v0, v2, v2}, Ljava/util/Calendar;->add(II)V

    .line 81
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getCurrentYear()I
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getCurrentItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->convertItemToYear(I)I

    move-result v0

    return v0
.end method

.method protected getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected init()V
    .locals 3

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit16 v1, v0, -0x96

    .line 39
    iput v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->minYear:I

    add-int/lit8 v0, v0, 0x64

    .line 40
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->maxYear:I

    return-void
.end method

.method protected bridge synthetic initDefault()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->initDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDefault()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->getTodayText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onItemSelected(ILjava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->onItemSelected(ILjava/lang/String;)V

    return-void
.end method

.method protected onItemSelected(ILjava/lang/String;)V
    .locals 1

    .line 55
    iget-object p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->onYearSelectedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker$OnYearSelectedListener;

    if-eqz p2, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->convertItemToYear(I)I

    move-result p2

    .line 57
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->onYearSelectedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker$OnYearSelectedListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker$OnYearSelectedListener;->onYearSelected(Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;II)V

    :cond_0
    return-void
.end method

.method public setMaxYear(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->maxYear:I

    .line 63
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->notifyDatasetChanged()V

    return-void
.end method

.method public setMinYear(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->minYear:I

    .line 68
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->notifyDatasetChanged()V

    return-void
.end method

.method public setOnYearSelectedListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker$OnYearSelectedListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->onYearSelectedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker$OnYearSelectedListener;

    return-void
.end method
