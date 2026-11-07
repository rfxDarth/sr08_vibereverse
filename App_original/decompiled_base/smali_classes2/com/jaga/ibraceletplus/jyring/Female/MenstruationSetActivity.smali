.class public Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "MenstruationSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private child_birthday_data:Ljava/lang/String;

.field private child_birthday_layout:Landroid/widget/LinearLayout;

.field private child_birthday_text:Landroid/widget/TextView;

.field private child_message_layout:Landroid/widget/LinearLayout;

.field private child_sex_data:Ljava/lang/String;

.field private child_sex_layout:Landroid/widget/LinearLayout;

.field private child_sex_text:Landroid/widget/TextView;

.field private iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field private menstruation_length:Landroid/widget/LinearLayout;

.field private menstruation_length_data:Ljava/lang/String;

.field private menstruation_length_text:Landroid/widget/TextView;

.field private menstruation_period:Landroid/widget/LinearLayout;

.field private menstruation_period_data:Ljava/lang/String;

.field private menstruation_period_text:Landroid/widget/TextView;

.field private menstruation_start:Landroid/widget/LinearLayout;

.field private menstruation_start_data:Ljava/lang/String;

.field private menstruation_start_text:Landroid/widget/TextView;

.field private menstruation_title:Landroid/widget/LinearLayout;

.field private save_layout:Landroid/widget/LinearLayout;

.field private title:Landroid/widget/TextView;

.field private type:I

.field private type_image:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->type:I

    .line 37
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 80
    const-string v0, "2"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_length_data:Ljava/lang/String;

    .line 81
    const-string v0, "30"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_period_data:Ljava/lang/String;

    .line 82
    const-string v0, "2017-11-06"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_start_data:Ljava/lang/String;

    .line 83
    const-string v1, "1"

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_sex_data:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_birthday_data:Ljava/lang/String;

    return-void
.end method

.method private SetNumber(Landroid/view/View;Ljava/lang/String;I)V
    .locals 4

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0d0112

    const/4 v1, 0x0

    .line 381
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a03b9

    .line 382
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p3, v2, :cond_0

    .line 385
    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v2, 0xe

    .line 386
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 387
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_length_data:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0

    :cond_0
    if-ne p3, v3, :cond_1

    const/16 v2, 0xf

    .line 389
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v2, 0x64

    .line 390
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 391
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_period_data:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    :cond_1
    :goto_0
    const/high16 v2, 0x60000

    .line 393
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 394
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 395
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 396
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;

    invoke-direct {p2, p0, p3, v0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;ILandroid/widget/NumberPicker;)V

    const p3, 0x7f13016b

    .line 397
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f13015a

    .line 409
    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_sex_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_sex_data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_start_data:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_start_data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_start_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_birthday_data:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_birthday_data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_birthday_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_length_data:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_length_data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_length_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_period_data:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_period_data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_period_text:Landroid/widget/TextView;

    return-object p0
.end method

.method private initData()V
    .locals 4

    .line 87
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->type:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13029a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->type_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_message_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1302a4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->type_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080188

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_message_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f130299

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->type_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080142

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_message_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_length"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_length_data:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_length_text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_period"

    const-string v2, "30"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_period_data:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_period_text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_start"

    const-string v2, "2022-10-01"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_start_data:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_start_text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_child_sex"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_sex_data:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_sex_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130545

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_sex_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130542

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_child_birthday"

    const-string v2, "2017-11-06"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_birthday_data:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_birthday_text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private saveData()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_length"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_length_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_period"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_period_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 194
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_start"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_start_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 195
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_child_sex"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_sex_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_child_birthday"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_birthday_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1303d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 199
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->finish()V

    return-void
.end method

