.class public Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;
.super Landroid/widget/LinearLayout;
.source "SingleDateAndTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x0

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final DELAY_BEFORE_CHECK_PAST:I = 0xc8

.field private static final FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field private static final FORMAT_24_HOUR:Ljava/lang/CharSequence;

.field public static final IS_CURVED_DEFAULT:Z = false

.field public static final IS_CYCLIC_DEFAULT:Z = true

.field public static final MUST_BE_ON_FUTURE_DEFAULT:Z = false

.field private static final PM_HOUR_ADDITION:I = 0xc

.field private static final VISIBLE_ITEM_COUNT_DEFAULT:I = 0x7


# instance fields
.field private final amPmPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;

.field private dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

.field private final daysOfMonthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;

.field private final daysPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

.field private defaultDate:Ljava/util/Date;

.field private displayDays:Z

.field private displayDaysOfMonth:Z

.field private displayHours:Z

.field private displayMinutes:Z

.field private displayMonth:Z

.field private displayYears:Z

.field private dtSelector:Landroid/view/View;

.field private final hoursPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

.field private isAmPm:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$OnDateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private maxDate:Ljava/util/Date;

.field private minDate:Ljava/util/Date;

.field private final minutesPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;

.field private final monthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

.field private mustBeOnFuture:Z

.field private pickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;",
            ">;"
        }
    .end annotation
.end field

