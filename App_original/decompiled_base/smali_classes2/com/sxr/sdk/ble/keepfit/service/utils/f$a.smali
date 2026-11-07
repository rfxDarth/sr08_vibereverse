.class Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;
.super Ljava/lang/Object;
.source "FtpDownloadTask.java"

# interfaces
.implements Lorg/apache/commons/net/io/CopyStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/utils/f;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:J

.field private final e:J

.field final synthetic f:J

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/sxr/sdk/ble/keepfit/service/utils/f;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/utils/f;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->h:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    iput-wide p2, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->f:J

    iput-object p4, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->a:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->b:Z

    .line 4
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->c:Z

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->d:J

    const-wide/16 p1, 0xc8

    .line 6
    iput-wide p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->e:J

    return-void
.end method


# virtual methods
.method public bytesTransferred(JIJ)V
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->h:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    invoke-virtual {p3}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->l0:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    const-string p2, "errMessage"

    const-string/jumbo p3, "task cancel"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    const-string/jumbo p2, "retryTimes"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->h:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    invoke-virtual {p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x64

    mul-long p1, p1, v0

    .line 9
    iget-wide v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->f:J

    div-long/2addr p1, v0

    long-to-int p2, p1

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x1

    if-nez p2, :cond_1

    .line 14
    iget-boolean p2, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->b:Z

    if-nez p2, :cond_4

    .line 15
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->b:Z

    .line 16
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->h:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->g:Ljava/lang/String;

    iget-wide v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->f:J

    invoke-static {p1, p2, v0, v1, p4}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Lcom/sxr/sdk/ble/keepfit/service/utils/f;Ljava/lang/String;JI)V

    return-void

    :cond_1
    const/16 p3, 0x64

    if-ne p2, p3, :cond_2

    .line 23
    iget-boolean p2, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->c:Z

    if-nez p2, :cond_4

    .line 24
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->c:Z

    .line 25
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->h:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->g:Ljava/lang/String;

    iget-wide p4, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->f:J

    invoke-static {p1, p2, p4, p5, p3}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Lcom/sxr/sdk/ble/keepfit/service/utils/f;Ljava/lang/String;JI)V

    return-void

    .line 32
    :cond_2
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->a:I

    if-ne p2, p1, :cond_3

    goto :goto_0

    .line 35
    :cond_3
    iget-wide p3, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->d:J

    sub-long p3, v0, p3

    const-wide/16 v2, 0xc8

    cmp-long p1, p3, v2

    if-gez p1, :cond_5

    :cond_4
    :goto_0
    return-void

    .line 39
    :cond_5
    iput p2, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->a:I

    .line 40
    iput-wide v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->d:J

    .line 43
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->h:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    iget-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->g:Ljava/lang/String;

    iget-wide p4, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->f:J

    invoke-static {p1, p3, p4, p5, p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Lcom/sxr/sdk/ble/keepfit/service/utils/f;Ljava/lang/String;JI)V

    return-void
.end method

.method public bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V
    .locals 7

    .line 44
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->h:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/b;->l0:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v0, "errMessage"

    const-string/jumbo v1, "task cancel"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string/jumbo v0, "retryTimes"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->h:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    invoke-virtual {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Landroid/content/Intent;)V

    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/net/io/CopyStreamEvent;->getTotalBytesTransferred()J

    move-result-wide v2

    .line 53
    invoke-virtual {p1}, Lorg/apache/commons/net/io/CopyStreamEvent;->getBytesTransferred()I

    move-result v4

    .line 54
    invoke-virtual {p1}, Lorg/apache/commons/net/io/CopyStreamEvent;->getStreamSize()J

    move-result-wide v5

    move-object v1, p0

    .line 55
    invoke-virtual/range {v1 .. v6}, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;->bytesTransferred(JIJ)V

    return-void
.end method
