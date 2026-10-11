.class public Lcom/dodonew/online/widget/htextview/util/CharacterUtils;
.super Ljava/lang/Object;
.source "CharacterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diff(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 7
    .param p0, "oldText"    # Ljava/lang/CharSequence;
    .param p1, "newText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v2, "differentList":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 27
    .local v5, "skip":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 28
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 29
    .local v0, "c":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v0, v6, :cond_1

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;

    invoke-direct {v1}, Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;-><init>()V

    .line 33
    .local v1, "different":Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;
    iput-char v0, v1, Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;->c:C

    .line 34
    iput v3, v1, Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;->fromIndex:I

    .line 35
    iput v4, v1, Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;->moveIndex:I

    .line 36
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .end local v1    # "different":Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 41
    .end local v0    # "c":C
    .end local v4    # "j":I
    :cond_2
    return-object v2
.end method

.method public static getOffset(IIFFF[F[F)F
    .locals 4
    .param p0, "from"    # I
    .param p1, "move"    # I
    .param p2, "progress"    # F
    .param p3, "startX"    # F
    .param p4, "oldStartX"    # F
    .param p5, "gaps"    # [F
    .param p6, "oldGaps"    # [F

    .prologue
    .line 76
    move v1, p3

    .line 77
    .local v1, "dist":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 78
    aget v3, p5, v2

    add-float/2addr v1, v3

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    move v0, p4

    .line 83
    .local v0, "cur":F
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p0, :cond_1

    .line 84
    aget v3, p6, v2

    add-float/2addr v0, v3

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    :cond_1
    sub-float v3, v1, v0

    mul-float/2addr v3, p2

    add-float/2addr v3, v0

    return v3
.end method

.method public static needMove(ILjava/util/List;)I
    .locals 3
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "differentList":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;

    .line 46
    .local v0, "different":Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;
    iget v2, v0, Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;->fromIndex:I

    if-ne v2, p0, :cond_0

    .line 47
    iget v1, v0, Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;->moveIndex:I

    .line 50
    .end local v0    # "different":Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static stayHere(ILjava/util/List;)Z
    .locals 3
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "differentList":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;

    .line 55
    .local v0, "different":Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;
    iget v2, v0, Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;->moveIndex:I

    if-ne v2, p0, :cond_0

    .line 56
    const/4 v1, 0x1

    .line 59
    .end local v0    # "different":Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
