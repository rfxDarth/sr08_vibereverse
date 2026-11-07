.class public Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "FemaleReminderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private child_birthday_data:Ljava/lang/String;

.field private child_sex_data:Ljava/lang/String;

.field private female_reminder_switch:Lcom/jaga/ibraceletplus/jyring/widget/view/SwitchButton;

.field private iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field private ivCalendar:Landroid/widget/ImageView;

.field private menstruation_image:Landroid/widget/ImageView;

.field private menstruation_layout:Landroid/widget/LinearLayout;

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

.field private messageState:Ljava/lang/String;

.field private mummy_image:Landroid/widget/ImageView;

.field private mummy_layout:Landroid/widget/LinearLayout;

.field private pregnancy_image:Landroid/widget/ImageView;

.field private pregnancy_layout:Landroid/widget/LinearLayout;

.field private pregnant_image:Landroid/widget/ImageView;

.field private pregnant_layout:Landroid/widget/LinearLayout;

.field private save_layout:Landroid/widget/LinearLayout;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->state:I

    .line 42
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 44
    const-string v0, "2"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_length_data:Ljava/lang/String;

    .line 45
    const-string v0, "30"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_period_data:Ljava/lang/String;

    .line 46
    const-string v0, "2017-11-06"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_start_data:Ljava/lang/String;

    .line 47
    const-string v1, "1"

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->child_sex_data:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->child_birthday_data:Ljava/lang/String;

    .line 212
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->messageState:Ljava/lang/String;

    return-void
.end method

