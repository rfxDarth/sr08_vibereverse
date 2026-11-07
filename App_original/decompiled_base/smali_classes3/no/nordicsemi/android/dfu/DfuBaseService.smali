.class public abstract Lno/nordicsemi/android/dfu/DfuBaseService;
.super Landroid/app/IntentService;
.source "DfuBaseService.java"


# static fields
.field public static final ACTION_ABORT:I = 0x2

.field public static final ACTION_PAUSE:I = 0x0

.field public static final ACTION_RESUME:I = 0x1

.field public static final BROADCAST_ACTION:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_ACTION"

.field public static final BROADCAST_ERROR:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

.field public static final BROADCAST_LOG:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG"

.field public static final BROADCAST_PROGRESS:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

.field private static final CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

.field private static final DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

.field private static final DFU_PACKET_UUID:Ljava/util/UUID;

.field private static final DFU_SERVICE_UUID:Ljava/util/UUID;

.field public static final DFU_STATUS_CRC_ERROR:I = 0x5

.field public static final DFU_STATUS_DATA_SIZE_EXCEEDS_LIMIT:I = 0x4

.field public static final DFU_STATUS_INVALID_STATE:I = 0x2

.field public static final DFU_STATUS_NOT_SUPPORTED:I = 0x3

.field public static final DFU_STATUS_OPERATION_FAILED:I = 0x6

.field public static final DFU_STATUS_SUCCESS:I = 0x1

.field private static final DFU_VERSION:Ljava/util/UUID;

.field public static final ERROR_BLUETOOTH_DISABLED:I = 0x100a

.field public static final ERROR_CHARACTERISTICS_NOT_FOUND:I = 0x1007

.field public static final ERROR_CONNECTION_MASK:I = 0x4000

.field public static final ERROR_CONNECTION_STATE_MASK:I = 0x8000

.field public static final ERROR_DEVICE_DISCONNECTED:I = 0x1000

.field public static final ERROR_FILE_ERROR:I = 0x1002

.field public static final ERROR_FILE_INVALID:I = 0x1003

.field public static final ERROR_FILE_IO_EXCEPTION:I = 0x1004

.field public static final ERROR_FILE_NOT_FOUND:I = 0x1001

.field public static final ERROR_FILE_SIZE_INVALID:I = 0x100c

.field public static final ERROR_FILE_TYPE_UNSUPPORTED:I = 0x1009

.field public static final ERROR_INIT_PACKET_REQUIRED:I = 0x100b

.field public static final ERROR_INVALID_RESPONSE:I = 0x1008

.field public static final ERROR_MASK:I = 0x1000

.field public static final ERROR_REMOTE_MASK:I = 0x2000

.field public static final ERROR_SERVICE_DISCOVERY_NOT_STARTED:I = 0x1005

.field public static final ERROR_SERVICE_NOT_FOUND:I = 0x1006

.field public static final ERROR_TYPE_COMMUNICATION:I = 0x2

.field public static final ERROR_TYPE_COMMUNICATION_STATE:I = 0x1

.field public static final ERROR_TYPE_DFU_REMOTE:I = 0x3

.field public static final ERROR_TYPE_OTHER:I = 0x0

.field public static final EXTRA_ACTION:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_ACTION"

.field public static final EXTRA_AVG_SPEED_B_PER_MS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_AVG_SPEED_B_PER_MS"

.field public static final EXTRA_DATA:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

.field public static final EXTRA_DEVICE_ADDRESS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

.field public static final EXTRA_DEVICE_NAME:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

.field public static final EXTRA_DISABLE_NOTIFICATION:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DISABLE_NOTIFICATION"

.field public static final EXTRA_ERROR_TYPE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

.field public static final EXTRA_FILE_MIME_TYPE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_PATH"

.field public static final EXTRA_FILE_RES_ID:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_RES_ID"

.field public static final EXTRA_FILE_TYPE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

.field public static final EXTRA_FILE_URI:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_URI"

.field public static final EXTRA_INIT_FILE_PATH:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_PATH"

.field public static final EXTRA_INIT_FILE_RES_ID:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_RES_ID"

.field public static final EXTRA_INIT_FILE_URI:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_URI"

.field public static final EXTRA_KEEP_BOND:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

.field public static final EXTRA_LOG_LEVEL:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_LOG_LEVEL"

.field public static final EXTRA_LOG_MESSAGE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_LOG_INFO"

.field public static final EXTRA_PARTS_TOTAL:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

.field public static final EXTRA_PART_CURRENT:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_PROGRESS"

.field public static final EXTRA_RESTORE_BOND:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_RESTORE_BOND"

.field public static final EXTRA_SPEED_B_PER_MS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_SPEED_B_PER_MS"

.field private static final GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

