.class final Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/dodonew/online/widget/zxing/ZXingView;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/dodonew/online/widget/zxing/ZXingView;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "activity"    # Lcom/dodonew/online/widget/zxing/ZXingView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dodonew/online/widget/zxing/ZXingView;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 47
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 48
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 49
    iput-object p1, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;->activity:Lcom/dodonew/online/widget/zxing/ZXingView;

    .line 50
    return-void
.end method

.method private decode([BII)V
    .locals 22
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 75
    .local v12, "start":J
    const/4 v9, 0x0

    .line 76
    .local v9, "rawResult":Lcom/google/zxing/Result;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v10, v0, [B

    .line 77
    .local v10, "rotatedData":[B
    const/16 v16, 0x0

    .local v16, "y":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 78
    const/4 v15, 0x0

    .local v15, "x":I
    :goto_1
    move/from16 v0, p2

    if-ge v15, v0, :cond_0

    .line 79
    mul-int v17, v15, p3

    add-int v17, v17, p3

    sub-int v17, v17, v16

    add-int/lit8 v17, v17, -0x1

    mul-int v18, v16, p2

    add-int v18, v18, v15

    aget-byte v18, p1, v18

    aput-byte v18, v10, v17

    .line 78
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 77
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 81
    .end local v15    # "x":I
    :cond_1
    move/from16 v14, p2

    .line 82
    .local v14, "tmp":I
    move/from16 p2, p3

    .line 83
    move/from16 p3, v14

    .line 84
    move-object/from16 p1, v10

    .line 85
    invoke-static {}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->get()Lcom/dodonew/online/widget/zxing/camera/CameraManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dodonew/online/widget/zxing/camera/CameraManager;->buildLuminanceSource([BII)Lcom/dodonew/online/widget/zxing/camera/PlanarYUVLuminanceSource;

    move-result-object v11

    .line 86
    .local v11, "source":Lcom/dodonew/online/widget/zxing/camera/PlanarYUVLuminanceSource;
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    new-instance v17, Lcom/google/zxing/common/HybridBinarizer;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 88
    .local v4, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 95
    :goto_2
    if-eqz v9, :cond_2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 97
    .local v6, "end":J
    sget-object v17, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Found barcode ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v20, v6, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ms):\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;->activity:Lcom/dodonew/online/widget/zxing/ZXingView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/dodonew/online/widget/zxing/ZXingView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    const v18, 0x7f0d0007

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 99
    .local v8, "message":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v17, "barcode_bitmap"

    invoke-virtual {v11}, Lcom/dodonew/online/widget/zxing/camera/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    invoke-virtual {v8, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 108
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "end":J
    :goto_3
    return-void

    .line 89
    .end local v8    # "message":Landroid/os/Message;
    :catch_0
    move-exception v17

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v17

    .line 105
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;->activity:Lcom/dodonew/online/widget/zxing/ZXingView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/dodonew/online/widget/zxing/ZXingView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    const v18, 0x7f0d0006

    invoke-static/range {v17 .. v18}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 106
    .restart local v8    # "message":Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 57
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 60
    :sswitch_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x7f0d0005 -> :sswitch_0
        0x7f0d000f -> :sswitch_1
    .end sparse-switch
.end method
