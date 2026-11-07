.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 945
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    .line 948
    const-string v0, ".pmg"

    const-string v1, "image"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 949
    const-string/jumbo v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 950
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const-string v4, "checkDialServerInfoHandler handleMessage"

    invoke-virtual {v3, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 951
    const-string v3, "isLocal"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 953
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 954
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const-string v0, "checkDialServerInfoHandler unexpected main activity instance."

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    return v4

    :cond_0
    const/4 v3, 0x1

    .line 959
    :try_start_0
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    .line 961
    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v5

    .line 962
    const-string v6, ""

    const/16 v7, 0x8

    if-eqz v5, :cond_1

    .line 963
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v7, :cond_1

    .line 964
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 967
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 969
    const-string p1, "expire"

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    int-to-long v10, p1

    add-long/2addr v8, v10

    .line 971
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string v10, "DIALMARKET_EXPIRE_TIMESTAMP"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v10, v8}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 972
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string v8, "DIALMARKET_JSON"

    invoke-virtual {p1, v8, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    if-eqz v6, :cond_3

    .line 975
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v7, :cond_3

    .line 977
    :try_start_1
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 978
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    move-object v5, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 984
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 988
    :cond_3
    :goto_0
    const-string p1, "domain"

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 989
    const-string v2, "daillist"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 991
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dial_img_1:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v6, v6, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dial_img_2:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object v7, v7, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dial_img_3:Landroid/widget/ImageView;

    const/4 v8, 0x3

    new-array v9, v8, [Landroid/widget/ImageView;

    aput-object v5, v9, v4

    aput-object v6, v9, v3

    const/4 v5, 0x2

    aput-object v7, v9, v5

    .line 993
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    if-ge v4, v8, :cond_6

    .line 994
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 995
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 997
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v10}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v10

    const-string v11, "/JRing/dailimgs"

    invoke-static {v10, v11}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 999
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1002
    aget-object v7, v9, v4

    const v10, 0x7f10002a

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1003
    new-instance v7, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$DownLoadImageTask;

    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    aget-object v11, v9, v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v10, v11, v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$DownLoadImageTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$DownLoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 1005
    :cond_4
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1007
    aget-object v6, v9, v4

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    .line 1015
    throw p1

    :catch_1
    move-exception p1

    .line 1012
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDialServerInfoHandler exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    :cond_6
    return v3
.end method
