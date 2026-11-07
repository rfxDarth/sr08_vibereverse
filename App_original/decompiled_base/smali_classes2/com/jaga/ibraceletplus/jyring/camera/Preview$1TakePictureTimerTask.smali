.class Lcom/jaga/ibraceletplus/jyring/camera/Preview$1TakePictureTimerTask;
.super Ljava/util/TimerTask;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureOnTimer(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TakePictureTimerTask"
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

    .line 3092
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1TakePictureTimerTask;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3094
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1TakePictureTimerTask;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$500(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3095
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1TakePictureTimerTask;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$500(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3097
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1TakePictureTimerTask;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePicture()V

    return-void
.end method
