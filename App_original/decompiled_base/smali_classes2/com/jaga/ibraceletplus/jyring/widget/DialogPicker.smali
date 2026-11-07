.class public Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;
.super Ljava/lang/Object;
.source "DialogPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnMultiListener;,
        Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;
    }
.end annotation


# instance fields
.field private alertDialog:Landroidx/appcompat/app/AlertDialog;

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private onConfirmListener:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;

.field private onMultiListener:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnMultiListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 37
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    .line 38
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->onConfirmListener:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnMultiListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->onMultiListener:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnMultiListener;

    return-object p0
.end method

.method private setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 52
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 53
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x50

    .line 57
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 58
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setOnConfirmListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->onConfirmListener:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;

    return-object p0
.end method

.method public setOnMultiListener(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnMultiListener;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->onMultiListener:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnMultiListener;

    return-void
.end method

.method public showDate(Ljava/lang/String;)V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d008a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a014c

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->setVisibility(I)V

    const/high16 v4, 0x60000

    .line 82
    invoke-virtual {v1, v4}, Landroid/widget/DatePicker;->setDescendantFocusability(I)V

    .line 85
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 88
    :try_start_0
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v4, p1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 92
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 93
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 94
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, p1, v4, v3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 96
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    invoke-direct {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    const v3, 0x7f13016b

    .line 98
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$3;

    invoke-direct {v3, p0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$3;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;Landroid/widget/DatePicker;)V

    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 107
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public showDecimal(IIILjava/lang/String;IIILjava/lang/String;)V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d008a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0250

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 154
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0a04c3

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 157
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p4, 0x7f0a04fe

    .line 159
    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 160
    invoke-virtual {p4, p8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p4, 0x7f0a0300

    .line 162
    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/NumberPicker;

    .line 163
    invoke-virtual {p4, p2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 164
    invoke-virtual {p4, p1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 165
    invoke-virtual {p4, p3}, Landroid/widget/NumberPicker;->setValue(I)V

    const/high16 p1, 0x60000

    .line 166
    invoke-virtual {p4, p1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    const p2, 0x7f0a0301

    .line 168
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/NumberPicker;

    .line 169
    invoke-virtual {p2, p6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 170
    invoke-virtual {p2, p5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 171
    invoke-virtual {p2, p7}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 172
    invoke-virtual {p2, p1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 174
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    invoke-direct {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$6;

    invoke-direct {p3, p0, p4, p2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$6;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    const p2, 0x7f13016b

    .line 176
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f13015a

    .line 182
    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 183
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public showDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 2

    .line 63
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f13016b

    .line 64
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 67
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    const p3, 0x7f13015a

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$2;

    invoke-direct {p3, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$2;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;)V

    const/4 v0, -0x2

    invoke-virtual {p1, v0, p2, p3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    const/4 p2, 0x0

    .line 73
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 74
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 75
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060023

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public showList([Ljava/lang/String;)V
    .locals 2

    .line 111
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$4;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;)V

    .line 112
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    const v1, 0x7f13015a

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 120
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public showMulti([Ljava/lang/String;[Z)V
    .locals 2

    const/4 v0, 0x7

    .line 189
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 190
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$8;

    invoke-direct {v1, p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$8;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;[Z)V

    .line 191
    invoke-virtual {v0, p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    const v1, 0x7f13016b

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$7;

    invoke-direct {v1, p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$7;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;[Z)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    const v0, 0x7f13015a

    .line 201
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 203
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public showNumber(IIILjava/lang/String;)V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d008a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a026a

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 126
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0a04e8

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 129
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p4, 0x7f0a02ff

    .line 131
    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/NumberPicker;

    .line 132
    invoke-virtual {p4, p1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 133
    invoke-virtual {p4, p2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 134
    invoke-virtual {p4, p3}, Landroid/widget/NumberPicker;->setValue(I)V

    const/high16 p1, 0x60000

    .line 135
    invoke-virtual {p4, p1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 137
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    const p3, 0x7f13016b

    .line 139
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$5;

    invoke-direct {p3, p0, p4}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$5;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;Landroid/widget/NumberPicker;)V

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->context:Landroid/content/Context;

    .line 146
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f13015a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 147
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method
