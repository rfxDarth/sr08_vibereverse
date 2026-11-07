.class public final Lcom/qiniu/android/utils/ContextGetter;
.super Ljava/lang/Object;
.source "ContextGetter.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    invoke-static {}, Lcom/qiniu/android/utils/ContextGetter;->applicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/utils/ContextGetter;->context:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applicationContext()Landroid/content/Context;
    .locals 1

    .line 25
    sget-object v0, Lcom/qiniu/android/utils/ContextGetter;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 29
    :cond_0
    sget-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->appContext:Landroid/content/Context;

    return-object v0

    .line 33
    :cond_1
    invoke-static {}, Lcom/qiniu/android/utils/ContextGetter;->getApplicationUsingReflection()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/utils/ContextGetter;->context:Landroid/content/Context;

    .line 37
    :cond_2
    sget-object v0, Lcom/qiniu/android/utils/ContextGetter;->context:Landroid/content/Context;

    return-object v0
.end method

.method private static getApplicationUsingReflection()Landroid/app/Application;
    .locals 5

    const/4 v0, 0x0

    .line 43
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 44
    const-string v2, "currentApplication"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    .line 47
    :try_start_1
    const-string v3, "currentActivityThread"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 48
    const-string v4, "getApplication"

    invoke-virtual {v1, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-object v2

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 51
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method
