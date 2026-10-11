.class public final enum Lcom/dodonew/online/widget/MultiStateView$ViewState;
.super Ljava/lang/Enum;
.source "MultiStateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/MultiStateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dodonew/online/widget/MultiStateView$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dodonew/online/widget/MultiStateView$ViewState;

.field public static final enum CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

.field public static final enum EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

.field public static final enum ERROR:Lcom/dodonew/online/widget/MultiStateView$ViewState;

.field public static final enum LOADING:Lcom/dodonew/online/widget/MultiStateView$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/dodonew/online/widget/MultiStateView$ViewState;

    const-string v1, "CONTENT"

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/MultiStateView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    new-instance v0, Lcom/dodonew/online/widget/MultiStateView$ViewState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/dodonew/online/widget/MultiStateView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/MultiStateView$ViewState;->LOADING:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    new-instance v0, Lcom/dodonew/online/widget/MultiStateView$ViewState;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v4}, Lcom/dodonew/online/widget/MultiStateView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    new-instance v0, Lcom/dodonew/online/widget/MultiStateView$ViewState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/dodonew/online/widget/MultiStateView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/MultiStateView$ViewState;->ERROR:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dodonew/online/widget/MultiStateView$ViewState;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->LOADING:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->ERROR:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dodonew/online/widget/MultiStateView$ViewState;->$VALUES:[Lcom/dodonew/online/widget/MultiStateView$ViewState;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dodonew/online/widget/MultiStateView$ViewState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView$ViewState;

    return-object v0
.end method

.method public static values()[Lcom/dodonew/online/widget/MultiStateView$ViewState;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/dodonew/online/widget/MultiStateView$ViewState;->$VALUES:[Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0}, [Lcom/dodonew/online/widget/MultiStateView$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dodonew/online/widget/MultiStateView$ViewState;

    return-object v0
.end method
