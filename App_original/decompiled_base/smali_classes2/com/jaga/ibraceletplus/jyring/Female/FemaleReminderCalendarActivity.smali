.class public Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "FemaleReminderCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private back_today_layout:Landroid/widget/LinearLayout;

.field private calendar_due_date:Ljava/util/Calendar;

.field private calendar_start:Ljava/util/Calendar;

.field private child_birthday_data:Ljava/lang/String;

.field private child_born_layout:Landroid/widget/RelativeLayout;

.field private child_born_text:Landroid/widget/TextView;

.field private child_sex_data:Ljava/lang/String;

.field private due_date_data:Ljava/lang/String;

.field private edit_layout:Landroid/widget/LinearLayout;

.field private female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

.field private female_reminder_message_text:Landroid/widget/TextView;

.field private iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field private menstruation_length_data:I

.field private menstruation_period_data:I

.field private menstruation_start_data:Ljava/lang/String;

.field private period_ovulation_day:J

.field private sdf:Ljava/text/SimpleDateFormat;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x2

    .line 30
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_length_data:I

    const/16 v0, 0x1e

    .line 31
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_period_data:I

    .line 32
    const-string v0, "2017-11-06"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_start_data:Ljava/lang/String;

    .line 33
    const-string v1, "1"

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->child_sex_data:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->child_birthday_data:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->due_date_data:Ljava/lang/String;

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->type:I

    .line 40
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    return-void
.end method

