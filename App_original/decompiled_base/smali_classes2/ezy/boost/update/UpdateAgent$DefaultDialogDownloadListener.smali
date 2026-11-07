.class Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;
.super Ljava/lang/Object;
.source "UpdateAgent.java"

# interfaces
.implements Lezy/boost/update/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezy/boost/update/UpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultDialogDownloadListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 386
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 1

    .line 379
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 366
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 368
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 369
    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mContext:Landroid/content/Context;

    sget v2, Lezy/boost/update/R$string;->update_downloading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 370
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 371
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 372
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 373
    iput-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method
