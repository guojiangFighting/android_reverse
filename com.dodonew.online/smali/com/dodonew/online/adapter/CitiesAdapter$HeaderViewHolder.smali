.class Lcom/dodonew/online/adapter/CitiesAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "CitiesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/CitiesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dodonew/online/adapter/CitiesAdapter;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/CitiesAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/CitiesAdapter;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/dodonew/online/adapter/CitiesAdapter$HeaderViewHolder;->this$0:Lcom/dodonew/online/adapter/CitiesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
