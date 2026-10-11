.class Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$1;
.super Ljava/lang/Object;
.source "ExpandableStickyListHeadersListView.java"

# interfaces
.implements Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$IAnimationExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView$1;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/ExpandableStickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeAnim(Landroid/view/View;I)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "animType"    # I

    .prologue
    .line 28
    if-nez p2, :cond_1

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 31
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
