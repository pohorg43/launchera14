.class public final Lcom/android/launcher3/hotseat/HotseatDividerHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHotseatDividerHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HotseatDividerHelper.kt\ncom/android/launcher3/hotseat/HotseatDividerHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,495:1\n766#2:496\n857#2,2:497\n766#2:499\n857#2,2:500\n766#2:502\n857#2,2:503\n*S KotlinDebug\n*F\n+ 1 HotseatDividerHelper.kt\ncom/android/launcher3/hotseat/HotseatDividerHelper\n*L\n449#1:496\n449#1:497,2\n467#1:499\n467#1:500,2\n485#1:502\n485#1:503,2\n*E\n"
    }
.end annotation


# static fields
.field private static final DIVIDER_STATE_CHECK_FUTURE_TIMEOUT:J = 0x3e8L

.field public static final INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper;

.field private static final REMOVE_DIVIDER_RUNNABLE_DELAY:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "HotseatDividerHelper"

.field private static addDividerRunnable:Ljava/lang/Runnable;

.field private static addedDividerForDragInFlag:Z

.field private static final dividerBgHeight$delegate:Lh4/f;

.field private static final dividerBgWidth$delegate:Lh4/f;

.field private static final dividerWidth$delegate:Lh4/f;

.field private static expandDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

.field private static removeDividerRunnable:Ljava/lang/Runnable;

