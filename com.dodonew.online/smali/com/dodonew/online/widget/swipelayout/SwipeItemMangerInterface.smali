.class public interface abstract Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerInterface;
.super Ljava/lang/Object;
.source "SwipeItemMangerInterface.java"


# virtual methods
.method public abstract closeAllExcept(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
.end method

.method public abstract closeItem(I)V
.end method

.method public abstract getMode()Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;
.end method

.method public abstract getOpenItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOpenLayouts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/swipelayout/SwipeLayout;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isOpen(I)Z
.end method

.method public abstract openItem(I)V
.end method

.method public abstract removeShownLayouts(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
.end method

.method public abstract setMode(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;)V
.end method
