.class public Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;
.super Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;
.source "WheelMonthPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker$MonthSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final MONTH_FORMAT:Ljava/lang/String; = "MMMM"


# instance fields
.field private displayMonthNumbers:Z

.field private lastScrollPosition:I

.field private listener:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker$MonthSelectedListener;

.field private monthFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->displayMonthNumbers:Z

    return-void
.end method


# virtual methods
.method public displayMonthNumbers()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->displayMonthNumbers:Z

    return v0
.end method

.method protected generateAdapterValues(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->getMonthFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 42
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v2}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0xc

    if-ge v4, v5, :cond_1

    const/4 v5, 0x2

    .line 47
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 48
    iget-boolean v5, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->displayMonthNumbers:Z

    if-eqz v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const-string v5, "%02d"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getCurrentMonth()I
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->getCurrentItemPosition()I

    move-result v0

    return v0
.end method

.method public getMonthFormat()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->monthFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "MMMM"

    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->monthFormat:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic initDefault()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->initDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDefault()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->today()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getMonth(Ljava/util/Date;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onItemCurrentScroll(ILjava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->onItemCurrentScroll(ILjava/lang/String;)V

    return-void
.end method

.method protected onItemCurrentScroll(ILjava/lang/String;)V
    .locals 1

    .line 77
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->lastScrollPosition:I

    if-eq v0, p1, :cond_0

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->onItemSelected(ILjava/lang/String;)V

    .line 79
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->lastScrollPosition:I

    :cond_0
    return-void
.end method

.method protected bridge synthetic onItemSelected(ILjava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->onItemSelected(ILjava/lang/String;)V

    return-void
.end method

.method protected onItemSelected(ILjava/lang/String;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->listener:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker$MonthSelectedListener;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker$MonthSelectedListener;->onMonthSelected(Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDisplayMonthNumbers(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->displayMonthNumbers:Z

    return-void
.end method

.method public setMonthFormat(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->monthFormat:Ljava/lang/String;

    return-void
.end method

.method public setOnMonthSelectedListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker$MonthSelectedListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->listener:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker$MonthSelectedListener;

    return-void
.end method
