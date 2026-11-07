.class public Lnet/grandcentrix/tray/core/TrayLog;
.super Ljava/lang/Object;
.source "TrayLog.java"


# static fields
.field public static DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "Tray"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-string v0, "Tray"

    const/4 v1, 0x2

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lnet/grandcentrix/tray/core/TrayLog;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    .line 22
    const-string p0, ""

    .line 24
    :cond_0
    sget-object v0, Lnet/grandcentrix/tray/core/TrayLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    .line 29
    const-string p0, ""

    .line 31
    :cond_0
    sget-object v0, Lnet/grandcentrix/tray/core/TrayLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 35
    sget-object v0, Lnet/grandcentrix/tray/core/TrayLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Changing log tag to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/grandcentrix/tray/core/TrayLog;->d(Ljava/lang/String;)V

    .line 50
    sput-object p0, Lnet/grandcentrix/tray/core/TrayLog;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    .line 53
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    sput-boolean p0, Lnet/grandcentrix/tray/core/TrayLog;->DEBUG:Z

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 57
    sget-boolean v0, Lnet/grandcentrix/tray/core/TrayLog;->DEBUG:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    .line 59
    const-string p0, ""

    .line 61
    :cond_0
    sget-object v0, Lnet/grandcentrix/tray/core/TrayLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    .line 67
    const-string p0, ""

    .line 69
    :cond_0
    sget-object v0, Lnet/grandcentrix/tray/core/TrayLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    .line 78
    const-string p0, ""

    .line 80
    :cond_0
    sget-object v0, Lnet/grandcentrix/tray/core/TrayLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 73
    sget-object v0, Lnet/grandcentrix/tray/core/TrayLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
