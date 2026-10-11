.class Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;
.super Lcom/dodonew/online/widget/swipelayout/SimpleSwipeListener;
.source "SwipeItemMangerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeMemory"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;
    .param p2, "position"    # I

    .prologue
    .line 218
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-direct {p0}, Lcom/dodonew/online/widget/swipelayout/SimpleSwipeListener;-><init>()V

    .line 219
    iput p2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->position:I

    .line 220
    return-void
.end method


# virtual methods
.method public onClose(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;)Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->Multiple:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    iget-object v0, v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    iget v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    const/4 v1, -0x1

    iput v1, v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPosition:I

    goto :goto_0
.end method

.method public onOpen(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;)Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->Multiple:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    iget-object v0, v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    iget v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->closeAllExcept(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    .line 244
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    iget v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->position:I

    iput v1, v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPosition:I

    goto :goto_0
.end method

.method public onStartOpen(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-static {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->access$000(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;)Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->Single:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->closeAllExcept(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V

    .line 236
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->position:I

    .line 250
    return-void
.end method