.method private ChangeReminderState(I)V
    .locals 3

    .line 214
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1302a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->messageState:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f13015a

    const/4 v2, 0x0

    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;I)V

    const p1, 0x7f13016b

    .line 218
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private SetNumber(Landroid/view/View;Ljava/lang/String;I)V
    .locals 3

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0d0112

    const/4 v1, 0x0

    .line 393
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a03b9

    .line 394
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    const/4 v2, 0x3

    .line 397
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v2, 0xf

    .line 398
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 399
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_length_data:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    const/16 v2, 0x11

    .line 401
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v2, 0x3c

    .line 402
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 403
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_period_data:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    :cond_1
    :goto_0
    const/high16 v2, 0x60000

    .line 405
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 406
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 407
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 408
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$7;

    invoke-direct {p2, p0, p3, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$7;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;ILandroid/widget/NumberPicker;)V

    const p3, 0x7f13016b

    .line 409
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f13015a

    .line 421
    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->state:I

    return p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->initState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_start_data:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_start_data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_start_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_length_data:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_length_data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_length_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_period_data:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_period_data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_period_text:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkState(I)Z
    .locals 1

    .line 117
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->state:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private initData()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_length"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_length_data:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_length_text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_period"

    const-string v2, "30"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_period_data:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_period_text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_start"

    const-string v2, "2022-10-01"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_start_data:Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_start_text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initState(I)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->pregnant_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->pregnancy_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->mummy_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->mummy_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->pregnancy_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 201
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->pregnant_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private saveData()V
    .locals 9

    .line 259
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_length"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_length_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 260
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_period"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_period_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 261
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_menstruation_start"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_start_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1303d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "Enable_female_remider"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 267
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_start_data:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 268
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    .line 269
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x2

    .line 270
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 272
    :try_start_0
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_length_data:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_period_data:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface/range {v2 .. v8}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setFemaleReminder(ZIIIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "FEMALE_EDIT_MODE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->startActivity(Landroid/content/Intent;)V

    .line 280
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->finish()V

    return-void
.end method

.method private setMenstruationStart(Landroid/view/View;)V
    .locals 12

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 296
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_start_data:Ljava/lang/String;

    .line 297
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 298
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    .line 299
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    .line 300
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v6, 0x7f0d012c

    const/4 v7, 0x0

    .line 302
    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v6, 0x7f0a05a9

    .line 304
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPicker;

    .line 305
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 306
    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 307
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const/16 v1, 0x7d0

    .line 308
    invoke-virtual {v6, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 309
    invoke-virtual {v6, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 310
    invoke-virtual {v6, v4}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 311
    invoke-virtual {v6, v4}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    const/high16 v1, 0x60000

    .line 312
    invoke-virtual {v6, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    const v2, 0x7f0a05a8

    .line 314
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    const/16 v8, 0xc

    .line 315
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 316
    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 317
    invoke-virtual {v2, v5}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 318
    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 319
    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 320
    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    const v8, 0x7f0a05a5

    .line 322
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    const/16 v9, 0x1f

    .line 324
    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 325
    invoke-virtual {v8, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 326
    invoke-virtual {v8, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 328
    invoke-virtual {p0, v3, v5, v8}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->checkMonthDayCount(IILandroid/widget/NumberPicker;)V

    .line 330
    invoke-virtual {v8, v4}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 331
    invoke-virtual {v8, v4}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 332
    invoke-virtual {v8, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 334
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$4;

    invoke-direct {v0, p0, v6, v2, v8}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    invoke-virtual {v6, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 341
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$5;

    invoke-direct {v0, p0, v6, v2, v8}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 348
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f130297

    .line 350
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$6;

    invoke-direct {v0, p0, v6, v2, v8}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    const v1, 0x7f13016b

    .line 351
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f13015a

    .line 361
    invoke-virtual {p1, v0, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected checkMonthDayCount(IILandroid/widget/NumberPicker;)V
    .locals 3

    .line 364
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

    .line 376
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

    .line 387
    invoke-virtual {p3, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 388
    :cond_4
    invoke-virtual {p3, p1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    return-void

    .line 173
    :sswitch_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->saveData()V

    return-void

    .line 136
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->checkState(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 138
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-class v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->finish()V

    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1302a4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->messageState:Ljava/lang/String;

    .line 144
    invoke-direct {p0, v2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->ChangeReminderState(I)V

    return-void

    :sswitch_2
    const/4 p1, 0x3

    .line 148
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->checkState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->finish()V

    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1302a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->messageState:Ljava/lang/String;

    .line 153
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->ChangeReminderState(I)V

    return-void

    :sswitch_3
    const/4 p1, 0x4

    .line 157
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->checkState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-class p1, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->finish()V

    return-void

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13029a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->messageState:Ljava/lang/String;

    .line 165
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->ChangeReminderState(I)V

    return-void

    .line 182
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->setMenstruationStart(Landroid/view/View;)V

    return-void

    .line 179
    :sswitch_5
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130294

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->SetNumber(Landroid/view/View;Ljava/lang/String;I)V

    return-void

    .line 176
    :sswitch_6
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130293

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v3}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->SetNumber(Landroid/view/View;Ljava/lang/String;I)V

    return-void

    .line 124
    :sswitch_7
    invoke-direct {p0, v3}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->checkState(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 125
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 126
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const-class v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->finish()V

    return-void

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f13028f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->messageState:Ljava/lang/String;

    .line 132
    invoke-direct {p0, v3}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->ChangeReminderState(I)V

    return-void

    .line 185
    :sswitch_8
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->finish()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a01db -> :sswitch_8
        0x7f0a02b6 -> :sswitch_7
        0x7f0a02b7 -> :sswitch_6
        0x7f0a02b9 -> :sswitch_5
        0x7f0a02bb -> :sswitch_4
        0x7f0a02e8 -> :sswitch_3
        0x7f0a0331 -> :sswitch_2
        0x7f0a0333 -> :sswitch_1
        0x7f0a0383 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 52
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->requestWindowFeature(I)Z

    const v0, 0x7f0d0040

    .line 54
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->setStatusFemaleRemind()V

    const v0, 0x7f0a023d

    .line 58
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 59
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b6

    .line 65
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0333

    .line 66
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->pregnant_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0331

    .line 67
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->pregnancy_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02e8

    .line 68
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->mummy_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0184

    .line 69
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/view/SwitchButton;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->female_reminder_switch:Lcom/jaga/ibraceletplus/jyring/widget/view/SwitchButton;

    const v0, 0x7f0a02b5

    .line 70
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_image:Landroid/widget/ImageView;

    const v0, 0x7f0a0332

    .line 71
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->pregnant_image:Landroid/widget/ImageView;

    const v0, 0x7f0a0330

    .line 72
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->pregnancy_image:Landroid/widget/ImageView;

    const v0, 0x7f0a02e7

    .line 73
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->mummy_image:Landroid/widget/ImageView;

    const v0, 0x7f0a0383

    .line 75
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->save_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02b7

    .line 76
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_length:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02b9

    .line 77
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_period:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02bb

    .line 78
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_start:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01db

    .line 80
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->ivCalendar:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->save_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_length:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_period:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_start:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->ivCalendar:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b8

    .line 88
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_length_text:Landroid/widget/TextView;

    const v0, 0x7f0a02ba

    .line 89
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_period_text:Landroid/widget/TextView;

    const v0, 0x7f0a02bc

    .line 90
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_start_text:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->menstruation_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->pregnant_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->pregnancy_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->mummy_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->female_reminder_switch:Lcom/jaga/ibraceletplus/jyring/widget/view/SwitchButton;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "Enable_female_remider"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/view/SwitchButton;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->female_reminder_switch:Lcom/jaga/ibraceletplus/jyring/widget/view/SwitchButton;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/view/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "female_reminder_State"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->state:I

    .line 113
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 285
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 288
    const-string v2, "cmd"

    const-string/jumbo v3, "sendfemalereminder"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
