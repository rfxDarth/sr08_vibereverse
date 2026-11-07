.class public Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;
.super Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;
.source "WheelAmPmPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker$AmPmListener;
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
.field public static final INDEX_AM:I = 0x0

.field public static final INDEX_PM:I = 0x1


# instance fields
.field private amPmListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker$AmPmListener;


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


# virtual methods
.method public findIndexOfDate(Ljava/util/Date;)I
    .locals 2

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected generateAdapterValues(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$string;->picker_am:I

    .line 49
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->getLocalizedString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/github/florent37/singledateandtimepicker/R$string;->picker_pm:I

    .line 50
    invoke-virtual {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 91
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 94
    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0x9

    .line 95
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget p1, Lcom/github/florent37/singledateandtimepicker/R$string;->picker_pm:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$string;->picker_am:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->getLocalizedString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic initDefault()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->initDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initDefault()Ljava/lang/String;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->today()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getHour(Ljava/util/Date;Z)I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 40
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$string;->picker_pm:I

    invoke-virtual {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$string;->picker_am:I

    invoke-virtual {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAm()Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->getCurrentItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAmPosition(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPm()Z
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->getCurrentItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic onItemSelected(ILjava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->onItemSelected(ILjava/lang/String;)V

    return-void
.end method

.method protected onItemSelected(ILjava/lang/String;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onItemSelected(ILjava/lang/Object;)V

    .line 75
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->amPmListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker$AmPmListener;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->isAm()Z

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker$AmPmListener;->onAmPmChanged(Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;Z)V

    :cond_0
    return-void
.end method

.method public setAmPmListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker$AmPmListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->amPmListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker$AmPmListener;

    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setCyclic(Z)V

    return-void
.end method