.method private CheckIsToday(Ljava/util/Calendar;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 231
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    .line 232
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    .line 233
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_1

    const/4 v3, 0x5

    .line 234
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne p1, v1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method private DealWithDate(Ljava/util/Calendar;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 302
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 303
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 304
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 306
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_start:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 307
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v6, v1, v4

    if-gez v6, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    sub-long/2addr v1, v4

    const-wide/32 v4, 0x5265c00

    .line 312
    div-long/2addr v1, v4

    .line 315
    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_length_data:I

    add-int/lit8 v5, v4, -0x1

    int-to-long v5, v5

    const/4 v7, 0x1

    cmp-long v8, v1, v5

    if-gtz v8, :cond_1

    return v7

    .line 320
    :cond_1
    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_period_data:I

    int-to-long v8, v5

    div-long v8, v1, v8

    .line 321
    iget-wide v10, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->period_ovulation_day:J

    const-wide/16 v12, 0x13

    sub-long v14, v10, v12

    const-wide/16 v16, 0xa

    sub-long v10, v10, v16

    const-wide/16 v18, 0x0

    cmp-long v6, v8, v18

    if-ltz v6, :cond_3

    int-to-long v10, v5

    .line 324
    rem-long v10, v1, v10

    sub-int/2addr v4, v7

    int-to-long v6, v4

    cmp-long v4, v10, v6

    if-gtz v4, :cond_2

    const/4 v1, 0x2

    return v1

    :cond_2
    const-wide/16 v6, 0x1

    add-long/2addr v8, v6

    int-to-long v4, v5

    mul-long v8, v8, v4

    sub-long v14, v8, v12

    sub-long v10, v8, v16

    :cond_3
    cmp-long v4, v1, v14

    if-ltz v4, :cond_4

    cmp-long v4, v1, v10

    if-gtz v4, :cond_4

    const/4 v1, 0x3

    return v1

    :cond_4
    return v3
.end method

.method private DealWithDateOld(Ljava/util/Calendar;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 238
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 239
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 240
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 242
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_start:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 243
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v6, v1, v4

    if-gez v6, :cond_0

    return v3

    :cond_0
    sub-long/2addr v1, v4

    const-wide/32 v4, 0x5265c00

    .line 248
    div-long/2addr v1, v4

    .line 251
    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_length_data:I

    add-int/lit8 v5, v4, -0x1

    int-to-long v5, v5

    const/4 v7, 0x1

    cmp-long v8, v1, v5

    if-gtz v8, :cond_1

    return v7

    .line 256
    :cond_1
    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_period_data:I

    int-to-long v8, v5

    div-long v8, v1, v8

    const-wide/16 v10, 0x1

    cmp-long v6, v8, v10

    if-ltz v6, :cond_2

    int-to-long v8, v5

    .line 258
    rem-long v8, v1, v8

    sub-int/2addr v4, v7

    int-to-long v6, v4

    cmp-long v4, v8, v6

    if-gtz v4, :cond_2

    const/4 v1, 0x2

    return v1

    .line 264
    :cond_2
    iget-wide v6, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->period_ovulation_day:J

    const-wide/16 v8, 0x5

    sub-long v10, v6, v8

    const-wide/16 v12, -0x4

    sub-long v12, v6, v12

    sub-long v8, v6, v8

    const-wide/16 v14, 0x0

    const/4 v4, 0x3

    cmp-long v16, v8, v14

    if-gez v16, :cond_5

    cmp-long v6, v1, v10

    if-ltz v6, :cond_3

    cmp-long v6, v1, v12

    if-gtz v6, :cond_3

    return v4

    :cond_3
    cmp-long v6, v1, v12

    if-lez v6, :cond_4

    int-to-long v5, v5

    .line 272
    rem-long/2addr v1, v5

    cmp-long v5, v1, v10

    if-ltz v5, :cond_4

    cmp-long v5, v1, v12

    if-gtz v5, :cond_4

    return v4

    :cond_4
    return v3

    :cond_5
    const/4 v8, 0x4

    cmp-long v9, v1, v6

    if-nez v9, :cond_6

    return v8

    :cond_6
    cmp-long v9, v1, v6

    if-lez v9, :cond_7

    sub-long v6, v1, v6

    const/16 p1, 0x3

    const/4 v9, 0x0

    int-to-long v3, v5

    .line 284
    rem-long/2addr v6, v3

    cmp-long v3, v6, v14

    if-nez v3, :cond_8

    return v8

    :cond_7
    const/16 p1, 0x3

    const/4 v9, 0x0

    :cond_8
    cmp-long v3, v1, v10

    if-ltz v3, :cond_9

    cmp-long v3, v1, v12

    if-gtz v3, :cond_9

    return p1

    :cond_9
    cmp-long v3, v1, v12

    if-lez v3, :cond_a

    int-to-long v3, v5

    .line 293
    rem-long/2addr v1, v3

    cmp-long v3, v1, v10

    if-ltz v3, :cond_a

    cmp-long v3, v1, v12

    if-gtz v3, :cond_a

    return p1

    :cond_a
    return v9
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->type:I

    return p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;Ljava/util/Calendar;)I
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->showDayDetails(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;Ljava/util/Calendar;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->showChildBorn(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;Ljava/util/Calendar;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->CheckIsToday(Ljava/util/Calendar;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;Ljava/util/Calendar;)I
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->DealWithDate(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)Ljava/util/Calendar;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_due_date:Ljava/util/Calendar;

    return-object p0
.end method

.method private initCalendar()V
    .locals 2

    const v0, 0x7f0a0181

    .line 102
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    .line 103
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->setOnCellItemClick(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemClick;)V

    .line 128
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$3;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->setOnCellItemChange(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemChange;)V

    .line 144
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->setOnItemRender(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;)V

    .line 208
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->notifyChanges()V

    return-void
.end method

.method private initFemaleData()V
    .locals 5

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->type:I

    .line 73
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_length"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_length_data:I

    .line 74
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_period"

    const-string v2, "30"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_period_data:I

    .line 75
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_start"

    const-string v2, "2022-10-01"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_start_data:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_child_sex"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->child_sex_data:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_child_birthday"

    const-string v2, "2017-11-06"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->child_birthday_data:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_due_date_start"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->due_date_data:Ljava/lang/String;

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_start:Ljava/util/Calendar;

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_due_date:Ljava/util/Calendar;

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_start_data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_start:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 87
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_due_date:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->due_date_data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_start:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 92
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_start:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 93
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_start:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 94
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_due_date:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 95
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_due_date:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 96
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_due_date:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 98
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_period_data:I

    add-int/lit8 v0, v0, -0x13

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->period_ovulation_day:J

    return-void
.end method

.method private showChildBorn(Ljava/util/Calendar;)V
    .locals 4

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 421
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 422
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 423
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 425
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_due_date:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 426
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    .line 429
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->child_born_text:Landroid/widget/TextView;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    .line 431
    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 432
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->child_born_text:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDayDetails(Ljava/util/Calendar;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 342
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 343
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 345
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 346
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 347
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 349
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->calendar_start:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 350
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-gez v1, :cond_0

    .line 353
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_reminder_message_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v4

    :cond_0
    sub-long/2addr v7, v5

    const-wide/32 v5, 0x5265c00

    .line 356
    div-long/2addr v7, v5

    .line 359
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_length_data:I

    add-int/lit8 v3, v1, -0x1

    int-to-long v5, v3

    const v3, 0x7f130290

    const-wide/16 v9, 0x1

    const/4 v11, 0x1

    const-string v12, " "

    cmp-long v13, v7, v5

    if-gtz v13, :cond_1

    .line 360
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_reminder_message_text:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v3, v6, v4

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v11

    .line 365
    :cond_1
    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_period_data:I

    int-to-long v13, v5

    div-long v13, v7, v13

    cmp-long v6, v13, v9

    if-ltz v6, :cond_2

    move-wide v15, v9

    int-to-long v9, v5

    .line 367
    rem-long v9, v7, v9

    sub-int/2addr v1, v11

    move/from16 p1, v5

    const/4 v6, 0x0

    int-to-long v4, v1

    cmp-long v1, v9, v4

    if-gtz v1, :cond_3

    .line 370
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_reminder_message_text:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    add-long/2addr v7, v15

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->menstruation_period_data:I

    int-to-long v9, v3

    mul-long v13, v13, v9

    sub-long/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    return v1

    :cond_2
    move/from16 p1, v5

    move-wide v15, v9

    const/4 v6, 0x0

    .line 375
    :cond_3
    iget-wide v3, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->period_ovulation_day:J

    const-wide/16 v9, 0x5

    sub-long v13, v3, v9

    const-wide/16 v17, -0x4

    sub-long v17, v3, v17

    sub-long v9, v3, v9

    const v1, 0x7f1302a5

    const-wide/16 v19, 0x0

    const/16 v21, 0x3

    const v5, 0x7f13029d

    cmp-long v22, v9, v19

    if-gez v22, :cond_6

    cmp-long v3, v7, v13

    if-ltz v3, :cond_4

    cmp-long v3, v7, v17

    if-gtz v3, :cond_4

    .line 380
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_reminder_message_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sub-long/2addr v7, v13

    add-long/2addr v7, v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v4, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v21

    :cond_4
    cmp-long v3, v7, v17

    if-lez v3, :cond_5

    move/from16 v9, p1

    int-to-long v3, v9

    .line 384
    rem-long/2addr v7, v3

    cmp-long v3, v7, v13

    if-ltz v3, :cond_5

    cmp-long v3, v7, v17

    if-gtz v3, :cond_5

    .line 386
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_reminder_message_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sub-long/2addr v7, v13

    add-long/2addr v7, v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v4, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v21

    .line 390
    :cond_5
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_reminder_message_text:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v6

    :cond_6
    move/from16 v9, p1

    const/4 v10, 0x4

    const/16 p1, 0x0

    const v6, 0x7f13029e

    cmp-long v22, v7, v3

    if-nez v22, :cond_7

    .line 396
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_reminder_message_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v10

    :cond_7
    cmp-long v22, v7, v3

    if-lez v22, :cond_8

    sub-long v3, v7, v3

    const/16 v22, 0x4

    int-to-long v10, v9

    .line 400
    rem-long/2addr v3, v10

    cmp-long v10, v3, v19

    if-nez v10, :cond_8

    .line 401
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_reminder_message_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v22

    :cond_8
    cmp-long v3, v7, v13

    if-ltz v3, :cond_9

    cmp-long v3, v7, v17

    if-gtz v3, :cond_9

    .line 407
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_reminder_message_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sub-long/2addr v7, v13

    add-long/2addr v7, v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, p1

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v21

    :cond_9
    cmp-long v3, v7, v17

    if-lez v3, :cond_a

    int-to-long v3, v9

    .line 411
    rem-long/2addr v7, v3

    cmp-long v3, v7, v13

    if-ltz v3, :cond_a

    cmp-long v3, v7, v17

    if-gtz v3, :cond_a

    .line 413
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_reminder_message_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sub-long/2addr v7, v13

    add-long/2addr v7, v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, p1

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v21

    .line 417
    :cond_a
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_reminder_message_text:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0080

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a015f

    if-eq p1, v0, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FEMALE_EDIT_MODE"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 444
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 445
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->finish()V

    return-void

    .line 440
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_CalendarCard:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->setBackToday()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0041

    .line 46
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->setStatusFemaleRemind()V

    const p1, 0x7f0a023d

    .line 48
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 49
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0182

    .line 55
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->female_reminder_message_text:Landroid/widget/TextView;

    const p1, 0x7f0a00db

    .line 56
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->child_born_text:Landroid/widget/TextView;

    const p1, 0x7f0a0080

    .line 58
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->back_today_layout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00da

    .line 59
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->child_born_layout:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a015f

    .line 60
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->edit_layout:Landroid/widget/LinearLayout;

    .line 62
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->back_today_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->edit_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->initFemaleData()V

    .line 66
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->initCalendar()V

    return-void
.end method
