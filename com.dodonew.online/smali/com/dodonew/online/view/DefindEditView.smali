.class public Lcom/dodonew/online/view/DefindEditView;
.super Landroid/widget/EditText;
.source "DefindEditView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/view/DefindEditView$MyTextWatcher;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field public footerView:Landroid/widget/TextView;

.field public hasFoucs:Z

.field public hasWord:Z

.field private mClearDrawable:Landroid/graphics/drawable/Drawable;

.field myTextWatcher:Lcom/dodonew/online/view/DefindEditView$MyTextWatcher;

.field watcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object v1, p0, Lcom/dodonew/online/view/DefindEditView;->context:Landroid/content/Context;

    .line 22
    iput-object v1, p0, Lcom/dodonew/online/view/DefindEditView;->myTextWatcher:Lcom/dodonew/online/view/DefindEditView$MyTextWatcher;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/view/DefindEditView;->hasWord:Z

    .line 24
    iput-object v1, p0, Lcom/dodonew/online/view/DefindEditView;->footerView:Landroid/widget/TextView;

    .line 80
    new-instance v0, Lcom/dodonew/online/view/DefindEditView$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/DefindEditView$1;-><init>(Lcom/dodonew/online/view/DefindEditView;)V

    iput-object v0, p0, Lcom/dodonew/online/view/DefindEditView;->watcher:Landroid/text/TextWatcher;

    .line 36
    iput-object p1, p0, Lcom/dodonew/online/view/DefindEditView;->context:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/dodonew/online/view/DefindEditView;->initView()V

    .line 38
    iget-object v0, p0, Lcom/dodonew/online/view/DefindEditView;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/DefindEditView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v1, p0, Lcom/dodonew/online/view/DefindEditView;->context:Landroid/content/Context;

    .line 22
    iput-object v1, p0, Lcom/dodonew/online/view/DefindEditView;->myTextWatcher:Lcom/dodonew/online/view/DefindEditView$MyTextWatcher;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/view/DefindEditView;->hasWord:Z

    .line 24
    iput-object v1, p0, Lcom/dodonew/online/view/DefindEditView;->footerView:Landroid/widget/TextView;

    .line 80
    new-instance v0, Lcom/dodonew/online/view/DefindEditView$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/DefindEditView$1;-><init>(Lcom/dodonew/online/view/DefindEditView;)V

    iput-object v0, p0, Lcom/dodonew/online/view/DefindEditView;->watcher:Landroid/text/TextWatcher;

    .line 43
    iput-object p1, p0, Lcom/dodonew/online/view/DefindEditView;->context:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/view/DefindEditView;->initView()V

    .line 45
    iget-object v0, p0, Lcom/dodonew/online/view/DefindEditView;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/DefindEditView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-object v1, p0, Lcom/dodonew/online/view/DefindEditView;->context:Landroid/content/Context;

    .line 22
    iput-object v1, p0, Lcom/dodonew/online/view/DefindEditView;->myTextWatcher:Lcom/dodonew/online/view/DefindEditView$MyTextWatcher;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/view/DefindEditView;->hasWord:Z

    .line 24
    iput-object v1, p0, Lcom/dodonew/online/view/DefindEditView;->footerView:Landroid/widget/TextView;

    .line 80
    new-instance v0, Lcom/dodonew/online/view/DefindEditView$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/DefindEditView$1;-><init>(Lcom/dodonew/online/view/DefindEditView;)V

    iput-object v0, p0, Lcom/dodonew/online/view/DefindEditView;->watcher:Landroid/text/TextWatcher;

    .line 50
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/dodonew/online/view/DefindEditView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/dodonew/online/view/DefindEditView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v0, p0, Lcom/dodonew/online/view/DefindEditView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/dodonew/online/view/DefindEditView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/DefindEditView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/DefindEditView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dodonew/online/view/DefindEditView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/view/DefindEditView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 59
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 62
    invoke-virtual {p0, v3}, Lcom/dodonew/online/view/DefindEditView;->setClearIconVisible(Z)V

    .line 64
    invoke-virtual {p0, p0}, Lcom/dodonew/online/view/DefindEditView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method public addMyTextWatcher(Lcom/dodonew/online/view/DefindEditView$MyTextWatcher;)V
    .locals 0
    .param p1, "myTextWatcher"    # Lcom/dodonew/online/view/DefindEditView$MyTextWatcher;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/dodonew/online/view/DefindEditView;->myTextWatcher:Lcom/dodonew/online/view/DefindEditView$MyTextWatcher;

    .line 74
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v0, 0x0

    .line 131
    iput-boolean p2, p0, Lcom/dodonew/online/view/DefindEditView;->hasFoucs:Z

    .line 132
    if-eqz p2, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/dodonew/online/view/DefindEditView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/DefindEditView;->setClearIconVisible(Z)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/DefindEditView;->setClearIconVisible(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/dodonew/online/view/DefindEditView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/dodonew/online/view/DefindEditView;->getWidth()I

    move-result v2

    .line 149
    invoke-virtual {p0}, Lcom/dodonew/online/view/DefindEditView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/dodonew/online/view/DefindEditView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/dodonew/online/view/DefindEditView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dodonew/online/view/DefindEditView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 152
    .local v0, "touchable":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 153
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/DefindEditView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .end local v0    # "touchable":Z
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeMyTextWatcher()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/view/DefindEditView;->myTextWatcher:Lcom/dodonew/online/view/DefindEditView$MyTextWatcher;

    .line 78
    return-void
.end method

.method protected setClearIconVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 168
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/view/DefindEditView;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    .local v0, "right":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Lcom/dodonew/online/view/DefindEditView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 170
    invoke-virtual {p0}, Lcom/dodonew/online/view/DefindEditView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/dodonew/online/view/DefindEditView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    .line 169
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/dodonew/online/view/DefindEditView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 171
    return-void

    .line 168
    .end local v0    # "right":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
