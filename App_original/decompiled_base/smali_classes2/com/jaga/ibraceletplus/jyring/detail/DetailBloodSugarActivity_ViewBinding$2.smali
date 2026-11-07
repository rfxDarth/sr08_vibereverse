.class Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DetailBloodSugarActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;)V
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

    .line 56
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailBloodSugarActivity;->OnClickDateNext(Landroid/view/View;)V

    return-void
.end method
