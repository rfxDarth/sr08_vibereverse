.class Lezy/boost/update/UpdateAgent$DefaultUpdateDownloader;
.super Ljava/lang/Object;
.source "UpdateAgent.java"

# interfaces
.implements Lezy/boost/update/IUpdateDownloader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezy/boost/update/UpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultUpdateDownloader"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lezy/boost/update/UpdateAgent$DefaultUpdateDownloader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public download(Lezy/boost/update/IDownloadAgent;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 283
    new-instance v0, Lezy/boost/update/UpdateDownloader;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultUpdateDownloader;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p2, p3}, Lezy/boost/update/UpdateDownloader;-><init>(Lezy/boost/update/IDownloadAgent;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lezy/boost/update/UpdateDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
