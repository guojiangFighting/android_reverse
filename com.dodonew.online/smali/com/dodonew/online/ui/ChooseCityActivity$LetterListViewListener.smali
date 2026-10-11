.class Lcom/dodonew/online/ui/ChooseCityActivity$LetterListViewListener;
.super Ljava/lang/Object;
.source "ChooseCityActivity.java"

# interfaces
.implements Lcom/dodonew/online/view/MyLetterListView$OnTouchingLetterChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/ui/ChooseCityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LetterListViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ChooseCityActivity;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$LetterListViewListener;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/ui/ChooseCityActivity;Lcom/dodonew/online/ui/ChooseCityActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/ui/ChooseCityActivity;
    .param p2, "x1"    # Lcom/dodonew/online/ui/ChooseCityActivity$1;

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ChooseCityActivity$LetterListViewListener;-><init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 470
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$LetterListViewListener;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1800(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/adapter/CitiesAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$LetterListViewListener;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1800(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/adapter/CitiesAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/dodonew/online/adapter/CitiesAdapter;->mpAlphaIndexer:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$LetterListViewListener;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1800(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/adapter/CitiesAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/dodonew/online/adapter/CitiesAdapter;->mpAlphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$LetterListViewListener;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1800(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/adapter/CitiesAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/dodonew/online/adapter/CitiesAdapter;->mpAlphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 474
    .local v0, "position":I
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$LetterListViewListener;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1900(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->setSelection(I)V

    .line 482
    .end local v0    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$LetterListViewListener;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1900(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/sticklistheaderview/StickyListHeadersListView;->setSelection(I)V

    goto :goto_0
.end method
