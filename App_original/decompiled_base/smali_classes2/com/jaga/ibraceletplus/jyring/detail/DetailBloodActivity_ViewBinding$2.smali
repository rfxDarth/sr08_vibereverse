.class Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DetailBloodActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;)V
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

    .line 43
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity_ViewBinding$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodActivity;->OnClickDateNext(Landroid/view/View;)V

    return-void
.end method
