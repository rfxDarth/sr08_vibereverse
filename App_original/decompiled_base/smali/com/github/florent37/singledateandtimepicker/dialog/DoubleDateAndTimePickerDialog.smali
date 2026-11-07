.class public Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
.super Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;
.source "DoubleDateAndTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;,
        Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Listener;
    }
.end annotation


# instance fields
.field private bottomSheetHeight:Ljava/lang/Integer;

.field private bottomSheetHelper:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

.field private buttonOkText:Ljava/lang/String;

.field private buttonTab0:Landroid/widget/TextView;

.field private buttonTab1:Landroid/widget/TextView;

.field private final dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

.field private listener:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Listener;

.field private pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

.field private pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

.field private secondDateAfterFirst:Z

.field private tab0:Landroid/view/View;

.field private tab0Date:Ljava/util/Date;

.field private tab0Days:Z

.field private tab0Hours:Z

.field private tab0Minutes:Z

.field private tab0Text:Ljava/lang/String;

.field private tab1:Landroid/view/View;

.field private tab1Date:Ljava/util/Date;

.field private tab1Days:Z

.field private tab1Hours:Z

.field private tab1Minutes:Z

.field private tab1Text:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleTextSize:Ljava/lang/Integer;

.field private todayText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;-><init>()V

    .line 39
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-direct {v0}, Lcom/github/florent37/singledateandtimepicker/DateHelper;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    if-eqz p2, :cond_0

    .line 65
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$layout;->bottom_sheet_double_picker_bottom_sheet:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$layout;->bottom_sheet_double_picker:I

    .line 67
    :goto_0
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-direct {v0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->bottomSheetHelper:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    .line 68
    new-instance p1, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$1;

    invoke-direct {p1, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$1;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)V

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->setListener(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;)Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ZLcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;Landroid/view/View;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->init(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)Landroid/view/View;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->displayTab0()V

    return-void
.end method

.method static synthetic access$300(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->displayTab1()V

    return-void
.end method

.method static synthetic access$400(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->isTab0Visible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    return-object p0
.end method

.method static synthetic access$700(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;Ljava/util/TimeZone;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTimeZone(Ljava/util/TimeZone;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method private displayTab0()V
    .locals 2

    .line 458
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->isTab0Visible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonTab0:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 460
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonTab1:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 462
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 463
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method private displayTab1()V
    .locals 2

    .line 468
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->isTab0Visible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonTab0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 470
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonTab1:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 472
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 473
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method private getTabsListDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 289
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, 0x10100a1

    .line 290
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v1, -0x10100a1

    .line 291
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private init(Landroid/view/View;)V
    .locals 4

    .line 86
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->buttonTab0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonTab0:Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->buttonTab1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonTab1:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->picker_tab_0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    .line 89
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->picker_tab_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    .line 90
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->tab0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0:Landroid/view/View;

    .line 91
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->tab1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->bottomSheetHeight:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->bottomSheetHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {v1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    if-eqz v0, :cond_1

    .line 102
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->bottomSheetHeight:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->bottomSheetHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 105
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {v1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    :cond_1
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->sheetTitleLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    sget v1, Lcom/github/florent37/singledateandtimepicker/R$id;->sheetTitle:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->title:Ljava/lang/String;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->titleTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->titleTextColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->titleTextSize:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 118
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 122
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->todayText:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setTodayText(Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;)V

    .line 129
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->todayText:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setTodayText(Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;)V

    .line 131
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->sheetContentLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 133
    new-instance v1, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$2;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$2;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->backgroundColor:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 140
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 144
    :cond_6
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$3;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$3;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 153
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonTab0:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 155
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0Text:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 156
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonTab0:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_7
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonTab0:Landroid/widget/TextView;

    new-instance v2, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$4;

    invoke-direct {v2, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$4;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1Text:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 166
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonTab1:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_8
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonTab1:Landroid/widget/TextView;

    new-instance v2, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$5;

    invoke-direct {v2, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$5;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonTab0:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->getTabsListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonTab1:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->getTabsListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    sget v0, Lcom/github/florent37/singledateandtimepicker/R$id;->buttonOk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 182
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonOkText:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 183
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :cond_9
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 187
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    :cond_a
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->titleTextSize:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 191
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 195
    :cond_b
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$6;

    invoke-direct {v0, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$6;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->curved:Z

    if-eqz p1, :cond_c

    .line 208
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {p1, v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setCurved(Z)V

    .line 209
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {p1, v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setCurved(Z)V

    .line 210
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setVisibleItemCount(I)V

    .line 211
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setVisibleItemCount(I)V

    goto :goto_1

    .line 213
    :cond_c
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setCurved(Z)V

    .line 214
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setCurved(Z)V

    .line 215
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setVisibleItemCount(I)V

    .line 216
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setVisibleItemCount(I)V

    .line 219
    :goto_1
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0Days:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayDays(Z)V

    .line 220
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0Hours:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayHours(Z)V

    .line 221
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0Minutes:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayMinutes(Z)V

    .line 222
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1Days:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayDays(Z)V

    .line 223
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1Hours:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayHours(Z)V

    .line 224
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1Minutes:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDisplayMinutes(Z)V

    .line 226
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->mustBeOnFuture:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMustBeOnFuture(Z)V

    .line 227
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->mustBeOnFuture:Z

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMustBeOnFuture(Z)V

    .line 229
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->minutesStep:I

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setStepSizeMinutes(I)V

    .line 230
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->minutesStep:I

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setStepSizeMinutes(I)V

    .line 232
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    if-eqz p1, :cond_d

    .line 233
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setSelectedTextColor(I)V

    .line 234
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->mainColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setSelectedTextColor(I)V

    .line 237
    :cond_d
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->minDate:Ljava/util/Date;

    if-eqz p1, :cond_e

    .line 238
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->minDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMinDate(Ljava/util/Date;)V

    .line 239
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->minDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMinDate(Ljava/util/Date;)V

    .line 242
    :cond_e
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->maxDate:Ljava/util/Date;

    if-eqz p1, :cond_f

    .line 243
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->maxDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMaxDate(Ljava/util/Date;)V

    .line 244
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->maxDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMaxDate(Ljava/util/Date;)V

    .line 247
    :cond_f
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->defaultDate:Ljava/util/Date;

    if-eqz p1, :cond_10

    .line 248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->defaultDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 250
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->selectDate(Ljava/util/Calendar;)V

    .line 251
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->selectDate(Ljava/util/Calendar;)V

    .line 254
    :cond_10
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0Date:Ljava/util/Date;

    if-eqz p1, :cond_11

    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 256
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0Date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 257
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->selectDate(Ljava/util/Calendar;)V

    .line 260
    :cond_11
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1Date:Ljava/util/Date;

    if-eqz p1, :cond_12

    .line 261
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 262
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1Date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 263
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->selectDate(Ljava/util/Calendar;)V

    .line 266
    :cond_12
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->dayFormatter:Ljava/text/SimpleDateFormat;

    if-eqz p1, :cond_13

    .line 267
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->dayFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDayFormatter(Ljava/text/SimpleDateFormat;)V

    .line 268
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->dayFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setDayFormatter(Ljava/text/SimpleDateFormat;)V

    .line 271
    :cond_13
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->customLocale:Ljava/util/Locale;

    if-eqz p1, :cond_14

    .line 272
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->customLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setCustomLocale(Ljava/util/Locale;)V

    .line 273
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->customLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setCustomLocale(Ljava/util/Locale;)V

    .line 276
    :cond_14
    iget-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->secondDateAfterFirst:Z

    if-eqz p1, :cond_15

    .line 277
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    new-instance v0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$7;

    invoke-direct {v0, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$7;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)V

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->addOnDateChangedListener(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$OnDateChangedListener;)V

    :cond_15
    return-void
.end method

.method private isTab0Visible()Z
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setTimeZone(Ljava/util/TimeZone;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->setTimeZone(Ljava/util/TimeZone;)V

    .line 427
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setTimeZone(Ljava/util/TimeZone;)V

    .line 428
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 446
    invoke-super {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->close()V

    .line 447
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->bottomSheetHelper:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->hide()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 440
    invoke-super {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->dismiss()V

    .line 441
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->bottomSheetHelper:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->dismiss()V

    return-void
.end method

.method public display()V
    .locals 1

    .line 434
    invoke-super {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->display()V

    .line 435
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->bottomSheetHelper:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->display()V

    return-void
.end method

.method protected onClose()V
    .locals 5

    .line 451
    invoke-super {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->onClose()V

    .line 452
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->listener:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Listener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->okClicked:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->listener:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Listener;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->getDate()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->pickerTab1:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {v2}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->getDate()Ljava/util/Date;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/Date;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Listener;->onDateSelected(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setBottomSheetHeight(Ljava/lang/Integer;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->bottomSheetHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public setButtonOkText(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->buttonOkText:Ljava/lang/String;

    return-object p0
.end method

.method public setCurved(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 336
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->curved:Z

    return-object p0
.end method

.method public setCustomLocale(Ljava/util/Locale;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->customLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public setDayFormatter(Ljava/text/SimpleDateFormat;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->dayFormatter:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public setDefaultDate(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->defaultDate:Ljava/util/Date;

    return-object p0
.end method

.method public setFocusable(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->bottomSheetHelper:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-virtual {v0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->setFocusable(Z)V

    return-object p0
.end method

.method public setListener(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Listener;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->listener:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Listener;

    return-object p0
.end method

.method public setMaxDateRange(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->maxDate:Ljava/util/Date;

    return-object p0
.end method

.method public setMinDateRange(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->minDate:Ljava/util/Date;

    return-object p0
.end method

.method public setMinutesStep(I)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 341
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->minutesStep:I

    return-object p0
.end method

.method public setMustBeOnFuture(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 346
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->mustBeOnFuture:Z

    return-object p0
.end method

.method public setSecondDateAfterFirst(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 386
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->secondDateAfterFirst:Z

    return-object p0
.end method

.method public setTab0Date(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0Date:Ljava/util/Date;

    return-object p0
.end method

.method public setTab0DisplayDays(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 391
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0Days:Z

    return-object p0
.end method

.method public setTab0DisplayHours(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 396
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0Hours:Z

    return-object p0
.end method

.method public setTab0DisplayMinutes(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 401
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0Minutes:Z

    return-object p0
.end method

.method public setTab0Text(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab0Text:Ljava/lang/String;

    return-object p0
.end method

.method public setTab1Date(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1Date:Ljava/util/Date;

    return-object p0
.end method

.method public setTab1DisplayDays(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 406
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1Days:Z

    return-object p0
.end method

.method public setTab1DisplayHours(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 411
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1Hours:Z

    return-object p0
.end method

.method public setTab1DisplayMinutes(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 416
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1Minutes:Z

    return-object p0
.end method

.method public setTab1Text(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->tab1Text:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleTextSize(Ljava/lang/Integer;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->titleTextSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTodayText(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->todayText:Ljava/lang/String;

    return-object p0
.end method
