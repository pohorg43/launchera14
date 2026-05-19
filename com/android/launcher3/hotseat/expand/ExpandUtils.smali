.class public final Lcom/android/launcher3/hotseat/expand/ExpandUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;,
        Lcom/android/launcher3/hotseat/expand/ExpandUtils$ViewCellXPositionComparator;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExpandUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpandUtils.kt\ncom/android/launcher3/hotseat/expand/ExpandUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,876:1\n766#2:877\n857#2,2:878\n1855#2,2:880\n766#2:882\n857#2,2:883\n766#2:885\n857#2,2:886\n766#2:888\n857#2,2:889\n766#2:891\n857#2,2:892\n*S KotlinDebug\n*F\n+ 1 ExpandUtils.kt\ncom/android/launcher3/hotseat/expand/ExpandUtils\n*L\n324#1:877\n324#1:878,2\n327#1:880,2\n338#1:882\n338#1:883,2\n347#1:885\n347#1:886,2\n358#1:888\n358#1:889,2\n373#1:891\n373#1:892,2\n*E\n"
    }
.end annotation


# static fields
.field private static final ACTION_DOCKER_EXPAND_ITEM_CLICK:Ljava/lang/String; = "launcher_docker_expend_item_click"

.field public static final CLONE_APP_PKG_SUFFIX:Ljava/lang/String; = "_999"

.field public static final CLONE_APP_USERID:I = 0x3e7

.field public static final EXPAND_ERROR_FORCE_RELOAD_MIN_INTERVAL_TIME:I = 0xfa0

.field private static final EXPAND_ITEM_CLICK_PKG_KEY:Ljava/lang/String; = "click_pkg"

.field private static final EXPAND_STATE_ERROR_CHECK_BACKGROUND_FOLD_CHANGE_DELAY:J = 0x12cL

.field private static final EXPAND_STATE_ERROR_CHECK_DELAY:J = 0x64L

.field public static final EXPAND_USER_SUFFIX:Ljava/lang/String; = "_userid_"

.field public static final INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandUtils;

.field public static final SPLIT_SCREEN_ITEM_SPLIT:Ljava/lang/String; = "_"

.field public static final SPLIT_SCREEN_ITEM_SPLIT_ID:Ljava/lang/String; = "/"

.field public static final SPLIT_SCREEN_ITEM_SPLIT_TASK:Ljava/lang/String; = "|"

.field public static final SPLIT_SCREEN_ITEM_SUFFIX:Ljava/lang/String; = "_splitScreen"

.field private static final TAG:Ljava/lang/String; = "ExpandUtils"

.field private static expandErrorForceReloadDisable:Z

.field private static expandStateErrorCheckRunnable:Ljava/lang/Runnable;

.field private static hotSeatBgColor:I

.field private static lastExpandForceReloadTime:J

.field private static stateCheckForLauncherBackgroundFoldChangeRun:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/expand/ExpandUtils;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandUtils;

    sget-object v0, Lz/a;->c:Lz/a;

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->expandStateErrorCheckRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/launcher3/hotseat/expand/j;->a:Lcom/android/launcher3/hotseat/expand/j;

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->stateCheckForLauncherBackgroundFoldChangeRun:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->stateCheckForLauncherBackgroundFoldChangeRun$lambda$1()V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->expandStateErrorCheckRunnable$lambda$0()V

    return-void
.end method

