.class final Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# static fields
.field public static final BARCODE_BITMAP:Ljava/lang/String; = "barcode_bitmap"


# instance fields
.field private final activity:Lcom/dodonew/online/widget/zxing/ZXingView;

.field private handler:Landroid/os/Handler;

.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final hints:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/zxing/ZXingView;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V
    .locals 2
    .param p1, "activity"    # Lcom/dodonew/online/widget/zxing/ZXingView;
    .param p3, "characterSet"    # Ljava/lang/String;
    .param p4, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dodonew/online/widget/zxing/ZXingView;",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/ResultPointCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->activity:Lcom/dodonew/online/widget/zxing/ZXingView;

    .line 49
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->hints:Ljava/util/Hashtable;

    .line 67
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    new-instance p2, Ljava/util/Vector;

    .end local p2    # "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    .line 69
    .restart local p2    # "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    sget-object v0, Lcom/dodonew/online/widget/zxing/decoding/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 70
    sget-object v0, Lcom/dodonew/online/widget/zxing/decoding/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 71
    sget-object v0, Lcom/dodonew/online/widget/zxing/decoding/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->hints:Ljava/util/Hashtable;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    if-eqz p3, :cond_2

    .line 78
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->hints:Ljava/util/Hashtable;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->hints:Ljava/util/Hashtable;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, v1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->handler:Landroid/os/Handler;

    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 96
    new-instance v0, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->activity:Lcom/dodonew/online/widget/zxing/ZXingView;

    iget-object v2, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->hints:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/zxing/decoding/DecodeHandler;-><init>(Lcom/dodonew/online/widget/zxing/ZXingView;Ljava/util/Hashtable;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->handler:Landroid/os/Handler;

    .line 97
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 98
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 99
    return-void
.end method
