.class Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SearchDeviceActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;)V
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

    .line 35
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity_ViewBinding$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity_ViewBinding$1;->val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity_ViewBinding$1;->val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SearchDeviceActivity;->onTvSearchClicked()V

    return-void
.end method
