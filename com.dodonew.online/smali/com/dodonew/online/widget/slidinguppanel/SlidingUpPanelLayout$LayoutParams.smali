.class public Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field public weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1435
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010181

    aput v2, v0, v1

    sput-object v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->ATTRS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1442
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1439
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1443
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1446
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1439
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1447
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "weight"    # F

    .prologue
    .line 1450
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1439
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1451
    iput p3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1452
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 1467
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1439
    iput v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1469
    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1470
    .local v0, "ta":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 1471
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1474
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1475
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1455
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1439
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1456
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1459
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1439
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1460
    return-void
.end method

.method public constructor <init>(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .prologue
    .line 1463
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1439
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    .line 1464
    return-void
.end method
