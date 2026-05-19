.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/common/BitArray;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    sub-int/2addr v0, v1

    invoke-static {p0, v1}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    if-nez v2, :cond_15

    add-int/lit8 v0, v0, -0x1

    :cond_15
    mul-int/lit8 v0, v0, 0xc

    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v3

    const/16 v4, 0xb

    move v5, v4

    :goto_2e
    if-ltz v5, :cond_3d

    shl-int v6, v1, v5

    and-int/2addr v6, v3

    if-eqz v6, :cond_38

    invoke-virtual {v2, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_38
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_2e

    :cond_3d
    move v3, v1

    :goto_3e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_83

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v6

    move v7, v4

    :goto_53
    if-ltz v7, :cond_62

    shl-int v8, v1, v7

    and-int/2addr v8, v6

    if-eqz v8, :cond_5d

    invoke-virtual {v2, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_53

    :cond_62
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v6

    if-eqz v6, :cond_80

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v5

    move v6, v4

    :goto_71
    if-ltz v6, :cond_80

    shl-int v7, v1, v6

    and-int/2addr v7, v5

    if-eqz v7, :cond_7b

    invoke-virtual {v2, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_7b
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_71

    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_83
    return-object v2
.end method
