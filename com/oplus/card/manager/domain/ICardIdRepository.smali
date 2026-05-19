.class public interface abstract Lcom/oplus/card/manager/domain/ICardIdRepository;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract deleteCardIds(Ljava/util/List;Ll4/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract loadAllCardId(Ll4/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract saveCardIds(Ljava/util/List;Ll4/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
