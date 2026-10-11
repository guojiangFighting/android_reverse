.class Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1502
    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState$1;

    invoke-direct {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1486
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1489
    .local v1, "panelStateString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    const-class v2, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    :goto_0
    iput-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1494
    :goto_1
    return-void

    .line 1489
    :cond_0
    sget-object v2, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;

    .prologue
    .line 1478
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1483
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1498
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1499
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1500
    return-void

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
