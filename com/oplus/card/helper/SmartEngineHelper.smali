.class public final Lcom/oplus/card/helper/SmartEngineHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/ILaunchInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;,
        Lcom/oplus/card/helper/SmartEngineHelper$WhenMappings;,
        Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSmartEngineHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartEngineHelper.kt\ncom/oplus/card/helper/SmartEngineHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n1855#2,2:164\n*S KotlinDebug\n*F\n+ 1 SmartEngineHelper.kt\ncom/oplus/card/helper/SmartEngineHelper\n*L\n129#1:164,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

.field public static final NUMBER_SPLIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SmartEngineHelper"

.field private static listener:Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;

.field private static reverseAnimCardView:Lcom/android/launcher3/card/LauncherCardView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-direct {v0}, Lcom/oplus/card/helper/SmartEngineHelper;-><init>()V

    sput-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final startActivityImp(Ljava/lang/String;Landroid/content/Intent;Landroid/view/View;)V
    .registers 7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "intent "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ,cardName："

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SmartEngineHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "&"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, p0, v0, v0, v1}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_39

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;

    if-eqz p0, :cond_38

    invoke-interface {p0, p2}, Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;->onStartIntentDirect(Landroid/content/Intent;)V

    :cond_38
    return-void

    :cond_39
    new-array p1, v1, [I

    :goto_3b
    if-ge v0, v1, :cond_52

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lk7/l;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v0

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_52
    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;

    if-eqz p0, :cond_59

    invoke-interface {p0, p2, p1, p3}, Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;->onStartCardActivity(Landroid/content/Intent;[ILandroid/view/View;)V

    :cond_59
    return-void
.end method

.method private final startActivityListImpl(Ljava/lang/String;Ljava/util/List;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string p0, "SmartEngineHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cardName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "&"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, p0, v0, v0, v1}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_39

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;

    if-eqz p0, :cond_38

    invoke-interface {p0, p2}, Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;->onStartActivityListDirect(Ljava/util/List;)V

    :cond_38
    return-void

    :cond_39
    new-array p1, v1, [I

    :goto_3b
    if-ge v0, v1, :cond_52

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lk7/l;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v0

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_52
    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;

    if-eqz p0, :cond_59

    invoke-interface {p0, p2, p1, p3}, Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;->onStartActivityList(Ljava/util/List;[ILandroid/view/View;)V

    :cond_59
    return-void
.end method


# virtual methods
.method public final getListener()Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;
    .registers 1

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;

    return-object p0
.end method

.method public final getReverseAnimCardView()Lcom/android/launcher3/card/LauncherCardView;
    .registers 1

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->reverseAnimCardView:Lcom/android/launcher3/card/LauncherCardView;

    return-object p0
.end method

.method public onStartActivity(Landroid/view/View;Lpantanal/app/bean/CardCategory;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lpantanal/app/bean/CardCategory;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const-string p0, "cardCategory"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intentList"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartActivity: cardCategory "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cardName："

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", intent size = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Card"

    const-string v1, "SmartEngineHelper"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_5e

    const-string p0, "onStartActivity: intent = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_53

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    goto :goto_54

    :cond_53
    move-object v5, v2

    :goto_54
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    if-eqz p1, :cond_a8

    invoke-static {p1, v4}, Lcom/android/launcher3/card/LauncherCardUtil;->getCardContainerOfSmartView(Landroid/view/View;I)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0

    if-eqz p0, :cond_a8

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isGroupCard()Z

    move-result v0

    if-eqz v0, :cond_92

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.card.groupcard.GroupCardView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getChildView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_7e

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_7f

    :cond_7e
    move-object p0, v2

    :goto_7f
    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v0, :cond_86

    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_87

    :cond_86
    move-object p0, v2

    :goto_87
    if-eqz p0, :cond_9a

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->clickForRecentAnimReverse()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_9a

    :cond_92
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->clickForRecentAnimReverse()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_9a
    :goto_9a
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a8

    const-string p0, "find card, no need to start"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a8
    if-nez p1, :cond_ae

    if-eqz p3, :cond_ae

    move p0, v3

    goto :goto_af

    :cond_ae
    move p0, v4

    :goto_af
    const/4 v0, 0x2

    if-eqz p0, :cond_e1

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->reverseAnimCardView:Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p0, :cond_e1

    if-eqz p0, :cond_c9

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c9

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p3, v4, v0}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0

    if-ne p0, v3, :cond_c9

    move p0, v3

    goto :goto_ca

    :cond_c9
    move p0, v4

    :goto_ca
    if-eqz p0, :cond_e1

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->reverseAnimCardView:Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p0, :cond_d8

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->clickForRecentAnimReverse()Z

    move-result p0

    if-ne p0, v3, :cond_d8

    move p0, v3

    goto :goto_d9

    :cond_d8
    move p0, v4

    :goto_d9
    if-eqz p0, :cond_e1

    const-string p0, "find card by cardName, no need to start"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e1
    invoke-static {p1, v4}, Lcom/android/launcher3/card/LauncherCardUtil;->getCardContainerOfSmartView(Landroid/view/View;I)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0

    if-eqz p0, :cond_ef

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isGroupCard()Z

    move-result v1

    if-ne v1, v3, :cond_ef

    move v1, v3

    goto :goto_f0

    :cond_ef
    move v1, v4

    :goto_f0
    if-eqz v1, :cond_fd

    instance-of v1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v1, :cond_fd

    if-eqz p1, :cond_fd

    check-cast p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->setChildCardJumpAction(Landroid/view/View;)V

    :cond_fd
    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v3, :cond_166

    if-eq p0, v0, :cond_14e

    const/4 p2, 0x3

    if-eq p0, p2, :cond_114

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;

    if-eqz p0, :cond_16d

    invoke-interface {p0, p4}, Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;->onStartActivityListDirect(Ljava/util/List;)V

    goto :goto_16d

    :cond_114
    if-eqz p1, :cond_16d

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p2, p0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p2, :cond_121

    check-cast p0, Lcom/android/launcher3/card/LauncherCardView;

    goto :goto_125

    :cond_121
    invoke-static {p1, v4}, Lcom/android/launcher3/card/LauncherCardUtil;->getCardContainerOfSmartView(Landroid/view/View;I)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0

    :goto_125
    if-eqz p0, :cond_134

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p0, p2}, Lcom/android/statistics/LauncherStatistics;->statCardClickEvent(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/String;)V

    :cond_134
    instance-of p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz p1, :cond_146

    sget-object p1, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;

    if-eqz p1, :cond_16d

    check-cast p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getChildView()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0, p4}, Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;->onSeedStartActivity(Landroid/view/View;Ljava/util/List;)V

    goto :goto_16d

    :cond_146
    sget-object p1, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;

    if-eqz p1, :cond_16d

    invoke-interface {p1, p0, p4}, Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;->onSeedStartActivity(Landroid/view/View;Ljava/util/List;)V

    goto :goto_16d

    :cond_14e
    if-eqz p3, :cond_16d

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_154
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_16d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    sget-object p4, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-direct {p4, p3, p2, p1}, Lcom/oplus/card/helper/SmartEngineHelper;->startActivityImp(Ljava/lang/String;Landroid/content/Intent;Landroid/view/View;)V

    goto :goto_154

    :cond_166
    if-eqz p3, :cond_16d

    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-direct {p0, p3, p4, p1}, Lcom/oplus/card/helper/SmartEngineHelper;->startActivityListImpl(Ljava/lang/String;Ljava/util/List;Landroid/view/View;)V

    :cond_16d
    :goto_16d
    return-void
.end method

.method public onStartActivityV2(Landroid/view/View;Lpantanal/app/bean/CardCategory;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lpantanal/app/bean/CardCategory;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lpantanal/app/ILaunchInterceptor$DefaultImpls;->onStartActivityV2(Lpantanal/app/ILaunchInterceptor;Landroid/view/View;Lpantanal/app/bean/CardCategory;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public final setListener(Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;)V
    .registers 2

    sput-object p1, Lcom/oplus/card/helper/SmartEngineHelper;->listener:Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;

    return-void
.end method

.method public final setReverseAnimCardView(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 2

    sput-object p1, Lcom/oplus/card/helper/SmartEngineHelper;->reverseAnimCardView:Lcom/android/launcher3/card/LauncherCardView;

    return-void
.end method
