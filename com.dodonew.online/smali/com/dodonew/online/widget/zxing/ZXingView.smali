.class public Lcom/dodonew/online/widget/zxing/ZXingView;
.super Landroid/widget/FrameLayout;
.source "ZXingView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private characterSet:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handleDecodeListener:Lcom/dodonew/online/widget/zxing/HandleDecodeListener;

.field public handler:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;

.field private hasSurface:Z

.field private height:I

.field private inactivityTimer:Lcom/dodonew/online/widget/zxing/decoding/InactivityTimer;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z

.field private view:Landroid/view/View;

.field private viewfinderView:Lcom/dodonew/online/widget/zxing/ViewfinderView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    new-instance v0, Lcom/dodonew/online/widget/zxing/ZXingView$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/zxing/ZXingView$2;-><init>(Lcom/dodonew/online/widget/zxing/ZXingView;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 61
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/zxing/ZXingView;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dodonew/online/widget/zxing/HandleDecodeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handleDecodeListener"    # Lcom/dodonew/online/widget/zxing/HandleDecodeListener;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 182
    new-instance v0, Lcom/dodonew/online/widget/zxing/ZXingView$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/zxing/ZXingView$2;-><init>(Lcom/dodonew/online/widget/zxing/ZXingView;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 54
    iput-object p2, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->handleDecodeListener:Lcom/dodonew/online/widget/zxing/HandleDecodeListener;

    .line 55
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/zxing/ZXingView;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/zxing/ZXingView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/zxing/ZXingView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dodonew/online/widget/zxing/ZXingView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/zxing/ZXingView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->width:I

    return p1
.end method

.method static synthetic access$202(Lcom/dodonew/online/widget/zxing/ZXingView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/zxing/ZXingView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->height:I

    return p1
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/zxing/ZXingView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/zxing/ZXingView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dodonew/online/widget/zxing/ZXingView;->initZXing()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->context:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d9

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->view:Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Lcom/dodonew/online/widget/zxing/ZXingView;->initView()V

    .line 68
    return-void
.end method

.method private initBeepSound()V
    .locals 8

    .prologue
    const/4 v1, 0x3

    .line 154
    iget-boolean v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 159
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 160
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 162
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 164
    invoke-virtual {p0}, Lcom/dodonew/online/widget/zxing/ZXingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 167
    .local v7, "file":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 168
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 167
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 169
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 170
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 171
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v7    # "file":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 172
    .restart local v7    # "file":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v6

    .line 173
    .local v6, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 174
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 93
    :try_start_0
    invoke-static {}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->get()Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    iget-object v2, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->handler:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;

    if-nez v2, :cond_0

    .line 100
    new-instance v2, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;

    iget-object v3, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->decodeFormats:Ljava/util/Vector;

    iget-object v4, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->characterSet:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;-><init>(Lcom/dodonew/online/widget/zxing/ZXingView;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->handler:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 96
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private initZXing()V
    .locals 6

    .prologue
    .line 128
    const v4, 0x7f0d01a6

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/zxing/ZXingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    .line 129
    .local v3, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 130
    .local v2, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v4, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->hasSurface:Z

    if-eqz v4, :cond_1

    .line 131
    invoke-direct {p0, v2}, Lcom/dodonew/online/widget/zxing/ZXingView;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 136
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->decodeFormats:Ljava/util/Vector;

    .line 137
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->characterSet:Ljava/lang/String;

    .line 139
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->playBeep:Z

    .line 140
    iget-object v4, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->context:Landroid/content/Context;

    const-string v5, "audio"

    .line 141
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 142
    .local v0, "audioService":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 143
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->playBeep:Z

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/dodonew/online/widget/zxing/ZXingView;->initBeepSound()V

    .line 146
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->vibrate:Z

    .line 151
    .end local v0    # "audioService":Landroid/media/AudioManager;
    .end local v2    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .end local v3    # "surfaceView":Landroid/view/SurfaceView;
    :goto_1
    return-void

    .line 133
    .restart local v2    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .restart local v3    # "surfaceView":Landroid/view/SurfaceView;
    :cond_1
    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 134
    const/4 v4, 0x3

    invoke-interface {v2, v4}, Landroid/view/SurfaceHolder;->setType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v2    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .end local v3    # "surfaceView":Landroid/view/SurfaceView;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private playBeepSoundAndVibrate()V
    .locals 4

    .prologue
    .line 204
    iget-boolean v1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 207
    :cond_0
    iget-boolean v1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->vibrate:Z

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->context:Landroid/content/Context;

    const-string v2, "vibrator"

    .line 209
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 210
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 212
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->handler:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->handler:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->quitSynchronously()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->handler:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;

    .line 232
    :cond_0
    invoke-static {}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->get()Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->closeDriver()V

    .line 233
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->inactivityTimer:Lcom/dodonew/online/widget/zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/decoding/InactivityTimer;->shutdown()V

    .line 234
    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->viewfinderView:Lcom/dodonew/online/widget/zxing/ViewfinderView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/ViewfinderView;->drawViewfinder()V

    .line 217
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->handler:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Lcom/dodonew/online/widget/zxing/ViewfinderView;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->viewfinderView:Lcom/dodonew/online/widget/zxing/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "obj"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->inactivityTimer:Lcom/dodonew/online/widget/zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/decoding/InactivityTimer;->onActivity()V

    .line 193
    invoke-direct {p0}, Lcom/dodonew/online/widget/zxing/ZXingView;->playBeepSoundAndVibrate()V

    .line 194
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->handleDecodeListener:Lcom/dodonew/online/widget/zxing/HandleDecodeListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->handleDecodeListener:Lcom/dodonew/online/widget/zxing/HandleDecodeListener;

    invoke-interface {v0, p1}, Lcom/dodonew/online/widget/zxing/HandleDecodeListener;->result(Lcom/google/zxing/Result;)V

    .line 199
    :cond_0
    return-void
.end method

.method public initView()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->init(Landroid/content/Context;)V

    .line 74
    const v1, 0x7f0d01a7

    invoke-virtual {p0, v1}, Lcom/dodonew/online/widget/zxing/ZXingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/zxing/ViewfinderView;

    iput-object v1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->viewfinderView:Lcom/dodonew/online/widget/zxing/ViewfinderView;

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->hasSurface:Z

    .line 76
    new-instance v2, Lcom/dodonew/online/widget/zxing/decoding/InactivityTimer;

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v2, v1}, Lcom/dodonew/online/widget/zxing/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->inactivityTimer:Lcom/dodonew/online/widget/zxing/decoding/InactivityTimer;

    .line 77
    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 78
    .local v0, "vto2":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/dodonew/online/widget/zxing/ZXingView$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/zxing/ZXingView$1;-><init>(Lcom/dodonew/online/widget/zxing/ZXingView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 88
    return-void
.end method

.method public setHandleDecodeListener(Lcom/dodonew/online/widget/zxing/HandleDecodeListener;)V
    .locals 0
    .param p1, "handleDecodeListener"    # Lcom/dodonew/online/widget/zxing/HandleDecodeListener;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->handleDecodeListener:Lcom/dodonew/online/widget/zxing/HandleDecodeListener;

    .line 239
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 109
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->hasSurface:Z

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->hasSurface:Z

    .line 115
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/zxing/ZXingView;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 118
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView;->hasSurface:Z

    .line 124
    return-void
.end method
