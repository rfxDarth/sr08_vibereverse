.class public Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
.super Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;
.source "SingleDateAndTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;,
        Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;,
        Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;
    }
.end annotation


# instance fields
.field private bottomSheetHeight:Ljava/lang/Integer;

.field private bottomSheetHelper:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

.field private final dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

.field private displayListener:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;

.field private listener:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;

.field private picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

.field private title:Ljava/lang/String;

.field private titleTextSize:Ljava/lang/Integer;

.field private todayText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;-><init>()V

    .line 26
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-direct {v0}, Lcom/github/florent37/singledateandtimepicker/DateHelper;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    if-eqz p2, :cond_0

    .line 47
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$layout;->bottom_sheet_picker_bottom_sheet:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$layout;->bottom_sheet_picker:I

    .line 49
    :goto_0
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-direct {v0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->bottomSheetHelper:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    .line 51
    new-instance p1, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$1;

    invoke-direct {p1, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$1;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;)V

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->setListener(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;)Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ZLcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;Landroid/view/View;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->init(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayListener:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;)Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setDisplayMonth(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setDisplayYears(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;Ljava/util/TimeZone;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setTimeZone(Ljava/util/TimeZone;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setDisplayListener(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;)V

    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 4

    .line 73
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->picker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    .line 74
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDateHelper(Lcom/github/florent37/singledateandtimepicker/DateHelper;)V

    .line 75
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->bottomSheetHeight:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->bottomSheetHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {v1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    :cond_0
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->buttonOk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 85
    new-instance v1, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$2;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$2;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->titleTextSize:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    :cond_2
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->sheetContentLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 104
    new-instance v1, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$3;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$3;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->backgroundColor:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    :cond_3
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->sheetTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 118
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->titleTextColor:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->titleTextColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    :cond_4
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->titleTextSize:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 125
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->todayText:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setTodayText(Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;)V

    .line 131
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->pickerTitleHeader:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 133
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    :cond_6
    iget-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->curved:Z

    if-eqz p1, :cond_7

    .line 137
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setCurved(Z)V

    .line 138
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setVisibleItemCount(I)V

    goto :goto_0

    .line 140
    :cond_7
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setCurved(Z)V

    .line 141
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setVisibleItemCount(I)V

    .line 143
    :goto_0
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->mustBeOnFuture:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMustBeOnFuture(Z)V

    .line 145
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->minutesStep:I

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setStepSizeMinutes(I)V

    .line 147
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->dayFormatter:Ljava/text/SimpleDateFormat;

    if-eqz p1, :cond_8

    .line 148
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->dayFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDayFormatter(Ljava/text/SimpleDateFormat;)V

    .line 151
    :cond_8
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->customLocale:Ljava/util/Locale;

    if-eqz p1, :cond_9

    .line 152
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->customLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setCustomLocale(Ljava/util/Locale;)V

    .line 155
    :cond_9
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    if-eqz p1, :cond_a

    .line 156
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setSelectedTextColor(I)V

    .line 160
    :cond_a
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayYears:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayYears(Z)V

    .line 162
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->minDate:Ljava/util/Date;

    if-eqz p1, :cond_b

    .line 163
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->minDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMinDate(Ljava/util/Date;)V

    .line 166
    :cond_b
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->maxDate:Ljava/util/Date;

    if-eqz p1, :cond_c

    .line 167
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->maxDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMaxDate(Ljava/util/Date;)V

    .line 170
    :cond_c
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->defaultDate:Ljava/util/Date;

    if-eqz p1, :cond_d

    .line 171
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->defaultDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDefaultDate(Ljava/util/Date;)V

    .line 174
    :cond_d
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->isAmPm:Ljava/lang/Boolean;

    if-eqz p1, :cond_e

    .line 175
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->isAmPm:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setIsAmPm(Z)V

    .line 178
    :cond_e
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayDays:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayDays(Z)V

    .line 179
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayMonth:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayMonths(Z)V

    .line 180
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayDaysOfMonth:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayDaysOfMonth(Z)V

    .line 181
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayMinutes:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayMinutes(Z)V

    .line 182
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayHours:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayHours(Z)V

    return-void
.end method

.method private setDisplayListener(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayListener:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;

    return-void
.end method

.method private setDisplayMonth(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayMonth:Z

    return-object p0
.end method

.method private setDisplayYears(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayYears:Z

    return-object p0
.end method

.method private setTimeZone(Ljava/util/TimeZone;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 313
    invoke-super {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->close()V

    .line 314
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->bottomSheetHelper:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->hide()V

    .line 316
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->listener:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->okClicked:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->listener:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->picker:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;->onDateSelected(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 323
    invoke-super {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->dismiss()V

    .line 324
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->bottomSheetHelper:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->dismiss()V

    return-void
.end method

.method public display()V
    .locals 1

    .line 307
    invoke-super {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->display()V

    .line 308
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->bottomSheetHelper:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->display()V

    return-void
.end method

.method public setBottomSheetHeight(Ljava/lang/Integer;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->bottomSheetHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public setCurved(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->curved:Z

    return-object p0
.end method

.method public setCustomLocale(Ljava/util/Locale;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->customLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public setDayFormatter(Ljava/text/SimpleDateFormat;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->dayFormatter:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public setDefaultDate(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->defaultDate:Ljava/util/Date;

    return-object p0
.end method

.method public setDisplayDays(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayDays:Z

    return-object p0
.end method

.method public setDisplayDaysOfMonth(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayDaysOfMonth:Z

    return-object p0
.end method

.method public setDisplayHours(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 260
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayHours:Z

    return-object p0
.end method

.method public setDisplayMinutes(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayMinutes:Z

    return-object p0
.end method

.method public setDisplayMonthNumbers(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 255
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->displayMonthNumbers:Z

    return-object p0
.end method

.method public setFocusable(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->bottomSheetHelper:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->setFocusable(Z)V

    return-object p0
.end method

.method public setIsAmPm(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 291
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->isAmPm:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setListener(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->listener:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;

    return-object p0
.end method

.method public setMaxDateRange(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->maxDate:Ljava/util/Date;

    return-object p0
.end method

.method public setMinDateRange(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->minDate:Ljava/util/Date;

    return-object p0
.end method

.method public setMinutesStep(I)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 196
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->minutesStep:I

    return-object p0
.end method

.method public setMustBeOnFuture(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->mustBeOnFuture:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleTextSize(Ljava/lang/Integer;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->titleTextSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTodayText(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->todayText:Ljava/lang/String;

    return-object p0
.end method
