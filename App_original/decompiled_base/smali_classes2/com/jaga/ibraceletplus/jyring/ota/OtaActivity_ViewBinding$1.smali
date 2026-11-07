.class Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "OtaActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V
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

    .line 39
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity_ViewBinding$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity_ViewBinding$1;->val$target:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity_ViewBinding$1;->val$target:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->OnClickbCheck()V

    return-void
.end method
