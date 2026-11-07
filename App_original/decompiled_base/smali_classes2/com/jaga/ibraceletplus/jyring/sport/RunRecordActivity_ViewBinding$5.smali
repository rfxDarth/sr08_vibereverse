.class Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RunRecordActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V
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

    .line 96
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$5;->val$target:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$5;->val$target:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->OnClickivLocate(Landroid/view/View;)V

    return-void
.end method
