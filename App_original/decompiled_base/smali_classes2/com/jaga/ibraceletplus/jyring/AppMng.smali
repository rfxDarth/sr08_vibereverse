.class public Lcom/jaga/ibraceletplus/jyring/AppMng;
.super Landroid/app/Application;
.source "AppMng.java"


# static fields
.field public static final PROCESS_NAME:Ljava/lang/String; = "com.jaga.ibraceletplus.jyring"

.field private static activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/jaga/ibraceletplus/jyring/AppMng;


# instance fields
.field private TAG:Ljava/lang/String;

.field private isInBackground:Z

.field private resumedActivities:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/AppMng;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/AppMng;->resumedActivities:I

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/AppMng;->isInBackground:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/AppMng;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/AppMng;->resumedActivities:I

    return p0
.end method

.method static synthetic access$008(Lcom/jaga/ibraceletplus/jyring/AppMng;)I
    .locals 2

    .line 21
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/AppMng;->resumedActivities:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/AppMng;->resumedActivities:I

    return v0
.end method

.method static synthetic access$010(Lcom/jaga/ibraceletplus/jyring/AppMng;)I
    .locals 2

    .line 21
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/AppMng;->resumedActivities:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/AppMng;->resumedActivities:I

    return v0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/AppMng;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/AppMng;->isInBackground:Z

    return p1
.end method

.method public static getInstance()Lcom/jaga/ibraceletplus/jyring/AppMng;
    .locals 1

    .line 102
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/AppMng;->instance:Lcom/jaga/ibraceletplus/jyring/AppMng;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/AppMng;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/AppMng;-><init>()V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/AppMng;->instance:Lcom/jaga/ibraceletplus/jyring/AppMng;

    .line 105
    :cond_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/AppMng;->instance:Lcom/jaga/ibraceletplus/jyring/AppMng;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1

    .line 109
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/AppMng;->activities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public exitApplication()V
    .locals 2

    .line 127
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/AppMng;->activities:Ljava/util/ArrayList;

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 129
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 131
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public initSdk(Landroid/content/Context;)V
    .locals 1

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->init(Landroid/content/Context;)V

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;->init(Landroid/content/Context;)Lcom/jaga/ibraceletplus/jyring/util/SoundPlayUtil;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keeprapid/serverdataload/util/OrmUtil;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/AppMng;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/AppMng;->activities:Ljava/util/ArrayList;

    .line 38
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/AppMng;->getInstance()Lcom/jaga/ibraceletplus/jyring/AppMng;

    .line 39
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/AppMng;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->init(Landroid/content/Context;)V

    .line 40
    invoke-static {p0}, Lcom/twitter/sdk/android/core/Twitter;->initialize(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/facebook/FacebookSdk;->fullyInitialize()V

    .line 48
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 50
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/AppMng$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/AppMng$1;-><init>(Lcom/jaga/ibraceletplus/jyring/AppMng;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/AppMng;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 1

    .line 115
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/AppMng;->activities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