.method public static synthetic c(Ljava/util/function/Supplier;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->injectExpandItemClicked$lambda$3(Ljava/util/function/Supplier;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final checkExpandErrorState(Lcom/android/launcher3/Launcher;)Z
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_10

    :cond_f
    move-object p0, v0

    :goto_10
    const/4 v1, 0x0

    if-nez p0, :cond_14

    return v1

    :cond_14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const-string v3, "expandStateErrorCheck,childCount:"

    const-string v4, "Hotseat_expand"

    const-string v5, "ExpandUtils"

    invoke-static {v3, v2, v4, v5}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_24

    return v1

    :cond_24
    const v3, 0x7fffffff

    const/4 v6, -0x1

    const/high16 v7, -0x80000000

    move v8, v1

    move v11, v3

    move v9, v6

    move v10, v7

    :goto_2e
    if-ge v8, v2, :cond_5d

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_3b

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    goto :goto_3c

    :cond_3b
    move-object v12, v0

    :goto_3c
    if-eqz v12, :cond_5a

    instance-of v13, v12, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v13, :cond_43

    goto :goto_5a

    :cond_43
    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v14, 0xc9

    if-eq v13, v14, :cond_58

    const/16 v14, 0xca

    if-eq v13, v14, :cond_52

    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    :cond_52
    iget v12, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ge v12, v11, :cond_5a

    move v11, v12

    goto :goto_5a

    :cond_58
    iget v10, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    :cond_5a
    :goto_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_5d
    const-string p0, "expandStateErrorCheck,maxNormalCellX:"

    const-string v0, ",dividerCellX:"

    const-string v2, ",minExpandCellX:"

    invoke-static {p0, v9, v0, v10, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",hasExpandDividerView:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eq v10, v7, :cond_8a

    if-le v10, v9, :cond_84

    if-gt v11, v10, :cond_8a

    :cond_84
    const-string v0, "expandStateErrorCheck divider cellX error"

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_8a
    if-ne v10, v7, :cond_96

    if-eq v9, v6, :cond_96

    if-eq v11, v3, :cond_96

    const-string v0, "expandStateErrorCheck no divider error"

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_96
    return v1
.end method

.method public static final checkExpandErrorStateWithTaskbar(Lcom/android/launcher3/Launcher;)Z
    .registers 22
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v2, 0x0

    if-nez v0, :cond_15

    return v2

    :cond_15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const-string v4, "checkExpandErrorStateWithTaskbar,childCount:"

    const-string v5, "Hotseat_expand"

    const-string v6, "ExpandUtils"

    invoke-static {v4, v3, v5, v6}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_25

    return v2

    :cond_25
    const/4 v4, 0x0

    const v7, 0x7f7fffff  # Float.MAX_VALUE

    const v8, 0x7fffffff

    const/4 v9, -0x1

    const/high16 v10, -0x80000000

    const/4 v11, -0x1

    const/high16 v12, -0x80000000

    const v13, 0x7fffffff

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move v14, v9

    move v15, v10

    move v1, v11

    move v5, v12

    move v6, v13

    move v9, v2

    move v10, v9

    move v11, v4

    move v12, v7

    move v13, v8

    move v4, v10

    move v7, v4

    move v8, v7

    :goto_46
    if-ge v2, v3, :cond_e4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_53

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    goto :goto_55

    :cond_53
    const/16 v19, 0x0

    :goto_55
    move/from16 v20, v3

    move-object/from16 v3, v19

    move-object/from16 v19, v0

    if-eqz v3, :cond_dc

    instance-of v0, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v0, :cond_63

    goto/16 :goto_dc

    :cond_63
    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_74

    add-int/lit8 v4, v4, 0x1

    iget v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-le v0, v1, :cond_dc

    move v1, v0

    goto/16 :goto_dc

    :cond_74
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/lit8 v7, v7, 0x1

    move v5, v0

    goto :goto_dc

    :cond_80
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_b0

    add-int/lit8 v9, v9, 0x1

    iget v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ge v0, v6, :cond_8d

    move v6, v0

    :cond_8d
    if-le v0, v14, :cond_90

    move v14, v0

    :cond_90
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    cmpl-float v0, v0, v11

    if-lez v0, :cond_dc

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    move v11, v0

    goto :goto_dc

    :cond_b0
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_bc

    add-int/lit8 v8, v8, 0x1

    iget v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    move v15, v0

    goto :goto_dc

    :cond_bc
    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_dc

    add-int/lit8 v10, v10, 0x1

    iget v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ge v0, v13, :cond_c9

    move v13, v0

    :cond_c9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getX()F

    move-result v0

    cmpg-float v0, v0, v12

    if-gez v0, :cond_dc

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getX()F

    move-result v0

    move v12, v0

    :cond_dc
    :goto_dc
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    move/from16 v3, v20

    goto/16 :goto_46

    :cond_e4
    move-object/from16 v19, v0

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getBgDataSubscribeItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkExpandErrorStateWithTaskbar"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v12

    const-string v12, ",subscribeCount:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",maxSubscribeCellX:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",subscribeDividerCellX:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",subscribeDividerCount:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",minNormalCellX:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",maxNormalCellX:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",expandDividerCellX:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",expandDividerCount:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",minExpandCellX:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",normalItemCount:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",bgDataSubscribeItemCount:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",expandItemCount:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",maxNormalXPos:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ",minExpandXPos:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v18

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ",container.isInLayout="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->isInLayout()Z

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    move-object/from16 v11, v17

    invoke-static {v3, v11, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-nez v9, :cond_23d

    const-string v0, "checkExpandErrorStateWithTaskbar normal item count error"

    invoke-static {v3, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_23d
    if-lez v4, :cond_249

    add-int/lit8 v12, v4, -0x1

    if-le v1, v12, :cond_249

    const-string v0, "checkExpandErrorStateWithTaskbar subscribe cellX error"

    invoke-static {v3, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_249
    const/high16 v1, -0x80000000

    if-eq v5, v1, :cond_255

    if-lt v5, v6, :cond_255

    const-string v0, "checkExpandErrorStateWithTaskbar subscribeDividerCellX error"

    invoke-static {v3, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_255
    if-lez v4, :cond_264

    const v12, 0x7fffffff

    if-eq v6, v12, :cond_264

    if-ne v5, v1, :cond_264

    const-string v0, "checkExpandErrorStateWithTaskbar no subscribeDivider error"

    invoke-static {v3, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_264
    if-eq v15, v1, :cond_270

    if-le v15, v14, :cond_26a

    if-gt v13, v15, :cond_270

    :cond_26a
    const-string v0, "checkExpandErrorStateWithTaskbar divider cellX error"

    invoke-static {v3, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_270
    if-ne v15, v1, :cond_280

    const/4 v6, -0x1

    if-eq v14, v6, :cond_280

    const v6, 0x7fffffff

    if-eq v13, v6, :cond_280

    const-string v0, "checkExpandErrorStateWithTaskbar no expand divider"

    invoke-static {v3, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_280
    if-eq v15, v1, :cond_28a

    if-nez v10, :cond_28a

    const-string v0, "checkExpandErrorStateWithTaskbar expand divider error"

    invoke-static {v3, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_28a
    if-lez v0, :cond_294

    if-nez v4, :cond_294

    const-string v0, "checkExpandErrorStateWithTaskbar subscribe error"

    invoke-static {v3, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_294
    if-gt v7, v2, :cond_2ab

    if-le v8, v2, :cond_299

    goto :goto_2ab

    :cond_299
    const/high16 v0, -0x80000000

    if-eq v5, v0, :cond_2a9

    if-nez v9, :cond_2a9

    if-nez v10, :cond_2a9

    if-eq v15, v0, :cond_2a9

    const-string v0, "checkExpandErrorStateWithTaskbar subscribeDivider state error"

    invoke-static {v3, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2a9
    const/4 v0, 0x0

    return v0

    :cond_2ab
    :goto_2ab
    const-string v0, "checkExpandErrorStateWithTaskbar divider count error"

    invoke-static {v3, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static final checkFoldedScreenExpandErrorState(Lcom/android/launcher3/Launcher;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "Hotseat_expand"

    const-string v1, "ExpandUtils"

    const-string v2, "checkFoldedScreenExpandErrorState"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    if-eqz p0, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    const/4 v1, 0x0

    if-nez p0, :cond_19

    return v1

    :cond_19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_1e
    if-ge v3, v2, :cond_55

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "container.getChildAt(i)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_52

    instance-of v5, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_52

    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-nez v5, :cond_52

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFoldedScreenExpandErrorState,foldedScreen has unNormal item:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_55
    return v1
.end method

.method public static final checkHotseatNormalItemlpError(Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "child"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataNormalItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v1

    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v2

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v3

    if-eqz v3, :cond_74

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_74

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_74

    iget v3, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    add-int v4, v1, v2

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_74

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExpandUtils#forceReload! checkAndReloadHotseat itemInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",layoutParams:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",normalItemCount:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",subscribeAndDividerCount:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat"

    invoke-static {p1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_74
    return-void
.end method

.method public static final checkItemInfoEffectiveness(Ljava/util/ArrayList;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "checkViews"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v2, 0xca

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkItemInfoEffectiveness error, itemInfo:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hotseat_expand"

    const-string v1, "ExpandUtils"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_4d
    const/4 p0, 0x1

    return p0
.end method

.method public static final clearBgDataExpandItems()V
    .registers 10
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
    if-eqz v0, :cond_92

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v4, "it.model.mBgDataModel.workspaceItems"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v8}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v9

    if-nez v9, :cond_4b

    invoke-static {v8}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v8

    if-eqz v8, :cond_4c

    :cond_4b
    move v6, v7

    :cond_4c
    if-eqz v6, :cond_30

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_52
    invoke-static {v4, v2}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearBgDataExpandItems"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Hotseat_expand"

    const-string v8, "ExpandUtils"

    invoke-static {v5, v8, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-array v8, v7, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v3, v8, v6

    invoke-virtual {v4, v5, v8}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_59

    :cond_8f
    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    :cond_92
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->injectExpandItemClicked$lambda$2(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final ensureHotseatExpandItemParent(Landroid/view/View;)Landroid/view/View;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "child"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5d

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-nez v0, :cond_5d

    if-eqz p0, :cond_5d

    instance-of v1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_5d

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_5d

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    if-eqz p0, :cond_44

    move-object v0, p0

    goto :goto_45

    :cond_44
    move-object v0, v2

    :goto_45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureHotseatExpandItemParent:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Hotseat_expand"

    const-string v3, "ExpandUtils"

    invoke-static {v1, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    instance-of p0, v0, Landroid/view/View;

    if-eqz p0, :cond_64

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    :cond_64
    return-object v2
.end method

.method public static final expandStateErrorCheck(Z)Z
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    const/4 v3, 0x0

    if-nez v2, :cond_1a

    return v3

    :cond_1a
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v4

    const-string v5, "ExpandUtils"

    const-string v6, "Hotseat_expand"

    if-nez v4, :cond_9a

    sget-object v4, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v4}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLauncherFinishBindFlag()Z

    move-result v4

    if-nez v4, :cond_2e

    goto/16 :goto_9a

    :cond_2e
    sget-object v4, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v4}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldScreenFoldedFromDisplay()Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_48

    if-eqz p0, :cond_46

    invoke-static {v2}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->checkFoldedScreenExpandErrorState(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_46

    const-string p0, "expandStateErrorCheck,folded screen expand error"

    invoke-static {v6, v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p0, v7

    goto :goto_5f

    :cond_46
    move p0, v3

    goto :goto_5f

    :cond_48
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p0

    if-eqz p0, :cond_5b

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result p0

    if-nez p0, :cond_5b

    invoke-static {v2}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->checkExpandErrorStateWithTaskbar(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    goto :goto_5f

    :cond_5b
    invoke-static {v2}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->checkExpandErrorState(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    :goto_5f
    const-string v4, "expandStateErrorCheck,expandStateError:"

    const-string v8, ",expandErrorForceReloadDisable:"

    invoke-static {v4, p0, v8}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v8, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->expandErrorForceReloadDisable:Z

    invoke-static {v4, v8, v6, v5}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_97

    sget-boolean v4, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->expandErrorForceReloadDisable:Z

    if-nez v4, :cond_8f

    sget-wide v8, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->lastExpandForceReloadTime:J

    sub-long/2addr v0, v8

    const-wide/16 v8, 0xfa0

    cmp-long v0, v0, v8

    if-gtz v0, :cond_7c

    goto :goto_8f

    :cond_7c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->lastExpandForceReloadTime:J

    const-string v0, "expandStateErrorCheck,expandStateError to forceReload"

    invoke-static {v6, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    goto :goto_99

    :cond_8f
    :goto_8f
    sput-boolean v7, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->expandErrorForceReloadDisable:Z

    const-string p0, "expandStateErrorCheck,Abnormal scene avoid always force reload,return"

    invoke-static {v6, v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_97
    sput-boolean v3, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->expandErrorForceReloadDisable:Z

    :goto_99
    return p0

    :cond_9a
    :goto_9a
    const-string p0, "expandStateErrorCheck,launcher is loading no need check"

    invoke-static {v6, v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private static final expandStateErrorCheckRunnable$lambda$0()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->expandStateErrorCheck(Z)Z

    return-void
.end method

.method public static final getBgDataHotseatExceptExpandItemsCount(Lcom/android/launcher3/Launcher;)I
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v1, "launcher.model.mBgDataModel.workspaceItems"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v5, -0x65

    if-ne v4, v5, :cond_41

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-nez v4, :cond_41

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_41

    const/4 v3, 0x1

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    if-eqz v3, :cond_20

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_48
    invoke-static {v1, v0}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static final getBgDataHotseatExpandAndDividerItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;
    .registers 8
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

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v1, "launcher.model.mBgDataModel.workspaceItems"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v6, -0x65

    if-ne v5, v6, :cond_41

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-nez v5, :cond_42

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_41

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :cond_42
    :goto_42
    if-eqz v3, :cond_20

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_48
    invoke-static {v1, v0}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_5a

    new-instance p0, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;

    invoke-direct {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;-><init>()V

    invoke-static {v0, p0}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5a
    return-object v0
.end method

.method public static final getBgDataHotseatExpandItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;
    .registers 8
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

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v2, "launcher.model.mBgDataModel.workspaceItems"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v6, -0x65

    if-ne v5, v6, :cond_43

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_43

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    :goto_44
    if-eqz v3, :cond_28

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_4a
    invoke-static {p0, v0}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_5c

    new-instance p0, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;

    invoke-direct {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;-><init>()V

    invoke-static {v0, p0}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5c
    return-object v0
.end method

.method public static final getBgDataHotseatItemsCount(Lcom/android/launcher3/Launcher;)I
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    const-string v1, "launcher.model.mBgDataModel.workspaceItems"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_35

    const/4 v3, 0x1

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    if-eqz v3, :cond_20

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3c
    invoke-static {v1, v0}, Li4/v;->f0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static final getCompactPackageName(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "pkgName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_userid_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getCurrentExpandItem()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_17

    return-object v0

    :cond_17
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getBgDataHotseatExpandItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_22
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const-string v2, "launcher.hotseat.mShortcutsAndWidgets"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const-string v3, "getCurrentExpandItem,childCount:"

    const-string v4, "Hotseat_expand"

    const-string v5, "ExpandUtils"

    invoke-static {v3, v2, v4, v5}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v2, :cond_5e

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_48

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    if-eqz v4, :cond_5b

    instance-of v5, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v5, :cond_5b

    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_5e
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6e

    new-instance v1, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;

    invoke-direct {v1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils$CellXPositionComparator;-><init>()V

    invoke-static {v0, v1}, Li4/s;->n(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6e
    return-object v0
.end method

.method public static final getFirstExpandItem(Lcom/android/launcher3/ShortcutAndWidgetContainer;I)Landroid/view/View;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    :goto_c
    if-ge v1, v0, :cond_51

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "container.getChildAt(i)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4e

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4e

    instance-of v5, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v5, :cond_2a

    goto :goto_4e

    :cond_2a
    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_4e

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-lt v3, v5, :cond_4e

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->findExpandItemByExpandType(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_4b

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->findExpandItemByExpandType(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4e

    :cond_4b
    iget v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    move v2, v1

    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_51
    if-ge v2, v0, :cond_58

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_59

    :cond_58
    const/4 p0, 0x0

    :goto_59
    return-object p0
.end method

.method public static final getHotseatBgDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, 0x7f0604ec

    goto :goto_1a

    :cond_17
    const v0, 0x7f0604ef

    :goto_1a
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_32

    :cond_1f
    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_2b

    const v0, 0x7f0604ee

    goto :goto_2e

    :cond_2b
    const v0, 0x7f0604ed

    :goto_2e
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_32
    sput v0, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->hotSeatBgColor:I

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_46

    const v0, 0x7f0806a4

    goto :goto_49

    :cond_46
    const v0, 0x7f0806a5

    :goto_49
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string/jumbo v0, "{\n            context.ge…ark_wallpapaer)\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6d

    :cond_54
    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_60

    const v0, 0x7f0806a3

    goto :goto_63

    :cond_60
    const v0, 0x7f0806a2

    :goto_63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string/jumbo v0, "{\n            context.ge…ble.hotseat_bg)\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6d
    return-object p0
.end method

.method public static final getRealPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "pkg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_userid_"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v1, v2}, Lk7/q;->F(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1f
    return-object p0
.end method

.method public static final getUserId(Ljava/lang/String;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "pkg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_userid_"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    if-eqz v2, :cond_4f

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v1, v2}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4f

    :try_start_20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_34

    goto :goto_39

    :catchall_34
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_39
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_46

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_46
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0

    :cond_4f
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public static final hasNormalItemInLeftArea()Z
    .registers 7
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
    if-ge v3, v2, :cond_55

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    if-eqz v4, :cond_52

    instance-of v5, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_52

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasNormalItemInLeftArea:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ExpandUtils"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_52

    const/4 v0, 0x1

    return v0

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_55
    return v1
.end method

.method public static final injectAppConnectItemClicked(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;)Z
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "Unable to start service. tag="

    const-string v1, " intent="

    const-string/jumbo v2, "start Service end."

    const-string v3, "itemInfo"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v4, 0x0

    if-eqz v3, :cond_1c6

    sget-object v3, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getAppConnectList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-eqz v5, :cond_1c6

    move-object v5, p0

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v5, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    if-eqz v5, :cond_31

    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    goto :goto_32

    :cond_31
    move-object v5, v7

    :goto_32
    if-nez v5, :cond_35

    return v4

    :cond_35
    iget-object v8, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCompactPackageName(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    invoke-static {v5, v8}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->findExpandItemByExpandType(Ljava/lang/String;I)Z

    move-result v8

    const-string v9, "Hotseat_expand"

    const-string v10, "ExpandUtils"

    if-eqz v8, :cond_1c1

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getAppConnectDataItemMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;

    if-nez v3, :cond_5b

    return v4

    :cond_5b
    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_62

    return v4

    :cond_62
    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getStartType()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "startService"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c6

    :try_start_6f
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v6}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->clearDockerAppConnectData(Z)V
    :try_end_75
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_6f .. :try_end_75} :catch_13e
    .catch Ljava/lang/SecurityException; {:try_start_6f .. :try_end_75} :catch_f3
    .catch Ljava/lang/IllegalStateException; {:try_start_6f .. :try_end_75} :catch_a7
    .catchall {:try_start_6f .. :try_end_75} :catchall_a4

    invoke-static {v9, v10, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_7f

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_80

    :cond_7f
    move-object p1, v7

    :goto_80
    if-eqz p1, :cond_89

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_8a

    :cond_89
    move-object p0, v7

    :goto_8a
    if-eqz p0, :cond_91

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p1

    goto :goto_92

    :cond_91
    move-object p1, v7

    :goto_92
    if-nez p1, :cond_95

    goto :goto_98

    :cond_95
    invoke-virtual {p1, v6}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setClicked(Z)V

    :goto_98
    if-eqz p0, :cond_9f

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    goto :goto_a0

    :cond_9f
    move-object p0, v7

    :goto_a0
    if-nez p0, :cond_18b

    goto/16 :goto_18e

    :catchall_a4
    move-exception p0

    goto/16 :goto_18f

    :catch_a7
    move-exception v4

    :try_start_a8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c4
    .catchall {:try_start_a8 .. :try_end_c4} :catchall_a4

    invoke-static {v9, v10, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_ce

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_cf

    :cond_ce
    move-object p1, v7

    :goto_cf
    if-eqz p1, :cond_d8

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_d9

    :cond_d8
    move-object p0, v7

    :goto_d9
    if-eqz p0, :cond_e0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p1

    goto :goto_e1

    :cond_e0
    move-object p1, v7

    :goto_e1
    if-nez p1, :cond_e4

    goto :goto_e7

    :cond_e4
    invoke-virtual {p1, v6}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setClicked(Z)V

    :goto_e7
    if-eqz p0, :cond_ee

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    goto :goto_ef

    :cond_ee
    move-object p0, v7

    :goto_ef
    if-nez p0, :cond_18b

    goto/16 :goto_18e

    :catch_f3
    move-exception v4

    :try_start_f4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_110
    .catchall {:try_start_f4 .. :try_end_110} :catchall_a4

    invoke-static {v9, v10, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_11a

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_11b

    :cond_11a
    move-object p1, v7

    :goto_11b
    if-eqz p1, :cond_124

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_125

    :cond_124
    move-object p0, v7

    :goto_125
    if-eqz p0, :cond_12c

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p1

    goto :goto_12d

    :cond_12c
    move-object p1, v7

    :goto_12d
    if-nez p1, :cond_130

    goto :goto_133

    :cond_130
    invoke-virtual {p1, v6}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setClicked(Z)V

    :goto_133
    if-eqz p0, :cond_13a

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    goto :goto_13b

    :cond_13a
    move-object p0, v7

    :goto_13b
    if-nez p0, :cond_18b

    goto :goto_18e

    :catch_13e
    move-exception v0

    :try_start_13f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to found service. tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15d
    .catchall {:try_start_13f .. :try_end_15d} :catchall_a4

    invoke-static {v9, v10, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_167

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_168

    :cond_167
    move-object p1, v7

    :goto_168
    if-eqz p1, :cond_171

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_172

    :cond_171
    move-object p0, v7

    :goto_172
    if-eqz p0, :cond_179

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p1

    goto :goto_17a

    :cond_179
    move-object p1, v7

    :goto_17a
    if-nez p1, :cond_17d

    goto :goto_180

    :cond_17d
    invoke-virtual {p1, v6}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setClicked(Z)V

    :goto_180
    if-eqz p0, :cond_187

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    goto :goto_188

    :cond_187
    move-object p0, v7

    :goto_188
    if-nez p0, :cond_18b

    goto :goto_18e

    :cond_18b
    invoke-virtual {p0, v7}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V

    :goto_18e
    return v6

    :goto_18f
    invoke-static {v9, v10, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_199

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_19a

    :cond_199
    move-object p1, v7

    :goto_19a
    if-eqz p1, :cond_1a3

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_1a4

    :cond_1a3
    move-object p1, v7

    :goto_1a4
    if-eqz p1, :cond_1ab

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v0

    goto :goto_1ac

    :cond_1ab
    move-object v0, v7

    :goto_1ac
    if-nez v0, :cond_1af

    goto :goto_1b2

    :cond_1af
    invoke-virtual {v0, v6}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setClicked(Z)V

    :goto_1b2
    if-eqz p1, :cond_1b9

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p1

    goto :goto_1ba

    :cond_1b9
    move-object p1, v7

    :goto_1ba
    if-nez p1, :cond_1bd

    goto :goto_1c0

    :cond_1bd
    invoke-virtual {p1, v7}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V

    :goto_1c0
    throw p0

    :cond_1c1
    const-string p0, "did not find item in app connect list. package:"

    invoke-static {p0, v5, v9, v10}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c6
    return v4
.end method

.method public static final injectExpandItemClicked(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;)Z
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    :cond_12
    instance-of v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_130

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v2, "ExpandUtils"

    if-eqz v0, :cond_58

    const-string v0, "injectExpandItemClicked, IsMultipleTasks? : "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, p0

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-boolean v4, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsMultipleTasks:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ; IsPocketStudioVersion? : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsPocketStudioVersion:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ; isSupportPocketStudioLocal? : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isSupport()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ; TaskID is: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mPkgNamesForExpandItem:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-boolean v3, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsMultipleTasks:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_ae

    invoke-static {}, Landroidx/core/app/ActivityOptionsCompat;->makeBasic()Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p0

    const-string/jumbo v2, "makeBasic()"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    aput-object v5, v3, v1

    iget-object v5, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task2:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-static {v3}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-array v8, v2, [I

    iget-object v3, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aput v5, v8, v1

    iget-object v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task2:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aput v5, v8, v4

    new-array v9, v2, [I

    iget v2, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    aput v2, v9, v1

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    aput v0, v9, v4

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v12, 0x10

    const/4 v13, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v13}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->start$default(Landroid/content/Context;Ljava/util/List;[I[IILandroid/os/Bundle;ILjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_ae
    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isSupport()Z

    move-result v3

    if-eqz v3, :cond_130

    iget-boolean v3, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsPocketStudioVersion:Z

    if-eqz v3, :cond_130

    iget-object v3, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task1:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v3, :cond_12a

    invoke-static {v3}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v3

    if-eqz v3, :cond_12a

    iget-object v3, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v3}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_dd

    iget-object v3, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_d6

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_d7

    :cond_d6
    move-object v3, v5

    :goto_d7
    invoke-static {v3}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->sameComponent(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_12a

    :cond_dd
    new-instance v3, Lcom/android/launcher/layout/d;

    invoke-direct {v3, p0}, Lcom/android/launcher/layout/d;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    instance-of v6, p1, Lcom/android/launcher/Launcher;

    if-eqz v6, :cond_102

    move-object v6, p1

    check-cast v6, Lcom/android/launcher/Launcher;

    invoke-static {v6}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher/Launcher;)Z

    move-result v7

    if-eqz v7, :cond_102

    const-string p0, "ShellTransitionRecentAnimRunning TRUE, interrupt animation and pending start PocketStudio\'s Task"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p0

    const/4 p1, 0x5

    new-instance v0, Lcom/android/launcher/guide/side/e;

    invoke-direct {v0, v3}, Lcom/android/launcher/guide/side/e;-><init>(Ljava/util/function/Supplier;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    return v4

    :cond_102
    invoke-virtual {v3}, Lcom/android/launcher/layout/d;->get()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "result.get()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_115

    return v4

    :cond_115
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v2

    if-eqz v2, :cond_130

    iput-object v5, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "context.applicationContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    goto :goto_130

    :cond_12a
    const-string p0, "error when hasEmbedded"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_130
    :goto_130
    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->injectAppConnectItemClicked(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static final injectExpandItemClicked$lambda$2(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "$itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final injectExpandItemClicked$lambda$3(Ljava/util/function/Supplier;Ljava/lang/Boolean;)V
    .registers 3

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    return-void
.end method

.method public static final isAvailableAddToExpandPkg(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public static final isExpandItemShouldNotAddInFoldedSmallScreen(ILandroid/view/View;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/16 v0, -0x65

    if-eq p0, v0, :cond_f

    return v1

    :cond_f
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    if-nez p0, :cond_1a

    return v1

    :cond_1a
    instance-of p1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez p1, :cond_1f

    return v1

    :cond_1f
    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_37

    :cond_2d
    sget-object p0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {p0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldScreenFoldedFromDisplay()Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 p0, 0x1

    return p0

    :cond_37
    return v1
.end method

.method public static final isHotseatVisible(Lcom/android/launcher3/Launcher;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    if-eqz v0, :cond_24

    goto :goto_35

    :cond_24
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_2b

    return v1

    :cond_2b
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_34

    return v1

    :cond_34
    return v2

    :cond_35
    :goto_35
    return v1
.end method

.method public static final isNeedUpdateAppConnectExpandItem(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "pkg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->getShowExpandGuidTipType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandConfig;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getAppConnectPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public static final printBgDataExpandItemAction(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_29
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hotseat_expand"

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public static final printExpandData(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pkgList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    invoke-static {v1, p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_46

    new-array v0, v2, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method public static final sendBroadCastFeedbackExpandItemClickEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "targetPkg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickPkg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "launcher_docker_expend_item_click"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "click_pkg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send expand item click broadcast,targetPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",clickPkg:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat_expand"

    const-string v0, "ExpandUtils"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final startExpandStateErrorCheck()V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/oplus/util/OplusExecutors;->DOCKER_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->expandStateErrorCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->expandStateErrorCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final startSubscribeStateErrorCheckRunnable()V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/util/OplusExecutors;->DOCKER_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->stateCheckForLauncherBackgroundFoldChangeRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->stateCheckForLauncherBackgroundFoldChangeRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final stateCheckForLauncherBackgroundFoldChange()Z
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v2

    const-string v3, "ExpandUtils"

    const-string v4, "Hotseat_expand"

    if-eqz v2, :cond_19

    const-string/jumbo v0, "stateCheckForLauncherBackgroundFoldChange,folded screen"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_19
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v2

    if-nez v2, :cond_d6

    sget-object v2, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLauncherFinishBindFlag()Z

    move-result v5

    if-nez v5, :cond_29

    goto/16 :goto_d6

    :cond_29
    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v2

    if-nez v2, :cond_36

    const-string/jumbo v0, "stateCheckForLauncherBackgroundFoldChange,unable update expand item,return"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_36
    invoke-static {}, Lcom/android/common/util/DisplayUtils;->isLauncherMatchFoldingMode()Z

    move-result v2

    if-nez v2, :cond_43

    const-string/jumbo v0, "stateCheckForLauncherBackgroundFoldChange,!isLauncherMatchFoldingMode return"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_43
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_4d

    iget-object v2, v2, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_4e

    :cond_4d
    move-object v2, v5

    :goto_4e
    if-nez v2, :cond_51

    return v1

    :cond_51
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const-string/jumbo v7, "stateCheckForLauncherBackgroundFoldChange,childCount:"

    invoke-static {v7, v6, v4, v3}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_5e

    return v1

    :cond_5e
    move v7, v1

    move v8, v7

    move v9, v8

    :goto_61
    if-ge v7, v6, :cond_8c

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_6e

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    goto :goto_6f

    :cond_6e
    move-object v10, v5

    :goto_6f
    if-eqz v10, :cond_89

    instance-of v11, v10, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v11, :cond_76

    goto :goto_89

    :cond_76
    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v10}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v11

    if-eqz v11, :cond_81

    add-int/lit8 v8, v8, 0x1

    goto :goto_89

    :cond_81
    invoke-static {v10}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v10

    if-eqz v10, :cond_89

    add-int/lit8 v9, v9, 0x1

    :cond_89
    :goto_89
    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    :cond_8c
    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getBgDataSubscribeItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getBgDataHotseatExpandItems(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string/jumbo v6, "stateCheckForLauncherBackgroundFoldChange,bgDataSubscribeItemCount:"

    const-string v7, ",bgDataExpandItemCount:"

    const-string v10, ",subscribeCount:"

    invoke-static {v6, v2, v7, v5, v10}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",expandCount:"

    invoke-static {v6, v8, v7, v9}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v3, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    if-nez v8, :cond_c3

    if-lez v2, :cond_c3

    const-string/jumbo v1, "stateCheckForLauncherBackgroundFoldChange subscribe error,forceReload!!!"

    invoke-static {v4, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return v6

    :cond_c3
    if-nez v9, :cond_d5

    if-lez v5, :cond_d5

    const-string/jumbo v1, "stateCheckForLauncherBackgroundFoldChange expand error,forceReload!!!"

    invoke-static {v4, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return v6

    :cond_d5
    return v1

    :cond_d6
    :goto_d6
    const-string/jumbo v0, "stateCheckForLauncherBackgroundFoldChange,loading return"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static final stateCheckForLauncherBackgroundFoldChangeRun$lambda$1()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->stateCheckForLauncherBackgroundFoldChange()Z

    return-void
.end method

.method public static final updateAllChildLayoutParams(Lcom/android/launcher3/OplusHotseat;)V
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_3f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_3c

    instance-of v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v4, :cond_3c

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v7

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v8

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_3f
    return-void
.end method

.method public static final updateNumShownHotseatIconsIfNecessary(Lcom/android/launcher3/OplusDeviceProfile;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    if-nez p0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->updateFoldScreenNumShownHotseatIcons()Z

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/OplusHotseat;->updateGridSize(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFoldScreenNumShownHotseatIcons,numShownHotseatIcons:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    const-string v1, "Hotseat_expand"

    const-string v2, "ExpandUtils"

    invoke-static {v0, p0, v1, v2}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_39
    return-void
.end method


# virtual methods
.method public final getExpandErrorForceReloadDisable()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->expandErrorForceReloadDisable:Z

    return p0
.end method

.method public final getHotSeatBgColor()I
    .registers 1

    sget p0, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->hotSeatBgColor:I

    return p0
.end method

.method public final getLastExpandForceReloadTime()J
    .registers 3

    sget-wide v0, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->lastExpandForceReloadTime:J

    return-wide v0
.end method

.method public final setExpandErrorForceReloadDisable(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->expandErrorForceReloadDisable:Z

    return-void
.end method

.method public final setHotSeatBgColor(I)V
    .registers 2

    sput p1, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->hotSeatBgColor:I

    return-void
.end method

.method public final setLastExpandForceReloadTime(J)V
    .registers 3

    sput-wide p1, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->lastExpandForceReloadTime:J

    return-void
.end method
