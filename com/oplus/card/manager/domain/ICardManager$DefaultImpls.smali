.class public final Lcom/oplus/card/manager/domain/ICardManager$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/manager/domain/ICardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic createCard$default(Lcom/oplus/card/manager/domain/ICardManager;IIILcom/android/launcher3/card/seed/SeedParams;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/oplus/card/manager/domain/model/CardModel;
    .registers 20

    if-nez p9, :cond_1e

    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v7, v1

    goto :goto_a

    :cond_9
    move-object v7, p5

    :goto_a
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_10

    move-object v8, v1

    goto :goto_12

    :cond_10
    move-object/from16 v8, p6

    :goto_12
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/oplus/card/manager/domain/ICardManager;->createCard(IIILcom/android/launcher3/card/seed/SeedParams;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;Lkotlin/jvm/functions/Function2;)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v0

    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: createCard"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
