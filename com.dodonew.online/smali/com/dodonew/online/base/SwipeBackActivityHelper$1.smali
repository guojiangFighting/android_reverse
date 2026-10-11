.class Lcom/dodonew/online/base/SwipeBackActivityHelper$1;
.super Ljava/lang/Object;
.source "SwipeBackActivityHelper.java"

# interfaces
.implements Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/base/SwipeBackActivityHelper;->onActivityCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/base/SwipeBackActivityHelper;


# direct methods
.method constructor <init>(Lcom/dodonew/online/base/SwipeBackActivityHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/base/SwipeBackActivityHelper;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper$1;->this$0:Lcom/dodonew/online/base/SwipeBackActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEdgeTouch(I)V
    .locals 1
    .param p1, "edgeFlag"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper$1;->this$0:Lcom/dodonew/online/base/SwipeBackActivityHelper;

    invoke-static {v0}, Lcom/dodonew/online/base/SwipeBackActivityHelper;->access$000(Lcom/dodonew/online/base/SwipeBackActivityHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/dodonew/online/util/Utils;->convertActivityToTranslucent(Landroid/app/Activity;)V

    .line 41
    return-void
.end method

.method public onScrollOverThreshold()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onScrollStateChange(IF)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "scrollPercent"    # F

    .prologue
    .line 36
    return-void
.end method
