.class public Lcom/sxr/sdk/ble/keepfit/service/utils/d;
.super Landroid/app/Application;
.source "CrashApp.java"


# static fields
.field private static a:Lcom/sxr/sdk/ble/keepfit/service/utils/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Lcom/sxr/sdk/ble/keepfit/service/utils/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/utils/d;->a:Lcom/sxr/sdk/ble/keepfit/service/utils/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/utils/d;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/d;-><init>()V

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/utils/d;->a:Lcom/sxr/sdk/ble/keepfit/service/utils/d;

    .line 4
    :cond_0
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/utils/d;->a:Lcom/sxr/sdk/ble/keepfit/service/utils/d;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/utils/d;->a()Lcom/sxr/sdk/ble/keepfit/service/utils/d;

    .line 3
    const-string v0, "CrashApplication"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 2
    const-string v0, "CrashApplication"

    const-string v1, "onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
