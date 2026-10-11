.class public final Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/dodonew/online/widget/zxing/ZXingView;

.field private final decodeThread:Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;

.field private state:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dodonew/online/widget/zxing/ZXingView;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Lcom/dodonew/online/widget/zxing/ZXingView;
    .param p3, "characterSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dodonew/online/widget/zxing/ZXingView;",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->activity:Lcom/dodonew/online/widget/zxing/ZXingView;

    .line 55
    new-instance v0, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;

    new-instance v1, Lcom/dodonew/online/widget/zxing/ViewfinderResultPointCallback;

    .line 56
    invoke-virtual {p1}, Lcom/dodonew/online/widget/zxing/ZXingView;->getViewfinderView()Lcom/dodonew/online/widget/zxing/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dodonew/online/widget/zxing/ViewfinderResultPointCallback;-><init>(Lcom/dodonew/online/widget/zxing/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;-><init>(Lcom/dodonew/online/widget/zxing/ZXingView;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;

    .line 57
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->start()V

    .line 58
    sget-object v0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->state:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    .line 61
    invoke-static {}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->get()Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->startPreview()V

    .line 62
    invoke-virtual {p0}, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 67
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 72
    :pswitch_1
    iget-object v2, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->state:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    sget-object v3, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    if-ne v2, v3, :cond_0

    .line 73
    invoke-static {}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->get()Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    move-result-object v2

    const v3, 0x7f0d0004

    invoke-virtual {v2, p0, v3}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto :goto_0

    .line 77
    :pswitch_2
    sget-object v2, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v3, "Got restart preview message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 81
    :pswitch_3
    sget-object v2, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v3, "Got decode succeeded message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v2, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    iput-object v2, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->state:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    .line 83
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 84
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 86
    .local v0, "barcode":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v3, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->activity:Lcom/dodonew/online/widget/zxing/ZXingView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/zxing/Result;

    invoke-virtual {v3, v2, v0}, Lcom/dodonew/online/widget/zxing/ZXingView;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 84
    .end local v0    # "barcode":Landroid/graphics/Bitmap;
    :cond_1
    const-string v2, "barcode_bitmap"

    .line 85
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v0, v2

    goto :goto_1

    .line 90
    .end local v1    # "bundle":Landroid/os/Bundle;
    :pswitch_4
    sget-object v2, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    iput-object v2, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->state:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    .line 91
    invoke-static {}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->get()Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const v4, 0x7f0d0005

    invoke-virtual {v2, v3, v4}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 94
    :pswitch_5
    sget-object v2, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v3, "Got return scan result message"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v3, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->activity:Lcom/dodonew/online/widget/zxing/ZXingView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/zxing/Result;

    invoke-virtual {v3, v2, v0}, Lcom/dodonew/online/widget/zxing/ZXingView;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 100
    :pswitch_6
    sget-object v2, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v3, "Got product query message"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x7f0d0004
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public quitSynchronously()V
    .locals 3

    .prologue
    .line 110
    sget-object v1, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;->DONE:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    iput-object v1, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->state:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    .line 111
    invoke-static {}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->get()Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->stopPreview()V

    .line 112
    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0d000f

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    const v1, 0x7f0d0007

    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    .line 122
    const v1, 0x7f0d0006

    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    .line 123
    return-void

    .line 116
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->state:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    sget-object v1, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 127
    sget-object v0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->state:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler$State;

    .line 128
    invoke-static {}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->get()Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0d0005

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 129
    invoke-static {}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->get()Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, p0, v1}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 130
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->activity:Lcom/dodonew/online/widget/zxing/ZXingView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/ZXingView;->drawViewfinder()V

    .line 132
    :cond_0
    return-void
.end method
