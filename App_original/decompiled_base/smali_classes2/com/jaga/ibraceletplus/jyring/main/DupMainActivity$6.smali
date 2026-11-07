.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$6;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1180
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 1189
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v1, "onCancel"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 1194
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v0, "onError"

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1184
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v0, "onSuccess"

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method
