.class Lcom/dodonew/online/view/SearchView$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/view/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/SearchView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/SearchView;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dodonew/online/view/SearchView$1;->this$0:Lcom/dodonew/online/view/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/SearchView$1;->this$0:Lcom/dodonew/online/view/SearchView;

    iget-object v0, v0, Lcom/dodonew/online/view/SearchView;->myTextWatcher:Lcom/dodonew/online/view/SearchView$MyTextWatcher;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/dodonew/online/view/SearchView$1;->this$0:Lcom/dodonew/online/view/SearchView;

    iget-object v0, v0, Lcom/dodonew/online/view/SearchView;->myTextWatcher:Lcom/dodonew/online/view/SearchView$MyTextWatcher;

    invoke-interface {v0, p1}, Lcom/dodonew/online/view/SearchView$MyTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 109
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dodonew/online/view/SearchView$1;->this$0:Lcom/dodonew/online/view/SearchView;

    iget-object v0, v0, Lcom/dodonew/online/view/SearchView;->myTextWatcher:Lcom/dodonew/online/view/SearchView$MyTextWatcher;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/dodonew/online/view/SearchView$1;->this$0:Lcom/dodonew/online/view/SearchView;

    iget-object v0, v0, Lcom/dodonew/online/view/SearchView;->myTextWatcher:Lcom/dodonew/online/view/SearchView$MyTextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dodonew/online/view/SearchView$MyTextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 99
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dodonew/online/view/SearchView$1;->this$0:Lcom/dodonew/online/view/SearchView;

    iget-boolean v0, v0, Lcom/dodonew/online/view/SearchView;->hasFoucs:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/dodonew/online/view/SearchView$1;->this$0:Lcom/dodonew/online/view/SearchView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dodonew/online/view/SearchView;->setClearIconVisible(Z)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/SearchView$1;->this$0:Lcom/dodonew/online/view/SearchView;

    iget-object v0, v0, Lcom/dodonew/online/view/SearchView;->myTextWatcher:Lcom/dodonew/online/view/SearchView$MyTextWatcher;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/dodonew/online/view/SearchView$1;->this$0:Lcom/dodonew/online/view/SearchView;

    iget-object v0, v0, Lcom/dodonew/online/view/SearchView;->myTextWatcher:Lcom/dodonew/online/view/SearchView$MyTextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dodonew/online/view/SearchView$MyTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 91
    :cond_1
    return-void

    .line 86
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
