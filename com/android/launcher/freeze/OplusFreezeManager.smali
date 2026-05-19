.class public final Lcom/android/launcher/freeze/OplusFreezeManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusFreezeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusFreezeManager.kt\ncom/android/launcher/freeze/OplusFreezeManager\n+ 2 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n*L\n1#1,242:1\n24#2:243\n76#2,2:244\n42#2:246\n79#2:247\n*S KotlinDebug\n*F\n+ 1 OplusFreezeManager.kt\ncom/android/launcher/freeze/OplusFreezeManager\n*L\n217#1:243\n221#1:244,2\n222#1:246\n221#1:247\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher/freeze/OplusFreezeManager;

.field public static final INVALID_UID:I = -0x2710

.field public static final TAG:Ljava/lang/String; = "OplusFreezeManager"

.field private static mCurrentVisibleList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/app/OplusAppCardProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsFirst:Z

.field private static mLastVisibleList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/app/OplusAppCardProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/freeze/OplusFreezeManager;

    invoke-direct {v0}, Lcom/android/launcher/freeze/OplusFreezeManager;-><init>()V

    sput-object v0, Lcom/android/launcher/freeze/OplusFreezeManager;->INSTANCE:Lcom/android/launcher/freeze/OplusFreezeManager;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/launcher/freeze/OplusFreezeManager;->mCurrentVisibleList:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/launcher/freeze/OplusFreezeManager;->mLastVisibleList:Landroid/util/SparseArray;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/freeze/OplusFreezeManager;->mIsFirst:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/freeze/OplusFreezeManager;->updateVisibleWidgets$lambda$2(Lcom/android/launcher3/OplusWorkspace;)V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/freeze/OplusFreezeManager;->updateInVisibleWidgets$lambda$0()V

    return-void
.end method

