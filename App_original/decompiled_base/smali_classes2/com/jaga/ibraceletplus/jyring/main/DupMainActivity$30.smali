.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$30;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startLocationUpdates()V
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

    .line 1920
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$30;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 1923
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 p1, 0x2136

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1942
    :cond_0
    const-string p1, "Location settings are inadequate, and cannot be fixed here. Fix in Settings."

    .line 1944
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$30;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1945
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$30;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1602(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 1926
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$30;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v1, "Location settings are not satisfied. Attempting to upgrade location settings "

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1931
    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/api/ResolvableApiException;

    .line 1932
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$30;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/ResolvableApiException;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1938
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$30;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown occured: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1936
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$30;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClassCastException occured: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1934
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$30;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PendingIntent unable to execute request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1948
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$30;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    return-void
.end method
