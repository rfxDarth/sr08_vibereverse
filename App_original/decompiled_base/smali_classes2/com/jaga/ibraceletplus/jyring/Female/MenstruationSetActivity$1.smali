.class Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$1;
.super Ljava/lang/Object;
.source "MenstruationSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->finish()V

    return-void
.end method
