.class public final enum Lcom/dodonew/online/widget/swipelayout/Techniques;
.super Ljava/lang/Enum;
.source "Techniques.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dodonew/online/widget/swipelayout/Techniques;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dodonew/online/widget/swipelayout/Techniques;

.field public static final enum Tada:Lcom/dodonew/online/widget/swipelayout/Techniques;


# instance fields
.field private animatorClazz:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/Techniques;

    const-string v1, "Tada"

    const-class v2, Lcom/dodonew/online/widget/swipelayout/TadaAnimator;

    invoke-direct {v0, v1, v3, v2}, Lcom/dodonew/online/widget/swipelayout/Techniques;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/dodonew/online/widget/swipelayout/Techniques;->Tada:Lcom/dodonew/online/widget/swipelayout/Techniques;

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/dodonew/online/widget/swipelayout/Techniques;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/Techniques;->Tada:Lcom/dodonew/online/widget/swipelayout/Techniques;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dodonew/online/widget/swipelayout/Techniques;->$VALUES:[Lcom/dodonew/online/widget/swipelayout/Techniques;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .param p3, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/dodonew/online/widget/swipelayout/Techniques;->animatorClazz:Ljava/lang/Class;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dodonew/online/widget/swipelayout/Techniques;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/dodonew/online/widget/swipelayout/Techniques;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/Techniques;

    return-object v0
.end method

.method public static values()[Lcom/dodonew/online/widget/swipelayout/Techniques;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/dodonew/online/widget/swipelayout/Techniques;->$VALUES:[Lcom/dodonew/online/widget/swipelayout/Techniques;

    invoke-virtual {v0}, [Lcom/dodonew/online/widget/swipelayout/Techniques;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dodonew/online/widget/swipelayout/Techniques;

    return-object v0
.end method


# virtual methods
.method public getAnimator()Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
    .locals 3

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/Techniques;->animatorClazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Can not init animatorClazz instance"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method
