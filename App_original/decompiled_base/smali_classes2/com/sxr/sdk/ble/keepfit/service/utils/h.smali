.class public Lcom/sxr/sdk/ble/keepfit/service/utils/h;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sxr/sdk/ble/keepfit/service/utils/h$d;,
        Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/sxr/sdk/ble/keepfit/service/utils/h$d;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sxr/sdk/ble/keepfit/service/utils/h$a;

    invoke-direct {v1, p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/h$a;-><init>(Ljava/lang/String;Lcom/sxr/sdk/ble/keepfit/service/utils/h$d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;)V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sxr/sdk/ble/keepfit/service/utils/h$b;

    invoke-direct {v1, p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/h$b;-><init>(Ljava/lang/String;Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;)V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sxr/sdk/ble/keepfit/service/utils/h$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/h$c;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
