.class Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$3;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

.field final synthetic val$l:Landroid/view/View$OnTouchListener;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$3;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    iput-object p2, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$3;->val$l:Landroid/view/View$OnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 763
    iget-object v0, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$3;->val$l:Landroid/view/View$OnTouchListener;

    iget-object v1, p0, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView$3;->this$0:Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
