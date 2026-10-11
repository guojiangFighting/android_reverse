.class public final enum Lcom/amap/api/mapcore/r$a;
.super Ljava/lang/Enum;
.source "ConfigableConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/mapcore/r$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/mapcore/r$a;

.field public static final enum b:Lcom/amap/api/mapcore/r$a;

.field public static final enum c:Lcom/amap/api/mapcore/r$a;

.field public static final enum d:Lcom/amap/api/mapcore/r$a;

.field private static final synthetic e:[Lcom/amap/api/mapcore/r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/amap/api/mapcore/r$a;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/r$a;->a:Lcom/amap/api/mapcore/r$a;

    .line 44
    new-instance v0, Lcom/amap/api/mapcore/r$a;

    const-string v1, "ALIBABA"

    invoke-direct {v0, v1, v3}, Lcom/amap/api/mapcore/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/r$a;->b:Lcom/amap/api/mapcore/r$a;

    .line 45
    new-instance v0, Lcom/amap/api/mapcore/r$a;

    const-string v1, "CHELIANWAGN"

    invoke-direct {v0, v1, v4}, Lcom/amap/api/mapcore/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/r$a;->c:Lcom/amap/api/mapcore/r$a;

    .line 46
    new-instance v0, Lcom/amap/api/mapcore/r$a;

    const-string v1, "U116114"

    invoke-direct {v0, v1, v5}, Lcom/amap/api/mapcore/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore/r$a;->d:Lcom/amap/api/mapcore/r$a;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amap/api/mapcore/r$a;

    sget-object v1, Lcom/amap/api/mapcore/r$a;->a:Lcom/amap/api/mapcore/r$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/api/mapcore/r$a;->b:Lcom/amap/api/mapcore/r$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/mapcore/r$a;->c:Lcom/amap/api/mapcore/r$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amap/api/mapcore/r$a;->d:Lcom/amap/api/mapcore/r$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amap/api/mapcore/r$a;->e:[Lcom/amap/api/mapcore/r$a;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/mapcore/r$a;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/amap/api/mapcore/r$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/r$a;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/mapcore/r$a;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/amap/api/mapcore/r$a;->e:[Lcom/amap/api/mapcore/r$a;

    invoke-virtual {v0}, [Lcom/amap/api/mapcore/r$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/mapcore/r$a;

    return-object v0
.end method
