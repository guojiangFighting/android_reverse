.class Lcom/dodonew/online/widget/swipeback/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/swipeback/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/swipeback/ViewDragHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$2;->this$0:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/ViewDragHelper$2;->this$0:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->setDragState(I)V

    .line 377
    return-void
.end method
