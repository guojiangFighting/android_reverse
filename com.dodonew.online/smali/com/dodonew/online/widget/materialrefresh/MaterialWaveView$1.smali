.class Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView$1;
.super Ljava/lang/Object;
.source "MaterialWaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->onComlete(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView$1;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    .local v0, "value":I
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView$1;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-static {v1, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->access$002(Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;I)I

    .line 107
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView$1;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialWaveView;->invalidate()V

    .line 108
    return-void
.end method
