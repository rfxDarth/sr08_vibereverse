.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$25;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FragmentSetting_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
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

    .line 367
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$25;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$25;->val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 370
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$25;->val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->OnClicktvOta()V

    return-void
.end method
