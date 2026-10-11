.class public final enum Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;
.super Ljava/lang/Enum;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DragEdge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

.field public static final enum Bottom:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

.field public static final enum Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

.field public static final enum Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

.field public static final enum Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    .line 46
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    const-string v1, "Right"

    invoke-direct {v0, v1, v3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    .line 47
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    const-string v1, "Top"

    invoke-direct {v0, v1, v4}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    .line 48
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v5}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Bottom:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Left:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Right:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Top:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->Bottom:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->$VALUES:[Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    return-object v0
.end method

.method public static values()[Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->$VALUES:[Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    invoke-virtual {v0}, [Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dodonew/online/widget/swipelayout/SwipeLayout$DragEdge;

    return-object v0
.end method
