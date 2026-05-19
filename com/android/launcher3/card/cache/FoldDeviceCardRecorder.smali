.class public final Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

.field public static final REFRESH_CARD_CONTENT_DELAY:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "FoldDeviceCardRecorder"

.field private static cachedDataInfoListInGroupCard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final cardPicCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Picture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-direct {v0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cardPicCaches:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cacheCardPic(Lcom/android/launcher3/card/LauncherCardInfo;Landroid/graphics/Picture;)V
    .registers 5

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_3b

    const-string/jumbo v0, "recordASmartView category = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {p1}, Lcom/android/launcher3/card/EngineMannerFactory;->getCategory(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  cardInfo = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Card"

    const-string v1, "FoldDeviceCardRecorder"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cardPicCaches:Ljava/util/Map;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    return-void
.end method

.method public final cacheGroupCardDataInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cacheGroupCardDataInfo info = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FoldDeviceCardRecorder"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cachedDataInfoListInGroupCard:Ljava/util/List;

    return-void
.end method

.method public final checkPictureValid(Lcom/android/launcher3/card/LauncherCardInfo;)Z
    .registers 4

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cardPicCaches:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPictureValid: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", valid ="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Card"

    const-string v1, "FoldDeviceCardRecorder"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public final clearAllCardViewCaches(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo p0, "reason"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearAllCardViewCaches reason for:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Card"

    const-string v0, "FoldDeviceCardRecorder"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cardPicCaches:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cachedDataInfoListInGroupCard:Ljava/util/List;

    return-void
.end method

.method public final clearSpecifiedCardCaches(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 5

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "clearSpecifiedUSCardContainer cards: "

    const-string v0, " removeList size, "

    invoke-static {p1, p0, v0}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cardPicCaches:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Card"

    const-string v2, "FoldDeviceCardRecorder"

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getCachedGroupCardDataInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "getCachedGroupCardDataInfo info = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cachedDataInfoListInGroupCard:Ljava/util/List;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FoldDeviceCardRecorder"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cachedDataInfoListInGroupCard:Ljava/util/List;

    return-object p0
.end method

.method public final getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;
    .registers 4

    const-string p0, "cardInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    const/16 v0, 0x26

    const/4 v1, 0x3

    if-ne p0, v1, :cond_3b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_59

    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_59
    return-object p0
.end method

.method public final isEnable()Z
    .registers 1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    return p0
.end method

.method public final tryGetCachePicture(Lcom/android/launcher3/card/LauncherCardInfo;)Landroid/graphics/Picture;
    .registers 5

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getKeyByCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->cardPicCaches:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Picture;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryGetCachePicture, key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", picture = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cardInfo = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Card"

    const-string v1, "FoldDeviceCardRecorder"

    invoke-static {p1, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
