.class Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;
.super Lcom/loopj/android/http/FileAsyncHttpResponseHandler;
.source "OtaDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->downloadFirmware(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

.field final synthetic val$firmwareFilename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/content/Context;Ljava/lang/String;)V
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

    .line 673
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;->val$firmwareFilename:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 0

    .line 676
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const-string p3, "downloadFirmware onFailure"

    invoke-virtual {p2, p3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 677
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const-string p3, "AsyncHttpClient download onFailure"

    invoke-static {p2, p3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)V

    .line 678
    new-instance p2, Landroid/content/Intent;

    const-string p3, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 679
    const-string p3, "code"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/io/File;)V
    .locals 3

    .line 686
    :try_start_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const-string v0, "downloadFirmware onSuccess"

    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 687
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const-string v0, "AsyncHttpClient download onSuccess"

    invoke-static {p2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)V

    .line 688
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 689
    new-instance p3, Ljava/io/File;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;->val$firmwareFilename:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 691
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p3, 0x2800

    .line 693
    new-array p3, p3, [B

    .line 695
    :goto_0
    invoke-virtual {p2, p3}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 696
    invoke-virtual {v0, p3, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 698
    :cond_0
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 699
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 700
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const-string p3, "downloadFirmware completed"

    invoke-virtual {p2, p3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->saveLog(Ljava/lang/String;)V

    .line 711
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const-string p3, "AsyncHttpClient download completed"

    invoke-static {p2, p3}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Ljava/lang/String;)V

    .line 712
    new-instance p2, Landroid/content/Intent;

    const-string p3, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_START"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    const-string p3, "code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p1

    .line 703
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 704
    new-instance p2, Landroid/content/Intent;

    const-string p3, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 706
    const-string p3, "error"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method
