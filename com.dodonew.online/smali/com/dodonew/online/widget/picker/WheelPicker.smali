.class public abstract Lcom/dodonew/online/widget/picker/WheelPicker;
.super Lcom/dodonew/online/widget/popup/ConfirmPopup;
.source "WheelPicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dodonew/online/widget/popup/ConfirmPopup",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field protected lineColor:I

.field protected lineVisible:Z

.field protected offset:I

.field protected textColorFocus:I

.field protected textColorNormal:I

.field protected textSize:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/popup/ConfirmPopup;-><init>(Landroid/app/Activity;)V

    .line 22
    const/16 v0, 0x14

    iput v0, p0, Lcom/dodonew/online/widget/picker/WheelPicker;->textSize:I

    .line 26
    const v0, -0x444445

    iput v0, p0, Lcom/dodonew/online/widget/picker/WheelPicker;->textColorNormal:I

    .line 30
    const v0, -0xfc560c

    iput v0, p0, Lcom/dodonew/online/widget/picker/WheelPicker;->textColorFocus:I

    .line 34
    const v0, -0x7c321a

    iput v0, p0, Lcom/dodonew/online/widget/picker/WheelPicker;->lineColor:I

    .line 38
    iput-boolean v1, p0, Lcom/dodonew/online/widget/picker/WheelPicker;->lineVisible:Z

    .line 42
    iput v1, p0, Lcom/dodonew/online/widget/picker/WheelPicker;->offset:I

    .line 51
    return-void
.end method


# virtual methods
.method public setLineColor(I)V
    .locals 0
    .param p1, "lineColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 97
    iput p1, p0, Lcom/dodonew/online/widget/picker/WheelPicker;->lineColor:I

    .line 98
    return-void
.end method

.method public setLineVisible(Z)V
    .locals 0
    .param p1, "lineVisible"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/dodonew/online/widget/picker/WheelPicker;->lineVisible:Z

    .line 89
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x4L
        .end annotation
    .end param

    .prologue
    .line 106
    iput p1, p0, Lcom/dodonew/online/widget/picker/WheelPicker;->offset:I

    .line 107
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 79
    iput p1, p0, Lcom/dodonew/online/widget/picker/WheelPicker;->textColorFocus:I

    .line 80
    return-void
.end method

.method public setTextColor(II)V
    .locals 0
    .param p1, "textColorFocus"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "textColorNormal"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 69
    iput p1, p0, Lcom/dodonew/online/widget/picker/WheelPicker;->textColorFocus:I

    .line 70
    iput p2, p0, Lcom/dodonew/online/widget/picker/WheelPicker;->textColorNormal:I

    .line 71
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/dodonew/online/widget/picker/WheelPicker;->textSize:I

    .line 60
    return-void
.end method
