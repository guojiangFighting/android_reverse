.class public abstract Lcom/dodonew/online/widget/popup/BottomPopup;
.super Ljava/lang/Object;
.source "BottomPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/DialogInterface$OnKeyListener;"
    }
.end annotation


# static fields
.field public static final MATCH_PARENT:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field protected activity:Landroid/app/Activity;

.field private height:I

.field private isFillScreen:Z

.field private isHalfScreen:Z

.field private popup:Lcom/dodonew/online/widget/popup/Popup;

.field protected screenHeightPixels:I

.field protected screenWidthPixels:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->width:I

    iput v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->height:I

    .line 37
    iput-boolean v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->isFillScreen:Z

    .line 38
    iput-boolean v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->isHalfScreen:Z

    .line 46
    iput-object p1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->activity:Landroid/app/Activity;

    .line 47
    invoke-static {p1}, Lcom/dodonew/online/util/ScreenUtils;->displayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 48
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->screenWidthPixels:I

    .line 49
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->screenHeightPixels:I

    .line 50
    new-instance v1, Lcom/dodonew/online/widget/popup/Popup;

    invoke-direct {v1, p1}, Lcom/dodonew/online/widget/popup/Popup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->popup:Lcom/dodonew/online/widget/popup/Popup;

    .line 51
    iget-object v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->popup:Lcom/dodonew/online/widget/popup/Popup;

    invoke-virtual {v1, p0}, Lcom/dodonew/online/widget/popup/Popup;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 52
    return-void
.end method

.method private onShowPrepare()V
    .locals 4

    .prologue
    .line 65
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/widget/popup/BottomPopup;->setContentViewBefore()V

    .line 66
    invoke-virtual {p0}, Lcom/dodonew/online/widget/popup/BottomPopup;->makeContentView()Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "view":Landroid/view/View;, "TV;"
    iget-object v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->popup:Lcom/dodonew/online/widget/popup/Popup;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/widget/popup/Popup;->setContentView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/popup/BottomPopup;->setContentViewAfter(Landroid/view/View;)V

    .line 69
    const-string v1, "do something before popup show"

    invoke-static {v1}, Lcom/dodonew/online/util/LogUtils;->debug(Ljava/lang/String;)V

    .line 70
    iget v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->width:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->height:I

    if-nez v1, :cond_0

    .line 72
    iget v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->screenWidthPixels:I

    iput v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->width:I

    .line 73
    iget-boolean v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->isFillScreen:Z

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, -0x1

    iput v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->height:I

    .line 81
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->popup:Lcom/dodonew/online/widget/popup/Popup;

    iget v2, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->width:I

    iget v3, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/dodonew/online/widget/popup/Popup;->setSize(II)V

    .line 82
    return-void

    .line 75
    :cond_1
    iget-boolean v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->isHalfScreen:Z

    if-eqz v1, :cond_2

    .line 76
    iget v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->screenHeightPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->height:I

    goto :goto_0

    .line 78
    :cond_2
    const/4 v1, -0x2

    iput v1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->height:I

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->popup:Lcom/dodonew/online/widget/popup/Popup;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/popup/Popup;->dismiss()V

    .line 191
    const-string v0, "popup dismiss"

    invoke-static {v0}, Lcom/dodonew/online/util/LogUtils;->debug(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->popup:Lcom/dodonew/online/widget/popup/Popup;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/popup/Popup;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->popup:Lcom/dodonew/online/widget/popup/Popup;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/popup/Popup;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->popup:Lcom/dodonew/online/widget/popup/Popup;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/popup/Popup;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected abstract makeContentView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 207
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0, p2, p3}, Lcom/dodonew/online/widget/popup/BottomPopup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 202
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 122
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->popup:Lcom/dodonew/online/widget/popup/Popup;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/popup/Popup;->setAnimationStyle(I)V

    .line 123
    return-void
.end method

.method protected setContentViewAfter(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    .local p1, "contentView":Landroid/view/View;, "TV;"
    return-void
.end method

.method protected setContentViewBefore()V
    .locals 0

    .prologue
    .line 106
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    return-void
.end method

.method public setFillScreen(Z)V
    .locals 0
    .param p1, "fillScreen"    # Z

    .prologue
    .line 90
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    iput-boolean p1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->isFillScreen:Z

    .line 91
    return-void
.end method

.method public setHalfScreen(Z)V
    .locals 0
    .param p1, "halfScreen"    # Z

    .prologue
    .line 99
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    iput-boolean p1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->isHalfScreen:Z

    .line 100
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 164
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    iput p1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->height:I

    .line 165
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 131
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    iget-object v0, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->popup:Lcom/dodonew/online/widget/popup/Popup;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/popup/Popup;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 132
    const-string v0, "popup setOnDismissListener"

    invoke-static {v0}, Lcom/dodonew/online/util/LogUtils;->debug(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 143
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    iput p1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->width:I

    .line 144
    iput p2, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->height:I

    .line 145
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 154
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    iput p1, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->width:I

    .line 155
    return-void
.end method

.method public show()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/dodonew/online/widget/popup/BottomPopup;, "Lcom/dodonew/online/widget/popup/BottomPopup<TV;>;"
    invoke-direct {p0}, Lcom/dodonew/online/widget/popup/BottomPopup;->onShowPrepare()V

    .line 182
    iget-object v0, p0, Lcom/dodonew/online/widget/popup/BottomPopup;->popup:Lcom/dodonew/online/widget/popup/Popup;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/popup/Popup;->show()V

    .line 183
    const-string v0, "popup show"

    invoke-static {v0}, Lcom/dodonew/online/util/LogUtils;->debug(Ljava/lang/String;)V

    .line 184
    return-void
.end method
