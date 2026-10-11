.class Lcom/dodonew/online/ui/SearchNetBarActivity$9;
.super Ljava/lang/Object;
.source "SearchNetBarActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/SearchNetBarActivity;->setResultViewEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$9;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 407
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 388
    if-nez p2, :cond_0

    .line 390
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$9;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$200(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/view/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dodonew/online/view/SearchView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 395
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$9;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$1300(Lcom/dodonew/online/ui/SearchNetBarActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$9;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$9;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$1400(Lcom/dodonew/online/ui/SearchNetBarActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$1402(Lcom/dodonew/online/ui/SearchNetBarActivity;I)I

    .line 397
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$9;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$1500(Lcom/dodonew/online/ui/SearchNetBarActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
