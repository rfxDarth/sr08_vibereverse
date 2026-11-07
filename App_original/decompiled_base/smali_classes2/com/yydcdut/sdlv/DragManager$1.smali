.class Lcom/yydcdut/sdlv/DragManager$1;
.super Ljava/lang/Object;
.source "DragManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yydcdut/sdlv/DragManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yydcdut/sdlv/DragManager;


# direct methods
.method constructor <init>(Lcom/yydcdut/sdlv/DragManager;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/yydcdut/sdlv/DragManager$1;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/yydcdut/sdlv/DragManager$1;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {v0}, Lcom/yydcdut/sdlv/DragManager;->access$000(Lcom/yydcdut/sdlv/DragManager;)I

    move-result v0

    iget-object v1, p0, Lcom/yydcdut/sdlv/DragManager$1;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {v1}, Lcom/yydcdut/sdlv/DragManager;->access$100(Lcom/yydcdut/sdlv/DragManager;)I

    move-result v1

    const/4 v2, 0x5

    if-gt v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/yydcdut/sdlv/DragManager$1;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {v0}, Lcom/yydcdut/sdlv/DragManager;->access$200(Lcom/yydcdut/sdlv/DragManager;)Lcom/yydcdut/sdlv/DragListView;

    move-result-object v0

    const/16 v1, -0x19

    invoke-virtual {v0, v1, v2}, Lcom/yydcdut/sdlv/DragListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/DragManager$1;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {v0}, Lcom/yydcdut/sdlv/DragManager;->access$000(Lcom/yydcdut/sdlv/DragManager;)I

    move-result v0

    iget-object v1, p0, Lcom/yydcdut/sdlv/DragManager$1;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {v1}, Lcom/yydcdut/sdlv/DragManager;->access$300(Lcom/yydcdut/sdlv/DragManager;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/yydcdut/sdlv/DragManager$1;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {v0}, Lcom/yydcdut/sdlv/DragManager;->access$200(Lcom/yydcdut/sdlv/DragManager;)Lcom/yydcdut/sdlv/DragListView;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Lcom/yydcdut/sdlv/DragListView;->smoothScrollBy(II)V

    .line 190
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/DragManager$1;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {v0}, Lcom/yydcdut/sdlv/DragManager;->access$400(Lcom/yydcdut/sdlv/DragManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
