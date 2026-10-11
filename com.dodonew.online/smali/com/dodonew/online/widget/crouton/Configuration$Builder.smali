.class public Lcom/dodonew/online/widget/crouton/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/crouton/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private durationInMilliseconds:I

.field private inAnimationResId:I

.field private outAnimationResId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->durationInMilliseconds:I

    .line 78
    iput v1, p0, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->inAnimationResId:I

    .line 79
    iput v1, p0, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->outAnimationResId:I

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/crouton/Configuration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/crouton/Configuration$Builder;

    .prologue
    .line 76
    iget v0, p0, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->durationInMilliseconds:I

    return v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/crouton/Configuration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/crouton/Configuration$Builder;

    .prologue
    .line 76
    iget v0, p0, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->inAnimationResId:I

    return v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/crouton/Configuration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/crouton/Configuration$Builder;

    .prologue
    .line 76
    iget v0, p0, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->outAnimationResId:I

    return v0
.end method


# virtual methods
.method public build()Lcom/dodonew/online/widget/crouton/Configuration;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/dodonew/online/widget/crouton/Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/widget/crouton/Configuration;-><init>(Lcom/dodonew/online/widget/crouton/Configuration$Builder;Lcom/dodonew/online/widget/crouton/Configuration$1;)V

    return-object v0
.end method

.method public setDuration(I)Lcom/dodonew/online/widget/crouton/Configuration$Builder;
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->durationInMilliseconds:I

    .line 91
    return-object p0
.end method

.method public setInAnimation(I)Lcom/dodonew/online/widget/crouton/Configuration$Builder;
    .locals 0
    .param p1, "inAnimationResId"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->inAnimationResId:I

    .line 104
    return-object p0
.end method

.method public setOutAnimation(I)Lcom/dodonew/online/widget/crouton/Configuration$Builder;
    .locals 0
    .param p1, "outAnimationResId"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/dodonew/online/widget/crouton/Configuration$Builder;->outAnimationResId:I

    .line 117
    return-object p0
.end method