.field private static final HEX_ARRAY:[C

.field private static final INDICATIONS:I = 0x2

.field public static final LOG_LEVEL_APPLICATION:I = 0xa

.field public static final LOG_LEVEL_DEBUG:I = 0x0

.field public static final LOG_LEVEL_ERROR:I = 0x14

.field public static final LOG_LEVEL_INFO:I = 0x5

.field public static final LOG_LEVEL_VERBOSE:I = 0x1

.field public static final LOG_LEVEL_WARNING:I = 0xf

.field private static final MAX_PACKET_SIZE:I = 0x14

.field public static final MIME_TYPE_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_TYPE_ZIP:Ljava/lang/String; = "application/zip"

.field private static final NOTIFICATIONS:I = 0x1

.field public static final NOTIFICATION_ID:I = 0x11b

.field private static final OP_CODE_ACTIVATE_AND_RESET:[B

.field private static final OP_CODE_ACTIVATE_AND_RESET_KEY:I = 0x5

.field private static final OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

.field private static final OP_CODE_INIT_DFU_PARAMS_KEY:I = 0x2

.field private static final OP_CODE_INIT_DFU_PARAMS_START:[B

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_KEY:I = 0x11

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ_KEY:I = 0x8

.field private static final OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

.field private static final OP_CODE_RECEIVE_FIRMWARE_IMAGE_KEY:I = 0x3

.field private static final OP_CODE_RESET:[B

.field private static final OP_CODE_RESET_KEY:I = 0x6

.field private static final OP_CODE_RESPONSE_CODE_KEY:I = 0x10

.field private static final OP_CODE_START_DFU:[B

.field private static final OP_CODE_START_DFU_KEY:I = 0x1

.field private static final OP_CODE_VALIDATE:[B

.field private static final OP_CODE_VALIDATE_KEY:I = 0x4

.field public static final PROGRESS_ABORTED:I = -0x7

.field public static final PROGRESS_COMPLETED:I = -0x6

.field public static final PROGRESS_CONNECTING:I = -0x1

.field public static final PROGRESS_DISCONNECTING:I = -0x5

.field public static final PROGRESS_ENABLING_DFU_MODE:I = -0x3

.field public static final PROGRESS_STARTING:I = -0x2

.field public static final PROGRESS_VALIDATING:I = -0x4

.field private static final SERVICE_CHANGED_UUID:Ljava/util/UUID;

.field private static final STATE_CLOSED:I = -0x5

.field private static final STATE_CONNECTED:I = -0x2

.field private static final STATE_CONNECTED_AND_READY:I = -0x3

.field private static final STATE_CONNECTING:I = -0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final STATE_DISCONNECTING:I = -0x4

.field private static final TAG:Ljava/lang/String; = "DfuBaseService"

.field public static final TYPE_APPLICATION:I = 0x4

.field public static final TYPE_AUTO:I = 0x0

.field public static final TYPE_BOOTLOADER:I = 0x2

.field public static final TYPE_SOFT_DEVICE:I = 0x1


# instance fields
.field private mAborted:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBuffer:[B

.field private mBytesConfirmed:I

.field private mBytesSent:I

.field private mConnectionState:I

.field private final mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private final mDfuActionReceiver:Landroid/content/BroadcastReceiver;

.field private mDisableNotification:Z

.field private mError:I

.field private mFileType:I

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mImageSizeInBytes:I

.field private mImageSizeSent:Z

.field private mInitPacketSent:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mLastBytesSent:I

.field private mLastProgress:I

.field private mLastProgressTime:J

.field private final mLock:Ljava/lang/Object;

.field private mNotificationsEnabled:Z

.field private mPacketsBeforeNotification:I

.field private mPacketsSentSinceNotification:I

.field private mPartCurrent:I

.field private mPartsTotal:I

.field private mPaused:Z

.field private mReceivedData:[B

.field private mRemoteErrorOccurred:Z

.field private mRequestCompleted:Z

.field private mResetRequestSent:Z

.field private mServiceChangedIndicationsEnabled:Z

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    .line 522
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    sput-object v1, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    .line 523
    new-array v1, v0, [B

    aput-byte v0, v1, v2

    sput-object v1, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_INIT_DFU_PARAMS_START:[B

    .line 524
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

    .line 525
    new-array v0, v3, [B

    const/4 v1, 0x3

    aput-byte v1, v0, v2

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

    .line 526
    new-array v0, v3, [B

    const/4 v4, 0x4

    aput-byte v4, v0, v2

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_VALIDATE:[B

    .line 527
    new-array v0, v3, [B

    const/4 v4, 0x5

    aput-byte v4, v0, v2

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_ACTIVATE_AND_RESET:[B

    .line 528
    new-array v0, v3, [B

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RESET:[B

    .line 530
    new-array v0, v1, [B

    const/16 v1, 0x8

    aput-byte v1, v0, v2

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    .line 533
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x180100001000L

    const-wide v3, -0x7fffff7fa064cb05L    # -2.724079460785E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

    .line 534
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x2a0500001000L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    .line 535
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x15301212efdeL

    const-wide v5, 0x1523785feabcd123L    # 7.580602127171364E-207

    invoke-direct {v0, v1, v2, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_SERVICE_UUID:Ljava/util/UUID;

    .line 536
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x15311212efdeL

    invoke-direct {v0, v1, v2, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

    .line 537
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x15321212efdeL

    invoke-direct {v0, v1, v2, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_PACKET_UUID:Ljava/util/UUID;

    .line 538
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x15341212efdeL

    invoke-direct {v0, v1, v2, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_VERSION:Ljava/util/UUID;

    .line 539
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x290200001000L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    .line 544
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->HEX_ARRAY:[C

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1060
    const-string v0, "DfuBaseService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x14

    .line 546
    new-array v0, v0, [B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBuffer:[B

    .line 550
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    const/16 v0, 0xa

    .line 581
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsBeforeNotification:I

    const/4 v0, 0x0

    .line 655
    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    .line 657
    new-instance v0, Lno/nordicsemi/android/dfu/DfuBaseService$1;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/dfu/DfuBaseService$1;-><init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 677
    new-instance v0, Lno/nordicsemi/android/dfu/DfuBaseService$2;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/dfu/DfuBaseService$2;-><init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    .line 707
    new-instance v0, Lno/nordicsemi/android/dfu/DfuBaseService$3;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/dfu/DfuBaseService$3;-><init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 729
    new-instance v0, Lno/nordicsemi/android/dfu/DfuBaseService$4;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/dfu/DfuBaseService$4;-><init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v0, -0x1

    .line 1057
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgress:I

    return-void
.end method

.method static synthetic access$0(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/String;
    .locals 0

    .line 553
    iget-object p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V
    .locals 0

    .line 2942
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V
    .locals 0

    .line 2929
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11()Ljava/util/UUID;
    .locals 1

    .line 539
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$12()Ljava/util/UUID;
    .locals 1

    .line 534
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$13(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V
    .locals 0

    .line 577
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mServiceChangedIndicationsEnabled:Z

    return-void
.end method

.method static synthetic access$14(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V
    .locals 0

    .line 573
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mNotificationsEnabled:Z

    return-void
.end method

.method static synthetic access$15()Ljava/util/UUID;
    .locals 1

    .line 537
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_PACKET_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$16(Lno/nordicsemi/android/dfu/DfuBaseService;)Z
    .locals 0

    .line 618
    iget-boolean p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    return p0
.end method

.method static synthetic access$17(Lno/nordicsemi/android/dfu/DfuBaseService;)Z
    .locals 0

    .line 622
    iget-boolean p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInitPacketSent:Z

    return p0
.end method

.method static synthetic access$18(Lno/nordicsemi/android/dfu/DfuBaseService;)I
    .locals 0

    .line 589
    iget p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    return p0
.end method

.method static synthetic access$19(Lno/nordicsemi/android/dfu/DfuBaseService;I)V
    .locals 0

    .line 589
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    return-void
.end method

.method static synthetic access$2(Lno/nordicsemi/android/dfu/DfuBaseService;I)V
    .locals 0

    .line 559
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    return-void
.end method

.method static synthetic access$20(Lno/nordicsemi/android/dfu/DfuBaseService;)I
    .locals 0

    .line 595
    iget p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsSentSinceNotification:I

    return p0
.end method

.method static synthetic access$21(Lno/nordicsemi/android/dfu/DfuBaseService;I)V
    .locals 0

    .line 595
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsSentSinceNotification:I

    return-void
.end method

.method static synthetic access$22(Lno/nordicsemi/android/dfu/DfuBaseService;)I
    .locals 0

    .line 581
    iget p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsBeforeNotification:I

    return p0
.end method

.method static synthetic access$23(Lno/nordicsemi/android/dfu/DfuBaseService;)I
    .locals 0

    .line 585
    iget p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeInBytes:I

    return p0
.end method

.method static synthetic access$24(Lno/nordicsemi/android/dfu/DfuBaseService;)V
    .locals 0

    .line 2614
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitIfPaused()V

    return-void
.end method

.method static synthetic access$25(Lno/nordicsemi/android/dfu/DfuBaseService;)Z
    .locals 0

    .line 651
    iget-boolean p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    return p0
.end method

.method static synthetic access$26(Lno/nordicsemi/android/dfu/DfuBaseService;)I
    .locals 0

    .line 569
    iget p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    return p0
.end method

.method static synthetic access$27(Lno/nordicsemi/android/dfu/DfuBaseService;)Z
    .locals 0

    .line 647
    iget-boolean p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z

    return p0
.end method

.method static synthetic access$28(Lno/nordicsemi/android/dfu/DfuBaseService;)Z
    .locals 0

    .line 614
    iget-boolean p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mResetRequestSent:Z

    return p0
.end method

.method static synthetic access$29(Lno/nordicsemi/android/dfu/DfuBaseService;)[B
    .locals 0

    .line 546
    iget-object p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBuffer:[B

    return-object p0
.end method

.method static synthetic access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;
    .locals 0

    .line 550
    iget-object p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$30(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/io/InputStream;
    .locals 0

    .line 552
    iget-object p0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$31(Lno/nordicsemi/android/dfu/DfuBaseService;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 0

    .line 2598
    invoke-direct {p0, p1, p2, p3, p4}, Lno/nordicsemi/android/dfu/DfuBaseService;->writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    return-void
.end method

.method static synthetic access$32(Lno/nordicsemi/android/dfu/DfuBaseService;)V
    .locals 0

    .line 2740
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification()V

    return-void
.end method

.method static synthetic access$33(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2933
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$34(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V
    .locals 0

    .line 618
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    return-void
.end method

.method static synthetic access$35(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V
    .locals 0

    .line 622
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInitPacketSent:Z

    return-void
.end method

.method static synthetic access$36(Lno/nordicsemi/android/dfu/DfuBaseService;[B)V
    .locals 0

    .line 655
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    return-void
.end method

.method static synthetic access$37()Ljava/util/UUID;
    .locals 1

    .line 535
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_SERVICE_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$38(Lno/nordicsemi/android/dfu/DfuBaseService;I)V
    .locals 0

    .line 594
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesConfirmed:I

    return-void
.end method

.method static synthetic access$39(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V
    .locals 0

    .line 647
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z

    return-void
.end method

.method static synthetic access$4(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V
    .locals 0

    .line 649
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    return-void
.end method

.method static synthetic access$40()[C
    .locals 1

    .line 544
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->HEX_ARRAY:[C

    return-object v0
.end method

.method static synthetic access$5(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V
    .locals 0

    .line 651
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    return-void
.end method

.method static synthetic access$6(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V
    .locals 0

    .line 626
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    return-void
.end method

.method static synthetic access$7(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V
    .locals 0

    .line 2947
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V
    .locals 0

    .line 2897
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lno/nordicsemi/android/dfu/DfuBaseService;I)V
    .locals 0

    .line 569
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    return-void
.end method

.method private close(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    .line 2139
    const-string v0, "Cleaning up..."

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2140
    const-string v1, "gatt.close()"

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2141
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 p1, -0x5

    .line 2142
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    return-void
.end method

.method private connect(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;
    .locals 4

    .line 2054
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, -0x1

    .line 2057
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    .line 2059
    const-string v1, "Connecting to the device..."

    invoke-direct {p0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2060
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 2061
    const-string v1, "gatt = device.connectGatt(autoConnect = false)"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2062
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, p0, v2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    .line 2067
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2068
    :goto_0
    :try_start_1
    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eq v2, v0, :cond_1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    :cond_1
    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-nez v2, :cond_3

    .line 2067
    monitor-exit v1

    return-object p1

    .line 2069
    :cond_3
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2067
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 2072
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 2627
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 2631
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    .line 2633
    const-string v1, "Starting pairing..."

    invoke-direct {p0, v2, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2635
    const-string v1, "gatt.getDevice().createBond()"

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2636
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result p1

    .line 2643
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2644
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2645
    :cond_1
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2643
    :cond_2
    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 2648
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p1
.end method

.method private createBondApi18(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v0, 0x0

    .line 2658
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "createBond"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2660
    const-string v2, "gatt.getDevice().createBond() (hidden)"

    invoke-direct {p0, v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2661
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2664
    const-string v1, "DfuBaseService"

    const-string v2, "An exception occurred while creating bond"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method private disconnect(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    .line 2102
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2105
    const-string v1, "Disconnecting..."

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v0, -0x5

    .line 2106
    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    const/4 v0, -0x4

    .line 2108
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    .line 2110
    const-string v0, "Disconnecting from the device..."

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2111
    const-string v1, "gatt.disconnect()"

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2112
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 2115
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitUntilDisconnected()V

    const/4 p1, 0x5

    .line 2116
    const-string v0, "Disconnected"

    invoke-direct {p0, p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method private enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 2250
    const-string v1, "notifications"

    goto :goto_0

    :cond_0
    const-string v1, "indications"

    .line 2251
    :goto_0
    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_d

    const/4 v2, 0x0

    .line 2254
    iput-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    const/4 v2, 0x0

    .line 2255
    iput v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-ne p3, v0, :cond_1

    .line 2256
    iget-boolean v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mNotificationsEnabled:Z

    if-nez v4, :cond_9

    :cond_1
    const/4 v4, 0x2

    if-ne p3, v4, :cond_2

    iget-boolean v5, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mServiceChangedIndicationsEnabled:Z

    if-eqz v5, :cond_2

    goto/16 :goto_7

    .line 2259
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Enabling "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2260
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Enabling "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2263
    invoke-virtual {p1, p2, v0}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 2266
    sget-object v5, Lno/nordicsemi/android/dfu/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p2, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    if-ne p3, v0, :cond_3

    .line 2267
    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    goto :goto_1

    :cond_3
    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    :goto_1
    invoke-virtual {p2, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 2268
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "gatt.writeDescriptor("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-ne p3, v0, :cond_4

    const-string v6, ", value=0x01-00)"

    goto :goto_2

    :cond_4
    const-string v6, ", value=0x02-00)"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2269
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 2273
    :try_start_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-ne p3, v0, :cond_5

    .line 2274
    :try_start_1
    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mNotificationsEnabled:Z

    if-eqz p2, :cond_6

    goto :goto_4

    :catchall_0
    move-exception p2

    goto :goto_5

    :cond_5
    :goto_4
    if-ne p3, v4, :cond_7

    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mServiceChangedIndicationsEnabled:Z

    if-nez p2, :cond_7

    .line 2275
    :cond_6
    iget p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p2, v3, :cond_7

    iget p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz p2, :cond_8

    :cond_7
    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-nez p2, :cond_8

    .line 2280
    const-string/jumbo p2, "wait(1000)"

    invoke-direct {p0, v2, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2281
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 2273
    monitor-exit p1

    goto :goto_6

    .line 2276
    :cond_8
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 2273
    :goto_5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 2285
    const-string p2, "Sleeping interrupted"

    invoke-direct {p0, p2, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2287
    :goto_6
    iget-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-nez p1, :cond_c

    .line 2289
    iget p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p1, :cond_b

    .line 2291
    iget p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p1, v3, :cond_a

    :cond_9
    :goto_7
    return-void

    .line 2292
    :cond_a
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to set "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " state"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2290
    :cond_b
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to set "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " state"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2288
    :cond_c
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {p1}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw p1

    .line 2252
    :cond_d
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to set "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " state"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private getStatusCode([BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2185
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-byte v1, p1, v0

    if-ne v1, p2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x6

    if-gt v1, v0, :cond_0

    return v1

    .line 2186
    :cond_0
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;

    const-string v1, "Invalid response received"

    invoke-direct {v0, v1, p1, p2}, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;-><init>(Ljava/lang/String;[BI)V

    throw v0
.end method

.method private initialize()Z
    .locals 2

    .line 2914
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2916
    const-string v0, "Unable to initialize BluetoothManager."

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    return v1

    .line 2920
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 2922
    const-string v0, "Unable to obtain a BluetoothAdapter."

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isServiceChangedCCCDEnabled(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    .line 2306
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2312
    :cond_0
    sget-object v2, Lno/nordicsemi/android/dfu/DfuBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    .line 2316
    :cond_1
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    .line 2317
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2319
    const-string v0, "Reading Service Changed CCCD value..."

    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2320
    const-string v2, "Reading Service Changed CCCD value..."

    invoke-direct {p0, v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2322
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 2326
    :try_start_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2327
    :goto_0
    :try_start_1
    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    if-nez p2, :cond_2

    iget p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p2, v1, :cond_2

    iget p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz p2, :cond_3

    :cond_2
    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-nez p2, :cond_3

    .line 2326
    monitor-exit p1

    goto :goto_1

    .line 2328
    :cond_3
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 2326
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 2331
    const-string p2, "Sleeping interrupted"

    invoke-direct {p0, p2, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2333
    :goto_1
    iget-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-nez p1, :cond_6

    .line 2335
    iget p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p1, :cond_5

    .line 2337
    iget p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p1, v1, :cond_4

    .line 2340
    iget-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mServiceChangedIndicationsEnabled:Z

    return p1

    .line 2338
    :cond_4
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string p2, "Unable to read Service Changed CCCD"

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {p1, p2, v0}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2336
    :cond_5
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string p2, "Unable to read Service Changed CCCD"

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {p1, p2, v0}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2334
    :cond_6
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {p1}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw p1

    .line 2307
    :cond_7
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string p2, "Unable to read Service Changed CCCD"

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {p1, p2, v0}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    .line 2949
    const-string v0, "DfuBaseService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 2930
    const-string v0, "DfuBaseService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2934
    const-string v0, "DfuBaseService"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    .line 2944
    const-string v0, "DfuBaseService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1

    .line 2939
    const-string v0, "DfuBaseService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static makeDfuActionIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 1064
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1065
    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private openInputStream(ILjava/lang/String;II)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2035
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 2036
    const-string v0, "application/zip"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2037
    new-instance p2, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    invoke-direct {p2, p1, p3, p4}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    return-object p2

    :cond_0
    const/4 p2, 0x2

    .line 2038
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    .line 2039
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    .line 2040
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/16 p4, 0x3a

    if-ne p2, p4, :cond_1

    .line 2042
    new-instance p2, Lno/nordicsemi/android/dfu/internal/HexInputStream;

    invoke-direct {p2, p1, p3}, Lno/nordicsemi/android/dfu/internal/HexInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object p2

    :cond_1
    return-object p1
.end method

.method private openInputStream(Landroid/net/Uri;Ljava/lang/String;II)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2006
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 2007
    const-string v1, "application/zip"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2008
    new-instance p1, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    invoke-direct {p1, v0, p3, p4}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    return-object p1

    .line 2010
    :cond_0
    const-string p2, "_display_name"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    .line 2011
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2013
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 2014
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2016
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "hex"

    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2017
    new-instance p2, Lno/nordicsemi/android/dfu/internal/HexInputStream;

    invoke-direct {p2, v0, p3}, Lno/nordicsemi/android/dfu/internal/HexInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2020
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object p2, v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2021
    throw p2
.end method

.method private openInputStream(Ljava/lang/String;Ljava/lang/String;II)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1988
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1989
    const-string v1, "application/zip"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1990
    new-instance p1, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    invoke-direct {p1, v0, p3, p4}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    return-object p1

    .line 1991
    :cond_0
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "hex"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1992
    new-instance p1, Lno/nordicsemi/android/dfu/internal/HexInputStream;

    invoke-direct {p1, v0, p3}, Lno/nordicsemi/android/dfu/internal/HexInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object p1

    :cond_1
    return-object v0
.end method

.method private parse([B)Ljava/lang/String;
    .locals 7

    .line 2953
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 2956
    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v0, -0x1

    .line 2960
    new-array v0, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    .line 2968
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 2962
    :cond_2
    aget-byte v3, p1, v2

    and-int/lit16 v4, v3, 0xff

    mul-int/lit8 v5, v2, 0x3

    .line 2963
    sget-object v6, Lno/nordicsemi/android/dfu/DfuBaseService;->HEX_ARRAY:[C

    ushr-int/lit8 v4, v4, 0x4

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v4, v5, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 2964
    aget-char v3, v6, v3

    aput-char v3, v0, v4

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_3

    add-int/lit8 v5, v5, 0x2

    const/16 v3, 0x2d

    .line 2966
    aput-char v3, v0, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private readNotificationResponse()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2719
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    const/4 v0, -0x3

    .line 2721
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2722
    :goto_0
    :try_start_1
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    if-nez v2, :cond_0

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-nez v2, :cond_1

    .line 2721
    monitor-exit v1

    goto :goto_1

    .line 2723
    :cond_1
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 2721
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    .line 2726
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2728
    :goto_1
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-nez v1, :cond_4

    .line 2730
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v1, :cond_3

    .line 2732
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne v1, v0, :cond_2

    .line 2734
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    return-object v0

    .line 2733
    :cond_2
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v1, "Unable to write Op Code"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2731
    :cond_3
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string v1, "Unable to write Op Code"

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2729
    :cond_4
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {v0}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw v0
.end method

.method private readVersion(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    .line 2201
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x0

    .line 2207
    iput-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    .line 2208
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2210
    const-string v3, "Reading DFU version number..."

    invoke-direct {p0, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 2211
    const-string v4, "Reading DFU version number..."

    invoke-direct {p0, v3, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2213
    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2214
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2218
    :try_start_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2219
    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-nez v2, :cond_3

    .line 2218
    monitor-exit p1

    goto :goto_1

    .line 2220
    :cond_3
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    .line 2221
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 2218
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 2225
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2227
    :goto_1
    iget-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-nez p1, :cond_6

    .line 2229
    iget p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p1, :cond_5

    .line 2231
    iget p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p1, v1, :cond_4

    const/16 p1, 0x12

    .line 2235
    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 2232
    :cond_4
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string p2, "Unable to read version number"

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {p1, p2, v0}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2230
    :cond_5
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string p2, "Unable to read version number"

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {p1, p2, v0}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2228
    :cond_6
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {p1}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw p1

    .line 2202
    :cond_7
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string p2, "Unable to read version number"

    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {p1, p2, v0}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 2158
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 p2, 0x0

    .line 2159
    const-string v0, "gatt.refresh() (hidden)"

    invoke-direct {p0, p2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2164
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "refresh"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2166
    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2167
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Refreshing result: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 2170
    const-string p2, "An exception occurred while refreshing device"

    invoke-direct {p0, p2, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0xf

    .line 2171
    const-string p2, "Refreshing failed"

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method private removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 2676
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 2679
    :cond_0
    const-string v0, "Removing bond information..."

    invoke-direct {p0, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 2685
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "removeBond"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2687
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    .line 2688
    const-string v3, "gatt.getDevice().removeBond() (hidden)"

    invoke-direct {p0, v0, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2689
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2693
    :try_start_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2694
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2695
    :cond_1
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2693
    :cond_2
    :goto_1
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move v2, p1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 2698
    :try_start_4
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v0, p1

    const/4 v2, 0x0

    .line 2703
    :goto_2
    const-string p1, "DfuBaseService"

    const-string v1, "An exception occurred while removing bond information"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    return v2
.end method

.method private sendErrorBroadcast(I)V
    .locals 4

    .line 2879
    new-instance v0, Landroid/content/Intent;

    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    and-int/lit16 v1, p1, 0x4000

    .line 2880
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    if-lez v1, :cond_0

    and-int/lit16 p1, p1, -0x4001

    .line 2881
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 2882
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const v1, 0x8000

    and-int/2addr v1, p1

    if-lez v1, :cond_1

    const v1, -0x8001

    and-int/2addr p1, v1

    .line 2884
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 2885
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    and-int/lit16 v1, p1, 0x2000

    if-lez v1, :cond_2

    .line 2887
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x3

    .line 2888
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 2890
    :cond_2
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 2891
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2893
    :goto_0
    const-string p1, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2894
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private sendLogBroadcast(ILjava/lang/String;)V
    .locals 2

    .line 2898
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DFU] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2899
    new-instance v0, Landroid/content/Intent;

    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2900
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_LOG_INFO"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2901
    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_LOG_LEVEL"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2902
    const-string p1, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2903
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private sendProgressBroadcast(I)V
    .locals 11

    .line 2862
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2863
    iget-wide v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgressTime:J

    sub-long v4, v0, v2

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_0

    iget v4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    iget v5, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastBytesSent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-long v2, v0, v2

    long-to-float v2, v2

    div-float/2addr v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2864
    :goto_0
    iget-wide v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mStartTime:J

    sub-long v9, v0, v2

    cmp-long v5, v9, v7

    if-eqz v5, :cond_1

    iget v5, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    int-to-float v5, v5

    sub-long v2, v0, v2

    long-to-float v2, v2

    div-float v6, v5, v2

    .line 2865
    :cond_1
    iput-wide v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgressTime:J

    .line 2866
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastBytesSent:I

    .line 2868
    new-instance v0, Landroid/content/Intent;

    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2869
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2870
    const-string p1, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2871
    const-string p1, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartCurrent:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2872
    const-string p1, "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2873
    const-string p1, "no.nordicsemi.android.dfu.extra.EXTRA_SPEED_B_PER_MS"

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 2874
    const-string p1, "no.nordicsemi.android.dfu.extra.EXTRA_AVG_SPEED_B_PER_MS"

    invoke-virtual {v0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 2875
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private setNumberOfPackets([BI)V
    .locals 2

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    .line 1974
    aput-byte v0, p1, v1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x2

    .line 1975
    aput-byte p2, p1, v0

    return-void
.end method

.method private terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    .line 2084
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eqz v0, :cond_0

    .line 2086
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->disconnect(Landroid/bluetooth/BluetoothGatt;)V

    :cond_0
    const/4 v0, 0x0

    .line 2090
    invoke-direct {p0, p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 2091
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 2092
    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    return-void
.end method

.method private updateProgressNotification()V
    .locals 2

    .line 2741
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeInBytes:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 2742
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgress:I

    if-ne v1, v0, :cond_0

    return-void

    .line 2745
    :cond_0
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgress:I

    .line 2746
    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    return-void
.end method

.method private updateProgressNotification(I)V
    .locals 12

    const/16 v0, 0x1000

    if-ge p1, v0, :cond_0

    .line 2759
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendProgressBroadcast(I)V

    goto :goto_0

    .line 2761
    :cond_0
    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendErrorBroadcast(I)V

    .line 2763
    :goto_0
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDisableNotification:Z

    if-eqz v1, :cond_1

    return-void

    .line 2766
    :cond_1
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    .line 2767
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    sget v2, Lno/nordicsemi/android/dfu/R$string;->dfu_unknown_name:I

    invoke-virtual {p0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2771
    :goto_1
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080088

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const v5, -0x777778

    .line 2773
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v5, 0x2

    const v6, 0x1080089

    const/16 v7, 0x64

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    if-lt p1, v0, :cond_3

    .line 2804
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_error:I

    invoke-virtual {p0, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 2805
    sget v7, Lno/nordicsemi/android/dfu/R$string;->dfu_status_error_msg:I

    invoke-virtual {p0, v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    const/high16 v7, -0x10000

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_4

    .line 2777
    :pswitch_0
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_connecting:I

    invoke-virtual {p0, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_connecting_msg:I

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v2, v10, v8

    invoke-virtual {p0, v9, v10}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v7, v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_4

    .line 2780
    :pswitch_1
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_starting:I

    invoke-virtual {p0, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_starting_msg:I

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v2, v10, v8

    invoke-virtual {p0, v9, v10}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v7, v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_4

    .line 2783
    :pswitch_2
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_switching_to_dfu:I

    invoke-virtual {p0, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_switching_to_dfu_msg:I

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v2, v10, v8

    invoke-virtual {p0, v9, v10}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 2784
    invoke-virtual {v6, v7, v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_4

    .line 2787
    :pswitch_3
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_validating:I

    invoke-virtual {p0, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_validating_msg:I

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v2, v10, v8

    invoke-virtual {p0, v9, v10}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v7, v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_4

    .line 2790
    :pswitch_4
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_disconnecting:I

    invoke-virtual {p0, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_disconnecting_msg:I

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v2, v10, v8

    invoke-virtual {p0, v9, v10}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 2791
    invoke-virtual {v6, v7, v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    goto/16 :goto_4

    .line 2794
    :pswitch_5
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_completed:I

    invoke-virtual {p0, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 2795
    sget v7, Lno/nordicsemi/android/dfu/R$string;->dfu_status_completed_msg:I

    invoke-virtual {p0, v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, -0xff47e6

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_4

    .line 2798
    :pswitch_6
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_aborted:I

    invoke-virtual {p0, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 2799
    sget v7, Lno/nordicsemi/android/dfu/R$string;->dfu_status_aborted_msg:I

    invoke-virtual {p0, v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_4

    .line 2808
    :cond_3
    iget v6, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    if-ne v6, v4, :cond_4

    sget v6, Lno/nordicsemi/android/dfu/R$string;->dfu_status_uploading:I

    invoke-virtual {p0, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    sget v6, Lno/nordicsemi/android/dfu/R$string;->dfu_status_uploading_part:I

    iget v9, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartCurrent:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v9, v11, v8

    aput-object v10, v11, v4

    invoke-virtual {p0, v6, v11}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2809
    :goto_2
    iget v9, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mFileType:I

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_5

    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_uploading_msg:I

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v2, v10, v8

    invoke-virtual {p0, v9, v10}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    sget v9, Lno/nordicsemi/android/dfu/R$string;->dfu_status_uploading_components_msg:I

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v2, v10, v8

    invoke-virtual {p0, v9, v10}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2810
    :goto_3
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v7, p1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 2815
    :goto_4
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->getNotificationTarget()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v7, 0x10000000

    .line 2816
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2817
    const-string v7, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2818
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2819
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_PROGRESS"

    invoke-virtual {v6, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    .line 2820
    invoke-static {p0, v8, v6, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2821
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v2, -0x7

    if-eq p1, v2, :cond_6

    const/4 v2, -0x6

    if-eq p1, v2, :cond_6

    if-ge p1, v0, :cond_6

    .line 2825
    new-instance p1, Landroid/content/Intent;

    const-string v0, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ACTION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2826
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_ACTION"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2827
    invoke-static {p0, v4, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 2828
    sget v0, Lno/nordicsemi/android/dfu/R$drawable;->ic_action_notify_cancel:I

    sget v1, Lno/nordicsemi/android/dfu/R$string;->dfu_action_abort:I

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 2831
    :cond_6
    const-string p1, "notification"

    invoke-virtual {p0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/16 v0, 0x11b

    .line 2832
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private uploadFirmwareImage(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2558
    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    const/4 v0, 0x0

    .line 2559
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2561
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBuffer:[B

    .line 2563
    :try_start_0
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result p3

    .line 2564
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending firmware to characteristic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2565
    invoke-direct {p0, p1, p2, v0, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    :try_end_0
    .catch Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, -0x3

    .line 2573
    :try_start_1
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2574
    :goto_0
    :try_start_2
    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    if-nez p3, :cond_0

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz p3, :cond_1

    :cond_0
    iget-boolean p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-nez p3, :cond_1

    .line 2573
    monitor-exit p2

    goto :goto_1

    .line 2575
    :cond_1
    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 2573
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p2

    .line 2578
    const-string p3, "Sleeping interrupted"

    invoke-direct {p0, p3, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2580
    :goto_1
    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-nez p2, :cond_4

    .line 2582
    iget p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p2, :cond_3

    .line 2584
    iget p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p2, p1, :cond_2

    .line 2587
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    return-object p1

    .line 2585
    :cond_2
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string p2, "Uploading Firmware Image failed: device disconnected"

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2583
    :cond_3
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string p2, "Uploading Firmware Image failed"

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2581
    :cond_4
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {p1}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw p1

    .line 2569
    :catch_1
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string p2, "Error while reading file"

    const/16 p3, 0x1004

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2567
    :catch_2
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string p2, "HEX file not valid"

    const/16 p3, 0x1003

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private waitIfPaused()V
    .locals 3

    .line 2615
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2617
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 2618
    :cond_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 2620
    :try_start_1
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2615
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private waitUntilDisconnected()V
    .locals 2

    .line 2124
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2125
    :goto_0
    :try_start_1
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-eqz v1, :cond_1

    iget v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2126
    :cond_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2124
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 2129
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2419
    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    const/4 v0, 0x0

    .line 2420
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2421
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    const/4 v1, 0x1

    .line 2423
    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    const/4 v2, 0x4

    .line 2424
    new-array v2, v2, [B

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    const/16 v2, 0x14

    .line 2425
    invoke-virtual {p2, p3, v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 2426
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Writing to characteristic "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v1, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2427
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "gatt.writeCharacteristic("

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2428
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    const/4 p1, -0x3

    .line 2432
    :try_start_0
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2433
    :goto_0
    :try_start_1
    iget-boolean p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    if-nez p3, :cond_0

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz p3, :cond_1

    :cond_0
    iget-boolean p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-nez p3, :cond_1

    .line 2432
    monitor-exit p2

    goto :goto_1

    .line 2434
    :cond_1
    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 2432
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 2437
    const-string p3, "Sleeping interrupted"

    invoke-direct {p0, p3, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2439
    :goto_1
    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-nez p2, :cond_4

    .line 2441
    iget p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p2, :cond_3

    .line 2443
    iget p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p2, p1, :cond_2

    return-void

    .line 2444
    :cond_2
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string p2, "Unable to write Image Size"

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2442
    :cond_3
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string p2, "Unable to write Image Size"

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2440
    :cond_4
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {p1}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw p1
.end method

.method private writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2468
    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    const/4 v0, 0x0

    .line 2469
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2470
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    const/4 v1, 0x1

    .line 2472
    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    const/16 v2, 0xc

    .line 2473
    new-array v2, v2, [B

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    const/16 v2, 0x14

    .line 2474
    invoke-virtual {p2, p3, v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    const/4 p3, 0x4

    .line 2475
    invoke-virtual {p2, p4, v2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    const/16 p3, 0x8

    .line 2476
    invoke-virtual {p2, p5, v2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 2477
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Writing to characteristic "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v1, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2478
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "gatt.writeCharacteristic("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2479
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    const/4 p1, -0x3

    .line 2483
    :try_start_0
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2484
    :goto_0
    :try_start_1
    iget-boolean p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    if-nez p3, :cond_0

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz p3, :cond_1

    :cond_0
    iget-boolean p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-nez p3, :cond_1

    .line 2483
    monitor-exit p2

    goto :goto_1

    .line 2485
    :cond_1
    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 2483
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 2488
    const-string p3, "Sleeping interrupted"

    invoke-direct {p0, p3, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2490
    :goto_1
    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-nez p2, :cond_4

    .line 2492
    iget p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p2, :cond_3

    .line 2494
    iget p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p2, p1, :cond_2

    return-void

    .line 2495
    :cond_2
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string p2, "Unable to write Image Sizes"

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2493
    :cond_3
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string p2, "Unable to write Image Sizes"

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2491
    :cond_4
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {p1}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw p1
.end method

.method private writeInitPacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    .line 2513
    array-length v0, p3

    const/4 v1, 0x0

    if-eq v0, p4, :cond_0

    .line 2514
    new-array v0, p4, [B

    .line 2515
    invoke-static {p3, v1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    :cond_0
    const/4 p4, 0x0

    .line 2517
    iput-object p4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    .line 2518
    iput v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2519
    iput-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInitPacketSent:Z

    const/4 p4, 0x1

    .line 2521
    invoke-virtual {p2, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 2522
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2523
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Sending init packet (Value = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->parse([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 2524
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Writing to characteristic "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p4, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2525
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "gatt.writeCharacteristic("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v1, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2526
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    const/4 p1, -0x3

    .line 2530
    :try_start_0
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2531
    :goto_0
    :try_start_1
    iget-boolean p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mInitPacketSent:Z

    if-nez p3, :cond_1

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p3, p1, :cond_1

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz p3, :cond_2

    :cond_1
    iget-boolean p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-nez p3, :cond_2

    .line 2530
    monitor-exit p2

    goto :goto_1

    .line 2532
    :cond_2
    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 2530
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 2535
    const-string p3, "Sleeping interrupted"

    invoke-direct {p0, p3, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2537
    :goto_1
    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-nez p2, :cond_5

    .line 2539
    iget p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p2, :cond_4

    .line 2541
    iget p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p2, p1, :cond_3

    return-void

    .line 2542
    :cond_3
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string p2, "Unable to write Init DFU Parameters"

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2540
    :cond_4
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string p2, "Unable to write Init DFU Parameters"

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2538
    :cond_5
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {p1}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw p1
.end method

.method private writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2356
    aget-byte v1, p3, v0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2357
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V

    return-void
.end method

.method private writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2375
    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mReceivedData:[B

    const/4 v0, 0x0

    .line 2376
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    .line 2377
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    .line 2382
    iput-boolean p4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mResetRequestSent:Z

    .line 2384
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2385
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Writing to characteristic "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x1

    invoke-direct {p0, v1, p4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2386
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "gatt.writeCharacteristic("

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, v0, p4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2387
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    const/4 p1, -0x3

    .line 2391
    :try_start_0
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2392
    :goto_0
    :try_start_1
    iget-boolean p4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    if-nez p4, :cond_0

    iget p4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p4, p1, :cond_0

    iget p4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p4, :cond_0

    iget-boolean p4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-eqz p4, :cond_1

    :cond_0
    iget-boolean p4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    if-nez p4, :cond_1

    .line 2391
    monitor-exit p2

    goto :goto_1

    .line 2393
    :cond_1
    iget-object p4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception p4

    .line 2391
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 2396
    const-string p4, "Sleeping interrupted"

    invoke-direct {p0, p4, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2398
    :goto_1
    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    if-nez p2, :cond_6

    .line 2400
    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mResetRequestSent:Z

    if-nez p2, :cond_3

    iget p4, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    if-nez p4, :cond_2

    goto :goto_2

    .line 2401
    :cond_2
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Unable to write Op Code "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p3, p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    :goto_2
    if-nez p2, :cond_5

    .line 2402
    iget p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    if-ne p2, p1, :cond_4

    goto :goto_3

    .line 2403
    :cond_4
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Unable to write Op Code "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p3, p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    invoke-direct {p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    :goto_3
    return-void

    .line 2399
    :cond_6
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;

    invoke-direct {p1}, Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;-><init>()V

    throw p1
.end method

.method private writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 2

    .line 2600
    array-length v0, p3

    if-eq v0, p4, :cond_0

    .line 2601
    new-array v0, p4, [B

    const/4 v1, 0x0

    .line 2602
    invoke-static {p3, v1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    .line 2604
    :cond_0
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2605
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void
.end method


# virtual methods
.method protected abstract getNotificationTarget()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method

.method public onCreate()V
    .locals 3

    .line 1071
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 1073
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->initialize()Z

    .line 1075
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 1076
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->makeDfuActionIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 1077
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1078
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1080
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1081
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1083
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1084
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1089
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 1091
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1094
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1095
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1096
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService;->mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const-string v8, "b, 0b]"

    const-string v9, "b, 0b]"

    .line 1101
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1104
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1105
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

    invoke-virtual {v7, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1106
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_DISABLE_NOTIFICATION"

    const/4 v10, 0x0

    invoke-virtual {v7, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1107
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_PATH"

    invoke-virtual {v7, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1108
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_URI"

    invoke-virtual {v7, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 1109
    const-string v11, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_RES_ID"

    invoke-virtual {v7, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1110
    const-string v12, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_PATH"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1111
    const-string v13, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_URI"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    .line 1112
    const-string v14, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_RES_ID"

    invoke-virtual {v7, v14, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1113
    const-string v15, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

    invoke-virtual {v7, v15, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    if-eqz v5, :cond_1

    if-nez v15, :cond_1

    .line 1115
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v10, "zip"

    invoke-virtual {v15, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    const/4 v15, 0x4

    .line 1116
    :cond_1
    :goto_0
    const-string v10, "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    :goto_1
    move-object/from16 v18, v8

    goto :goto_2

    :cond_2
    if-nez v15, :cond_3

    .line 1117
    const-string v10, "application/zip"

    goto :goto_1

    :cond_3
    const-string v10, "application/octet-stream"

    goto :goto_1

    .line 1118
    :goto_2
    const-string v8, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    move-object/from16 v19, v9

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartCurrent:I

    .line 1119
    const-string v8, "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    and-int/lit8 v8, v15, -0x8

    if-gtz v8, :cond_44

    .line 1122
    const-string v8, "application/zip"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "application/octet-stream"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_31

    .line 1128
    :cond_4
    const-string v8, "application/octet-stream"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    if-eq v15, v8, :cond_5

    if-eq v15, v9, :cond_5

    const/4 v8, 0x4

    if-eq v15, v8, :cond_5

    .line 1129
    const-string v0, "Unable to determine file type"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1130
    const-string v0, "Unable to determine file type"

    const/16 v2, 0xf

    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/16 v0, 0x1009

    .line 1131
    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendErrorBroadcast(I)V

    return-void

    .line 1135
    :cond_5
    iput-object v2, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    .line 1136
    iput-object v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceName:Ljava/lang/String;

    .line 1137
    iput-boolean v4, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mDisableNotification:Z

    const/4 v3, 0x0

    .line 1138
    iput v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    .line 1139
    iput v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    .line 1140
    iput v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesConfirmed:I

    .line 1141
    iput v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsSentSinceNotification:I

    .line 1142
    iput v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    move-object v4, v10

    const-wide/16 v9, 0x0

    .line 1143
    iput-wide v9, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgressTime:J

    .line 1144
    iput-boolean v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    .line 1145
    iput-boolean v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z

    .line 1146
    iput-boolean v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mNotificationsEnabled:Z

    .line 1147
    iput-boolean v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mResetRequestSent:Z

    .line 1148
    iput-boolean v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z

    .line 1149
    iput-boolean v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeSent:Z

    .line 1150
    iput-boolean v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z

    .line 1153
    const-string v3, "settings_packet_receipt_notification_enabled"

    const/4 v9, 0x1

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1154
    const-string v9, "settings_number_of_packets"

    const/16 v10, 0xc

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1157
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v8, :cond_6

    const v9, 0xffff

    if-le v8, v9, :cond_7

    goto :goto_3

    :catch_0
    nop

    :cond_6
    :goto_3
    const/16 v8, 0xc

    :cond_7
    if-nez v3, :cond_8

    const/4 v8, 0x0

    .line 1165
    :cond_8
    iput v8, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsBeforeNotification:I

    .line 1168
    const-string v3, "settings_mbr_size"

    const/16 v9, 0x1000

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1171
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-gez v3, :cond_9

    const/4 v3, 0x0

    goto :goto_4

    :catch_1
    const/16 v3, 0x1000

    .line 1188
    :cond_9
    :goto_4
    const-string v8, "settings_assume_dfu_mode"

    const/4 v9, 0x0

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1190
    const-string v8, "DFU service started"

    const/4 v9, 0x1

    invoke-direct {v1, v9, v8}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v10, 0x0

    .line 1201
    :try_start_2
    const-string v8, "Opening file..."

    invoke-direct {v1, v9, v8}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_27
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_26
    .catch Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException; {:try_start_2 .. :try_end_2} :catch_25
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_23
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v6, :cond_a

    .line 1203
    :try_start_3
    invoke-direct {v1, v6, v4, v3, v15}, Lno/nordicsemi/android/dfu/DfuBaseService;->openInputStream(Landroid/net/Uri;Ljava/lang/String;II)Ljava/io/InputStream;

    move-result-object v3

    :goto_5
    move-object v9, v3

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v10

    move-object v9, v2

    goto/16 :goto_30

    :catch_2
    move-exception v0

    move-object v9, v10

    goto/16 :goto_2a

    :catch_3
    move-exception v0

    move-object v9, v10

    goto/16 :goto_2b

    :catch_4
    move-exception v0

    move-object v9, v10

    goto/16 :goto_2c

    :catch_5
    move-exception v0

    move-object v9, v10

    goto/16 :goto_2d

    :catch_6
    move-exception v0

    move-object v9, v10

    goto/16 :goto_2e

    :cond_a
    if-eqz v5, :cond_b

    .line 1205
    invoke-direct {v1, v5, v4, v3, v15}, Lno/nordicsemi/android/dfu/DfuBaseService;->openInputStream(Ljava/lang/String;Ljava/lang/String;II)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_5

    :cond_b
    if-lez v11, :cond_c

    .line 1207
    invoke-direct {v1, v11, v4, v3, v15}, Lno/nordicsemi/android/dfu/DfuBaseService;->openInputStream(ILjava/lang/String;II)Ljava/io/InputStream;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :cond_c
    move-object v9, v10

    :goto_6
    if-eqz v13, :cond_d

    .line 1212
    :try_start_4
    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v10

    goto/16 :goto_30

    :catch_7
    move-exception v0

    goto/16 :goto_2a

    :catch_8
    move-exception v0

    goto/16 :goto_2b

    :catch_9
    move-exception v0

    goto/16 :goto_2c

    :catch_a
    move-exception v0

    goto/16 :goto_2d

    :catch_b
    move-exception v0

    goto/16 :goto_2e

    :cond_d
    if-eqz v12, :cond_e

    .line 1215
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    if-lez v14, :cond_f

    .line 1218
    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :cond_f
    move-object v3, v10

    .line 1221
    :goto_7
    :try_start_5
    iput-object v9, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1222
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v8

    iput v8, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeInBytes:I

    .line 1224
    rem-int/lit8 v5, v8, 0x4
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-nez v5, :cond_41

    if-nez v15, :cond_10

    .line 1228
    :try_start_6
    const-string v5, "application/zip"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1229
    move-object v5, v9

    check-cast v5, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    .line 1230
    invoke-virtual {v5}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getContentType()I

    move-result v15
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1232
    :cond_10
    :try_start_7
    iput v15, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mFileType:I

    .line 1234
    const-string v5, "application/zip"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v5, :cond_18

    .line 1235
    :try_start_8
    move-object v5, v9

    check-cast v5, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    and-int/lit8 v6, v15, 0x4

    if-lez v6, :cond_12

    .line 1238
    invoke-virtual {v5}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationImageSize()I

    move-result v6

    const/16 v17, 0x4

    rem-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_11

    goto :goto_8

    .line 1239
    :cond_11
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException;

    const-string v2, "Application firmware is not word-aligned."

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_8
    and-int/lit8 v6, v15, 0x2

    if-lez v6, :cond_14

    .line 1240
    invoke-virtual {v5}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderImageSize()I

    move-result v6

    const/16 v17, 0x4

    rem-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_13

    goto :goto_9

    .line 1241
    :cond_13
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException;

    const-string v2, "Bootloader firmware is not word-aligned."

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_9
    and-int/lit8 v6, v15, 0x1

    if-lez v6, :cond_16

    .line 1242
    invoke-virtual {v5}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceImageSize()I

    move-result v6

    const/16 v17, 0x4

    rem-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_15

    goto :goto_a

    .line 1243
    :cond_15
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException;

    const-string v2, "Soft Device firmware is not word-aligned."

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_a
    const/4 v6, 0x4

    if-ne v15, v6, :cond_17

    .line 1246
    invoke-virtual {v5}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getApplicationInit()[B

    move-result-object v6

    if-eqz v6, :cond_18

    .line 1247
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getApplicationInit()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_b

    .line 1249
    :cond_17
    invoke-virtual {v5}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getSystemInit()[B

    move-result-object v6

    if-eqz v6, :cond_18

    .line 1250
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getSystemInit()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_18
    :goto_b
    move-object v11, v3

    .line 1253
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Image file opened ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeInBytes:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes in total)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x5

    invoke-direct {v1, v12, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1277
    :try_start_a
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 1279
    :try_start_b
    const-string/jumbo v3, "wait(1000)"

    const/4 v5, 0x0

    invoke-direct {v1, v5, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const-wide/16 v5, 0x3e8

    .line 1280
    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    goto/16 :goto_29

    .line 1277
    :catch_c
    :goto_c
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1290
    :try_start_d
    const-string v3, "Connecting to DFU target..."

    const/4 v5, 0x1

    invoke-direct {v1, v5, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v13, -0x1

    .line 1291
    invoke-direct {v1, v13}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    .line 1293
    invoke-direct {v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->connect(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    const/16 v14, 0x14

    if-nez v2, :cond_19

    .line 1296
    :try_start_e
    const-string v0, "Bluetooth adapter disabled"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1297
    const-string v0, "Bluetooth adapter disabled"

    invoke-direct {v1, v14, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/16 v0, 0x100a

    .line 1298
    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1958
    :try_start_f
    iput-object v10, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    if-eqz v9, :cond_42

    .line 1960
    :goto_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_28

    goto/16 :goto_2f

    .line 1301
    :cond_19
    :try_start_10
    iget v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    const v21, -0x8001

    if-lez v3, :cond_1a

    and-int v0, v3, v21

    .line 1303
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An error occurred while connecting to the device:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1304
    const-string v3, "Connection failed (0x%02X): %s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Lno/nordicsemi/android/error/GattError;->parseConnectionError(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v5, v16

    const/16 v20, 0x1

    aput-object v0, v5, v20

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v14, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1305
    iget v0, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mError:I

    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1958
    :try_start_12
    iput-object v10, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_28

    if-eqz v9, :cond_42

    goto :goto_d

    .line 1308
    :cond_1a
    :try_start_13
    iget-boolean v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    const/4 v5, -0x7

    if-eqz v3, :cond_1b

    .line 1309
    :try_start_14
    const-string v0, "Upload aborted"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1310
    const-string v0, "Upload aborted"

    const/16 v3, 0xf

    invoke-direct {v1, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1311
    invoke-direct {v1, v2, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1958
    :try_start_15
    iput-object v10, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_28

    if-eqz v9, :cond_42

    goto :goto_d

    .line 1316
    :cond_1b
    :try_start_16
    sget-object v3, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    if-nez v3, :cond_1c

    .line 1318
    :try_start_17
    const-string v0, "DFU service does not exists on the device"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1319
    const-string v0, "Connected. DFU Service not found"

    const/16 v3, 0xf

    invoke-direct {v1, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/16 v0, 0x1006

    .line 1320
    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1958
    :try_start_18
    iput-object v10, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_28

    if-eqz v9, :cond_42

    goto :goto_d

    .line 1323
    :cond_1c
    :try_start_19
    sget-object v6, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    .line 1324
    sget-object v5, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_PACKET_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    if-eqz v6, :cond_40

    if-nez v5, :cond_1d

    goto/16 :goto_28

    .line 1349
    :cond_1d
    sget-object v13, Lno/nordicsemi/android/dfu/DfuBaseService;->DFU_VERSION:Ljava/util/UUID;

    invoke-virtual {v3, v13}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 1351
    const-string v13, "Connected. Services discovered"

    invoke-direct {v1, v12, v13}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    const/4 v13, -0x2

    .line 1353
    :try_start_1a
    invoke-direct {v1, v13}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    if-eqz v3, :cond_1e

    .line 1384
    invoke-direct {v1, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->readVersion(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I

    move-result v3

    and-int/lit8 v13, v3, 0xf

    shr-int/lit8 v14, v3, 0x8

    .line 1387
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "Version number read: "

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1388
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Version number read: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0xa

    invoke-direct {v1, v12, v10}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    move v10, v3

    goto :goto_e

    :cond_1e
    const/4 v10, 0x0

    :goto_e
    const/4 v3, 0x1

    if-eq v10, v3, :cond_39

    const/4 v13, 0x3

    if-nez v0, :cond_1f

    if-nez v10, :cond_1f

    .line 1398
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v13, :cond_1f

    goto/16 :goto_22

    :cond_1f
    const/4 v3, 0x5

    if-lt v10, v3, :cond_20

    if-nez v11, :cond_20

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Init packet not set for the DFU Bootloader version "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1515
    const-string v0, "The Init packet is required by this version DFU Bootloader"

    const/16 v3, 0x14

    invoke-direct {v1, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/16 v0, 0x100b

    .line 1516
    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_1a
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_1a .. :try_end_1a} :catch_20
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_1a .. :try_end_1a} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_1a .. :try_end_1a} :catch_1d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    const/4 v2, 0x0

    .line 1958
    :try_start_1b
    iput-object v2, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_28

    if-eqz v9, :cond_42

    goto/16 :goto_d

    :cond_20
    const/4 v3, 0x1

    .line 1521
    :try_start_1c
    invoke-direct {v1, v2, v6, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1522
    const-string v0, "Notifications enabled"

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_1c
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_1c .. :try_end_1c} :catch_20
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_1c .. :try_end_1c} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_1c .. :try_end_1c} :catch_1d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    and-int/lit8 v0, v15, 0x1

    if-lez v0, :cond_21

    move v0, v8

    goto :goto_f

    :cond_21
    const/4 v0, 0x0

    :goto_f
    and-int/lit8 v3, v15, 0x2

    if-lez v3, :cond_22

    move v3, v8

    goto :goto_10

    :cond_22
    const/4 v3, 0x0

    :goto_10
    and-int/lit8 v14, v15, 0x4

    if-lez v14, :cond_23

    move/from16 v22, v8

    goto :goto_11

    :cond_23
    const/16 v22, 0x0

    .line 1563
    :goto_11
    :try_start_1d
    const-string v12, "application/zip"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1564
    move-object v0, v9

    check-cast v0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    .line 1565
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceImageSize()I

    move-result v3

    .line 1566
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderImageSize()I

    move-result v4

    .line 1567
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationImageSize()I

    move-result v22
    :try_end_1d
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_1d .. :try_end_1d} :catch_1b
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_1d .. :try_end_1d} :catch_1a
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_1d .. :try_end_1d} :catch_20
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_1d .. :try_end_1d} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_1d .. :try_end_1d} :catch_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    move v0, v4

    move v4, v3

    move v3, v0

    goto :goto_12

    :cond_24
    move v4, v0

    :goto_12
    move/from16 v0, v22

    .line 1571
    :try_start_1e
    sget-object v12, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    int-to-byte v13, v15

    const/16 v20, 0x1

    aput-byte v13, v12, v20

    .line 1574
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_1e .. :try_end_1e} :catch_10
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_1e .. :try_end_1e} :catch_1b
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_1e .. :try_end_1e} :catch_20
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_1e .. :try_end_1e} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_1e .. :try_end_1e} :catch_1d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    move-object/from16 v23, v5

    :try_start_1f
    const-string v5, "Sending Start DFU command (Op Code = 1, Upload Mode = "

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1575
    invoke-direct {v1, v2, v6, v12}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1576
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "DFU Start sent (Op Code = 1, Upload Mode = "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0xa

    invoke-direct {v1, v12, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1579
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "Sending image size array to DFU Packet ("

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "b, "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "b, "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "b)"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V
    :try_end_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_1f .. :try_end_1f} :catch_f
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_1f .. :try_end_1f} :catch_1b
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_1f .. :try_end_1f} :catch_20
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_1f .. :try_end_1f} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_1f .. :try_end_1f} :catch_1d
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    move v5, v3

    move-object v12, v6

    move-object/from16 v3, v23

    const/4 v13, -0x7

    move v6, v0

    .line 1580
    :try_start_20
    invoke-direct/range {v1 .. v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;III)V

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "Firmware image size sent ("

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "b, "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "b, "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "b)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1584
    invoke-direct {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->readNotificationResponse()[B

    move-result-object v0

    const/4 v6, 0x1

    .line 1596
    invoke-direct {v1, v0, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->getStatusCode([BI)I

    move-result v13

    const/16 v20, 0x1

    .line 1597
    new-instance v6, Ljava/lang/StringBuilder;
    :try_end_20
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_20 .. :try_end_20} :catch_e
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_20 .. :try_end_20} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_20 .. :try_end_20} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_20 .. :try_end_20} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_20 .. :try_end_20} :catch_1c
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    move-object/from16 v23, v3

    :try_start_21
    const-string v3, "Response received (Op Code = "

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Status = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v3, 0x1

    if-ne v13, v3, :cond_25

    move-object/from16 v3, v23

    :goto_13
    const/16 v6, 0xa

    goto/16 :goto_16

    .line 1599
    :cond_25
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v3, "Starting DFU failed"

    invoke-direct {v0, v3, v13}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_21 .. :try_end_21} :catch_d
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_21 .. :try_end_21} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_21 .. :try_end_21} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_21 .. :try_end_21} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_21 .. :try_end_21} :catch_1c
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    :catch_d
    move-exception v0

    goto :goto_14

    :catch_e
    move-exception v0

    move-object/from16 v23, v3

    goto :goto_14

    :catch_f
    move-exception v0

    move v5, v3

    move-object v12, v6

    goto :goto_14

    :catch_10
    move-exception v0

    move-object/from16 v23, v5

    move-object v12, v6

    move v5, v3

    .line 1602
    :goto_14
    :try_start_22
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getErrorNumber()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_28

    if-lez v14, :cond_27

    and-int/lit8 v3, v15, 0x3

    if-lez v3, :cond_27

    const/4 v3, 0x0

    .line 1609
    iput-boolean v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z

    .line 1611
    const-string v0, "DFU target does not support (SD/BL)+App update"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1612
    const-string v0, "DFU target does not support (SD/BL)+App update"

    const/16 v3, 0xf

    invoke-direct {v1, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    and-int/lit8 v15, v15, -0x5

    .line 1615
    iput v15, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mFileType:I

    .line 1616
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    int-to-byte v3, v15

    const/16 v20, 0x1

    aput-byte v3, v0, v20

    const/4 v3, 0x2

    .line 1617
    iput v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    .line 1620
    move-object v0, v9

    check-cast v0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    .line 1621
    invoke-virtual {v0, v15}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->setContentType(I)I
    :try_end_22
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_22 .. :try_end_22} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_22 .. :try_end_22} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_22 .. :try_end_22} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_22 .. :try_end_22} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_22 .. :try_end_22} :catch_1c
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    .line 1624
    :try_start_23
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v0

    iput v0, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeInBytes:I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_11
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_23 .. :try_end_23} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_23 .. :try_end_23} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_23 .. :try_end_23} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_23 .. :try_end_23} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_23 .. :try_end_23} :catch_1c
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    .line 1630
    :catch_11
    :try_start_24
    const-string v0, "Sending only SD/BL"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Resending Start DFU command (Op Code = 1, Upload Mode = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1632
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    invoke-direct {v1, v2, v12, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DFU Start sent (Op Code = 1, Upload Mode = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Sending image size array to DFU Packet: ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "b, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V
    :try_end_24
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_24 .. :try_end_24} :catch_14
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_24 .. :try_end_24} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_24 .. :try_end_24} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_24 .. :try_end_24} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_24 .. :try_end_24} :catch_1c
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    const/4 v6, 0x0

    move-object/from16 v3, v23

    .line 1637
    :try_start_25
    invoke-direct/range {v1 .. v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;III)V

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Firmware image size sent ["

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "b, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1641
    invoke-direct {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->readNotificationResponse()[B

    move-result-object v0

    const/4 v5, 0x1

    .line 1642
    invoke-direct {v1, v0, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->getStatusCode([BI)I

    move-result v4

    .line 1643
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v13, "Response received (Op Code = "

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Status = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    goto/16 :goto_13

    .line 1645
    :cond_26
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v5, "Starting DFU failed"

    invoke-direct {v0, v5, v4}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_27
    move-object/from16 v3, v23

    .line 1647
    throw v0

    :cond_28
    move-object/from16 v3, v23

    .line 1603
    throw v0
    :try_end_25
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_25 .. :try_end_25} :catch_12
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_25 .. :try_end_25} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_25 .. :try_end_25} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_25 .. :try_end_25} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_25 .. :try_end_25} :catch_1c
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    :catch_12
    move-exception v0

    goto :goto_15

    :catch_13
    move-exception v0

    goto/16 :goto_21

    :catch_14
    move-exception v0

    move-object/from16 v3, v23

    .line 1649
    :goto_15
    :try_start_26
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getErrorNumber()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_38

    const/4 v6, 0x4

    if-ne v15, v6, :cond_37

    const/4 v5, 0x0

    .line 1655
    iput-boolean v5, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mRemoteErrorOccurred:Z

    .line 1658
    const-string v0, "DFU target does not support DFU v.2"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1659
    const-string v0, "DFU target does not support DFU v.2"

    const/16 v4, 0xf

    invoke-direct {v1, v4, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1662
    const-string v0, "Switching to DFU v.1"

    const/4 v5, 0x1

    invoke-direct {v1, v5, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1663
    const-string v0, "Resending Start DFU command (Op Code = 1)"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1664
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    invoke-direct {v1, v2, v12, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1665
    const-string v0, "DFU Start sent (Op Code = 1)"

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Sending application image size to DFU Packet: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1669
    iget v0, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mImageSizeInBytes:I

    invoke-direct {v1, v2, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Firmware image size sent ("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1673
    invoke-direct {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->readNotificationResponse()[B

    move-result-object v0

    const/4 v5, 0x1

    .line 1674
    invoke-direct {v1, v0, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->getStatusCode([BI)I

    move-result v4

    .line 1675
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Response received (Op Code = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Status = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v5, 0x1

    if-ne v4, v5, :cond_36

    :goto_16
    if-eqz v11, :cond_2b

    .line 1719
    const-string v0, "Writing Initialize DFU Parameters..."

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1721
    const-string v0, "Sending the Initialize DFU Parameters START (Op Code = 2, Value = 0)"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1722
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_INIT_DFU_PARAMS_START:[B

    invoke-direct {v1, v2, v12, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    :try_end_26
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_26 .. :try_end_26} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_26 .. :try_end_26} :catch_19
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_26 .. :try_end_26} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_26 .. :try_end_26} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_26 .. :try_end_26} :catch_1c
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    const/16 v4, 0x14

    .line 1725
    :try_start_27
    new-array v0, v4, [B

    :goto_17
    const/4 v5, 0x0

    .line 1727
    invoke-virtual {v11, v0, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_15
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_27 .. :try_end_27} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_27 .. :try_end_27} :catch_19
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_27 .. :try_end_27} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_27 .. :try_end_27} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_27 .. :try_end_27} :catch_1c
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    const/4 v4, -0x1

    if-ne v6, v4, :cond_2a

    .line 1734
    :try_start_28
    const-string v0, "Sending the Initialize DFU Parameters COMPLETE (Op Code = 2, Value = 1)"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1735
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

    invoke-direct {v1, v2, v12, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1736
    const-string v0, "Initialize DFU Parameters completed"

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1739
    invoke-direct {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->readNotificationResponse()[B

    move-result-object v0

    const/4 v8, 0x2

    .line 1740
    invoke-direct {v1, v0, v8}, Lno/nordicsemi/android/dfu/DfuBaseService;->getStatusCode([BI)I

    move-result v4

    .line 1741
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response received (Op Code = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x1

    aget-byte v0, v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Status = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    goto :goto_18

    .line 1743
    :cond_29
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v3, "Device returned error after sending init packet"

    invoke-direct {v0, v3, v4}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_28
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_28 .. :try_end_28} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_28 .. :try_end_28} :catch_19
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_28 .. :try_end_28} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_28 .. :try_end_28} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_28 .. :try_end_28} :catch_1c
    .catchall {:try_start_28 .. :try_end_28} :catchall_6

    .line 1728
    :cond_2a
    :try_start_29
    invoke-direct {v1, v2, v3, v0, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeInitPacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_15
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_29 .. :try_end_29} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_29 .. :try_end_29} :catch_19
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_29 .. :try_end_29} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_29 .. :try_end_29} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_29 .. :try_end_29} :catch_1c
    .catchall {:try_start_29 .. :try_end_29} :catchall_6

    const/16 v4, 0x14

    goto :goto_17

    .line 1731
    :catch_15
    :try_start_2a
    const-string v0, "Error while reading Init packet file"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1732
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DfuException;

    const-string v3, "Error while reading Init packet file"

    const/16 v4, 0x1002

    invoke-direct {v0, v3, v4}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2b
    const/4 v5, 0x1

    .line 1745
    iput-boolean v5, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInitPacketSent:Z

    .line 1748
    :goto_18
    iget v0, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mPacketsBeforeNotification:I

    if-lez v0, :cond_2c

    .line 1750
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sending the number of packets before notifications (Op Code = 8, Value = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1751
    sget-object v4, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    invoke-direct {v1, v4, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->setNumberOfPackets([BI)V

    .line 1752
    invoke-direct {v1, v2, v12, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1753
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Packet Receipt Notif Req (Op Code = 8) sent (Value = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1757
    :cond_2c
    const-string v0, "Sending Receive Firmware Image request (Op Code = 3)"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1758
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

    invoke-direct {v1, v2, v12, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1759
    const-string v0, "Receive Firmware Image request sent"

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1762
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mStartTime:J

    iput-wide v4, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mLastProgressTime:J

    .line 1763
    invoke-direct {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification()V
    :try_end_2a
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_2a .. :try_end_2a} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_2a .. :try_end_2a} :catch_19
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_2a .. :try_end_2a} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_2a .. :try_end_2a} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_2a .. :try_end_2a} :catch_1c
    .catchall {:try_start_2a .. :try_end_2a} :catchall_6

    .line 1765
    :try_start_2b
    const-string v0, "Uploading firmware..."

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1766
    const-string v0, "Uploading firmware..."

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1767
    invoke-direct {v1, v2, v3, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->uploadFirmwareImage(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_2b
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_2b .. :try_end_2b} :catch_18
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_2b .. :try_end_2b} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_2b .. :try_end_2b} :catch_19
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_2b .. :try_end_2b} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_2b .. :try_end_2b} :catch_1c
    .catchall {:try_start_2b .. :try_end_2b} :catchall_6

    .line 1773
    :try_start_2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const/4 v6, 0x3

    .line 1776
    invoke-direct {v1, v0, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->getStatusCode([BI)I

    move-result v3

    .line 1777
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Response received. Op Code: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    aget-byte v11, v0, v16

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " Req Op Code = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v20, 0x1

    aget-byte v11, v0, v20

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", Status = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    aget-byte v11, v0, v8

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1778
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Response received (Op Code = "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x1

    aget-byte v0, v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Status = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v6, 0x1

    if-ne v3, v6, :cond_35

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Transfer of "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mBytesSent:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes has taken "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v13, v4

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1783
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Upload completed in "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1786
    const-string v0, "Sending Validate request (Op Code = 4)"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1787
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_VALIDATE:[B

    invoke-direct {v1, v2, v12, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1788
    const-string v0, "Validate request sent"

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1791
    invoke-direct {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->readNotificationResponse()[B

    move-result-object v0

    const/4 v6, 0x4

    .line 1792
    invoke-direct {v1, v0, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->getStatusCode([BI)I

    move-result v3

    .line 1793
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response received. Op Code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    aget-byte v5, v0, v16

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Req Op Code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v20, 0x1

    aget-byte v5, v0, v20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    aget-byte v5, v0, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1794
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response received (Op Code = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x1

    aget-byte v0, v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Status = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v5, 0x1

    if-ne v3, v5, :cond_34

    const/4 v0, -0x5

    .line 1799
    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    .line 1800
    const-string v0, "Sending Activate and Reset request (Op Code = 5)"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1801
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_ACTIVATE_AND_RESET:[B

    invoke-direct {v1, v2, v12, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1802
    const-string v0, "Activate and Reset request sent"

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1805
    invoke-direct {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitUntilDisconnected()V

    .line 1806
    const-string v0, "Disconnected by the remote device"

    const/4 v3, 0x5

    invoke-direct {v1, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1812
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

    const/4 v5, 0x0

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eq v10, v3, :cond_2d

    if-eqz v0, :cond_2d

    const/4 v3, 0x0

    goto :goto_19

    :cond_2d
    const/4 v3, 0x1

    .line 1813
    :goto_19
    invoke-direct {v1, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 1816
    invoke-direct {v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 1821
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_30

    .line 1822
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_RESTORE_BOND"

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2e

    if-eqz v0, :cond_2e

    and-int/lit8 v0, v15, 0x1

    if-lez v0, :cond_2f

    .line 1826
    :cond_2e
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1829
    monitor-enter p0
    :try_end_2c
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_2c .. :try_end_2c} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_2c .. :try_end_2c} :catch_19
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_2c .. :try_end_2c} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_2c .. :try_end_2c} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_2c .. :try_end_2c} :catch_1c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_6

    const-wide/16 v4, 0x7d0

    .line 1831
    :try_start_2d
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_2d} :catch_16
    .catchall {:try_start_2d .. :try_end_2d} :catchall_3

    goto :goto_1a

    :catchall_3
    move-exception v0

    goto :goto_1b

    .line 1829
    :catch_16
    :goto_1a
    :try_start_2e
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3

    :cond_2f
    if-eqz v3, :cond_30

    const/16 v17, 0x4

    and-int/lit8 v0, v15, 0x4

    if-lez v0, :cond_30

    .line 1840
    :try_start_2f
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->createBond(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_2f
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_2f .. :try_end_2f} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_2f .. :try_end_2f} :catch_19
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_2f .. :try_end_2f} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_2f .. :try_end_2f} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_2f .. :try_end_2f} :catch_1c
    .catchall {:try_start_2f .. :try_end_2f} :catchall_6

    goto :goto_1c

    .line 1829
    :goto_1b
    :try_start_30
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_3

    :try_start_31
    throw v0

    .line 1849
    :cond_30
    :goto_1c
    iget v0, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartCurrent:I

    iget v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    if-ne v0, v3, :cond_31

    .line 1851
    iget-object v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_31
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_31 .. :try_end_31} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_31 .. :try_end_31} :catch_19
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_31 .. :try_end_31} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_31 .. :try_end_31} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_31 .. :try_end_31} :catch_1c
    .catchall {:try_start_31 .. :try_end_31} :catchall_6

    .line 1853
    :try_start_32
    iget-object v0, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x578

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_32} :catch_17
    .catchall {:try_start_32 .. :try_end_32} :catchall_4

    goto :goto_1d

    :catchall_4
    move-exception v0

    goto :goto_1e

    .line 1851
    :catch_17
    :goto_1d
    :try_start_33
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_4

    const/4 v0, -0x6

    .line 1858
    :try_start_34
    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_34
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_34 .. :try_end_34} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_34 .. :try_end_34} :catch_19
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_34 .. :try_end_34} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_34 .. :try_end_34} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_34 .. :try_end_34} :catch_1c
    .catchall {:try_start_34 .. :try_end_34} :catchall_6

    goto/16 :goto_26

    .line 1851
    :goto_1e
    :try_start_35
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_4

    :try_start_36
    throw v0

    .line 1873
    :cond_31
    const-string v0, "Scanning for the DFU Bootloader..."

    const/4 v5, 0x1

    invoke-direct {v1, v5, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1874
    invoke-static {}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerFactory;->getScanner()Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScanner;

    move-result-object v0

    iget-object v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-interface {v0, v3}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScanner;->searchFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1876
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DFU Bootloader found with address "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v1, v4, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    goto :goto_1f

    .line 1878
    :cond_32
    const-string v3, "DFU Bootloader not found. Trying the same address..."

    const/4 v4, 0x5

    invoke-direct {v1, v4, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1885
    :goto_1f
    const-string v3, "Starting service that will upload application"

    invoke-direct {v1, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1886
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/16 v4, 0x18

    .line 1887
    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1888
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

    const-string v5, "application/zip"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1889
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

    const/4 v6, 0x4

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v0, :cond_33

    .line 1891
    const-string v4, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1892
    :cond_33
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    iget v4, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartCurrent:I

    const/16 v20, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1893
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

    iget v4, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mPartsTotal:I

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1894
    invoke-virtual {v1, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_26

    .line 1796
    :cond_34
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v4, "Device returned validation error"

    invoke-direct {v0, v4, v3}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1780
    :cond_35
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v4, "Device returned error after sending file"

    invoke-direct {v0, v4, v3}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_18
    move-exception v0

    .line 1769
    const-string v3, "Disconnected while sending data"

    invoke-direct {v1, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1770
    throw v0

    .line 1677
    :cond_36
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v3, "Starting DFU failed"

    invoke-direct {v0, v3, v4}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1679
    :cond_37
    throw v0

    .line 1650
    :cond_38
    throw v0
    :try_end_36
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_36 .. :try_end_36} :catch_13
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_36 .. :try_end_36} :catch_19
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_36 .. :try_end_36} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_36 .. :try_end_36} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_36 .. :try_end_36} :catch_1c
    .catchall {:try_start_36 .. :try_end_36} :catchall_6

    :catch_19
    move-exception v0

    goto :goto_20

    :catch_1a
    move-exception v0

    move-object v12, v6

    .line 1906
    :goto_20
    :try_start_37
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getErrorNumber()I

    move-result v3

    or-int/lit16 v3, v3, 0x2000

    .line 1907
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1908
    const-string v0, "Remote DFU error: %s"

    invoke-static {v3}, Lno/nordicsemi/android/error/GattError;->parse(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v6, v16

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x14

    invoke-direct {v1, v4, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1910
    const-string v0, "Sending Reset command (Op Code = 6)"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1911
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RESET:[B

    invoke-direct {v1, v2, v12, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1912
    const-string v0, "Reset request sent"

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1913
    invoke-direct {v1, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    goto/16 :goto_26

    :catch_1b
    move-exception v0

    move-object v12, v6

    .line 1898
    :goto_21
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x14

    invoke-direct {v1, v4, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1901
    const-string v0, "Sending Reset command (Op Code = 6)"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1902
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RESET:[B

    invoke-direct {v1, v2, v12, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1903
    const-string v0, "Reset request sent"

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/16 v0, 0x1008

    .line 1904
    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    goto/16 :goto_26

    :cond_39
    :goto_22
    move-object v12, v6

    .line 1400
    const-string v0, "Application with buttonless update found"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1401
    const-string v0, "Application with buttonless update found"

    const/16 v3, 0xf

    invoke-direct {v1, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1406
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v4, 0xc

    if-ne v0, v4, :cond_3c

    .line 1407
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1409
    sget-object v3, Lno/nordicsemi/android/dfu/DfuBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1412
    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->isServiceChangedCCCDEnabled(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    if-nez v3, :cond_3a

    const/4 v8, 0x2

    .line 1415
    invoke-direct {v1, v2, v0, v8}, Lno/nordicsemi/android/dfu/DfuBaseService;->enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1416
    const-string v0, "Service Changed indications enabled"

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1441
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

    const/4 v5, 0x0

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v5, 0x1

    and-int/lit8 v0, v15, 0x1

    if-nez v0, :cond_3b

    .line 1443
    const-string v0, "Restarting service..."

    invoke-direct {v1, v5, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1446
    invoke-direct {v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->disconnect(Landroid/bluetooth/BluetoothGatt;)V

    .line 1449
    invoke-direct {v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 1451
    const-string v0, "Restarting service"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1452
    const-string v0, "Restarting service..."

    const/4 v5, 0x1

    invoke-direct {v1, v5, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1453
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v4, 0x18

    .line 1454
    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1455
    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_37
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_37 .. :try_end_37} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_37 .. :try_end_37} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_37 .. :try_end_37} :catch_1c
    .catchall {:try_start_37 .. :try_end_37} :catchall_6

    const/4 v2, 0x0

    .line 1958
    :try_start_38
    iput-object v2, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_28

    if-eqz v9, :cond_42

    goto/16 :goto_d

    .line 1459
    :cond_3a
    :try_start_39
    const-string v0, "Service Changed indications enabled"

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    :cond_3b
    const/4 v0, 0x1

    goto :goto_23

    :cond_3c
    const/4 v0, 0x0

    .line 1466
    :goto_23
    const-string v3, "Jumping to the DFU Bootloader..."

    const/4 v5, 0x1

    invoke-direct {v1, v5, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1469
    invoke-direct {v1, v2, v12, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1470
    const-string v3, "Notifications enabled"

    const/16 v6, 0xa

    invoke-direct {v1, v6, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v3, -0x3

    .line 1473
    invoke-direct {v1, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    .line 1474
    sget-object v3, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_START_DFU:[B

    const/16 v17, 0x4

    aput-byte v17, v3, v5

    .line 1475
    const-string v4, "Sending Start DFU command (Op Code = 1, Upload Mode = 4)"

    invoke-direct {v1, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1476
    invoke-direct {v1, v2, v12, v3, v5}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V

    .line 1477
    const-string v3, "Jump to bootloader sent (Op Code = 1, Upload Mode = 4)"

    const/16 v6, 0xa

    invoke-direct {v1, v6, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1480
    invoke-direct {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitUntilDisconnected()V

    .line 1481
    const-string v3, "Disconnected by the remote device"

    const/4 v4, 0x5

    invoke-direct {v1, v4, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/16 v20, 0x1

    xor-int/lit8 v0, v0, 0x1

    .line 1496
    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 1499
    invoke-direct {v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 1501
    const-string v0, "Starting service that will connect to the DFU bootloader"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1502
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v4, 0x18

    .line 1503
    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1504
    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_39
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_39 .. :try_end_39} :catch_21
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_39 .. :try_end_39} :catch_1f
    .catch Lno/nordicsemi/android/dfu/internal/exception/DfuException; {:try_start_39 .. :try_end_39} :catch_1c
    .catchall {:try_start_39 .. :try_end_39} :catchall_6

    const/4 v2, 0x0

    .line 1958
    :try_start_3a
    iput-object v2, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_28

    if-eqz v9, :cond_42

    goto/16 :goto_d

    :catch_1c
    move-exception v0

    goto :goto_24

    :catch_1d
    move-exception v0

    move-object v12, v6

    .line 1935
    :goto_24
    :try_start_3b
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;->getErrorNumber()I

    move-result v3

    const v4, 0x8000

    and-int/2addr v4, v3

    if-lez v4, :cond_3d

    and-int v3, v3, v21

    .line 1939
    const-string v4, "Error (0x%02X): %s"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Lno/nordicsemi/android/error/GattError;->parseConnectionError(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v6, v16

    const/16 v20, 0x1

    aput-object v3, v6, v20

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    invoke-direct {v1, v4, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    goto :goto_25

    :cond_3d
    and-int/lit16 v3, v3, -0x4001

    .line 1942
    const-string v4, "Error (0x%02X): %s"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Lno/nordicsemi/android/error/GattError;->parse(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v6, v16

    const/16 v20, 0x1

    aput-object v3, v6, v20

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    invoke-direct {v1, v4, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1944
    :goto_25
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1945
    iget v3, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_6

    const/4 v4, -0x3

    if-ne v3, v4, :cond_3e

    .line 1947
    :try_start_3c
    const-string v3, "Sending Reset command (Op Code = 6)"

    invoke-direct {v1, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1948
    sget-object v3, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RESET:[B

    invoke-direct {v1, v2, v12, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1949
    const-string v3, "Reset request sent"

    const/16 v6, 0xa

    invoke-direct {v1, v6, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_1e
    .catchall {:try_start_3c .. :try_end_3c} :catchall_6

    .line 1953
    :catch_1e
    :cond_3e
    :try_start_3d
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/exception/DfuException;->getErrorNumber()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    goto :goto_26

    :catch_1f
    move-exception v0

    .line 1929
    const-string v3, "Device has disconnected"

    const/16 v4, 0x14

    invoke-direct {v1, v4, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1931
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1932
    invoke-direct {v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    const/16 v2, 0x1000

    .line 1933
    invoke-direct {v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V

    :goto_26
    const/4 v2, 0x0

    goto :goto_27

    :catch_20
    move-object v12, v6

    .line 1916
    :catch_21
    const-string v0, "Upload aborted"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1917
    const-string v0, "Upload aborted"

    const/16 v3, 0xf

    invoke-direct {v1, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1918
    iget v0, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_6

    const/4 v3, -0x3

    if-ne v0, v3, :cond_3f

    const/4 v5, 0x0

    .line 1920
    :try_start_3e
    iput-boolean v5, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z

    .line 1921
    const-string v0, "Sending Reset command (Op Code = 6)"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V

    .line 1922
    sget-object v0, Lno/nordicsemi/android/dfu/DfuBaseService;->OP_CODE_RESET:[B

    invoke-direct {v1, v2, v12, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1923
    const-string v0, "Reset request sent"

    const/16 v6, 0xa

    invoke-direct {v1, v6, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_22
    .catchall {:try_start_3e .. :try_end_3e} :catchall_6

    :catch_22
    :cond_3f
    const/4 v13, -0x7

    .line 1927
    :try_start_3f
    invoke-direct {v1, v2, v13}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_6

    goto :goto_26

    .line 1958
    :goto_27
    :try_start_40
    iput-object v2, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_28

    if-eqz v9, :cond_42

    goto/16 :goto_d

    .line 1326
    :cond_40
    :goto_28
    :try_start_41
    const-string v0, "DFU characteristics not found in the DFU service"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;)V

    .line 1327
    const-string v0, "Connected. DFU Characteristics not found"

    const/16 v3, 0xf

    invoke-direct {v1, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/16 v0, 0x1007

    .line 1328
    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_6

    const/4 v2, 0x0

    .line 1958
    :try_start_42
    iput-object v2, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_28

    if-eqz v9, :cond_42

    goto/16 :goto_d

    .line 1277
    :goto_29
    :try_start_43
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_2

    :try_start_44
    throw v0
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_6

    .line 1225
    :cond_41
    :try_start_45
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException;

    const-string v2, "The new firmware is not word-aligned."

    invoke-direct {v0, v2}, Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_45 .. :try_end_45} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_45} :catch_a
    .catch Lno/nordicsemi/android/dfu/internal/exception/SizeValidationException; {:try_start_45 .. :try_end_45} :catch_9
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_8
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_7
    .catchall {:try_start_45 .. :try_end_45} :catchall_6

    :catchall_5
    move-exception v0

    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_30

    :catch_23
    move-exception v0

    const/4 v9, 0x0

    .line 1271
    :goto_2a
    :try_start_46
    const-string v2, "An exception occurred while opening files. Did you set the firmware file?"

    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v4, 0x1002

    .line 1272
    invoke-direct {v1, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_6

    const/4 v2, 0x0

    .line 1958
    :try_start_47
    iput-object v2, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_28

    if-eqz v9, :cond_42

    goto/16 :goto_d

    :catch_24
    move-exception v0

    const/4 v9, 0x0

    .line 1267
    :goto_2b
    :try_start_48
    const-string v2, "An exception occurred while calculating file size"

    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v4, 0x1002

    .line 1268
    invoke-direct {v1, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_6

    const/4 v2, 0x0

    .line 1958
    :try_start_49
    iput-object v2, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_28

    if-eqz v9, :cond_42

    goto/16 :goto_d

    :catch_25
    move-exception v0

    const/4 v9, 0x0

    .line 1263
    :goto_2c
    :try_start_4a
    const-string v2, "Firmware not word-aligned"

    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x100c

    .line 1264
    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_6

    const/4 v2, 0x0

    .line 1958
    :try_start_4b
    iput-object v2, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_28

    if-eqz v9, :cond_42

    goto/16 :goto_d

    :catch_26
    move-exception v0

    const/4 v9, 0x0

    .line 1259
    :goto_2d
    :try_start_4c
    const-string v2, "An exception occurred while opening file"

    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0x1001

    .line 1260
    invoke-direct {v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_6

    const/4 v2, 0x0

    .line 1958
    :try_start_4d
    iput-object v2, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_28

    if-eqz v9, :cond_42

    goto/16 :goto_d

    :catch_27
    move-exception v0

    const/4 v9, 0x0

    .line 1255
    :goto_2e
    :try_start_4e
    const-string v2, "A security exception occurred while opening file"

    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0x1001

    .line 1256
    invoke-direct {v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->updateProgressNotification(I)V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_6

    const/4 v2, 0x0

    .line 1958
    :try_start_4f
    iput-object v2, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_4f} :catch_28

    if-eqz v9, :cond_42

    goto/16 :goto_d

    :catch_28
    :cond_42
    :goto_2f
    return-void

    :catchall_6
    move-exception v0

    const/4 v2, 0x0

    :goto_30
    :try_start_50
    iput-object v2, v1, Lno/nordicsemi/android/dfu/DfuBaseService;->mInputStream:Ljava/io/InputStream;

    if-eqz v9, :cond_43

    .line 1960
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_50} :catch_29

    .line 1964
    :catch_29
    :cond_43
    throw v0

    .line 1123
    :cond_44
    :goto_31
    const-string v0, "File type or file mime-type not supported"

    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->logw(Ljava/lang/String;)V

    .line 1124
    const-string v0, "File type or file mime-type not supported"

    const/16 v3, 0xf

    invoke-direct {v1, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/16 v0, 0x1009

    .line 1125
    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendErrorBroadcast(I)V

    return-void
.end method
