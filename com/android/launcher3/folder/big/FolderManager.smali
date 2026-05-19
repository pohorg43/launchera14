.class public final Lcom/android/launcher3/folder/big/FolderManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFolderManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderManager.kt\ncom/android/launcher3/folder/big/FolderManager\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,418:1\n31#2:419\n94#2,14:420\n*S KotlinDebug\n*F\n+ 1 FolderManager.kt\ncom/android/launcher3/folder/big/FolderManager\n*L\n406#1:419\n406#1:420,14\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/folder/big/FolderManager;

.field public static final RESIZE_FOLDER_ICON_ENABLE:Z = false

.field private static final SNAP_ADDED_PAGE_DELAY:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "FolderManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/folder/big/FolderManager;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/FolderManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/big/FolderManager;->INSTANCE:Lcom/android/launcher3/folder/big/FolderManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/folder/big/FolderManager;->toSmallFolder$lambda$4(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderManager;->checkPageToSmall$lambda$2(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderManager;->fillEmptyCellIfNeed$lambda$6(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method private final checkPageToSmall(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    if-lez v0, :cond_24

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->setDoClosingAnim(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    new-instance v0, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/exceptionmonitor/util/b;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->setMScrollEndRunnable(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->snapReset(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    goto :goto_27

    :cond_24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/big/FolderManager;->toSmallFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V

    :goto_27
    return-void
.end method

.method private static final checkPageToSmall$lambda$2(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 5

    const-string v0, "$bigFolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$folderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cellLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->setDoClosingAnim(Z)V

    sget-object v0, Lcom/android/launcher3/folder/big/FolderManager;->INSTANCE:Lcom/android/launcher3/folder/big/FolderManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderManager;->toSmallFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V

    return-void
.end method

.method public static final convertFolder(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folderIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/folder/big/FolderManager;->INSTANCE:Lcom/android/launcher3/folder/big/FolderManager;

    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v1

    const-string v2, "FolderManager"

    if-nez v1, :cond_15

    const-string p0, "convertFolder: nonsupport convert"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    sget-object v1, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v1}, Lcom/android/common/util/ClickUtils;->shortClickable()Z

    move-result v1

    if-nez v1, :cond_25

    const-string p0, "Folder"

    const-string v0, "convertFolder, shortClick, return."

    invoke-static {p0, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getOppositeView()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->isSysFolder:Z

    iput-boolean v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->isSysFolder:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_41

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_42

    :cond_41
    move-object v3, v4

    :goto_42
    instance-of v5, v3, Lcom/android/launcher3/CellLayout;

    if-eqz v5, :cond_49

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/CellLayout;

    :cond_49
    if-nez v4, :cond_4c

    return-void

    :cond_4c
    const-string v3, "folderInfo"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "oppositeInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/big/FolderManager;->refreshFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result v3

    if-eqz v3, :cond_73

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    invoke-direct {v0, p0, v1, v4}, Lcom/android/launcher3/folder/big/FolderManager;->checkPageToSmall(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/statistics/LauncherStatistics;->statSomFolderConvert(Lcom/android/launcher3/model/data/FolderInfo;)V

    goto :goto_9a

    :cond_73
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v5, -0x65

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v5, :cond_7d

    move v3, v7

    goto :goto_7e

    :cond_7d
    move v3, v6

    :goto_7e
    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v5, v7, :cond_83

    move v6, v7

    :cond_83
    and-int/2addr v3, v6

    if-eqz v3, :cond_8a

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/big/FolderManager;->toBigFolderForHotseat(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    goto :goto_8f

    :cond_8a
    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/launcher3/folder/big/FolderManager;->toBigFolder(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V

    :goto_8f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/statistics/LauncherStatistics;->statBigFolderConvert(Lcom/android/launcher3/model/data/FolderInfo;)V

    :goto_9a
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/FolderManager;->toBigFolderForHotseat$lambda$5(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderManager;->toBigFolder$lambda$1(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    return-void
.end method

.method public static final fillEmptyCellIfNeed(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/Launcher;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_8

    return-void

    :cond_8
    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->isSmallIcon()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    const-string v0, "launcher.workspace.getSc…folderIcon.info.screenId)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/core/widget/b;

    invoke-direct {v0, p0}, Landroidx/core/widget/b;-><init>(Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusDragLayer;->getDragAnim()Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_4c

    const-string p1, "Folder"

    const-string v1, "FolderManager"

    const-string v2, "fillEmptyCellIfNeed, dragAnim is Running."

    invoke-static {p1, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher3/folder/big/FolderManager$fillEmptyCellIfNeed$lambda$8$$inlined$doOnEnd$1;

    invoke-direct {p1, v0}, Lcom/android/launcher3/folder/big/FolderManager$fillEmptyCellIfNeed$lambda$8$$inlined$doOnEnd$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4f

    :cond_4c
    invoke-virtual {v0}, Landroidx/core/widget/b;->run()V

    :goto_4f
    return-void
.end method

.method private static final fillEmptyCellIfNeed$lambda$6(Lcom/android/launcher3/CellLayout;)V
    .registers 4

    const-string v0, "$cellLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Folder"

    const-string v1, "FolderManager"

    const-string v2, "fillEmptyAfterCreateOrAddToFolder."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_18

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusCellLayout;->fillEmptyAfterCreateOrAddToFolder(Z)V

    :cond_18
    return-void
.end method

.method private final findCellAndAddBigFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;ILcom/android/launcher3/OplusWorkspace;)Z
    .registers 12

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/android/launcher3/CellLayout;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "FolderManager"

    const-string v2, "Folder"

    const/4 v3, 0x0

    if-nez v0, :cond_2a

    const-string p0, "findCellAndAddBigFolder, cl is null! screen = "

    const-string p1, ", count = "

    invoke-static {p0, p3, p1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2a
    invoke-virtual {p4, v0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result p3

    const/16 v4, -0xc9

    if-ne p3, v4, :cond_3e

    invoke-virtual {p4}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p3

    invoke-virtual {p3, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p3

    :cond_3e
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_90

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-eqz v0, :cond_8e

    aget v0, v4, v3

    if-ltz v0, :cond_8e

    const/4 v0, 0x1

    aget v5, v4, v0

    if-ltz v5, :cond_8e

    aget v3, v4, v3

    iput v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v0, v4, v0

    iput v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/16 p3, -0x64

    iput p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-eqz p1, :cond_6a

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderManager;->updateFolderName(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V

    :cond_6a
    if-eqz p1, :cond_6f

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderManager;->updateIndicator(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V

    :cond_6f
    const-string p0, "findCellAndAddBigFolder cellXY = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "toString(this)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p1, p2}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :cond_8e
    return v3

    nop

    :array_90
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public static final folderNameSwitchOff()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/util/FontManager;

    if-eqz v0, :cond_d

    iget v0, v0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    goto :goto_f

    :cond_d
    const/high16 v0, 0x3f800000  # 1.0f

    :goto_f
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static final getDistanceForBg(Landroid/graphics/Rect;FF)F
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bgRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double v2, p1

    int-to-float p1, v1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_b

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    if-eqz v2, :cond_13

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-le p0, v0, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    return v0
.end method

.method public static final isSmallFolderIcon(Landroid/view/View;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->isSmallIcon()Z

    move-result p0

    if-ne p0, v0, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    return v0
.end method

.method public static final longClickEnable(Lcom/android/launcher3/folder/big/BigFolderIcon;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getConvertAnimBuilder()Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->isConvertAnimating()Z

    move-result p0

    goto :goto_18

    :cond_17
    move p0, v1

    :goto_18
    if-nez p0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method private final refreshFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    return-void
.end method

.method private final startConvertAnim(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;Z[ILjava/lang/Runnable;)V
    .registers 13

    const-string p0, ", toBig = "

    const-string/jumbo v0, "startConvertAnim: title = "

    const-string v1, "FolderManager"

    const-string v2, "Folder"

    if-eqz p3, :cond_53

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_3a

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    if-eqz p0, :cond_3a

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3a
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    if-nez p0, :cond_41

    goto :goto_4c

    :cond_41
    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4c
    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->updateDotInfoWhenConvert()V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->updatePreview()V

    goto :goto_9a

    :cond_53
    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_82

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    if-eqz p0, :cond_82

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_82
    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    if-nez p0, :cond_89

    goto :goto_94

    :cond_89
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_94
    invoke-virtual {p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->updateDotInfoWhenConvert()V

    invoke-virtual {p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->updatePreview()V

    :goto_9a
    new-instance p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    const/4 v0, 0x0

    aget v5, p4, v0

    const/4 v0, 0x1

    aget v6, p4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;ZII)V

    new-instance p4, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;

    invoke-direct {p4, p5, p3, p1, p2}, Lcom/android/launcher3/folder/big/FolderManager$startConvertAnim$1;-><init>(Ljava/lang/Runnable;ZLcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)V

    invoke-virtual {p0, p4}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->setCompleteAction(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$AnimationComplete;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->setConvertAnimating(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->buildConvertAnimator()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static final supportBigFolder()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    const-string v1, "getInstance().curLauncherMode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder(Lcom/android/launcher/mode/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public static final supportBigFolder(Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "targetMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isBigFolderDisabled()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-eq p0, v0, :cond_1a

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->supportBigFolder()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private final toBigFolder(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 24

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v1

    iget v12, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v13, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v3, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int v4, v2, v3

    if-le v4, v0, :cond_1e

    sub-int v2, v0, v3

    :cond_1e
    move v14, v2

    iget v0, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int v3, v0, v2

    if-le v3, v1, :cond_29

    sub-int v0, v1, v2

    :cond_29
    move v15, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getOppositeView()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.CellLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v0, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/CellLayout$LayoutParams;->updateSpanXY(II)V

    iput v14, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v15, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v14, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v15, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v8, v10}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTag(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toBigFolder: targetCellX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetCellY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folderInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Folder"

    const-string v2, "FolderManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v5, 0x2

    new-array v2, v5, [I

    fill-array-data v2, :array_140

    const/16 v16, 0x1

    move-object/from16 v0, p4

    move v1, v14

    move-object/from16 v17, v2

    move v2, v15

    move-object/from16 v5, p1

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    move/from16 v17, v13

    move-object v13, v7

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/OplusCellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_129

    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    iput v14, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v15, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v14, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v15, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v2, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {v13, v9}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_d1

    invoke-virtual {v2, v13}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    :cond_d1
    invoke-virtual {v13}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    if-eqz v2, :cond_e2

    iput-object v9, v2, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v13}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    if-eqz v3, :cond_e2

    invoke-virtual {v3, v2}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    :cond_e2
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->setOppositeView(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    invoke-virtual {v13}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v2, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->setTitleShadowEnable(Z)V

    invoke-virtual {v13}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    invoke-virtual {v13}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    const-string v2, "launcher"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-direct {v2, v0, v9}, Lcom/android/launcher3/folder/big/FolderManager;->updateDatabase(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {v0, v11, v9, v8, v1}, Lcom/android/launcher/Launcher;->addConvertedFolder(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/OplusFolderIcon;Z)Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-virtual {v11, v1}, Lcom/android/launcher3/OplusCellLayout;->fillEmptyAfterCreateOrAddToFolder(Z)V

    :cond_112
    const/4 v3, 0x1

    const/4 v0, 0x2

    new-array v4, v0, [I

    const/4 v0, 0x0

    aput v12, v4, v0

    aput v17, v4, v1

    new-instance v5, Lcom/android/launcher3/folder/big/a;

    invoke-direct {v5, v13, v1}, Lcom/android/launcher3/folder/big/a;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;I)V

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/big/FolderManager;->startConvertAnim(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;Z[ILjava/lang/Runnable;)V

    goto :goto_13f

    :cond_129
    iput v1, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v1, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/CellLayout$LayoutParams;->updateSpanXY(II)V

    iput v12, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    move/from16 v1, v17

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual/range {p1 .. p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTag(Ljava/lang/Object;)V

    :goto_13f
    return-void

    :array_140
    .array-data 4
        -0x1
        0x1
    .end array-data
.end method

.method private static final toBigFolder$lambda$1(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 2

    const-string v0, "$bigFolderIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->disableLongClickIconFlag()V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->bigFolderCovert(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    return-void
.end method

.method private final toBigFolderForHotseat(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 12

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getOppositeView()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v4

    const-string/jumbo v5, "workspace"

    const-string v6, "bigFolderInfo"

    const/4 v7, 0x0

    if-eqz v2, :cond_4d

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v9, v7

    :goto_3b
    if-ge v2, v8, :cond_82

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/android/launcher3/folder/big/FolderManager;->findCellAndAddBigFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;ILcom/android/launcher3/OplusWorkspace;)Z

    move-result v9

    if-eqz v9, :cond_4a

    goto :goto_82

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4d
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/android/launcher3/folder/big/FolderManager;->findCellAndAddBigFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;ILcom/android/launcher3/OplusWorkspace;)Z

    move-result v9

    if-nez v9, :cond_82

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxWorkspacePages()I

    move-result v3

    if-lt v2, v3, :cond_7c

    const p0, 0x7f12046c

    invoke-virtual {v0, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7c
    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->addExtraEmptyScreens()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/FolderManager;->toBigFolderForHotseat(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    :cond_82
    :goto_82
    const-string/jumbo v2, "toBigFolderForHotseat: screenId = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", folderInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Folder"

    const-string v5, "FolderManager"

    invoke-static {v3, v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_cf

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lcom/android/launcher3/folder/big/FolderManager;->updateDatabase(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    invoke-virtual {v0, p1, p0, v7}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    const-string/jumbo v0, "smallIcon.info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->notifyTaskbarDelete(Ljava/util/Collection;)V

    new-instance p0, Lcom/android/launcher/widget/b;

    invoke-direct {p0, v1, v4}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/FolderInfo;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_cf
    return-void
.end method

.method private static final toBigFolderForHotseat$lambda$5(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    return-void
.end method

.method private final toSmallFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 14

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v5, 0x1

    iput v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "toSmallFolder, folderInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Folder"

    const-string v8, "FolderManager"

    invoke-static {v7, v8, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/Launcher;

    const/4 v7, 0x0

    invoke-virtual {v6, p3, p2, p1, v7}, Lcom/android/launcher/Launcher;->addConvertedFolder(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/OplusFolderIcon;Z)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v8

    invoke-virtual {p3, p1}, Lcom/android/launcher3/OplusCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    invoke-virtual {p3, v8}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v9

    if-eqz v9, :cond_44

    invoke-virtual {p3, v5}, Lcom/android/launcher3/OplusCellLayout;->fillEmptyAfterCreateOrAddToFolder(Z)V

    :cond_44
    new-instance v9, Lcom/android/common/debug/c;

    invoke-direct {v9, v6, p2, p1, v8}, Lcom/android/common/debug/c;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)V

    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->setOppositeView(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getOppositeView()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v2

    const-string v0, "folderIcon.oppositeView"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v8, v0, [I

    aput v3, v8, v7

    aput v4, v8, v5

    move-object v0, p0

    move-object v1, p1

    move v3, v6

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/big/FolderManager;->startConvertAnim(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;Z[ILjava/lang/Runnable;)V

    return-void
.end method

.method private static final toSmallFolder$lambda$4(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 6

    const-string v0, "$folderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$folderIcon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/folder/big/FolderManager;->INSTANCE:Lcom/android/launcher3/folder/big/FolderManager;

    const-string v1, "launcher"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/folder/big/FolderManager;->updateDatabase(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.CellLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    invoke-virtual {p3, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->setVisibility(I)V

    invoke-virtual {p3, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    if-eqz p0, :cond_38

    invoke-virtual {p0, p3}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    :cond_38
    invoke-virtual {p3}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_49

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_49

    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    :cond_49
    return-void
.end method

.method private final updateDatabase(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 13

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateDatabase: folderInfo = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Folder"

    const-string v1, "FolderManager"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v2

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v8, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v9, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v3, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/model/OplusModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    return-void
.end method


# virtual methods
.method public final updateFolderName(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 4

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "info"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateIndicator(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "info"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_1a

    :cond_11
    sget-object p1, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setDotsCount(I)V

    :goto_1a
    return-void
.end method
