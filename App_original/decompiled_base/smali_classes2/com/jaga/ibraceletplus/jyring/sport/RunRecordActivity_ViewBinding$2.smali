.class Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$2;
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

    .line 63
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->OnClickbResume()V

    return-void
.end method
