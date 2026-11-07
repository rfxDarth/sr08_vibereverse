.class Lcom/jaga/ibraceletplus/jyring/camera/Preview$3;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePicture()V
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

    .line 3284
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$3;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    .line 3287
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$3;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3288
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "autofocus complete: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Preview"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$3;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$700(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    return-void
.end method
