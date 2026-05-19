.class final Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$getCardConfigListForIcon$cardList$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->getCardConfigListForIcon(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $originalInfo:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$getCardConfigListForIcon$cardList$1;->$originalInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Ljava/lang/Boolean;
    .registers 4

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$getCardConfigListForIcon$cardList$1;->$originalInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->isValidInfoForPressedIcon(Lcom/android/launcher3/model/data/ItemInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$getCardConfigListForIcon$cardList$1;->invoke(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
