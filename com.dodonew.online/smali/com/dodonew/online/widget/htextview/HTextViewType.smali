.class public final enum Lcom/dodonew/online/widget/htextview/HTextViewType;
.super Ljava/lang/Enum;
.source "HTextViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dodonew/online/widget/htextview/HTextViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dodonew/online/widget/htextview/HTextViewType;

.field public static final enum EVAPORATE:Lcom/dodonew/online/widget/htextview/HTextViewType;

.field public static final enum FALL:Lcom/dodonew/online/widget/htextview/HTextViewType;

.field public static final enum LINE:Lcom/dodonew/online/widget/htextview/HTextViewType;

.field public static final enum PIXELATE:Lcom/dodonew/online/widget/htextview/HTextViewType;

.field public static final enum RAINBOW:Lcom/dodonew/online/widget/htextview/HTextViewType;

.field public static final enum SCALE:Lcom/dodonew/online/widget/htextview/HTextViewType;

.field public static final enum SPARKLE:Lcom/dodonew/online/widget/htextview/HTextViewType;

.field public static final enum TYPER:Lcom/dodonew/online/widget/htextview/HTextViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/dodonew/online/widget/htextview/HTextViewType;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v3}, Lcom/dodonew/online/widget/htextview/HTextViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/htextview/HTextViewType;->SCALE:Lcom/dodonew/online/widget/htextview/HTextViewType;

    new-instance v0, Lcom/dodonew/online/widget/htextview/HTextViewType;

    const-string v1, "EVAPORATE"

    invoke-direct {v0, v1, v4}, Lcom/dodonew/online/widget/htextview/HTextViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/htextview/HTextViewType;->EVAPORATE:Lcom/dodonew/online/widget/htextview/HTextViewType;

    new-instance v0, Lcom/dodonew/online/widget/htextview/HTextViewType;

    const-string v1, "FALL"

    invoke-direct {v0, v1, v5}, Lcom/dodonew/online/widget/htextview/HTextViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/htextview/HTextViewType;->FALL:Lcom/dodonew/online/widget/htextview/HTextViewType;

    new-instance v0, Lcom/dodonew/online/widget/htextview/HTextViewType;

    const-string v1, "PIXELATE"

    invoke-direct {v0, v1, v6}, Lcom/dodonew/online/widget/htextview/HTextViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/htextview/HTextViewType;->PIXELATE:Lcom/dodonew/online/widget/htextview/HTextViewType;

    new-instance v0, Lcom/dodonew/online/widget/htextview/HTextViewType;

    const-string v1, "SPARKLE"

    invoke-direct {v0, v1, v7}, Lcom/dodonew/online/widget/htextview/HTextViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/htextview/HTextViewType;->SPARKLE:Lcom/dodonew/online/widget/htextview/HTextViewType;

    new-instance v0, Lcom/dodonew/online/widget/htextview/HTextViewType;

    const-string v1, "LINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/htextview/HTextViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/htextview/HTextViewType;->LINE:Lcom/dodonew/online/widget/htextview/HTextViewType;

    new-instance v0, Lcom/dodonew/online/widget/htextview/HTextViewType;

    const-string v1, "TYPER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/htextview/HTextViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/htextview/HTextViewType;->TYPER:Lcom/dodonew/online/widget/htextview/HTextViewType;

    new-instance v0, Lcom/dodonew/online/widget/htextview/HTextViewType;

    const-string v1, "RAINBOW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/htextview/HTextViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/widget/htextview/HTextViewType;->RAINBOW:Lcom/dodonew/online/widget/htextview/HTextViewType;

    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dodonew/online/widget/htextview/HTextViewType;

    sget-object v1, Lcom/dodonew/online/widget/htextview/HTextViewType;->SCALE:Lcom/dodonew/online/widget/htextview/HTextViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dodonew/online/widget/htextview/HTextViewType;->EVAPORATE:Lcom/dodonew/online/widget/htextview/HTextViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dodonew/online/widget/htextview/HTextViewType;->FALL:Lcom/dodonew/online/widget/htextview/HTextViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dodonew/online/widget/htextview/HTextViewType;->PIXELATE:Lcom/dodonew/online/widget/htextview/HTextViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dodonew/online/widget/htextview/HTextViewType;->SPARKLE:Lcom/dodonew/online/widget/htextview/HTextViewType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dodonew/online/widget/htextview/HTextViewType;->LINE:Lcom/dodonew/online/widget/htextview/HTextViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dodonew/online/widget/htextview/HTextViewType;->TYPER:Lcom/dodonew/online/widget/htextview/HTextViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dodonew/online/widget/htextview/HTextViewType;->RAINBOW:Lcom/dodonew/online/widget/htextview/HTextViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dodonew/online/widget/htextview/HTextViewType;->$VALUES:[Lcom/dodonew/online/widget/htextview/HTextViewType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dodonew/online/widget/htextview/HTextViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/dodonew/online/widget/htextview/HTextViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/htextview/HTextViewType;

    return-object v0
.end method

.method public static values()[Lcom/dodonew/online/widget/htextview/HTextViewType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/dodonew/online/widget/htextview/HTextViewType;->$VALUES:[Lcom/dodonew/online/widget/htextview/HTextViewType;

    invoke-virtual {v0}, [Lcom/dodonew/online/widget/htextview/HTextViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dodonew/online/widget/htextview/HTextViewType;

    return-object v0
.end method
