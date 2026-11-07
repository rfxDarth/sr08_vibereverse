.class Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;
.super Ljava/lang/Object;
.source "DialMarketActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    .line 322
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 323
    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string v1, "isLocal"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x8

    .line 331
    const-string v4, ""

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 332
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 335
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 337
    const-string p1, "expire"

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    int-to-long v8, p1

    add-long/2addr v6, v8

    .line 339
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v8, "DIALMARKET_EXPIRE_TIMESTAMP"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v8, v6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 340
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "DIALMARKET_JSON"

    invoke-virtual {p1, v6, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    if-eqz v1, :cond_2

    .line 343
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v3, :cond_2

    .line 345
    :try_start_2
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 346
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    move-object v5, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 352
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    :cond_2
    :goto_1
    const-string p1, "domain"

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 357
    const-string v0, "daillist"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$002(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 360
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 361
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-direct {v1, v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)V

    .line 362
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 363
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->setName(Ljava/lang/String;)V

    .line 364
    const-string v5, "filename"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->setFilename(Ljava/lang/String;)V

    .line 365
    const-string v5, "image"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->setImage(Ljava/lang/String;)V

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "md5"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->setMd5String(Ljava/lang/String;)V

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->setDomain(Ljava/lang/String;)V

    .line 368
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 373
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$102(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;)Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;

    .line 375
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Landroid/widget/GridView;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 377
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Landroid/widget/GridView;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 408
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 410
    :goto_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    const/4 p1, 0x1

    return p1

    :goto_4
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    .line 411
    throw p1
.end method