.field private static subscribeDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper;

    sget-object v0, Lcom/android/launcher3/hotseat/a;->a:Lcom/android/launcher3/hotseat/a;

    sput-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->removeDividerRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper$dividerWidth$2;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper$dividerWidth$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->dividerWidth$delegate:Lh4/f;

    sget-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper$dividerBgWidth$2;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper$dividerBgWidth$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->dividerBgWidth$delegate:Lh4/f;

    sget-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper$dividerBgHeight$2;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper$dividerBgHeight$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->dividerBgHeight$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->dividerViewStateCheckInner$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final addDividerAndUpdateExpandItemWhenDragEnd()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->addDividerRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->addDividerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final addDividerViewIfNecessary()V
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    const-string v1, "Hotseat_expand"

    const-string v2, "HotseatDividerHelper"

    const-string v3, "addDividerViewIfNecessary"

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView()Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v0, "addDividerViewIfNecessary,no need"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_3b
    const/4 v9, 0x1

    if-ge v5, v4, :cond_68

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_65

    instance-of v11, v10, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v11, :cond_65

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v10}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v11

    if-eqz v11, :cond_56

    move v6, v9

    goto :goto_65

    :cond_56
    invoke-static {v10}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v11

    if-eqz v11, :cond_5e

    move v7, v9

    goto :goto_65

    :cond_5e
    invoke-static {v10}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v10

    if-eqz v10, :cond_65

    move v8, v9

    :cond_65
    :goto_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    :cond_68
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_b0

    if-eqz v6, :cond_73

    if-nez v7, :cond_79

    :cond_73
    if-eqz v6, :cond_b0

    if-eqz v8, :cond_b0

    if-nez v7, :cond_b0

    :cond_79
    sput-boolean v9, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->addedDividerForDragInFlag:Z

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->createSubscribeDividerView(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/hotseat/HotseatDividerView;

    sget-object v3, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->subscribeDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    if-eqz v3, :cond_87

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    goto :goto_88

    :cond_87
    move-object v3, v4

    :goto_88
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->subscribeDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    instance-of v7, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v7, :cond_96

    move-object v8, v3

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_97

    :cond_96
    move-object v8, v4

    :goto_97
    invoke-interface {v5, v6, v8}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v7, :cond_a9

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_aa

    :cond_a9
    move-object v3, v4

    :goto_aa
    invoke-virtual {v5, v6, v3, v9}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    sget-object v3, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->subscribeDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    goto :goto_f2

    :cond_b0
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView()Z

    move-result v3

    if-nez v3, :cond_f1

    if-eqz v7, :cond_f1

    if-eqz v8, :cond_f1

    sput-boolean v9, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->addedDividerForDragInFlag:Z

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->createExpandDividerView(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/hotseat/HotseatDividerView;

    sget-object v3, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->expandDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    if-eqz v3, :cond_c8

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    goto :goto_c9

    :cond_c8
    move-object v3, v4

    :goto_c9
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->expandDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    instance-of v7, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v7, :cond_d7

    move-object v8, v3

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_d8

    :cond_d7
    move-object v8, v4

    :goto_d8
    invoke-interface {v5, v6, v8}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v7, :cond_ea

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_eb

    :cond_ea
    move-object v3, v4

    :goto_eb
    invoke-virtual {v5, v6, v3, v9}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    sget-object v3, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->expandDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    goto :goto_f2

    :cond_f1
    move-object v3, v4

    :goto_f2
    if-eqz v3, :cond_f9

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    goto :goto_fa

    :cond_f9
    move-object v5, v4

    :goto_fa
    const-string v6, "addDividerViewIfNecessary,add divider:"

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_106

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    :cond_106
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_148

    instance-of v1, v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v1, :cond_148

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v8

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v9

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    iget-object v12, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    :cond_148
    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->removeDividerRunnable$lambda$0()V

    return-void
.end method

.method public static final buildExpandDividerItem(I)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    const/16 v1, 0xc9

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const/16 p0, -0x65

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    return-object v0
.end method

.method public static final buildSubscribeDividerItem(I)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    const/16 v1, 0xcb

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const/16 p0, -0x65

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    return-object v0
.end method

.method public static synthetic c(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->initAddDividerRunnable$lambda$3(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static final createExpandDividerView(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/hotseat/HotseatDividerView;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/hotseat/HotseatDividerView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->expandDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExceptExpandItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result p0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->buildExpandDividerItem(I)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->expandDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    if-nez v0, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :goto_24
    sget-object p0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->expandDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.hotseat.HotseatDividerView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final createSubscribeDividerView(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/hotseat/HotseatDividerView;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/hotseat/HotseatDividerView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->subscribeDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getSubscribeItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result p0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->buildSubscribeDividerItem(I)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->subscribeDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    if-nez v0, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :goto_24
    sget-object p0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->subscribeDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.hotseat.HotseatDividerView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher/Launcher;Ljava/util/Map;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->dividerViewStateCheckInner$lambda$4(Lcom/android/launcher/Launcher;Ljava/util/Map;)V

    return-void
.end method

.method private final varargs dividerViewStateCheckInner(Lcom/android/launcher/Launcher;[I)Z
    .registers 8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    goto :goto_19

    :cond_14
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_19
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_2c

    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2c
    new-instance v0, Lcom/android/launcher/widget/b;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher/Launcher;Ljava/util/Map;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "HotseatDividerHelper"

    if-eqz p1, :cond_45

    invoke-virtual {v0}, Lcom/android/launcher/widget/b;->run()V

    goto :goto_67

    :cond_45
    :try_start_45
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v0, p1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    const-wide/16 v3, 0x3e8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_56

    goto :goto_5b

    :catchall_56
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_5b
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_67

    const-string/jumbo v0, "time out -- error: "

    invoke-static {v0, p1, v2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_67
    :goto_67
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper$dividerViewStateCheckInner$checkFailed$1;

    invoke-direct {v0, p2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper$dividerViewStateCheckInner$checkFailed$1;-><init>([I)V

    new-instance v3, Lcom/android/launcher/folder/download/model/c;

    const/4 v4, 0x6

    invoke-direct {v3, v0, v4}, Lcom/android/launcher/folder/download/model/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8b

    move v1, v0

    :cond_8b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dividerViewStateCheck failed="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",dividerTypes="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat_expand"

    invoke-static {p1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method private static final dividerViewStateCheckInner$lambda$4(Lcom/android/launcher/Launcher;Ljava/util/Map;)V
    .registers 6

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$checkMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_43

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/hotseat/HotseatDividerView;

    if-eqz v3, :cond_40

    check-cast v2, Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_40

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_43
    return-void
.end method

.method private static final dividerViewStateCheckInner$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final getDividerCount()I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v0

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView()Z

    move-result v1

    if-eqz v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    :cond_c
    return v0
.end method

.method public static final getDividerViewWidth()I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->dockerCompactArrangement()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->iconSizeLargerThanDefaultSize(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070930

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_39

    :cond_2a
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07092f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_39
    return v0

    :cond_3a
    sget-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerWidth()I

    move-result v0

    return v0
.end method

.method public static final getExpandDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->expandDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    return-object v0
.end method

.method public static final getSubscribeDividerInBgData()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    if-eqz v0, :cond_5a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v3, "it.model.mBgDataModel.workspaceItems"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_47
    invoke-static {v3, v2}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5a

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    return-object v0

    :cond_5a
    return-object v1
.end method

.method public static final getSubscribeDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->subscribeDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    return-object v0
.end method

.method public static final hasExpandDividerInBgData()Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v3, "it.model.mBgDataModel.workspaceItems"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_47
    invoke-static {v3, v2}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "hasExpandDividerInBgData dividerItemSize:"

    const-string v3, "Hotseat_expand"

    const-string v4, "HotseatDividerHelper"

    invoke-static {v2, v0, v3, v4}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_5a

    const/4 v1, 0x1

    :cond_5a
    return v1
.end method

.method public static final hasExpandDividerView()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView(Z)Z

    move-result v0

    return v0
.end method

.method public static final hasExpandDividerView(Z)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    const/4 v2, 0x1

    if-eqz p0, :cond_28

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_28

    sget-object p0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper;

    new-array v3, v2, [I

    const/16 v4, 0xc9

    aput v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->dividerViewStateCheckInner(Lcom/android/launcher/Launcher;[I)Z

    move-result p0

    goto :goto_2d

    :cond_28
    if-nez p0, :cond_2c

    move p0, v2

    goto :goto_2d

    :cond_2c
    move p0, v1

    :goto_2d
    sget-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->expandDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->isSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz p0, :cond_3a

    move v1, v2

    :cond_3a
    return v1
.end method

.method public static final hasSubscribeDividerInBgData()Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v3, "it.model.mBgDataModel.workspaceItems"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_47
    invoke-static {v3, v2}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "hasSubscribeDividerInBgData dividerItemSize:"

    const-string v3, "Hotseat_expand"

    const-string v4, "HotseatDividerHelper"

    invoke-static {v2, v0, v3, v4}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_5a

    const/4 v1, 0x1

    :cond_5a
    return v1
.end method

.method public static final hasSubscribeDividerView()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView(Z)Z

    move-result v0

    return v0
.end method

.method public static final hasSubscribeDividerView(Z)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    const/4 v2, 0x1

    if-eqz p0, :cond_28

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_28

    sget-object p0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper;

    new-array v3, v2, [I

    const/16 v4, 0xcb

    aput v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->dividerViewStateCheckInner(Lcom/android/launcher/Launcher;[I)Z

    move-result p0

    goto :goto_2d

    :cond_28
    if-nez p0, :cond_2c

    move p0, v2

    goto :goto_2d

    :cond_2c
    move p0, v1

    :goto_2d
    sget-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->subscribeDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    if-eqz v0, :cond_34

    if-eqz p0, :cond_34

    move v1, v2

    :cond_34
    return v1
.end method

.method public static final initAddDividerRunnable(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v0

    if-nez v0, :cond_17

    const-string p0, "Hotseat_expand"

    const-string v0, "HotseatDividerHelper"

    const-string v1, "initAddDividerRunnable not finish bind return"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_2a

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    sput-object v0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->addDividerRunnable:Ljava/lang/Runnable;

    :cond_2a
    return-void
.end method

.method private static final initAddDividerRunnable$lambda$3(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    const-string v0, "$itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAddDividerRunnable,itemInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "HotseatDividerHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->addDividerViewIfNecessary()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x32

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->checkAndRemoveDuplicateItem(Lcom/android/launcher3/model/data/ItemInfo;ZJ)V

    return-void
.end method

.method public static final isNeedAddDivider()Z
    .registers 11
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

    move v4, v3

    move v5, v4

    :goto_20
    const/4 v6, 0x1

    if-ge v3, v2, :cond_5c

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_59

    instance-of v8, v7, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v8, :cond_59

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isNeedShowDivider:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Hotseat_expand"

    const-string v10, "HotseatDividerHelper"

    invoke-static {v9, v10, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v7}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v8

    if-eqz v8, :cond_52

    move v5, v6

    :cond_52
    invoke-static {v7}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v7

    if-eqz v7, :cond_59

    move v4, v6

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_5c
    if-eqz v4, :cond_61

    if-eqz v5, :cond_61

    move v1, v6

    :cond_61
    return v1
.end method

.method public static final removeDividerAfterDeleteView()V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "Hotseat_expand"

    const-string v1, "HotseatDividerHelper"

    const-string v2, "check and removeDividerViewIfNecessary"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->removeDividerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->removeDividerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final removeDividerRunnable$lambda$0()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->removeDividerViewIfNecessary()V

    return-void
.end method

.method public static final removeDividerViewIfNecessary()V
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const-string v2, "HotseatDividerHelper"

    const-string v3, "Hotseat_expand"

    if-nez v1, :cond_30

    const-string v1, "hotseat has no child to requestLayout"

    invoke-static {v3, v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_30
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView()Z

    move-result v1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v4

    if-nez v1, :cond_43

    if-nez v4, :cond_43

    const-string/jumbo v0, "removeDividerViewIfNecessary,no need"

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeDividerViewIfNecessary,hasExpandDivider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",hasSubscribeDivider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_af

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->hasExceptSubscribeItemInRightArea()Z

    move-result v4

    if-nez v4, :cond_af

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    sget-object v8, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->subscribeDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-virtual {v4, v8}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    sget-object v4, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->subscribeDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    if-eqz v4, :cond_7d

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    goto :goto_7e

    :cond_7d
    move-object v4, v7

    :goto_7e
    if-eqz v4, :cond_ac

    instance-of v8, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v8, :cond_ac

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeSubscribeDividerView,right now:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v2, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    new-array v10, v6, [Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v4, v10, v5

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_ac
    invoke-static {v7}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    :cond_af
    if-eqz v1, :cond_fb

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->hasNormalItemInLeftArea()Z

    move-result v1

    if-nez v1, :cond_fb

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->expandDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    sget-object v1, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->expandDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    if-eqz v1, :cond_c9

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto :goto_ca

    :cond_c9
    move-object v1, v7

    :goto_ca
    if-eqz v1, :cond_f8

    instance-of v4, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_f8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeExpandDividerView,right now:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-array v3, v6, [Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v1, v3, v5

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_f8
    invoke-static {v7}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    :cond_fb
    return-void
.end method

.method public static final setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setExpandDividerView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->expandDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    return-void
.end method

.method public static final setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSubscribeDividerView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->subscribeDividerView:Lcom/android/launcher3/hotseat/HotseatDividerView;

    return-void
.end method


# virtual methods
.method public final getAddedDividerForDragInFlag()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->addedDividerForDragInFlag:Z

    return p0
.end method

.method public final getDividerBgHeight()I
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->dividerBgHeight$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getDividerBgWidth()I
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->dividerBgWidth$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getDividerWidth()I
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->dividerWidth$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final setAddedDividerForDragInFlag(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->addedDividerForDragInFlag:Z

    return-void
.end method
