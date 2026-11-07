.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$14;
.super Landroid/os/Handler;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4106
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$14;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 4109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4110
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4112
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$14;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$6602(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;F)F

    .line 4113
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$14;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$6600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    :cond_1
    :goto_0
    return-void
.end method
