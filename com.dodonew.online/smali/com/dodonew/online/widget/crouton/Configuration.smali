.class public Lcom/dodonew/online/widget/crouton/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/crouton/Configuration$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/dodonew/online/widget/crouton/Configuration;

.field public static final DURATION_INFINITE:I = -0x1

.field public static final DURATION_LONG:I = 0x1388

.field public static final DURATION_SHORT:I = 0x3e8


# instance fields
.field final durationInMilliseconds:I

.field final inAnimationResId:I

.field final outAnimationResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/dodonew/online/widget/crouton/Configuration$Builder;

    invoke-direct {v0}, Lcom/dodonew/online/widget/crouton/Configuration$Builder;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->setDuration(I)Lcom/dodonew/online/widget/crouton/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->build()Lcom/dodonew/online/widget/crouton/Configuration;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/widget/crouton/Configuration;->DEFAULT:Lcom/dodonew/online/widget/crouton/Configuration;

    .line 52
    return-void
.end method

.method private constructor <init>(Lcom/dodonew/online/widget/crouton/Configuration$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/dodonew/online/widget/crouton/Configuration$Builder;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->access$000(Lcom/dodonew/online/widget/crouton/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Configuration;->durationInMilliseconds:I

    .line 69
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->access$100(Lcom/dodonew/online/widget/crouton/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Configuration;->inAnimationResId:I

    .line 70
    invoke-static {p1}, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->access$200(Lcom/dodonew/online/widget/crouton/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Configuration;->outAnimationResId:I

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/crouton/Configuration$Builder;Lcom/dodonew/online/widget/crouton/Configuration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/crouton/Configuration$Builder;
    .param p2, "x1"    # Lcom/dodonew/online/widget/crouton/Configuration$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/crouton/Configuration;-><init>(Lcom/dodonew/online/widget/crouton/Configuration$Builder;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Configuration{durationInMilliseconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Configuration;->durationInMilliseconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inAnimationResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Configuration;->inAnimationResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outAnimationResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/widget/crouton/Configuration;->outAnimationResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
