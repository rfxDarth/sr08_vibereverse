.class public Lcom/king/zxing/CaptureFragment;
.super Landroidx/fragment/app/Fragment;
.source "CaptureFragment.java"

# interfaces
.implements Lcom/king/zxing/OnCaptureCallback;


# static fields
.field public static final KEY_RESULT:Ljava/lang/String; = "SCAN_RESULT"


# instance fields
.field private ivTorch:Landroid/view/View;

.field private mCaptureHelper:Lcom/king/zxing/CaptureHelper;

.field private mRootView:Landroid/view/View;

.field private surfaceView:Landroid/view/SurfaceView;

.field private viewfinderView:Lcom/king/zxing/ViewfinderView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/king/zxing/CaptureFragment;
    .locals 2

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    new-instance v1, Lcom/king/zxing/CaptureFragment;

    invoke-direct {v1}, Lcom/king/zxing/CaptureFragment;-><init>()V

    .line 50
    invoke-virtual {v1, v0}, Lcom/king/zxing/CaptureFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public getCameraManager()Lcom/king/zxing/camera/CameraManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    invoke-virtual {v0}, Lcom/king/zxing/CaptureHelper;->getCameraManager()Lcom/king/zxing/camera/CameraManager;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureHelper()Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    return-object v0
.end method

.method public getIvTorchId()I
    .locals 1

    .line 125
    sget v0, Lcom/king/zxing/R$id;->ivTorch:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 101
    sget v0, Lcom/king/zxing/R$layout;->zxl_capture:I

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getSurfaceViewId()I
    .locals 1

    .line 117
    sget v0, Lcom/king/zxing/R$id;->surfaceView:I

    return v0
.end method

.method public getViewfinderViewId()I
    .locals 1

    .line 109
    sget v0, Lcom/king/zxing/R$id;->viewfinderView:I

    return v0
.end method

.method public initCaptureHelper()V
    .locals 4

    .line 83
    new-instance v0, Lcom/king/zxing/CaptureHelper;

    iget-object v1, p0, Lcom/king/zxing/CaptureFragment;->surfaceView:Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/king/zxing/CaptureFragment;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    iget-object v3, p0, Lcom/king/zxing/CaptureFragment;->ivTorch:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/king/zxing/CaptureHelper;-><init>(Landroidx/fragment/app/Fragment;Landroid/view/SurfaceView;Lcom/king/zxing/ViewfinderView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    .line 84
    invoke-virtual {v0, p0}, Lcom/king/zxing/CaptureHelper;->setOnCaptureCallback(Lcom/king/zxing/OnCaptureCallback;)Lcom/king/zxing/CaptureHelper;

    return-void
.end method

.method public initUI()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->getSurfaceViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/king/zxing/CaptureFragment;->surfaceView:Landroid/view/SurfaceView;

    .line 70
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->getViewfinderViewId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/king/zxing/CaptureFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/king/zxing/ViewfinderView;

    iput-object v0, p0, Lcom/king/zxing/CaptureFragment;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->getIvTorchId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v1, p0, Lcom/king/zxing/CaptureFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/CaptureFragment;->ivTorch:Landroid/view/View;

    const/4 v1, 0x4

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->initCaptureHelper()V

    return-void
.end method

.method public isContentView(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    iget-object p1, p0, Lcom/king/zxing/CaptureFragment;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    invoke-virtual {p1}, Lcom/king/zxing/CaptureHelper;->onCreate()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->getLayoutId()I

    move-result p3

    .line 58
    invoke-virtual {p0, p3}, Lcom/king/zxing/CaptureFragment;->isContentView(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->getLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/king/zxing/CaptureFragment;->mRootView:Landroid/view/View;

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/king/zxing/CaptureFragment;->initUI()V

    .line 62
    iget-object p1, p0, Lcom/king/zxing/CaptureFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 178
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 179
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    invoke-virtual {v0}, Lcom/king/zxing/CaptureHelper;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    invoke-virtual {v0}, Lcom/king/zxing/CaptureHelper;->onPause()V

    return-void
.end method

.method public onResultCallback(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 166
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/king/zxing/CaptureFragment;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    invoke-virtual {v0}, Lcom/king/zxing/CaptureHelper;->onResume()V

    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/king/zxing/CaptureFragment;->mRootView:Landroid/view/View;

    return-void
.end method
