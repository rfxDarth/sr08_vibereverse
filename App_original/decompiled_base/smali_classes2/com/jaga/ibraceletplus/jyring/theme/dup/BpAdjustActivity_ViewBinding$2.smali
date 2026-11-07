.class Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BpAdjustActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;)V
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

    .line 47
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->OnClicktvBpAdjustSbp()V

    return-void
.end method
