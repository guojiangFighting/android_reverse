.class public final Lcom/dodonew/online/widget/zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x2d0

.field private static final MAX_FRAME_WIDTH:I = 0x500

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Lcom/dodonew/online/widget/zxing/camera/CameraManager;


# instance fields
.field private final autoFocusCallback:Lcom/dodonew/online/widget/zxing/camera/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/dodonew/online/widget/zxing/camera/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-class v2, Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 58
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    .local v1, "sdkInt":I
    :goto_0
    sput v1, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->SDK_INT:I

    .line 64
    return-void

    .line 59
    .end local v1    # "sdkInt":I
    :catch_0
    move-exception v0

    .line 61
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/16 v1, 0x2710

    .restart local v1    # "sdkInt":I
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->context:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->configManager:Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;

    .line 114
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    .line 116
    new-instance v0, Lcom/dodonew/online/widget/zxing/camera/PreviewCallback;

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->configManager:Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;

    iget-boolean v2, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/zxing/camera/PreviewCallback;-><init>(Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;Z)V

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->previewCallback:Lcom/dodonew/online/widget/zxing/camera/PreviewCallback;

    .line 117
    new-instance v0, Lcom/dodonew/online/widget/zxing/camera/AutoFocusCallback;

    invoke-direct {v0}, Lcom/dodonew/online/widget/zxing/camera/AutoFocusCallback;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->autoFocusCallback:Lcom/dodonew/online/widget/zxing/camera/AutoFocusCallback;

    .line 118
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findDesiredDimensionInRange(III)I
    .locals 2
    .param p0, "resolution"    # I
    .param p1, "hardMin"    # I
    .param p2, "hardMax"    # I

    .prologue
    .line 219
    mul-int/lit8 v1, p0, 0x5

    div-int/lit8 v0, v1, 0x8

    .line 220
    .local v0, "dim":I
    if-ge v0, p1, :cond_0

    .line 226
    .end local p1    # "hardMin":I
    :goto_0
    return p1

    .line 223
    .restart local p1    # "hardMin":I
    :cond_0
    if-le v0, p2, :cond_1

    move p1, p2

    .line 224
    goto :goto_0

    :cond_1
    move p1, v0

    .line 226
    goto :goto_0
.end method

.method public static get()Lcom/dodonew/online/widget/zxing/camera/CameraManager;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->cameraManager:Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    sget-object v0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->cameraManager:Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->cameraManager:Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/dodonew/online/widget/zxing/camera/PlanarYUVLuminanceSource;
    .locals 11
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v10

    .line 322
    .local v10, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->configManager:Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;->getPreviewFormat()I

    move-result v8

    .line 323
    .local v8, "previewFormat":I
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->configManager:Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, "previewFormatString":Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 336
    const-string v0, "yuv420p"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcom/dodonew/online/widget/zxing/camera/PlanarYUVLuminanceSource;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 338
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/dodonew/online/widget/zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    :goto_0
    return-object v0

    .line 331
    :pswitch_0
    new-instance v0, Lcom/dodonew/online/widget/zxing/camera/PlanarYUVLuminanceSource;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 332
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/dodonew/online/widget/zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    goto :goto_0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported picture format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public closeDriver()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/dodonew/online/widget/zxing/camera/FlashlightManager;->disableFlashlight()V

    .line 154
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 155
    iput-object v1, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 156
    sput-object v1, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->cameraManager:Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    .line 158
    :cond_0
    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/16 v6, 0xf0

    .line 237
    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->configManager:Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 238
    .local v2, "screenResolution":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v5, :cond_3

    .line 239
    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v5, :cond_0

    .line 240
    const/4 v5, 0x0

    .line 263
    :goto_0
    return-object v5

    .line 242
    :cond_0
    iget v5, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v4, v5, 0x4

    .line 243
    .local v4, "width":I
    if-ge v4, v6, :cond_4

    .line 244
    const/16 v4, 0xf0

    .line 248
    :cond_1
    :goto_1
    iget v5, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v0, v5, 0x4

    .line 249
    .local v0, "height":I
    if-ge v0, v6, :cond_5

    .line 250
    const/16 v0, 0xf0

    .line 258
    :cond_2
    :goto_2
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 259
    .local v1, "leftOffset":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x2

    .line 260
    .local v3, "topOffset":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 261
    sget-object v5, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calculated framing rect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v3    # "topOffset":I
    .end local v4    # "width":I
    :cond_3
    iget-object v5, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 245
    .restart local v4    # "width":I
    :cond_4
    const/16 v5, 0x500

    if-le v4, v5, :cond_1

    .line 246
    const/16 v4, 0x500

    goto :goto_1

    .line 251
    .restart local v0    # "height":I
    :cond_5
    const/16 v5, 0x2d0

    if-le v0, v5, :cond_2

    .line 252
    const/16 v0, 0x2d0

    goto :goto_2
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 271
    iget-object v3, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 272
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 273
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->configManager:Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 274
    .local v0, "cameraResolution":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->configManager:Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 279
    .local v2, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 280
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 281
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 282
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 283
    iput-object v1, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 287
    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    :cond_0
    iget-object v3, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v3
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 128
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 129
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 133
    iget-boolean v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->initialized:Z

    if-nez v0, :cond_1

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->initialized:Z

    .line 135
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->configManager:Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->configManager:Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 144
    invoke-static {}, Lcom/dodonew/online/widget/zxing/camera/FlashlightManager;->enableFlashlight()V

    .line 146
    :cond_2
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->autoFocusCallback:Lcom/dodonew/online/widget/zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/dodonew/online/widget/zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 214
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->autoFocusCallback:Lcom/dodonew/online/widget/zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 216
    :cond_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->previewCallback:Lcom/dodonew/online/widget/zxing/camera/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lcom/dodonew/online/widget/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 196
    iget-boolean v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->previewCallback:Lcom/dodonew/online/widget/zxing/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->previewCallback:Lcom/dodonew/online/widget/zxing/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->previewing:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->previewing:Z

    .line 168
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 175
    iget-boolean v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 179
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->previewCallback:Lcom/dodonew/online/widget/zxing/camera/PreviewCallback;

    invoke-virtual {v0, v2, v1}, Lcom/dodonew/online/widget/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 180
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->autoFocusCallback:Lcom/dodonew/online/widget/zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Lcom/dodonew/online/widget/zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 181
    iput-boolean v1, p0, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->previewing:Z

    .line 183
    :cond_1
    return-void
.end method
