.class final Lcom/oplus/card/manager/domain/CardManager$removeModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/manager/domain/CardManager;->removeModel(Ljava/util/Set;III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/oplus/card/manager/domain/model/CardModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $cardId:I

.field public final synthetic $hostId:I

.field public final synthetic $type:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    iput p1, p0, Lcom/oplus/card/manager/domain/CardManager$removeModel$1;->$type:I

    iput p2, p0, Lcom/oplus/card/manager/domain/CardManager$removeModel$1;->$cardId:I

    iput p3, p0, Lcom/oplus/card/manager/domain/CardManager$removeModel$1;->$hostId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/oplus/card/manager/domain/model/CardModel;)Ljava/lang/Boolean;
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v0

    iget v1, p0, Lcom/oplus/card/manager/domain/CardManager$removeModel$1;->$type:I

    if-ne v0, v1, :cond_1f

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v0

    iget v1, p0, Lcom/oplus/card/manager/domain/CardManager$removeModel$1;->$cardId:I

    if-ne v0, v1, :cond_1f

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result p1

    iget p0, p0, Lcom/oplus/card/manager/domain/CardManager$removeModel$1;->$hostId:I

    if-ne p1, p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager$removeModel$1;->invoke(Lcom/oplus/card/manager/domain/model/CardModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
