.class public Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "SplashActivity.java"


# static fields
.field private static final GO_HOME:I = 0x3e8

.field private static final GO_LOGIN:I = 0x3e9

.field private static final SPLASH_DELAY_MILLIS:J = 0x64L


# instance fields
.field isFirstIn:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->isFirstIn:Z

    .line 23
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;)Landroid/os/Handler;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private init()V
    .locals 4

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    const-string v0, "check database init state after 1000 ms."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0d005a

    .line 48
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->init()V

    return-void
.end method
