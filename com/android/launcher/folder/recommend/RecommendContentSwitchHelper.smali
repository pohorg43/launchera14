.class public final Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecommendContentSwitchHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecommendContentSwitchHelper.kt\ncom/android/launcher/folder/recommend/RecommendContentSwitchHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,241:1\n1855#2,2:242\n1855#2,2:244\n1855#2,2:246\n1855#2,2:248\n*S KotlinDebug\n*F\n+ 1 RecommendContentSwitchHelper.kt\ncom/android/launcher/folder/recommend/RecommendContentSwitchHelper\n*L\n201#1:242,2\n219#1:244,2\n236#1:246,2\n121#1:248,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;

.field private static final LEFT:I = 0x1

.field private static final RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RecommendContentSwitchHelper"


# instance fields
.field private final context:Landroid/content/Context;

.field private final currentRecommendId:I

.field private final dialogButtonClickCallback:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$dialogButtonClickCallback$1;

.field private final disbandRecommendFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field public homeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

.field private final preferenceHelper:Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

.field private final recommendFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private secondDialog:Landroid/app/Dialog;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->Companion:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    iput p2, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->currentRecommendId:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->recommendFolders:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->disbandRecommendFolders:Ljava/util/List;

    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p1

    const-string p2, "getInstance(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->preferenceHelper:Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->initRecommendFolders()V

    new-instance p1, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$dialogButtonClickCallback$1;

    invoke-direct {p1, p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$dialogButtonClickCallback$1;-><init>(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->dialogButtonClickCallback:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$dialogButtonClickCallback$1;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->stopAppStoreContentRecommend$lambda$3(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;Z)V

    return-void
.end method

.method public static final synthetic access$disbandFolder(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->disbandFolder()V

    return-void
.end method

.method public static final synthetic access$getPreferenceHelper$p(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->preferenceHelper:Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$stopAppStoreContentRecommend(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->stopAppStoreContentRecommend(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->showSecondConfirmDialog$lambda$5(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->setRecommendState$lambda$0(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    return-void
.end method

.method public static synthetic d()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->stopAppStoreContentRecommend$lambda$4()V

    return-void
.end method

.method private final disbandFolder()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    :cond_11
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->disbandRecommendFolders:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher/Launcher;->disbandFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_17

    :cond_31
    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->setRecommendState$lambda$1(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)V

    return-void
.end method

.method private final initMessageView()Landroid/view/View;
    .registers 5

    new-instance v0, Lcom/android/launcher/folder/recommend/view/RecommendSecondDialogMessageView;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/recommend/view/RecommendSecondDialogMessageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->disbandRecommendFolders:Ljava/util/List;

    iget p0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->currentRecommendId:I

    invoke-virtual {v0, v2, p0}, Lcom/android/launcher/folder/recommend/view/RecommendSecondDialogMessageView;->bindData(Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method private final initRecommendFolders()V
    .registers 7

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_63

    monitor-enter v0

    :try_start_13
    iget-object v1, v0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    const-string v2, "folders"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    const-string v3, "RecommendContentSwitchHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendFolder(Lcom/android/launcher3/model/data/FolderInfo;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->recommendFolders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->isEnableDisbandFolder(Lcom/android/launcher3/model/data/FolderInfo;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->disbandRecommendFolders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_13 .. :try_end_5d} :catchall_60

    goto :goto_1e

    :cond_5e
    monitor-exit v0

    goto :goto_63

    :catchall_60
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_63
    :goto_63
    return-void
.end method

.method private final isEnableDisbandFolder(Lcom/android/launcher3/model/data/FolderInfo;)Z
    .registers 4

    iget-object p0, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string p1, "folderInfo.contents"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    goto :goto_c

    :cond_25
    return p1
.end method

.method public static final isSwitchDisable()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->Companion:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;->isSwitchDisable()Z

    move-result v0

    return v0
.end method

.method public static final isSwitchEnable()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->Companion:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;->isSwitchEnable()Z

    move-result v0

    return v0
.end method

.method private final listenHomeKey()V
    .registers 3

    new-instance v0, Lcom/android/launcher/HomeKeyObserver;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher/HomeKeyObserver;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->setHomeKeyObserver(Lcom/android/launcher/HomeKeyObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getHomeKeyObserver()Lcom/android/launcher/HomeKeyObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$listenHomeKey$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$listenHomeKey$1;-><init>(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/HomeKeyObserver;->setHomeKeyListener(Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getHomeKeyObserver()Lcom/android/launcher/HomeKeyObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/HomeKeyObserver;->startListen()V

    return-void
.end method

.method private final openAppStoreContentRecommend()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherModel;->onMarketRecommendDataUpdate()V

    return-void
.end method

.method private static final setRecommendState$lambda$0(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_5
    return-void
.end method

.method private static final setRecommendState$lambda$1(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->showSecondConfirmDialog()V

    return-void
.end method

.method private final showSecondConfirmDialog()V
    .registers 4

    new-instance v0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    const v2, 0x7f120528

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.second_dialog_close)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->initMessageView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setMessageView(Landroid/view/View;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    const v2, 0x7f1201b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.confirm_close)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setPositiveText(Ljava/lang/String;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    const v2, 0x7f1204e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri….recommend_dialog_cancel)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setNegativeText(Ljava/lang/String;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->dialogButtonClickCallback:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$dialogButtonClickCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setDialogOnClickCallback(Lcom/android/launcher/folder/recommend/DialogButtonClickCallback;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->createDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->secondDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->listenHomeKey()V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->secondDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_60

    new-instance v1, Lcom/android/launcher/folder/recommend/f;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/f;-><init>(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_60
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->secondDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_67
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->secondDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_75

    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_76

    :cond_75
    const/4 p0, 0x0

    :goto_76
    if-eqz p0, :cond_7e

    const v0, 0x7f13019c

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_7e
    return-void
.end method

.method private static final showSecondConfirmDialog$lambda$5(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;Landroid/content/DialogInterface;)V
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getHomeKeyObserver()Lcom/android/launcher/HomeKeyObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/HomeKeyObserver;->stopListen()V

    return-void
.end method

.method private final stopAppStoreContentRecommend(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->statsRecommendFolderSettingsStates(Z)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/common/util/q;

    invoke-direct {v1, p0, p1}, Lcom/android/common/util/q;-><init>(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object p1, Lcom/android/launcher/folder/recommend/g;->b:Lcom/android/launcher/folder/recommend/g;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final stopAppStoreContentRecommend$lambda$3(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;Z)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->recommendFolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->disbandRecommendFolders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {v2, v0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeRecommendItems(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/Launcher;Z)V

    goto :goto_16

    :cond_2e
    return-void
.end method

.method private static final stopAppStoreContentRecommend$lambda$4()V
    .registers 1

    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->deleteOtherModeData()V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getHomeKeyObserver()Lcom/android/launcher/HomeKeyObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->homeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "homeKeyObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRecommendFolders()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->recommendFolders:Ljava/util/List;

    return-object p0
.end method

.method public final getSecondDialog()Landroid/app/Dialog;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->secondDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public final setHomeKeyObserver(Lcom/android/launcher/HomeKeyObserver;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->homeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    return-void
.end method

.method public final setRecommendState(ZLcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 5

    const-string/jumbo v0, "setRecommendState: isChecked = "

    const-string v1, "RecommendContentSwitchHelper"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->disbandRecommendFolders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->handler:Landroid/os/Handler;

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v0, p2}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->handler:Landroid/os/Handler;

    new-instance p2, Landroidx/core/app/a;

    invoke-direct {p2, p0}, Landroidx/core/app/a;-><init>(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)V

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    :cond_2b
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->stopAppStoreContentRecommend(Z)V

    goto :goto_33

    :cond_30
    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->openAppStoreContentRecommend()V

    :goto_33
    return-void
.end method

.method public final setSecondDialog(Landroid/app/Dialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->secondDialog:Landroid/app/Dialog;

    return-void
.end method
