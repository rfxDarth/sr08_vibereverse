.class Lezy/boost/update/UpdateAgent$DefaultUpdatePrompter;
.super Ljava/lang/Object;
.source "UpdateAgent.java"

# interfaces
.implements Lezy/boost/update/IUpdatePrompter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezy/boost/update/UpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultUpdatePrompter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lezy/boost/update/UpdateAgent$DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public prompt(Lezy/boost/update/IUpdateAgent;)V
    .locals 12

    .line 304
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-interface {p1}, Lezy/boost/update/IUpdateAgent;->getInfo()Lezy/boost/update/UpdateInfo;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lezy/boost/update/UpdateInfo;->size:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 309
    iget-object v2, v0, Lezy/boost/update/UpdateInfo;->versionName:Ljava/lang/String;

    iget-object v3, v0, Lezy/boost/update/UpdateInfo;->updateContent:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const/4 v6, 0x2

    aput-object v3, v4, v6

    const-string/jumbo v3, "\u6700\u65b0\u7248\u672c\uff1a%1$s\n\u65b0\u7248\u672c\u5927\u5c0f\uff1a%2$s\n\n\u66f4\u65b0\u5185\u5bb9\n%3$s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 311
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v4, p0, Lezy/boost/update/UpdateAgent$DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v6

    .line 313
    invoke-virtual {v6, v5}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 314
    invoke-virtual {v6, v5}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 317
    iget-object v3, v0, Lezy/boost/update/UpdateInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v6, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 321
    new-instance v7, Landroid/widget/TextView;

    iget-object v3, p0, Lezy/boost/update/UpdateAgent$DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    invoke-direct {v7, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 322
    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 323
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 324
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v3, 0x437a0000    # 250.0f

    mul-float v3, v3, v1

    float-to-int v3, v3

    .line 325
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMaxHeight(I)V

    const/high16 v3, 0x41c80000    # 25.0f

    mul-float v1, v1, v3

    float-to-int v8, v1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v10, v8

    .line 326
    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 328
    new-instance v1, Lezy/boost/update/DefaultPromptClickListener;

    invoke-direct {v1, p1, v2}, Lezy/boost/update/DefaultPromptClickListener;-><init>(Lezy/boost/update/IUpdateAgent;Z)V

    .line 330
    iget-object p1, v0, Lezy/boost/update/UpdateInfo;->updateContent:Ljava/lang/String;

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object p1, p0, Lezy/boost/update/UpdateAgent$DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    sget v2, Lezy/boost/update/R$string;->update_now:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {v6, v2, p1, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 332
    iget-boolean p1, v0, Lezy/boost/update/UpdateInfo;->isForce:Z

    if-nez p1, :cond_1

    .line 333
    iget-object p1, p0, Lezy/boost/update/UpdateAgent$DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    sget v2, Lezy/boost/update/R$string;->update_later:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x2

    invoke-virtual {v6, v2, p1, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 334
    :cond_1
    iget-boolean p1, v0, Lezy/boost/update/UpdateInfo;->isIgnorable:Z

    if-eqz p1, :cond_2

    .line 335
    iget-object p1, p0, Lezy/boost/update/UpdateAgent$DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    sget v0, Lezy/boost/update/R$string;->update_ignore:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x3

    invoke-virtual {v6, v0, p1, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 337
    :cond_2
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
