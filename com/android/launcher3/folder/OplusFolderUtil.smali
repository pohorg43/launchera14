.class public final Lcom/android/launcher3/folder/OplusFolderUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusFolderUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusFolderUtil.kt\ncom/android/launcher3/folder/OplusFolderUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,230:1\n1855#2,2:231\n1#3:233\n*S KotlinDebug\n*F\n+ 1 OplusFolderUtil.kt\ncom/android/launcher3/folder/OplusFolderUtil\n*L\n195#1:231,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/folder/OplusFolderUtil;

.field public static final TAG:Ljava/lang/String; = "OplusFolderUtil"

.field private static folderMaxColOrRow:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/folder/OplusFolderUtil;

    invoke-direct {v0}, Lcom/android/launcher3/folder/OplusFolderUtil;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/OplusFolderUtil;->INSTANCE:Lcom/android/launcher3/folder/OplusFolderUtil;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->numFolderPreview:I

    sput v0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderUtil;->updateAllFolders$lambda$0(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/OplusInvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/folder/OplusFolderUtil;->updateAllFolders$lambda$1(Lcom/android/launcher3/OplusInvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final getBFParamsDotInfos(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/big/stacked/StackedDotInfo;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firstParms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v0, "folderInfo.contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Li4/v;->j0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/folder/big/stacked/StackedDotInfo;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/stacked/StackedDotInfo;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_25
    :goto_25
    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-ge v2, v1, :cond_8c

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v2}, Lcom/android/launcher/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    const-string v5, "OplusFolderUtil"

    if-eqz v4, :cond_5b

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/launcher3/OplusAppFilter;->isHideDot(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_5b

    const-string v3, "item.targetComponent = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_5b
    iget-object v4, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    if-eqz v3, :cond_25

    invoke-virtual {v0, v3}, Lcom/android/launcher3/dot/OplusFolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    goto :goto_25

    :cond_69
    if-eqz v3, :cond_6e

    invoke-virtual {v0, v3}, Lcom/android/launcher3/dot/OplusFolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    :cond_6e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getBFParamsDotInfos: content = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", firstParms = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    return-object v0
.end method

.method public static final getFolderMaxCol(Z)I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/folder/OplusFolderUtil;->refresh()V

    if-eqz p0, :cond_7

    const/4 p0, 0x3

    goto :goto_9

    :cond_7
    sget p0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    :goto_9
    return p0
.end method

.method public static final getFolderMaxRow(Z)I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/folder/OplusFolderUtil;->refresh()V

    if-eqz p0, :cond_7

    const/4 p0, 0x3

    goto :goto_9

    :cond_7
    sget p0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    :goto_9
    return p0
.end method

.method public static final getMaxNumItemsInFolderPreview(Z)I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/folder/OplusFolderUtil;->refresh()V

    if-eqz p0, :cond_c

    sget-object p0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result p0

    goto :goto_f

    :cond_c
    sget p0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    mul-int/2addr p0, p0

    :goto_f
    return p0
.end method

.method public static final isExistInFolderContents(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "addItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderContents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2b

    :cond_2a
    move v2, v1

    :goto_2b
    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_43

    invoke-static {v3}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_43

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3e

    invoke-static {v1}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_43
    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v2, :cond_e

    if-eqz v1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addItem = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " --- alreadyItem = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "checkFolderAlreadyHasSameApplication"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_70
    return v1
.end method

.method private static final needRefresh()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget v0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->numFolderPreview:I

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static final needToUpdateStackedDrawable(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;Ljava/util/List;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/big/BigFolderIcon;",
            "Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "icon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bfPreviewItemDrawingParams"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "stackedItems"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "droppingItems"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->getCurrentStackedParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_24
    if-ge v2, v0, :cond_40

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->getCurrentStackedParams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v4, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v4, :cond_3d

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_40
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    if-eq p1, p3, :cond_4c

    return v0

    :cond_4c
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6a

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p2}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result p2

    if-eqz p2, :cond_50

    :cond_6a
    return v0

    :cond_6b
    return v1
.end method

.method private static final refresh()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/folder/OplusFolderUtil;->needRefresh()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->numFolderPreview:I

    sput v0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    :cond_12
    return-void
.end method

.method public static final updateAllFolders(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "workspace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "InvariantDeviceProfile.INSTANCE[workspace.context]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    new-instance v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/OplusInvariantDeviceProfile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    const-string/jumbo v4, "updateAllFolders: oldInv.numFolderColumns = "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", oldInv.numFolderRows = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", oldInv.numAllAppsColumns = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", oldDeviceProfile.folderCellWidthPx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", newInv.numFolderColumns = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", newInv.numFolderRows = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", newInv.numAllAppsColumns = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", newDeviceProfile.folderCellWidthPx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    const-string v6, "OplusFolderUtil"

    invoke-static {v4, v5, v6}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    if-ne v4, v5, :cond_a8

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iget v7, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    if-ne v4, v7, :cond_a8

    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v7, v3, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    if-eq v4, v7, :cond_9f

    goto :goto_a8

    :cond_9f
    new-instance v2, Lcom/android/launcher/w;

    invoke-direct {v2, v1, v0}, Lcom/android/launcher/w;-><init>(Lcom/android/launcher3/OplusInvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    goto :goto_f3

    :cond_a8
    :goto_a8
    iput v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iput v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iget v1, v3, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iput v1, v2, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v1, v3, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iput v1, v2, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    instance-of v1, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    if-eqz v1, :cond_c0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->clearDeviceProfileCache()V

    :cond_c0
    const-string/jumbo v1, "updateAllFolders: numFolderRows = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", numFolderColumns = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", folderCellWidthPx = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {v1, v0}, Lcom/android/exceptionmonitor/util/d;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    :goto_f3
    return-void
.end method

.method private static final updateAllFolders$lambda$0(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 6

    const-string v0, "$oldInv"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    const-string v0, "folder = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string/jumbo v2, "updateAllFolders"

    invoke-static {v0, p1, v2}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p2, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance v0, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object v0, p2, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object p0, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_38

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    goto :goto_39

    :cond_38
    move p1, v1

    :goto_39
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->setupContentDimensions(I)V

    :cond_3c
    return v1
.end method

.method private static final updateAllFolders$lambda$1(Lcom/android/launcher3/OplusInvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 6

    const-string p2, "$newInv"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$oldInv"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p3, Lcom/android/launcher3/folder/OplusFolderIcon;

    const/4 v0, 0x0

    if-eqz p2, :cond_55

    check-cast p3, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p3}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p2

    iget-object p3, p2, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object p3, p3, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget p3, p3, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    if-eq p3, p0, :cond_55

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_37

    const-string/jumbo p0, "updateAllFolders: mMaxCountX = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p3, p2, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object p3, p3, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget p3, p3, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    const-string v1, "OplusFolderUtil"

    invoke-static {p0, p3, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_37
    iget-object p0, p2, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance p3, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-direct {p3, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object p3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object p0, p2, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_51

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    goto :goto_52

    :cond_51
    move p1, v0

    :goto_52
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->setupContentDimensions(I)V

    :cond_55
    return v0
.end method

.method public static final updateFolderCreateType(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher/Launcher;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_21

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_21

    sget-object p1, Lcom/android/launcher3/model/data/FolderInfo$CreateType;->EDIT_DRAG:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    iput-object p1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mCreateType:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    goto :goto_25

    :cond_21
    sget-object p1, Lcom/android/launcher3/model/data/FolderInfo$CreateType;->NORMAL_DRAG:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    iput-object p1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mCreateType:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    :cond_25
    :goto_25
    return-void
.end method
