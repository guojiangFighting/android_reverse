.class Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;
.super Ljava/lang/Object;
.source "SwipeItemMangerImpl.java"

# interfaces
.implements Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnLayoutListener"
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
    .line 195
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;->position:I

    .line 197
    return-void
.end method


# virtual methods
.method public onLayout(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 3
    .param p1, "v"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    iget v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;->position:I

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->isOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1, v2, v2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->open(ZZ)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {p1, v2, v2}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close(ZZ)V

    goto :goto_0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;->position:I

    .line 201
    return-void
.end method
