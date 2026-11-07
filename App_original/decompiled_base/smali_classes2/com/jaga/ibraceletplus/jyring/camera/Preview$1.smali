.class Lcom/jaga/ibraceletplus/jyring/camera/Preview$1;
.super Landroid/view/OrientationEventListener;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/Preview;->openCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 736
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$300(Lcom/jaga/ibraceletplus/jyring/camera/Preview;I)V

    return-void
.end method
