.class Lcom/jaga/ibraceletplus/jyring/camera/Preview$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/camera/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 444
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ScaleListener;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Lcom/jaga/ibraceletplus/jyring/camera/Preview$1;)V
    .locals 0

    .line 444
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ScaleListener;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ScaleListener;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$100(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ScaleListener;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ScaleListener;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->scaleZoom(F)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
