.class Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$7;
.super Lcom/loopj/android/http/FileAsyncHttpResponseHandler;
.source "OtaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->downloadFirmware(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

.field final synthetic val$firmwareFilename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 518
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$7;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$7;->val$firmwareFilename:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 0

    .line 521
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$7;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const-string p3, "AsyncHttpClient download onFailure"

    invoke-static {p2, p3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 522
    new-instance p2, Landroid/content/Intent;

    const-string p3, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    const-string p3, "code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$7;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/io/File;)V
    .locals 3

    .line 530
    :try_start_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$7;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const-string v0, "AsyncHttpClient download onSuccess"

    invoke-static {p2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 531
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 532
    new-instance p3, Ljava/io/File;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$7;->val$firmwareFilename:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 534
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p3, 0x2800

    .line 536
    new-array p3, p3, [B

    .line 538
    :goto_0
    invoke-virtual {p2, p3}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 539
    invoke-virtual {v0, p3, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 542
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 543
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$7;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    const-string p3, "AsyncHttpClient download completed"

    invoke-static {p2, p3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Ljava/lang/String;)V

    .line 554
    new-instance p2, Landroid/content/Intent;

    const-string p3, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_START"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    const-string p3, "code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$7;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p1

    .line 546
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 547
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$7;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "downloadFirmware onSuccess\uff1a"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    .line 548
    new-instance p2, Landroid/content/Intent;

    const-string p3, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 550
    const-string p3, "error"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
