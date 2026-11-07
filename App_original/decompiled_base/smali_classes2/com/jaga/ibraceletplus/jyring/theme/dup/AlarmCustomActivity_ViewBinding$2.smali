.class Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity_ViewBinding$2;
.super Ljava/lang/Object;
.source "AlarmCustomActivity_ViewBinding.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;)V
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

    .line 59
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity_ViewBinding$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;

    invoke-virtual {v0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;->OnCheckedChangedsbEnable(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
