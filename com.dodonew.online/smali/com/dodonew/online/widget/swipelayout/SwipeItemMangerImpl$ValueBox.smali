.class Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$ValueBox;
.super Ljava/lang/Object;
.source "SwipeItemMangerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValueBox"
.end annotation


# instance fields
.field onLayoutListener:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;

.field position:I

.field swipeMemory:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;

.field final synthetic this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;ILcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;
    .param p2, "position"    # I
    .param p3, "swipeMemory"    # Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;
    .param p4, "onLayoutListener"    # Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$ValueBox;->this$0:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p3, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$ValueBox;->swipeMemory:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;

    .line 186
    iput-object p4, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$ValueBox;->onLayoutListener:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;

    .line 187
    iput p2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$ValueBox;->position:I

    .line 188
    return-void
.end method
