.class public Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DecoderActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;


# static fields
.field private static final MY_PERMISSION_REQUEST_CAMERA:I


# instance fields
.field public TAG:Ljava/lang/String;

.field private enableDecodingCheckBox:Landroid/widget/CheckBox;

.field private flashlightCheckBox:Landroid/widget/CheckBox;

.field private mainLayout:Landroid/view/ViewGroup;

.field private pointsOverlayView:Lcom/jaga/ibraceletplus/jyring/camera/PointsOverlayView;

.field private qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

.field private resultTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;)Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    return-object p0
.end method

.method private initQRCodeReaderView()V
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->mainLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    const v3, 0x7f0d0074

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a034d

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    const v1, 0x7f0a0358

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->resultTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0191

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->flashlightCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f0a0167

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->enableDecodingCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f0a032c

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/camera/PointsOverlayView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->pointsOverlayView:Lcom/jaga/ibraceletplus/jyring/camera/PointsOverlayView;

    .line 132
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setAutofocusInterval(J)V

    .line 133
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0, p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setOnQRCodeReadListener(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;)V

    .line 134
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setBackCamera()V

    .line 135
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->flashlightCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->enableDecodingCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity$3;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->startCamera()V

    return-void
.end method

.method private requestCameraPermission()V
    .locals 4

    .line 104
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->mainLayout:Landroid/view/ViewGroup;

    const-string v1, "Camera access is required to display the camera preview."

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;)V

    .line 106
    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->mainLayout:Landroid/view/ViewGroup;

    const-string v2, "Permission is not available. Requesting camera permission."

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 117
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0027

    .line 42
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->setContentView(I)V

    const p1, 0x7f0a0299

    .line 44
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->mainLayout:Landroid/view/ViewGroup;

    .line 46
    const-string p1, "android.permission.CAMERA"

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->initQRCodeReaderView()V

    return-void

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->requestCameraPermission()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 67
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->stopCamera()V

    :cond_0
    return-void
.end method

.method public onQRCodeRead(Ljava/lang/String;[Landroid/graphics/PointF;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->pointsOverlayView:Lcom/jaga/ibraceletplus/jyring/camera/PointsOverlayView;

    invoke-virtual {v0, p2}, Lcom/jaga/ibraceletplus/jyring/camera/PointsOverlayView;->setPoints([Landroid/graphics/PointF;)V

    .line 97
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 98
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->setResult(ILandroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->finish()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 79
    :cond_0
    array-length p1, p3

    const/4 p2, 0x1

    const/4 v0, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->mainLayout:Landroid/view/ViewGroup;

    const-string p2, "Camera permission was granted."

    invoke-static {p1, p2, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 81
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->initQRCodeReaderView()V

    return-void

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->mainLayout:Landroid/view/ViewGroup;

    const-string p2, "Camera permission request was denied."

    invoke-static {p1, p2, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->startCamera()V

    :cond_0
    return-void
.end method
