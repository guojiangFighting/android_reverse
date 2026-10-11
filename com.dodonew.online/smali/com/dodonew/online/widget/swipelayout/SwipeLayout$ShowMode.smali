.class public final enum Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;
.super Ljava/lang/Enum;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

.field public static final enum LayDown:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

.field public static final enum PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    const-string v1, "LayDown"

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->LayDown:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    new-instance v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    const-string v1, "PullOut"

    invoke-direct {v0, v1, v3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->LayDown:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->PullOut:Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->$VALUES:[Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    return-object v0
.end method

.method public static values()[Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->$VALUES:[Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    invoke-virtual {v0}, [Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dodonew/online/widget/swipelayout/SwipeLayout$ShowMode;

    return-object v0
.end method
