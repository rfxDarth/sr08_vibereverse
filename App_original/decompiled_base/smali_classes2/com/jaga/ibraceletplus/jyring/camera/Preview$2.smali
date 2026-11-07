.class Lcom/jaga/ibraceletplus/jyring/camera/Preview$2;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1213
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$2;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1216
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$2;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->tryAutoFocus(ZZ)V

    return-void
.end method
