.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;
.super Landroid/os/AsyncTask;
.source "FragmentSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "checkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected result:Ljava/lang/String;

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1054
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$1;)V
    .locals 0

    .line 1054
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

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

    .line 1054
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    .line 1060
    const-string p1, "default"

    .line 0
    const-string v0, "FUNCTION_DIAL_PRODUCTID-"

    const-string v1, "FUNCTION_DIAL_PRODUCTTYPE-"

    .line 1060
    :try_start_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkDialServerInfoTask checkTask doInBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1066
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1067
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1000(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1070
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

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

    .line 1054
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 1077
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1078
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "checkDialServerInfoTask checkTask onPostExecute"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->delay_show_ui_timeout:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
