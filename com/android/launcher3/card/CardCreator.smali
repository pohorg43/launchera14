.class public final Lcom/android/launcher3/card/CardCreator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardCreator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardCreator.kt\ncom/android/launcher3/card/CardCreator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,160:1\n1549#2:161\n1620#2,3:162\n*S KotlinDebug\n*F\n+ 1 CardCreator.kt\ncom/android/launcher3/card/CardCreator\n*L\n132#1:161\n132#1:162,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/CardCreator;

.field private static final TAG:Ljava/lang/String; = "CardCreator"

.field private static callBack:Lcom/android/launcher3/card/groupcard/GroupCardCallback;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/CardCreator;

    invoke-direct {v0}, Lcom/android/launcher3/card/CardCreator;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/CardCreator;->INSTANCE:Lcom/android/launcher3/card/CardCreator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCallBack()Lcom/android/launcher3/card/groupcard/GroupCardCallback;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/CardCreator;->callBack:Lcom/android/launcher3/card/groupcard/GroupCardCallback;

    return-object v0
.end method

.method public static synthetic getCallBack$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;)Lcom/android/launcher3/card/LauncherCardView;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const v1, 0xd3ecf26

    if-ne v0, v1, :cond_2f

    const-string v0, "inflateCardViewWithInfo: cachedData = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v2}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getCachedGroupCardDataInfo()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CardCreator"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->getCachedGroupCardDataInfo()Ljava/util/List;

    move-result-object v0

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    iget v2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne v2, v1, :cond_4e

    sget-object v1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-interface {v1, v2}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v1

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x2

    :goto_4c
    iput v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    :cond_4e
    invoke-static {p0, p1, v0}, Lcom/android/launcher3/card/CardCreator;->inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;Ljava/util/List;)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0

    return-object p0
.end method

.method public static final inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/dragndrop/DragCardInfo;)Lcom/android/launcher3/card/LauncherCardView;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cardInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragCardInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflateCardViewWithInfo: dragCardInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardCreator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_27
    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getNewInnerCards()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getNewInnerCards()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/android/launcher3/card/CardCreator$inflateCardViewWithInfo$1$groupChildCardDataInfoList$1$1;

    invoke-direct {v3}, Lcom/android/launcher3/card/CardCreator$inflateCardViewWithInfo$1$groupChildCardDataInfoList$1$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_9d

    :cond_4a
    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getInnerCards()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9c

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpantanal/app/groupcard/CardIdentity;

    new-instance v4, Lpantanal/app/groupcard/CardIdentity;

    invoke-virtual {v3}, Lpantanal/app/groupcard/CardIdentity;->getCardType()I

    move-result v5

    invoke-virtual {v3}, Lpantanal/app/groupcard/CardIdentity;->getCardId()I

    move-result v6

    invoke-virtual {v3}, Lpantanal/app/groupcard/CardIdentity;->getHostId()I

    move-result v7

    invoke-virtual {v3}, Lpantanal/app/groupcard/CardIdentity;->getSize()I

    move-result v3

    invoke-direct {v4, v5, v6, v7, v3}, Lpantanal/app/groupcard/CardIdentity;-><init>(IIII)V

    new-instance v3, Lpantanal/app/groupcard/GroupChildCardDataInfo;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Gson().toJson(identity)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, v0}, Lpantanal/app/groupcard/GroupChildCardDataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_97
    invoke-static {v2}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    goto :goto_9d

    :cond_9c
    move-object v1, v0

    :goto_9d
    invoke-static {p0, p1, v1}, Lcom/android/launcher3/card/CardCreator;->inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;Ljava/util/List;)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0
    :try_end_a1
    .catchall {:try_start_27 .. :try_end_a1} :catchall_a2

    return-object p0

    :catchall_a2
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_c3

    const-string p0, "inflateCardViewWithInfo occur exception, source: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getNewInnerCards()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DragCardInfo"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c3
    return-object v0
.end method

