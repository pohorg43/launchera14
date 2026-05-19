.class final Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$getCardConfigListForIcon$cardList$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
        "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$getCardConfigListForIcon$cardList$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$getCardConfigListForIcon$cardList$2;

    invoke-direct {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$getCardConfigListForIcon$cardList$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$getCardConfigListForIcon$cardList$2;->INSTANCE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$getCardConfigListForIcon$cardList$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)Ljava/lang/Integer;
    .registers 3

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p0

    invoke-virtual {p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    check-cast p2, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$getCardConfigListForIcon$cardList$2;->invoke(Lcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
