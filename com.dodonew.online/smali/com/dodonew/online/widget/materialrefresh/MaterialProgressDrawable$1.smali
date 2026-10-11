.class Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$1;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$1;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$1;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->invalidateSelf()V

    .line 94
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$1;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p2, p3, p4}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 99
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$1;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method
