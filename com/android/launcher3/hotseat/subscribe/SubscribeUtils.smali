.class public final Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubscribeUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscribeUtils.kt\ncom/android/launcher3/hotseat/subscribe/SubscribeUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,380:1\n1#2:381\n766#3:382\n857#3,2:383\n766#3:385\n857#3,2:386\n766#3:388\n857#3,2:389\n766#3:391\n857#3,2:392\n766#3:394\n857#3,2:395\n*S KotlinDebug\n*F\n+ 1 SubscribeUtils.kt\ncom/android/launcher3/hotseat/subscribe/SubscribeUtils\n*L\n246#1:382\n246#1:383,2\n260#1:385\n260#1:386,2\n272#1:388\n272#1:389,2\n284#1:391\n284#1:392,2\n304#1:394\n304#1:395,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;

.field private static final TAG:Ljava/lang/String; = "SubscribeUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bgDataHasThisSubscribeItem(I)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeItem(Ljava/lang/Integer;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static final getBgDataNormalItemCount(Lcom/android/launcher3/Launcher;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataNormalItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public static final getBgDataNormalItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_1d

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz p0, :cond_1d

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    if-eqz p0, :cond_1d

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v5, 0x0

    if-eqz v4, :cond_3f

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v7, -0x65

    if-ne v6, v7, :cond_3f

    move v6, v3

    goto :goto_40

    :cond_3f
    move v6, v5

    :goto_40
    if-eqz v6, :cond_49

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_4a

    :cond_49
    move v3, v5

    :goto_4a
    if-eqz v3, :cond_26

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_50
    invoke-static {p0, v0}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_62

    new-instance p0, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;

    invoke-direct {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;-><init>()V

    invoke-static {v0, p0}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_62
    return-object v0
.end method

.method public static final getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public static final getBgDataSubscribeAndDividerItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz p0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    if-eqz p0, :cond_20

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_20
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v5, 0x0

    if-eqz v4, :cond_42

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v7, -0x65

    if-ne v6, v7, :cond_42

    move v6, v3

    goto :goto_43

    :cond_42
    move v6, v5

    :goto_43
    if-eqz v6, :cond_52

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v6

    if-nez v6, :cond_53

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_52

    goto :goto_53

    :cond_52
    move v3, v5

    :cond_53
    :goto_53
    if-eqz v3, :cond_29

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_59
    invoke-static {p0, v0}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_6b

    new-instance p0, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;

    invoke-direct {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;-><init>()V

    invoke-static {v0, p0}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6b
    return-object v0
.end method

.method public static final getBgDataSubscribeItem(Ljava/lang/Integer;)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    if-nez v0, :cond_14

    return-object v1

    :cond_14
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_44

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_45

    :cond_44
    move-object v5, v1

    :goto_45
    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_4f
    invoke-static {v0, v2}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_62

    const/4 p0, 0x0

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0

    :cond_62
    return-object v1
.end method

.method public static final getBgDataSubscribeItemCount(Lcom/android/launcher3/Launcher;)I
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz p0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    if-eqz p0, :cond_20

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_20
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_42

    iget v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v7, -0x65

    if-ne v6, v7, :cond_42

    move v6, v4

    goto :goto_43

    :cond_42
    move v6, v5

    :goto_43
    if-eqz v6, :cond_4c

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move v4, v5

    :goto_4d
    if-eqz v4, :cond_29

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_53
    invoke-static {p0, v0}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-object p0, v0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public static final getBgDataSubscribeItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz p0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    if-eqz p0, :cond_20

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_20
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_42

    iget v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v7, -0x65

    if-ne v6, v7, :cond_42

    move v6, v4

    goto :goto_43

    :cond_42
    move v6, v5

    :goto_43
    if-eqz v6, :cond_4c

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move v4, v5

    :goto_4d
    if-eqz v4, :cond_29

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_53
    invoke-static {p0, v0}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-object p0, v0

    check-cast p0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final getHotseatExpandItemViews()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v0, v1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getHotseatTypeItemViews(ZZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static final getHotseatNormalItemViews()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getHotseatTypeItemViews(ZZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static final getHotseatSubscribeAllAppsView(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Landroid/view/View;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_31

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "container.getChildAt(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2e

    instance-of v5, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_2e

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeAllAppsItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_2e

    return-object v3

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_31
    return-object v0
.end method

.method public static final getHotseatSubscribeItemView(I)Landroid/view/View;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    if-nez v0, :cond_14

    return-object v1

    :cond_14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_49

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_46

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_46

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v6, :cond_46

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v6, p0, :cond_42

    const/4 v6, 0x1

    goto :goto_43

    :cond_42
    move v6, v3

    :goto_43
    if-eqz v6, :cond_46

    return-object v5

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_49
    return-object v1
.end method

.method public static final getHotseatSubscribeItemViews()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getHotseatTypeItemViews(ZZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static final getHotseatTypeItemViews(ZZZ)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-nez v1, :cond_18

    return-object v0

    :cond_18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_63

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_60

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_60

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_60

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p0, :cond_4a

    invoke-static {v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    if-eqz p1, :cond_55

    invoke-static {v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    if-eqz p2, :cond_60

    invoke-static {v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_63
    return-object v0
.end method

.method public static final getSubscribeEndItem()Landroid/view/View;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_13

    return-object v1

    :cond_13
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v4

    :goto_20
    if-ge v3, v2, :cond_40

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3d

    instance-of v7, v6, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v7, :cond_3d

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v6}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v7

    if-eqz v7, :cond_3d

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ge v4, v6, :cond_3d

    move v5, v3

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_40
    if-le v5, v4, :cond_46

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :cond_46
    return-object v1
.end method

.method public static final getTaskbarExpandItemViews(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v0, v1, p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getTaskbarTypeItemViews(ZZZLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final getTaskbarNormalItemViews(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0, p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getTaskbarTypeItemViews(ZZZLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final getTaskbarSubscribeAllAppsView(Lcom/android/launcher3/taskbar/TaskbarView;)Landroid/view/View;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_31

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "container.getChildAt(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2e

    instance-of v5, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_2e

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeAllAppsItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_2e

    return-object v3

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_31
    return-object v0
.end method

.method public static final getTaskbarSubscribeItemView(ILandroid/content/Context;)Landroid/view/View;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    check-cast p1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconViews()[Landroid/view/View;

    move-result-object p1

    const-string v1, "context as TaskbarActivi…xt).taskbarView.iconViews"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_41

    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3e

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_3e

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v5, p0, :cond_3a

    const/4 v5, 0x1

    goto :goto_3b

    :cond_3a
    move v5, v2

    :goto_3b
    if-eqz v5, :cond_3e

    return-object v4

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_41
    return-object v0
.end method

.method public static final getTaskbarSubscribeItemViews(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getTaskbarTypeItemViews(ZZZLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static final getTaskbarTypeItemViews(ZZZLandroid/content/Context;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_8

    return-object v0

    :cond_8
    check-cast p3, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconViews()[Landroid/view/View;

    move-result-object p3

    const-string v1, "context as TaskbarActivi…xt).taskbarView.iconViews"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p3

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_5b

    aget-object v3, p3, v2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_58

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_58

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p0, :cond_42

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    if-eqz p1, :cond_4d

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isNormalContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    if-eqz p2, :cond_58

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isExpandContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_5b
    return-object v0
.end method

.method public static final hasSubscribeItemInContainer()Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_1e
    if-ge v3, v2, :cond_3b

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_38

    instance-of v5, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_38

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v0, 0x1

    return v0

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_3b
    return v1
.end method

.method public static final isEventOverHotseatSubscribeItem(ILandroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getHotseatSubscribeItemView(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static final isEventOverHotseatTypeItems(ZZZLandroid/view/MotionEvent;Lcom/android/launcher3/OplusDragLayer;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ev"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getHotseatTypeItemViews(ZZZ)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p4, :cond_23

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p4, p1, p3}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static final isEventOverTaskbarSubscribeItem(ILandroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getActivity()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {p0, v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getTaskbarSubscribeItemView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1a

    if-eqz p2, :cond_1a

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static final isEventOverTaskbarTypeItems(ZZZLandroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ev"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_c

    invoke-virtual {p4}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getActivity()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getTaskbarTypeItemViews(ZZZLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p4, :cond_2b

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p4, p1, p3}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public static final updateSubscribeIcon(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "subscribeRegionItems"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    const/4 v1, -0x1

    if-ge v1, v0, :cond_27

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_24

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->getSubscribeIconBitmap(I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_27
    return-void
.end method
