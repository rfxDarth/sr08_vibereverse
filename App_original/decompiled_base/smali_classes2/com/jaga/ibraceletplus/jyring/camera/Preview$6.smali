.class Lcom/jaga/ibraceletplus/jyring/camera/Preview$6;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/Preview;->tryAutoFocus(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

.field final synthetic val$manual:Z


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4002
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$6;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$6;->val$manual:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    .line 4005
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$6;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4006
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "autofocus complete: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Preview"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    :cond_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$6;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$6;->val$manual:Z

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2500(Lcom/jaga/ibraceletplus/jyring/camera/Preview;ZZZ)V

    return-void
.end method