.field private final yearsPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "EEE d MMM H:mm"

    sput-object v0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->FORMAT_24_HOUR:Ljava/lang/CharSequence;

    .line 54
    const-string v0, "EEE d MMM h:mm a"

    sput-object v0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->FORMAT_12_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance p3, Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-direct {p3}, Lcom/github/florent37/singledateandtimepicker/DateHelper;-><init>()V

    iput-object p3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    .line 74
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    .line 76
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->listeners:Ljava/util/List;

    const/4 p3, 0x0

    .line 88
    iput-boolean p3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayYears:Z

    .line 89
    iput-boolean p3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayMonth:Z

    .line 90
    iput-boolean p3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayDaysOfMonth:Z

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayDays:Z

    .line 92
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayMinutes:Z

    .line 93
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayHours:Z

    .line 108
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->defaultDate:Ljava/util/Date;

    .line 109
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->isAmPm:Z

    .line 111
    sget v1, Lcom/github/florent37/singledateandtimepicker/R$layout;->single_day_and_time_picker:I

    invoke-static {p1, v1, p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 113
    sget v1, Lcom/github/florent37/singledateandtimepicker/R$id;->yearPicker:I

    invoke-virtual {p0, v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;

    iput-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->yearsPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;

    .line 114
    sget v2, Lcom/github/florent37/singledateandtimepicker/R$id;->monthPicker:I

    invoke-virtual {p0, v2}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    iput-object v2, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->monthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    .line 115
    sget v3, Lcom/github/florent37/singledateandtimepicker/R$id;->daysOfMonthPicker:I

    invoke-virtual {p0, v3}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;

    iput-object v3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysOfMonthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;

    .line 116
    sget v4, Lcom/github/florent37/singledateandtimepicker/R$id;->daysPicker:I

    invoke-virtual {p0, v4}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

    iput-object v4, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

    .line 117
    sget v5, Lcom/github/florent37/singledateandtimepicker/R$id;->minutesPicker:I

    invoke-virtual {p0, v5}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;

    iput-object v5, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->minutesPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;

    .line 118
    sget v6, Lcom/github/florent37/singledateandtimepicker/R$id;->hoursPicker:I

    invoke-virtual {p0, v6}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    iput-object v6, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->hoursPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    .line 119
    sget v7, Lcom/github/florent37/singledateandtimepicker/R$id;->amPmPicker:I

    invoke-virtual {p0, v7}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;

    iput-object v7, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->amPmPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;

    .line 120
    sget v8, Lcom/github/florent37/singledateandtimepicker/R$id;->dtSelector:I

    invoke-virtual {p0, v8}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dtSelector:Landroid/view/View;

    .line 122
    iget-object v8, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    const/4 v9, 0x7

    new-array v9, v9, [Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    aput-object v4, v9, p3

    aput-object v5, v9, v0

    const/4 p3, 0x2

    aput-object v6, v9, p3

    const/4 p3, 0x3

    aput-object v7, v9, p3

    const/4 p3, 0x4

    aput-object v3, v9, p3

    const/4 p3, 0x5

    aput-object v2, v9, p3

    const/4 p3, 0x6

    aput-object v1, v9, p3

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {v8, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    iget-object p3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 132
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setDateHelper(Lcom/github/florent37/singledateandtimepicker/DateHelper;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->updateListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->checkMinMaxDate(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Ljava/util/Date;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->maxDate:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;Ljava/util/Date;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->isAfterMaxDate(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayDaysOfMonth:Z

    return p0
.end method

.method static synthetic access$300(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->updateDaysOfMonth()V

    return-void
.end method

.method static synthetic access$400(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayMonth:Z

    return p0
.end method

.method static synthetic access$500(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->monthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    return-object p0
.end method

.method static synthetic access$600(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->hoursPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    return-object p0
.end method

.method static synthetic access$700(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

    return-object p0
.end method

.method static synthetic access$800(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Ljava/util/Date;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->minDate:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$900(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;Ljava/util/Date;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->isBeforeMinDate(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method private checkAfterMaxDate(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V
    .locals 3

    .line 446
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$12;

    invoke-direct {v0, p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$12;-><init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private checkBeforeMinDate(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V
    .locals 3

    .line 433
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$11;

    invoke-direct {v0, p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$11;-><init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private checkMinMaxDate(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V
    .locals 0

    .line 428
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->checkBeforeMinDate(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V

    .line 429
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->checkAfterMaxDate(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V

    return-void
.end method

.method private checkSettings()V
    .locals 2

    .line 605
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayDays:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayDaysOfMonth:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayMonth:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can either display days with months or days and months separately"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 611
    sget-object v0, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 613
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 614
    new-instance v1, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    sget v2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_todayText:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {p0, v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setTodayText(Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;)V

    .line 615
    sget v1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_textColor:I

    sget v2, Lcom/github/florent37/singledateandtimepicker/R$color;->picker_default_text_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setTextColor(I)V

    .line 616
    sget v1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_selectedTextColor:I

    sget v2, Lcom/github/florent37/singledateandtimepicker/R$color;->picker_default_selected_text_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setSelectedTextColor(I)V

    .line 617
    sget v1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_selectorColor:I

    sget v2, Lcom/github/florent37/singledateandtimepicker/R$color;->picker_default_selector_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setSelectorColor(I)V

    .line 618
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_itemSpacing:I

    sget v1, Lcom/github/florent37/singledateandtimepicker/R$dimen;->wheelSelectorHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setItemSpacing(I)V

    .line 619
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_curvedMaxAngle:I

    const/16 v1, 0x5a

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setCurvedMaxAngle(I)V

    .line 620
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_selectorHeight:I

    sget v1, Lcom/github/florent37/singledateandtimepicker/R$dimen;->wheelSelectorHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setSelectorHeight(I)V

    .line 621
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_textSize:I

    sget v1, Lcom/github/florent37/singledateandtimepicker/R$dimen;->WheelItemTextSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setTextSize(I)V

    .line 622
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_curved:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setCurved(Z)V

    .line 623
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_cyclic:I

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setCyclic(Z)V

    .line 624
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_mustBeOnFuture:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMustBeOnFuture(Z)V

    .line 625
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_visibleItemCount:I

    const/4 v2, 0x7

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setVisibleItemCount(I)V

    .line 627
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_stepSizeMinutes:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setStepSizeMinutes(I)V

    .line 628
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_stepSizeHours:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setStepSizeHours(I)V

    .line 630
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

    sget v1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_dayCount:I

    const/16 v2, 0x16c

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->setDayCount(I)V

    .line 631
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_displayDays:I

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayDays:Z

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayDays(Z)V

    .line 632
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_displayMinutes:I

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayMinutes:Z

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayMinutes(Z)V

    .line 633
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_displayHours:I

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayHours:Z

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayHours(Z)V

    .line 634
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_displayMonth:I

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayMonth:Z

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayMonths(Z)V

    .line 635
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_displayYears:I

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayYears:Z

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayYears(Z)V

    .line 636
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_displayDaysOfMonth:I

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayDaysOfMonth:Z

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayDaysOfMonth(Z)V

    .line 637
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_displayMonthNumbers:I

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->monthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->displayMonthNumbers()Z

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayMonthNumbers(Z)V

    .line 638
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_monthFormat:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 639
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "MMMM"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMonthFormat(Ljava/lang/String;)V

    .line 640
    sget p1, Lcom/github/florent37/singledateandtimepicker/R$styleable;->SingleDateAndTimePicker_picker_textAlign:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setTextAlign(I)V

    .line 642
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->checkSettings()V

    .line 643
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMinYear()V

    .line 645
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 646
    iget-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayDaysOfMonth:Z

    if-eqz p1, :cond_1

    .line 647
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 648
    iget-object p2, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {p2}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 649
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->updateDaysOfMonth(Ljava/util/Calendar;)V

    .line 651
    :cond_1
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

    invoke-virtual {p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->updateAdapter()V

    return-void
.end method

.method private isAfterMaxDate(Ljava/util/Date;)Z
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getCalendarOfDate(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getCalendarOfDate(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isBeforeMinDate(Ljava/util/Date;)Z
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getCalendarOfDate(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getCalendarOfDate(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private setMinYear()V
    .locals 4

    .line 594
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayYears:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->minDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->maxDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 595
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 597
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 598
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->yearsPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->setMinYear(I)V

    .line 599
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 600
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->yearsPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->setMaxYear(I)V

    :cond_0
    return-void
.end method

.method private updateDaysOfMonth()V
    .locals 3

    .line 565
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 566
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 567
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v2}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 568
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 569
    invoke-direct {p0, v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->updateDaysOfMonth(Ljava/util/Calendar;)V

    return-void
.end method

.method private updateDaysOfMonth(Ljava/util/Calendar;)V
    .locals 1

    const/4 v0, 0x5

    .line 573
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    .line 574
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysOfMonthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->setDaysInMonth(I)V

    .line 575
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysOfMonthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;

    invoke-virtual {p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->updateAdapter()V

    return-void
.end method

.method private updateListener()V
    .locals 4

    .line 556
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 557
    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->isAmPm:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->FORMAT_12_HOUR:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->FORMAT_24_HOUR:Ljava/lang/CharSequence;

    .line 558
    :goto_0
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$OnDateChangedListener;

    .line 560
    invoke-interface {v3, v1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$OnDateChangedListener;->onDateChanged(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addOnDateChangedListener(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$OnDateChangedListener;)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkPickersMinMax()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 476
    invoke-direct {p0, v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->checkMinMaxDate(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDate()Ljava/util/Date;
    .locals 7

    .line 481
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->hoursPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->getCurrentHour()I

    move-result v0

    .line 482
    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->isAmPm:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->amPmPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->isPm()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0xc

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->minutesPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->getCurrentMinute()I

    move-result v1

    .line 487
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 488
    iget-object v3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v3}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 489
    iget-boolean v3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayDays:Z

    if-eqz v3, :cond_1

    .line 490
    iget-object v3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

    invoke-virtual {v3}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->getCurrentDate()Ljava/util/Date;

    move-result-object v3

    .line 491
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 493
    :cond_1
    iget-boolean v3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayMonth:Z

    if-eqz v3, :cond_2

    .line 494
    iget-object v3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->monthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    invoke-virtual {v3}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->getCurrentMonth()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 497
    :cond_2
    iget-boolean v3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayYears:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 498
    iget-object v3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->yearsPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;

    invoke-virtual {v3}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->getCurrentYear()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 501
    :cond_3
    iget-boolean v3, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayDaysOfMonth:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    .line 502
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    .line 503
    iget-object v6, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysOfMonthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;

    invoke-virtual {v6}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->getCurrentDay()I

    move-result v6

    if-lt v6, v5, :cond_4

    .line 504
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 506
    :cond_4
    iget-object v5, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysOfMonthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;

    invoke-virtual {v5}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->getCurrentDay()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    :cond_5
    :goto_0
    const/16 v3, 0xb

    .line 510
    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 511
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 512
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 513
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 514
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDate()Ljava/util/Date;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->maxDate:Ljava/util/Date;

    return-object v0
.end method

.method public getMinDate()Ljava/util/Date;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->minDate:Ljava/util/Date;

    return-object v0
.end method

.method public isAmPm()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->isAmPm:Z

    return v0
.end method

.method public mustBeOnFuture()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->mustBeOnFuture:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 147
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 149
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->yearsPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$1;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$1;-><init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->setOnYearSelectedListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker$OnYearSelectedListener;)V

    .line 161
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->monthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$2;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$2;-><init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->setOnMonthSelectedListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker$MonthSelectedListener;)V

    .line 173
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysOfMonthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$3;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$3;-><init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    .line 174
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->setDayOfMonthSelectedListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$DayOfMonthSelectedListener;)V

    .line 182
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysOfMonthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$4;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$4;-><init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    .line 183
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->setOnFinishedLoopListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$FinishedLoopListener;)V

    .line 193
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$5;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$5;-><init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    .line 194
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->setOnDaySelectedListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker$OnDaySelectedListener;)V

    .line 202
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->minutesPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$7;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$7;-><init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    .line 203
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->setOnMinuteChangedListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnMinuteChangedListener;)Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;

    move-result-object v0

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$6;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$6;-><init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    .line 210
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->setOnFinishedLoopListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnFinishedLoopListener;)Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;

    .line 217
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->hoursPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$9;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$9;-><init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    .line 218
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->setOnFinishedLoopListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$FinishedLoopListener;)Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    move-result-object v0

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$8;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$8;-><init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    .line 224
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->setHourChangedListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker$OnHourChangedListener;)Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    .line 232
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->amPmPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$10;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$10;-><init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    .line 233
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->setAmPmListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker$AmPmListener;)V

    .line 241
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->defaultDate:Ljava/util/Date;

    invoke-virtual {p0, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDefaultDate(Ljava/util/Date;)V

    return-void
.end method

.method public removeOnDateChangedListener(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$OnDateChangedListener;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public selectDate(Ljava/util/Calendar;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    .line 545
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 546
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 547
    invoke-virtual {v1, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->selectDate(Ljava/util/Date;)V

    goto :goto_0

    .line 550
    :cond_1
    iget-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayDaysOfMonth:Z

    if-eqz p1, :cond_2

    .line 551
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->updateDaysOfMonth()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setCurved(Z)V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 322
    invoke-virtual {v1, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setCurved(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurvedMaxAngle(I)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 316
    invoke-virtual {v1, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setCurvedMaxAngle(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCustomLocale(Ljava/util/Locale;)V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 422
    invoke-virtual {v1, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setCustomLocale(Ljava/util/Locale;)V

    .line 423
    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->updateAdapter()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCyclic(Z)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 328
    invoke-virtual {v1, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setCyclic(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDateHelper(Lcom/github/florent37/singledateandtimepicker/DateHelper;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    return-void
.end method

.method public setDayFormatter(Ljava/text/SimpleDateFormat;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->setDayFormatter(Ljava/text/SimpleDateFormat;)Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

    :cond_0
    return-void
.end method

.method public setDefaultDate(Ljava/util/Date;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 527
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 529
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 530
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->defaultDate:Ljava/util/Date;

    .line 532
    invoke-direct {p0, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->updateDaysOfMonth(Ljava/util/Calendar;)V

    .line 534
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 535
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->defaultDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setDefaultDate(Ljava/util/Date;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDisplayDays(Z)V
    .locals 1

    .line 274
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayDays:Z

    .line 275
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->setVisibility(I)V

    .line 276
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->checkSettings()V

    return-void
.end method

.method public setDisplayDaysOfMonth(Z)V
    .locals 2

    .line 264
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayDaysOfMonth:Z

    .line 265
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysOfMonthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->updateDaysOfMonth()V

    .line 270
    :cond_1
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->checkSettings()V

    return-void
.end method

.method public setDisplayHours(Z)V
    .locals 1

    .line 285
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayHours:Z

    .line 286
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->hoursPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->setVisibility(I)V

    .line 288
    iget-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->isAmPm:Z

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setIsAmPm(Z)V

    .line 289
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->hoursPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->isAmPm:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->setIsAmPm(Z)V

    return-void
.end method

.method public setDisplayMinutes(Z)V
    .locals 1

    .line 280
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayMinutes:Z

    .line 281
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->minutesPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->setVisibility(I)V

    return-void
.end method

.method public setDisplayMonthNumbers(Z)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->monthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->setDisplayMonthNumbers(Z)V

    .line 294
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->monthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    invoke-virtual {p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->updateAdapter()V

    return-void
.end method

.method public setDisplayMonths(Z)V
    .locals 1

    .line 258
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayMonth:Z

    .line 259
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->monthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->setVisibility(I)V

    .line 260
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->checkSettings()V

    return-void
.end method

.method public setDisplayYears(Z)V
    .locals 1

    .line 253
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayYears:Z

    .line 254
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->yearsPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->setVisibility(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 246
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 248
    invoke-virtual {v1, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIsAmPm(Z)V
    .locals 2

    .line 380
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->isAmPm:Z

    .line 382
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->amPmPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->displayHours:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->hoursPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->setIsAmPm(Z)V

    return-void
.end method

.method public setItemSpacing(I)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 310
    invoke-virtual {v1, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setItemSpace(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxDate(Ljava/util/Date;)V
    .locals 2

    .line 413
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 415
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 416
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->maxDate:Ljava/util/Date;

    .line 417
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMinYear()V

    return-void
.end method

.method public setMinDate(Ljava/util/Date;)V
    .locals 2

    .line 401
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 403
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 404
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->minDate:Ljava/util/Date;

    .line 405
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMinYear()V

    return-void
.end method

.method public setMonthFormat(Ljava/lang/String;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->monthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->setMonthFormat(Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->monthPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    invoke-virtual {p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->updateAdapter()V

    return-void
.end method

.method public setMustBeOnFuture(Z)V
    .locals 1

    .line 579
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->mustBeOnFuture:Z

    .line 580
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->setShowOnlyFutureDate(Z)V

    if-eqz p1, :cond_0

    .line 582
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 583
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 584
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->minDate:Ljava/util/Date;

    :cond_0
    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 340
    invoke-virtual {v1, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setSelectedItemTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectorColor(I)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dtSelector:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setSelectorHeight(I)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dtSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 369
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 370
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dtSelector:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setStepSizeHours(I)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->hoursPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->setStepSizeHours(I)V

    return-void
.end method

.method public setStepSizeMinutes(I)V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->minutesPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;->setStepSizeMinutes(I)V

    return-void
.end method

.method public setTextAlign(I)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 352
    invoke-virtual {v1, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setItemAlign(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 346
    invoke-virtual {v1, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setItemTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 334
    invoke-virtual {v1, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setItemTextSize(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public setTodayText(Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 303
    iget-object v0, p1, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->daysPicker:Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;->setTodayText(Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 359
    invoke-virtual {v1, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setVisibleItemCount(I)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->pickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 375
    invoke-virtual {v1, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setVisibleItemCount(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
