.class Lcom/umeng/fb/fragment/FeedbackFragment$3;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/fragment/FeedbackFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/fb/fragment/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/umeng/fb/fragment/FeedbackFragment;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/umeng/fb/fragment/FeedbackFragment$3;->a:Lcom/umeng/fb/fragment/FeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 262
    iget-object v0, p0, Lcom/umeng/fb/fragment/FeedbackFragment$3;->a:Lcom/umeng/fb/fragment/FeedbackFragment;

    invoke-static {v0}, Lcom/umeng/fb/fragment/FeedbackFragment;->j(Lcom/umeng/fb/fragment/FeedbackFragment;)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 263
    iget-object v0, p0, Lcom/umeng/fb/fragment/FeedbackFragment$3;->a:Lcom/umeng/fb/fragment/FeedbackFragment;

    iget-object v1, p0, Lcom/umeng/fb/fragment/FeedbackFragment$3;->a:Lcom/umeng/fb/fragment/FeedbackFragment;

    invoke-static {v1}, Lcom/umeng/fb/fragment/FeedbackFragment;->k(Lcom/umeng/fb/fragment/FeedbackFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/umeng/fb/fragment/FeedbackFragment;->a(Lcom/umeng/fb/fragment/FeedbackFragment;ILandroid/view/View;)V

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 266
    const/4 v0, 0x0

    return v0
.end method