.method private final getUid(Ljava/lang/String;)I
    .registers 5

    const/16 p0, -0x2710

    :try_start_2
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_13} :catch_18

    if-eqz p1, :cond_17

    iget p0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_17
    return p0

    :catch_18
    move-exception v0

    const-string v1, ", getUid:"

    invoke-static {p1, v1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusFreezeManager"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private final isSameAsLast()Z
    .registers 7

    sget-object p0, Lcom/android/launcher/freeze/OplusFreezeManager;->mCurrentVisibleList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    sget-object v0, Lcom/android/launcher/freeze/OplusFreezeManager;->mLastVisibleList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_10

    return v1

    :cond_10
    sget-object p0, Lcom/android/launcher/freeze/OplusFreezeManager;->mCurrentVisibleList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_17
    const/4 v3, 0x1

    if-ge v2, v0, :cond_34

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/app/OplusAppCardProviderInfo;

    sget-object v5, Lcom/android/launcher/freeze/OplusFreezeManager;->mLastVisibleList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2d

    goto :goto_2e

    :cond_2d
    move v3, v1

    :goto_2e
    if-nez v3, :cond_31

    return v1

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_34
    return v3
.end method

.method public static final updateInVisibleWidgets()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_11
    const-string/jumbo v0, "updateInVisibleWidgets caller: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "OplusFreezeManager"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1e
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v1, Lz/a;->b:Lz/a;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final updateInVisibleWidgets$lambda$0()V
    .registers 4

    sget-boolean v0, Lcom/android/launcher/freeze/OplusFreezeManager;->mIsFirst:Z

    const-string v1, "OplusFreezeManager"

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/launcher/freeze/OplusFreezeManager;->mLastVisibleList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "updateInVisibleWidgets mLastVisibleList.size() == 0  cancel this time call "

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    const-string/jumbo v0, "updateInVisibleWidgets there are no widgets is visible"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/app/OplusHansFreezeManager;->getInstance()Lcom/oplus/app/OplusHansFreezeManager;

    move-result-object v0

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/app/OplusHansFreezeManager;->updateAppCardProvider(Landroid/content/Context;Landroid/util/SparseArray;I)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/freeze/OplusFreezeManager;->mIsFirst:Z

    sget-object v0, Lcom/android/launcher/freeze/OplusFreezeManager;->mLastVisibleList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public static final updateVisibleWidgets(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "OplusFreezeManager"

    if-nez p0, :cond_10

    const-string/jumbo p0, "updateVisibleWidgets: workspace == null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_1c
    const-string/jumbo v1, "updateVisibleWidgets caller:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_27
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/core/app/a;

    invoke-direct {v1, p0}, Landroidx/core/app/a;-><init>(Lcom/android/launcher3/OplusWorkspace;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final updateVisibleWidgets$lambda$2(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 8

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVisibleWidgets mCurrentPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusFreezeManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_26

    const-string/jumbo p0, "updateVisibleWidgets: workspace.getPageAt(mCurrentPage) == null"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.OplusCellLayout"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_67

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_4a

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4a
    const-string/jumbo v0, "updateVisibleWidgets isTwoPanelEnabled:pairCell:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_5c

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_5d

    :cond_5c
    move-object p0, v4

    :goto_5d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_71
    if-ge v0, v3, :cond_87

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    sget-object v6, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->WIDGET:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_84

    invoke-interface {p0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    :cond_87
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_96

    sget-object p0, Lcom/android/launcher/freeze/OplusFreezeManager;->mCurrentVisibleList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Lcom/android/launcher/freeze/OplusFreezeManager;->updateInVisibleWidgets()V

    return-void

    :cond_96
    sget-object v0, Lcom/android/launcher/freeze/OplusFreezeManager;->mCurrentVisibleList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVisibleWidgets:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_aa
    :goto_aa
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/IAreaWidget;

    instance-of v3, v1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v3, :cond_aa

    check-cast v1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v1

    if-eqz v1, :cond_c7

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_c8

    :cond_c7
    move-object v1, v4

    :goto_c8
    if-nez v1, :cond_d1

    const-string/jumbo p0, "updateVisibleWidgets pkgName == null"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10a

    :cond_d1
    sget-object v3, Lcom/android/launcher/freeze/OplusFreezeManager;->INSTANCE:Lcom/android/launcher/freeze/OplusFreezeManager;

    invoke-direct {v3, v1}, Lcom/android/launcher/freeze/OplusFreezeManager;->getUid(Ljava/lang/String;)I

    move-result v3

    const/16 v5, -0x2710

    if-ne v3, v5, :cond_e2

    const-string/jumbo v1, "updateVisibleWidgets uid == INVALID_UID"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_aa

    :cond_e2
    new-instance v5, Lcom/oplus/app/OplusAppCardProviderInfo;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v1, v6}, Lcom/oplus/app/OplusAppCardProviderInfo;-><init>(ILjava/lang/String;I)V

    sget-object v1, Lcom/android/launcher/freeze/OplusFreezeManager;->mCurrentVisibleList:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_aa

    sget-object v1, Lcom/android/launcher/freeze/OplusFreezeManager;->mCurrentVisibleList:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    :cond_10a
    :goto_10a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/freeze/OplusFreezeManager;->mCurrentVisibleList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_11d

    invoke-static {}, Lcom/android/launcher/freeze/OplusFreezeManager;->updateInVisibleWidgets()V

    goto :goto_13a

    :cond_11d
    sget-object p0, Lcom/android/launcher/freeze/OplusFreezeManager;->INSTANCE:Lcom/android/launcher/freeze/OplusFreezeManager;

    invoke-direct {p0}, Lcom/android/launcher/freeze/OplusFreezeManager;->isSameAsLast()Z

    move-result p0

    if-eqz p0, :cond_12c

    const-string/jumbo p0, "updateVisibleWidgets the uid list is same as last, cancel this request"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12c
    invoke-static {}, Lcom/oplus/app/OplusHansFreezeManager;->getInstance()Lcom/oplus/app/OplusHansFreezeManager;

    move-result-object p0

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/freeze/OplusFreezeManager;->mCurrentVisibleList:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/app/OplusHansFreezeManager;->updateAppCardProvider(Landroid/content/Context;Landroid/util/SparseArray;I)Z

    :goto_13a
    sget-object p0, Lcom/android/launcher/freeze/OplusFreezeManager;->mLastVisibleList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    sget-object p0, Lcom/android/launcher/freeze/OplusFreezeManager;->mLastVisibleList:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/launcher/freeze/OplusFreezeManager;->mCurrentVisibleList:Landroid/util/SparseArray;

    invoke-static {p0, v0}, Landroidx/core/util/SparseArrayKt;->putAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method