.method private setChildBirthday(Landroid/view/View;)V
    .locals 12

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 284
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_birthday_data:Ljava/lang/String;

    .line 285
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 286
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    .line 287
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    .line 288
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v6, 0x7f0d012c

    const/4 v7, 0x0

    .line 290
    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v6, 0x7f0a05a9

    .line 292
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPicker;

    .line 293
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 294
    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 295
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const/16 v1, 0x7d0

    .line 296
    invoke-virtual {v6, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 297
    invoke-virtual {v6, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 298
    invoke-virtual {v6, v4}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 299
    invoke-virtual {v6, v4}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    const/high16 v1, 0x60000

    .line 300
    invoke-virtual {v6, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    const v2, 0x7f0a05a8

    .line 302
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    const/16 v8, 0xc

    .line 303
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 304
    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 305
    invoke-virtual {v2, v5}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 306
    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 307
    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 308
    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    const v8, 0x7f0a05a5

    .line 310
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    const/16 v9, 0x1f

    .line 312
    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 313
    invoke-virtual {v8, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 314
    invoke-virtual {v8, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 316
    invoke-virtual {p0, v3, v5, v8}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->checkMonthDayCount(IILandroid/widget/NumberPicker;)V

    .line 318
    invoke-virtual {v8, v4}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 319
    invoke-virtual {v8, v4}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 320
    invoke-virtual {v8, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 322
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$8;

    invoke-direct {v0, p0, v6, v2, v8}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$8;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    invoke-virtual {v6, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 329
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$9;

    invoke-direct {v0, p0, v6, v2, v8}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$9;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 336
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f130417

    .line 338
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$10;

    invoke-direct {v0, p0, v6, v2, v8}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$10;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    const v1, 0x7f13016b

    .line 339
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f13015a

    .line 349
    invoke-virtual {p1, v0, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private setChildSex(Landroid/view/View;)V
    .locals 4

    .line 151
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f130542

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130545

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0130

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05a4

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    .line 156
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->setItems(Ljava/util/List;)V

    .line 157
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "female_reminder_child_sex"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 158
    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->setSeletion(I)V

    .line 159
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$2;

    invoke-direct {p1, p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)V

    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->setOnWheelViewListener(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$OnWheelViewListener;)V

    .line 165
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f130418

    .line 167
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$4;

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)V

    const v1, 0x7f13016b

    .line 168
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$3;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)V

    const v1, 0x7f13015a

    .line 183
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private setMenstruationStart(Landroid/view/View;)V
    .locals 12

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 215
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_start_data:Ljava/lang/String;

    .line 216
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 217
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    .line 218
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    .line 219
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v6, 0x7f0d012c

    const/4 v7, 0x0

    .line 221
    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v6, 0x7f0a05a9

    .line 223
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPicker;

    .line 224
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 225
    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 226
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const/16 v1, 0x7d0

    .line 227
    invoke-virtual {v6, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 228
    invoke-virtual {v6, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 229
    invoke-virtual {v6, v4}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 230
    invoke-virtual {v6, v4}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    const/high16 v1, 0x60000

    .line 231
    invoke-virtual {v6, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    const v2, 0x7f0a05a8

    .line 233
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    const/16 v8, 0xc

    .line 234
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 235
    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 236
    invoke-virtual {v2, v5}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 237
    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 238
    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 239
    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    const v8, 0x7f0a05a5

    .line 241
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    const/16 v9, 0x1f

    .line 243
    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 244
    invoke-virtual {v8, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 245
    invoke-virtual {v8, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 247
    invoke-virtual {p0, v3, v5, v8}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->checkMonthDayCount(IILandroid/widget/NumberPicker;)V

    .line 249
    invoke-virtual {v8, v4}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 250
    invoke-virtual {v8, v4}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 251
    invoke-virtual {v8, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 253
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$5;

    invoke-direct {v0, p0, v6, v2, v8}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    invoke-virtual {v6, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 260
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$6;

    invoke-direct {v0, p0, v6, v2, v8}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f130297

    .line 269
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$7;

    invoke-direct {v0, p0, v6, v2, v8}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$7;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    const v1, 0x7f13016b

    .line 270
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f13015a

    .line 280
    invoke-virtual {p1, v0, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected checkMonthDayCount(IILandroid/widget/NumberPicker;)V
    .locals 3

    .line 352
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

    .line 364
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

    .line 375
    invoke-virtual {p3, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 376
    :cond_4
    invoke-virtual {p3, p1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return-void

    .line 129
    :sswitch_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->saveData()V

    return-void

    .line 138
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->setMenstruationStart(Landroid/view/View;)V

    return-void

    .line 135
    :sswitch_2
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130294

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->SetNumber(Landroid/view/View;Ljava/lang/String;I)V

    return-void

    .line 132
    :sswitch_3
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130293

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->SetNumber(Landroid/view/View;Ljava/lang/String;I)V

    return-void

    .line 141
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->setChildSex(Landroid/view/View;)V

    return-void

    .line 144
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->setChildBirthday(Landroid/view/View;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00d8 -> :sswitch_5
        0x7f0a00dd -> :sswitch_4
        0x7f0a02b7 -> :sswitch_3
        0x7f0a02b9 -> :sswitch_2
        0x7f0a02bb -> :sswitch_1
        0x7f0a0383 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->requestWindowFeature(I)Z

    const v0, 0x7f0d004a

    .line 43
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->type:I

    const p1, 0x7f0a023d

    .line 45
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 46
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02bd

    .line 53
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_title:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0383

    .line 54
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->save_layout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a02b7

    .line 55
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_length:Landroid/widget/LinearLayout;

    const p1, 0x7f0a02b9

    .line 56
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_period:Landroid/widget/LinearLayout;

    const p1, 0x7f0a02bb

    .line 57
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_start:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00dc

    .line 58
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_message_layout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00dd

    .line 59
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_sex_layout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00d8

    .line 60
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_birthday_layout:Landroid/widget/LinearLayout;

    .line 62
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_title:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->save_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_length:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_period:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_start:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_sex_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_birthday_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02b8

    .line 70
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_length_text:Landroid/widget/TextView;

    const p1, 0x7f0a02ba

    .line 71
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_period_text:Landroid/widget/TextView;

    const p1, 0x7f0a02bc

    .line 72
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->menstruation_start_text:Landroid/widget/TextView;

    const p1, 0x7f0a0436

    .line 73
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->title:Landroid/widget/TextView;

    const p1, 0x7f0a00de

    .line 74
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_sex_text:Landroid/widget/TextView;

    const p1, 0x7f0a00d9

    .line 75
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->child_birthday_text:Landroid/widget/TextView;

    const p1, 0x7f0a0580

    .line 77
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->type_image:Landroid/widget/ImageView;

    .line 78
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 204
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 207
    const-string v2, "cmd"

    const-string/jumbo v3, "sendfemalereminder"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
