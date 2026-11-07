.class public Lcom/github/florent37/singledateandtimepicker/DateHelper;
.super Ljava/lang/Object;
.source "DateHelper.java"


# instance fields
.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/DateHelper;->timeZone:Ljava/util/TimeZone;

    .line 14
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/DateHelper;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 18
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/DateHelper;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public static compareDateIgnoreTime(Ljava/util/Date;Ljava/util/Date;)I
    .locals 0

    .line 76
    invoke-static {p0}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getZeroTimeDateWithoutTimeZone(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    .line 77
    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getZeroTimeDateWithoutTimeZone(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method private static getZeroTimeDateWithoutTimeZone(Ljava/util/Date;)Ljava/util/Date;
    .locals 2

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xb

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 85
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 86
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 87
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 88
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCalendarOfDate(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xe

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 38
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public getDay(Ljava/util/Date;)I
    .locals 1

    .line 72
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getCalendarOfDate(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method public getHour(Ljava/util/Date;)I
    .locals 1

    .line 43
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getCalendarOfDate(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method public getHour(Ljava/util/Date;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getHourOfDay(Ljava/util/Date;)I

    move-result p1

    return p1

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getHour(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public getHourOfDay(Ljava/util/Date;)I
    .locals 1

    .line 47
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getCalendarOfDate(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method public getMinuteOf(Ljava/util/Date;)I
    .locals 1

    .line 59
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getCalendarOfDate(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method public getMonth(Ljava/util/Date;)I
    .locals 1

    .line 68
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getCalendarOfDate(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/DateHelper;->timeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/DateHelper;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public today()Ljava/util/Date;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
