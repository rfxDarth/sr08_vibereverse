.class public Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;
.super Landroid/os/AsyncTask;
.source "DownloadFile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private filename:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->activity:Landroid/app/Activity;

    .line 17
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->url:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->filename:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->action:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 9
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 24
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->filename:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/HttpUtil;->download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 30
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->action:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->activity:Landroid/app/Activity;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
