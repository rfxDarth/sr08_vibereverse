.class Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->uploadAllMedia(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 593
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;->val$index:I

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 7

    const-string p1, "Qiniu upload completed: "

    const-string v0, "http://applog.keeprapid.com/"

    .line 596
    invoke-virtual {p2}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v1

    const-string v2, "FeedbackActivity"

    if-eqz v1, :cond_0

    .line 598
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "key"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "?v="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 600
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;

    invoke-static {p3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;->val$index:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 604
    const-string p2, "Parse Qiniu response error"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;)V

    .line 606
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;

    const-string/jumbo p2, "\u4e0a\u4f20\u5931\u8d25"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 609
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Qiniu upload failed: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p2, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;)Ljava/util/List;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;->val$filePath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u4e0a\u4f20\u5931\u8d25\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;->val$index:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;I)V

    return-void
.end method
