.class public final enum Lcom/dodonew/online/util/DateUtils$DifferenceMode;
.super Ljava/lang/Enum;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/util/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DifferenceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dodonew/online/util/DateUtils$DifferenceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dodonew/online/util/DateUtils$DifferenceMode;

.field public static final enum Day:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

.field public static final enum Hour:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

.field public static final enum Minute:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

.field public static final enum Second:Lcom/dodonew/online/util/DateUtils$DifferenceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    const-string v1, "Second"

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/util/DateUtils$DifferenceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Second:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    .line 28
    new-instance v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    const-string v1, "Minute"

    invoke-direct {v0, v1, v3}, Lcom/dodonew/online/util/DateUtils$DifferenceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Minute:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    .line 31
    new-instance v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    const-string v1, "Hour"

    invoke-direct {v0, v1, v4}, Lcom/dodonew/online/util/DateUtils$DifferenceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Hour:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    .line 34
    new-instance v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    const-string v1, "Day"

    invoke-direct {v0, v1, v5}, Lcom/dodonew/online/util/DateUtils$DifferenceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Day:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    sget-object v1, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Second:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Minute:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Hour:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Day:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->$VALUES:[Lcom/dodonew/online/util/DateUtils$DifferenceMode;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dodonew/online/util/DateUtils$DifferenceMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    return-object v0
.end method

.method public static values()[Lcom/dodonew/online/util/DateUtils$DifferenceMode;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->$VALUES:[Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    invoke-virtual {v0}, [Lcom/dodonew/online/util/DateUtils$DifferenceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    return-object v0
.end method
