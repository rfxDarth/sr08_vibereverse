.class public Lcom/king/zxing/CaptureActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CaptureActivity.java"

# interfaces
.implements Lcom/king/zxing/OnCaptureCallback;


# static fields
.field public static final KEY_RESULT:Ljava/lang/String; = "SCAN_RESULT"


# instance fields
.field private ivTorch:Landroid/view/View;

.field private mCaptureHelper:Lcom/king/zxing/CaptureHelper;

.field private surfaceView:Landroid/view/SurfaceView;

.field private viewfinderView:Lcom/king/zxing/ViewfinderView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraManager()Lcom/king/zxing/camera/CameraManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    invoke-virtual {v0}, Lcom/king/zxing/CaptureHelper;->getCameraManager()Lcom/king/zxing/camera/CameraManager;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureHelper()Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    return-object v0
.end method

.method public getIvTorchId()I
    .locals 1

    .line 114
    sget v0, Lcom/king/zxing/R$id;->ivTorch:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 89
    sget v0, Lcom/king/zxing/R$layout;->zxl_capture:I

    return v0
.end method

.method public getSurfaceViewId()I
    .locals 1

    .line 106
    sget v0, Lcom/king/zxing/R$id;->surfaceView:I

    return v0
.end method

.method public getViewfinderViewId()I
    .locals 1

    .line 97
    sget v0, Lcom/king/zxing/R$id;->viewfinderView:I

    return v0
.end method

.method public initCaptureHelper()V
    .locals 4

    .line 71
    new-instance v0, Lcom/king/zxing/CaptureHelper;

    iget-object v1, p0, Lcom/king/zxing/CaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/king/zxing/CaptureActivity;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    iget-object v3, p0, Lcom/king/zxing/CaptureActivity;->ivTorch:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/king/zxing/CaptureHelper;-><init>(Landroid/app/Activity;Landroid/view/SurfaceView;Lcom/king/zxing/ViewfinderView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    .line 72
    invoke-virtual {v0, p0}, Lcom/king/zxing/CaptureHelper;->setOnCaptureCallback(Lcom/king/zxing/OnCaptureCallback;)Lcom/king/zxing/CaptureHelper;

    return-void
.end method

.method public initUI()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->getSurfaceViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/king/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/king/zxing/CaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 58
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->getViewfinderViewId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lcom/king/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/king/zxing/ViewfinderView;

    iput-object v0, p0, Lcom/king/zxing/CaptureActivity;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->getIvTorchId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0, v0}, Lcom/king/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/CaptureActivity;->ivTorch:Landroid/view/View;

    const/4 v1, 0x4

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->initCaptureHelper()V

    return-void
.end method

.method public isContentView(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->getLayoutId()I

    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/king/zxing/CaptureActivity;->isContentView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/king/zxing/CaptureActivity;->setContentView(I)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/king/zxing/CaptureActivity;->initUI()V

    .line 50
    iget-object p1, p0, Lcom/king/zxing/CaptureActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    invoke-virtual {p1}, Lcom/king/zxing/CaptureHelper;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 148
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    invoke-virtual {v0}, Lcom/king/zxing/CaptureHelper;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 142
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 143
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

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

    .line 136
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    invoke-virtual {v0}, Lcom/king/zxing/CaptureHelper;->onResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/king/zxing/CaptureActivity;->mCaptureHelper:Lcom/king/zxing/CaptureHelper;

    invoke-virtual {v0, p1}, Lcom/king/zxing/CaptureHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 155
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
