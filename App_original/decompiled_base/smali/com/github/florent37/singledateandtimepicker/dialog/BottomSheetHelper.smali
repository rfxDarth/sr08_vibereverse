.class public Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;
.super Ljava/lang/Object;
.source "BottomSheetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private focusable:Z

.field private handler:Landroid/os/Handler;

.field private layoutId:I

.field private listener:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;

.field private view:Landroid/view/View;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->context:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->layoutId:I

    .line 36
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/view/WindowManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$102(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->windowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->layoutId:I

    return p0
.end method

.method static synthetic access$400(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->focusable:Z

    return p0
.end method

.method static synthetic access$500(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->listener:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->animateBottomSheet()V

    return-void
.end method

.method static synthetic access$700(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->remove()V

    return-void
.end method

.method private animateBottomSheet()V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->view:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->view:Landroid/view/View;

    .line 137
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$3;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$3;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 147
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private remove()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->remove()V

    return-void
.end method

.method public display()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->init()V

    return-void
.end method

.method public hide()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->focusable:Z

    return-void
.end method

.method public setListener(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;)Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->listener:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;

    return-object p0
.end method
