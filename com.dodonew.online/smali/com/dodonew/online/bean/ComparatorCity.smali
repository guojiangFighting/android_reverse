.class public Lcom/dodonew/online/bean/ComparatorCity;
.super Ljava/lang/Object;
.source "ComparatorCity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dodonew/online/bean/City;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/dodonew/online/bean/City;Lcom/dodonew/online/bean/City;)I
    .locals 7
    .param p1, "lhs"    # Lcom/dodonew/online/bean/City;
    .param p2, "rhs"    # Lcom/dodonew/online/bean/City;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 16
    invoke-virtual {p1}, Lcom/dodonew/online/bean/City;->getSpell()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/dodonew/online/bean/City;->getSpell()Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "b":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dodonew/online/util/Utils;->getIndexSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    invoke-virtual {p2}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dodonew/online/util/Utils;->getIndexSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    :cond_1
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 25
    .local v2, "city1":I
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 26
    .local v3, "city2":I
    sub-int v4, v2, v3

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/dodonew/online/bean/City;

    check-cast p2, Lcom/dodonew/online/bean/City;

    invoke-virtual {p0, p1, p2}, Lcom/dodonew/online/bean/ComparatorCity;->compare(Lcom/dodonew/online/bean/City;Lcom/dodonew/online/bean/City;)I

    move-result v0

    return v0
.end method