.method public static final inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;Ljava/util/List;)Lcom/android/launcher3/card/LauncherCardView;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lcom/android/launcher3/OplusWorkspace;",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;)",
            "Lcom/android/launcher3/card/LauncherCardView;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cardInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflateCardViewWithInfo: cardInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardCreator"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0xd3ecf26

    if-ne v0, v4, :cond_2c

    move v0, v3

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    sget-object v2, Lcom/android/launcher3/card/CardCreator;->INSTANCE:Lcom/android/launcher3/card/CardCreator;

    invoke-virtual {v2, p1, v4, v3, v0}, Lcom/android/launcher3/card/CardCreator;->inflateCardFromXml(Landroid/view/ViewGroup;ZZZ)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_48

    return-object v3

    :cond_48
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    instance-of v4, v2, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v4, :cond_97

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inflateCardViewWithInfo: cardView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/launcher3/card/CardCreator;->callBack:Lcom/android/launcher3/card/groupcard/GroupCardCallback;

    if-nez v5, :cond_71

    new-instance v5, Lcom/android/launcher3/card/groupcard/GroupCardCallback;

    move-object v6, v2

    check-cast v6, Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-direct {v5, v6}, Lcom/android/launcher3/card/groupcard/GroupCardCallback;-><init>(Lpantanal/app/groupcard/IGroupCardCallback;)V

    sput-object v5, Lcom/android/launcher3/card/CardCreator;->callBack:Lcom/android/launcher3/card/groupcard/GroupCardCallback;

    :cond_71
    if-eqz v4, :cond_77

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/card/groupcard/GroupCardView;

    goto :goto_78

    :cond_77
    move-object v4, v3

    :goto_78
    if-eqz v4, :cond_7f

    sget-object v5, Lcom/android/launcher3/card/CardCreator;->callBack:Lcom/android/launcher3/card/groupcard/GroupCardCallback;

    invoke-virtual {v4, p0, p2, v5}, Lcom/android/launcher3/card/groupcard/GroupCardView;->initGroupCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;Ljava/util/List;Lcom/android/launcher3/card/groupcard/GroupCardCallback;)V

    :cond_7f
    const-string p2, "inflateCardViewWithInfo: innerCallback:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v4, Lcom/android/launcher3/card/CardCreator;->callBack:Lcom/android/launcher3/card/groupcard/GroupCardCallback;

    if-eqz v4, :cond_8d

    invoke-virtual {v4}, Lcom/android/launcher3/card/groupcard/GroupCardCallback;->getInnerCallback()Lpantanal/app/groupcard/IGroupCardCallback;

    move-result-object v3

    :cond_8d
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    sget-object p2, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p2}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p2

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/card/CardCreator$inflateCardViewWithInfo$cardModel$1;

    invoke-direct {v3, v2, v0}, Lcom/android/launcher3/card/CardCreator$inflateCardViewWithInfo$cardModel$1;-><init>(Lcom/android/launcher3/card/LauncherCardView;Z)V

    invoke-virtual {p2, p0, v1, v0, v3}, Lcom/oplus/card/manager/domain/CardManager;->createCard(Lcom/android/launcher3/card/LauncherCardInfo;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p2

    if-nez v0, :cond_c1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "group.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/card/seed/SeedParams;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;)V

    invoke-static {p1, p0, v0}, Lcom/android/launcher3/card/EngineMannerFactory;->createEngineManner(Landroid/content/Context;Ljava/lang/Object;Lcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/card/helper/EngineManner;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/oplus/card/manager/domain/ICardView;->setEngineManner(Lcom/oplus/card/helper/EngineManner;)V

    :cond_c1
    invoke-interface {v2, p2}, Lcom/oplus/card/manager/domain/ICardView;->setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;)V

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/oplus/card/manager/domain/ICardView;->setCardName(Ljava/lang/String;)V

    return-object v2
.end method

.method public static synthetic inflateCardViewWithInfo$default(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;Ljava/util/List;ILjava/lang/Object;)Lcom/android/launcher3/card/LauncherCardView;
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/card/CardCreator;->inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;Ljava/util/List;)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0

    return-object p0
.end method

.method public static final setCallBack(Lcom/android/launcher3/card/groupcard/GroupCardCallback;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/card/CardCreator;->callBack:Lcom/android/launcher3/card/groupcard/GroupCardCallback;

    return-void
.end method


# virtual methods
.method public final inflateCardFromXml(Landroid/view/ViewGroup;ZZZ)Lcom/android/launcher3/card/LauncherCardView;
    .registers 8

    const/4 p0, 0x0

    const-string v0, "CardCreator"

    if-nez p1, :cond_b

    const-string p1, "inflateCardView: container = null"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateCardView: showCardName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isGroupCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p4, :cond_42

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p3, 0x7f0d01c0

    invoke-virtual {p0, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.card.groupcard.GroupCardView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    goto :goto_5b

    :cond_42
    if-eqz p3, :cond_5b

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p3, 0x7f0d01b1

    invoke-virtual {p0, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.card.TitleCardView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/card/TitleCardView;

    :cond_5b
    :goto_5b
    if-eqz p0, :cond_60

    invoke-virtual {p0, p2}, Lcom/android/launcher3/card/LauncherCardView;->setIsShowDefaultView(Z)V

    :cond_60
    if-eqz p0, :cond_65

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->initCardAfterInflate()V

    :cond_65
    return-object p0
.end method
