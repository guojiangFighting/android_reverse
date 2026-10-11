.class public final enum Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;
.super Ljava/lang/Enum;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanelState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

.field public static final enum ANCHORED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

.field public static final enum COLLAPSED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

.field public static final enum DRAGGING:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

.field public static final enum EXPANDED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

.field public static final enum HIDDEN:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 166
    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    const-string v1, "COLLAPSED"

    invoke-direct {v0, v1, v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 167
    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    const-string v1, "ANCHORED"

    invoke-direct {v0, v1, v4}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 168
    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v5}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 169
    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    const-string v1, "DRAGGING"

    invoke-direct {v0, v1, v6}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 164
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->$VALUES:[Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 164
    const-class v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    return-object v0
.end method

.method public static values()[Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->$VALUES:[Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0}, [Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    return-object v0
.end method
