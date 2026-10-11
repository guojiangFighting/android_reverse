.class public final enum Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;
.super Ljava/lang/Enum;
.source "SwipeItemMangerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

.field public static final enum Multiple:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

.field public static final enum Single:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    const-string v1, "Single"

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->Single:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    new-instance v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    const-string v1, "Multiple"

    invoke-direct {v0, v1, v3}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->Multiple:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->Single:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->Multiple:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->$VALUES:[Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    return-object v0
.end method

.method public static values()[Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->$VALUES:[Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    invoke-virtual {v0}, [Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    return-object v0
.end method
