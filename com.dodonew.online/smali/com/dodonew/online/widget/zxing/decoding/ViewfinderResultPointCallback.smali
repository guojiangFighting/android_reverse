.class final Lcom/dodonew/online/widget/zxing/decoding/ViewfinderResultPointCallback;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final viewfinderView:Lcom/dodonew/online/widget/zxing/ViewfinderView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/zxing/ViewfinderView;)V
    .locals 0
    .param p1, "viewfinderView"    # Lcom/dodonew/online/widget/zxing/ViewfinderView;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/dodonew/online/widget/zxing/decoding/ViewfinderResultPointCallback;->viewfinderView:Lcom/dodonew/online/widget/zxing/ViewfinderView;

    .line 29
    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/decoding/ViewfinderResultPointCallback;->viewfinderView:Lcom/dodonew/online/widget/zxing/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/zxing/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 34
    return-void
.end method
