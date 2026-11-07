.class public Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;
.super Landroid/app/Activity;
.source "PregnancySetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private due_date_data:Ljava/lang/String;

.field private due_date_layout:Landroid/widget/LinearLayout;

.field private due_date_text:Landroid/widget/TextView;

.field private iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field private menstruation_start:Landroid/widget/LinearLayout;

.field private menstruation_start_data:Ljava/lang/String;

.field private menstruation_start_text:Landroid/widget/TextView;

.field private menstruation_title:Landroid/widget/LinearLayout;

.field private save_layout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 88
    const-string v0, "2017-11-06"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_start_data:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->due_date_data:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->due_date_data:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->due_date_data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->due_date_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_start_data:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_start_data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_start_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->refreshDue_date()V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_start"

    const-string v2, "2022-10-01"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_start_data:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_start_text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_due_date_start"

    const-string v2, "2017-11-06"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->due_date_data:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->due_date_text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshDue_date()V
    .locals 4

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 75
    :try_start_0
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_start_data:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 77
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 79
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x5

    const/16 v3, 0x118

    .line 80
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 82
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 83
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 84
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->due_date_data:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->due_date_text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private saveData()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_start"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_start_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_due_date_start"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->due_date_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1303d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->finish()V

    return-void
.end method

.method private setDue_date(Landroid/view/View;)V
    .locals 11

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 129
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->due_date_data:Ljava/lang/String;

    .line 130
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 131
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 132
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    .line 133
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v5, 0x7f0d012c

    const/4 v6, 0x0

    .line 135
    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v5, 0x7f0a05a9

    .line 137
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    .line 138
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 139
    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    const/16 v1, 0x7e4

    .line 140
    invoke-virtual {v5, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const/16 v1, 0x7e1

    .line 141
    invoke-virtual {v5, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 142
    invoke-virtual {v5, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 143
    invoke-virtual {v5, v3}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 144
    invoke-virtual {v5, v3}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    const/high16 v1, 0x60000

    .line 145
    invoke-virtual {v5, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    const v7, 0x7f0a05a8

    .line 147
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/NumberPicker;

    const/16 v8, 0xc

    .line 148
    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 149
    invoke-virtual {v7, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 150
    invoke-virtual {v7, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 151
    invoke-virtual {v7, v3}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 152
    invoke-virtual {v7, v3}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 153
    invoke-virtual {v7, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    const v8, 0x7f0a05a5

    .line 155
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    const/16 v9, 0x1f

    .line 157
    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 158
    invoke-virtual {v8, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 159
    invoke-virtual {v8, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 161
    invoke-virtual {p0, v2, v4, v8}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->checkMonthDayCount(IILandroid/widget/NumberPicker;)V

    .line 163
    invoke-virtual {v8, v3}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 164
    invoke-virtual {v8, v3}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 165
    invoke-virtual {v8, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 167
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$2;

    invoke-direct {v0, p0, v5, v7, v8}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    invoke-virtual {v5, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 174
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$3;

    invoke-direct {v0, p0, v5, v7, v8}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    invoke-virtual {v7, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1302a1

    .line 183
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$4;

    invoke-direct {v0, p0, v5, v7, v8}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    const v1, 0x7f13016b

    .line 184
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f13015a

    .line 194
    invoke-virtual {p1, v0, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private setMenstruationStart(Landroid/view/View;)V
    .locals 12

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 198
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_start_data:Ljava/lang/String;

    .line 199
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 200
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    .line 201
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    .line 202
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v6, 0x7f0d012c

    const/4 v7, 0x0

    .line 204
    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v6, 0x7f0a05a9

    .line 206
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPicker;

    .line 207
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 208
    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 209
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const/16 v1, 0x7d0

    .line 210
    invoke-virtual {v6, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 211
    invoke-virtual {v6, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 212
    invoke-virtual {v6, v4}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 213
    invoke-virtual {v6, v4}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    const/high16 v1, 0x60000

    .line 214
    invoke-virtual {v6, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    const v2, 0x7f0a05a8

    .line 216
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    const/16 v8, 0xc

    .line 217
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 218
    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 219
    invoke-virtual {v2, v5}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 220
    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 221
    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 222
    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    const v8, 0x7f0a05a5

    .line 224
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    const/16 v9, 0x1f

    .line 226
    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 227
    invoke-virtual {v8, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 228
    invoke-virtual {v8, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 230
    invoke-virtual {p0, v3, v5, v8}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->checkMonthDayCount(IILandroid/widget/NumberPicker;)V

    .line 232
    invoke-virtual {v8, v4}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 233
    invoke-virtual {v8, v4}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 234
    invoke-virtual {v8, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 236
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$5;

    invoke-direct {v0, p0, v6, v2, v8}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    invoke-virtual {v6, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 243
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$6;

    invoke-direct {v0, p0, v6, v2, v8}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 250
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f130297

    .line 252
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$7;

    invoke-direct {v0, p0, v6, v2, v8}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$7;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    const v1, 0x7f13016b

    .line 253
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f13015a

    .line 264
    invoke-virtual {p1, v0, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected checkMonthDayCount(IILandroid/widget/NumberPicker;)V
    .locals 3

    .line 267
    invoke-virtual {p3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_3

    const/4 v2, 0x7

    if-eq p2, v2, :cond_3

    const/16 v2, 0x8

    if-eq p2, v2, :cond_3

    const/16 v2, 0xa

    if-eq p2, v2, :cond_3

    const/16 v2, 0xc

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 279
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->checkLeapYear(I)Z

    move-result p1

    if-ne p1, v1, :cond_1

    const/16 p1, 0x1d

    goto :goto_1

    :cond_1
    const/16 p1, 0x1c

    goto :goto_1

    :cond_2
    const/16 p1, 0x1e

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p1, 0x1f

    :goto_1
    if-le v0, p1, :cond_4

    .line 290
    invoke-virtual {p3, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 291
    :cond_4
    invoke-virtual {p3, p1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0157

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a02bb

    if-eq v0, v1, :cond_1

    const p1, 0x7f0a0383

    if-eq v0, p1, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->saveData()V

    return-void

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->setMenstruationStart(Landroid/view/View;)V

    return-void

    .line 97
    :cond_2
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->setDue_date(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0d004f

    .line 40
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->setContentView(I)V

    const p1, 0x7f0a023d

    .line 41
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 42
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02bd

    .line 48
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_title:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0383

    .line 49
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->save_layout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0157

    .line 50
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->due_date_layout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a02bb

    .line 51
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_start:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0158

    .line 53
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->due_date_text:Landroid/widget/TextView;

    const p1, 0x7f0a02bc

    .line 54
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_start_text:Landroid/widget/TextView;

    .line 56
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->save_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->due_date_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_start:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->menstruation_title:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 121
    const-string v2, "cmd"

    const-string/jumbo v3, "sendfemalereminder"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
