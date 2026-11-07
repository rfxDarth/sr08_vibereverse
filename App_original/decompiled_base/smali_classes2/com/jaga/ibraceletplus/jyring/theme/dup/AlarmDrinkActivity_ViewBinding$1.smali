.class Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity_ViewBinding$1;
.super Ljava/lang/Object;
.source "AlarmDrinkActivity_ViewBinding.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;)V
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

    .line 48
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity_ViewBinding$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity_ViewBinding$1;->val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity_ViewBinding$1;->val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;

    invoke-virtual {v0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->OnCheckedChangedsbEnable(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
