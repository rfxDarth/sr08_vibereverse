.class Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showGUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;ZLandroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4175
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;->val$show:Z

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4177
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;->val$show:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 4178
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;->val$activity:Landroid/app/Activity;

    const v2, 0x7f0a0407

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4179
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;->val$activity:Landroid/app/Activity;

    const v2, 0x7f0a0408

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4180
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;->val$activity:Landroid/app/Activity;

    const v2, 0x7f0a0190

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4181
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;->val$activity:Landroid/app/Activity;

    const v3, 0x7f0a0195

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4182
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;->val$activity:Landroid/app/Activity;

    const v3, 0x7f0a017d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4183
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;->val$activity:Landroid/app/Activity;

    const v3, 0x7f0a017e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4188
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4189
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
