.class Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "HeartrateTestActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)V
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
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->OnClickivSync()V

    return-void
.end method
