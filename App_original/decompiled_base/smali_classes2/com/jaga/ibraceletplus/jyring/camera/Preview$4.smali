.class Lcom/jaga/ibraceletplus/jyring/camera/Preview$4;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureWhenFocused()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3339
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$4;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .line 3342
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$4;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3343
    const-string v0, "Preview"

    const-string/jumbo v1, "shutterCallback.onShutter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
