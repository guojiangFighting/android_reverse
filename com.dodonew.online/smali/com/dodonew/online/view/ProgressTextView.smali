.class public Lcom/dodonew/online/view/ProgressTextView;
.super Landroid/widget/TextView;
.source "ProgressTextView.java"


# instance fields
.field private bgColor:I

.field private text:Ljava/lang/String;

.field private textColor:I

.field private txtHeight:I

.field private txtWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    return-void
.end method


# virtual methods
.method public getBgColor()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/dodonew/online/view/ProgressTextView;->bgColor:I

    return v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/dodonew/online/view/ProgressTextView;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/view/ProgressTextView;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/dodonew/online/view/ProgressTextView;->textColor:I

    return v0
.end method

.method public getTxtHeight()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/dodonew/online/view/ProgressTextView;->txtHeight:I

    return v0
.end method

.method public getTxtWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/dodonew/online/view/ProgressTextView;->txtWidth:I

    return v0
.end method

.method public setBgColor(I)V
    .locals 0
    .param p1, "bgColor"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/dodonew/online/view/ProgressTextView;->bgColor:I

    .line 36
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dodonew/online/view/ProgressTextView;->text:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/dodonew/online/view/ProgressTextView;->textColor:I

    .line 54
    return-void
.end method

.method public setTxtHeight(I)V
    .locals 0
    .param p1, "txtHeight"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/dodonew/online/view/ProgressTextView;->txtHeight:I

    .line 62
    return-void
.end method

.method public setTxtWidth(I)V
    .locals 0
    .param p1, "txtWidth"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/dodonew/online/view/ProgressTextView;->txtWidth:I

    .line 70
    return-void
.end method
