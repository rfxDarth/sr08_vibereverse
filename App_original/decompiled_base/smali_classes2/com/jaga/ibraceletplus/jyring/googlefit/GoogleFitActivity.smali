.class public Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "GoogleFitActivity.java"


# static fields
.field private static final GOOGLE_FIT_PERMISSIONS_REQUEST_CODE:I = 0x7d0

.field private static final GOOGLE_SIGN_IN:I = 0x7d2

.field private static final PERMISSIONS_REQUEST_ACTIVITY_RECOGNITION:I = 0x7d1


# instance fields
.field bConnect:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a006d
    .end annotation
.end field

.field private bGoogleApi:Z

.field private fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v1, 0x0

    .line 47
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v2, "P_ENABLE_GOOGLE_API"

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->bGoogleApi:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->bConnect:Landroid/widget/Button;

    const v1, 0x7f130161

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->bConnect:Landroid/widget/Button;

    const v1, 0x7f130160

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method


# virtual methods
.method OnClickbConnect()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a006d
        }
    .end annotation

    .line 42
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->bGoogleApi:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->googleSignin(Z)V

    return-void
.end method

.method public googleSignin(Z)V
    .locals 4

    .line 62
    const-string v0, "P_ENABLE_GOOGLE_API"

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 75
    invoke-static {}, Lcom/google/android/gms/fitness/FitnessOptions;->builder()Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->accessActivitySessions(I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    .line 77
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    .line 78
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    .line 79
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->build()Lcom/google/android/gms/fitness/FitnessOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    .line 82
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getAccountForExtension(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    .line 84
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {p1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->hasPermissions(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x7d0

    .line 85
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    invoke-static {p0, v2, p1, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->requestPermissions(Landroid/app/Activity;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)V

    .line 90
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->bConnect:Landroid/widget/Button;

    const v0, 0x7f130161

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->bGoogleApi:Z

    .line 98
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->bConnect:Landroid/widget/Button;

    const v0, 0x7f130160

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 101
    invoke-static {}, Lcom/google/android/gms/fitness/FitnessOptions;->builder()Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1, v1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->accessActivitySessions(I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    .line 103
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    .line 104
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    .line 105
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->build()Lcom/google/android/gms/fitness/FitnessOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    .line 108
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getAccountForExtension(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    .line 110
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/Fitness;->getConfigClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/fitness/ConfigClient;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/ConfigClient;->disableFit()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity$2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;)V

    .line 112
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;)V

    .line 118
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x7d0

    const/4 v0, -0x1

    if-eq p1, p3, :cond_2

    const/16 p3, 0x7d2

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    if-ne p2, v0, :cond_1

    .line 133
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->TAG:Ljava/lang/String;

    const-string p2, "login ok"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "login error: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_2
    const-string p1, "P_ENABLE_GOOGLE_API"

    if-ne p2, v0, :cond_3

    .line 140
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->TAG:Ljava/lang/String;

    const-string p3, "Permission granted"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->bConnect:Landroid/widget/Button;

    const p2, 0x7f130161

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    return-void

    .line 144
    :cond_3
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Result code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 145
    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->bGoogleApi:Z

    .line 146
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->bConnect:Landroid/widget/Button;

    const p2, 0x7f130160

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0043

    .line 32
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->init()V

    return-void
.end method
