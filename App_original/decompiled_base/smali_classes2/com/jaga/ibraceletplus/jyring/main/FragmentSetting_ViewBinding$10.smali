.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$10;
.super Ljava/lang/Object;
.source "FragmentSetting_ViewBinding.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$10;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$10;->val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$10;->val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-virtual {v0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->OnCheckedChangedsMusic(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
