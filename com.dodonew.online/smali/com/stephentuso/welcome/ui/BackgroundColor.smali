.class public Lcom/stephentuso/welcome/ui/BackgroundColor;
.super Ljava/lang/Object;
.source "BackgroundColor.java"


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const v0, -0x777778

    iput v0, p0, Lcom/stephentuso/welcome/ui/BackgroundColor;->mColor:I

    .line 17
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/stephentuso/welcome/ui/BackgroundColor;->mColor:I

    .line 19
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;I)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "defaultColor"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const v0, -0x777778

    iput v0, p0, Lcom/stephentuso/welcome/ui/BackgroundColor;->mColor:I

    .line 22
    iput p2, p0, Lcom/stephentuso/welcome/ui/BackgroundColor;->mColor:I

    .line 23
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/stephentuso/welcome/ui/BackgroundColor;->mColor:I

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/stephentuso/welcome/ui/BackgroundColor;->mColor:I

    return v0
.end method
