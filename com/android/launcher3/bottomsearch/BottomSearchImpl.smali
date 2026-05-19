.class public final Lcom/android/launcher3/bottomsearch/BottomSearchImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/bottomsearch/IBottomSearch;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBottomSearchImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSearchImpl.kt\ncom/android/launcher3/bottomsearch/BottomSearchImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,432:1\n1855#2,2:433\n1855#2,2:435\n*S KotlinDebug\n*F\n+ 1 BottomSearchImpl.kt\ncom/android/launcher3/bottomsearch/BottomSearchImpl\n*L\n117#1:433,2\n274#1:435,2\n*E\n"
    }
.end annotation


# static fields
.field private static final DEBUG_DEPTH:I = 0x5

.field private static final FLAG_DISABLE_BOTTOM_WIDGET:I = 0x2

.field private static final FLAG_DISABLE_SEARCH_WIDGET:I = 0x1

.field public static final INSTANCE:Lcom/android/launcher3/bottomsearch/BottomSearchImpl;

.field private static final KEY_BOTTOM_WIDGET_IS_ADDED:Ljava/lang/String; = "bottom_widget_is_added"

.field private static final KEY_ENABLE_BOTTOM_WIDGET:Ljava/lang/String; = "enable_bottom_widget"

.field private static final KEY_ENABLE_SEARCH_WIDGET:Ljava/lang/String; = "enable_search_widget"

.field private static final KEY_FIRST_ADD_BOTTOM_WIDGET:Ljava/lang/String; = "key_first_add_bottom_widget"

.field private static final KEY_HAS_INIT_BOTTOM_SEARCH:Ljava/lang/String; = "has_init_bottom_search"

.field private static final KEY_IS_BOTTOM_SEARCH_WIDGET:Ljava/lang/String; = "is_bottom_search_widget"

.field private static final KEY_USER_ENABLE_SEARCH_WIDGET:Ljava/lang/String; = "key_user_enable_search_widget"

.field public static final TAG:Ljava/lang/String; = "BOTTOM.WIDGET - COMMON"

.field private static bottomView:Landroid/view/View;

.field private static crossVersionOTA:Z

.field private static mPreferenceTitle:I

.field private static final mutableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/ILauncherLifecycleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;

    invoke-direct {v0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;-><init>()V

    sput-object v0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->INSTANCE:Lcom/android/launcher3/bottomsearch/BottomSearchImpl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->mutableList:Ljava/util/List;

    const v0, 0x7f120145

    sput v0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->mPreferenceTitle:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->request$lambda$11(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V

    return-void
.end method

.method private static final addOrDeleteBottomWidget$lambda$4(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->INSTANCE:Lcom/android/launcher3/bottomsearch/BottomSearchImpl;

    invoke-virtual {v0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->showTips(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    :cond_10
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->request$lambda$9(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->onResume$lambda$8$lambda$7(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->removeBottomWidget$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->addOrDeleteBottomWidget$lambda$4(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;ZZ)Ljava/lang/Boolean;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->request$lambda$10(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;ZZ)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final onResume$lambda$8$lambda$7(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V
    .registers 3

    const-string v0, "$owner"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->INSTANCE:Lcom/android/launcher3/bottomsearch/BottomSearchImpl;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->showTips(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    return-void
.end method

.method private static final removeBottomWidget$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
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

.method private final request(Landroid/content/Context;Ljava/lang/String;ZZZZLkotlin/jvm/functions/Function1;)Z
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request providerName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BOTTOM.WIDGET - COMMON"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-nez v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request, context == null provider: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_3a
    if-eqz v1, :cond_45

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_43

    goto :goto_45

    :cond_43
    move v7, v5

    goto :goto_46

    :cond_45
    :goto_45
    const/4 v7, 0x1

    :goto_46
    if-eqz v7, :cond_5e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request, provider == null  provider: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_5e
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_7a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request, unflatten provider name fail! provider : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_7a
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    if-nez v8, :cond_87

    const-string/jumbo v0, "request, appState is null! provider : "

    invoke-static {v0, v1, v6}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_87
    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v9

    const-string/jumbo v10, "null cannot be cast to non-null type com.android.launcher3.OplusLauncherModel"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v10

    if-eqz v10, :cond_a0

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v10

    goto :goto_a1

    :cond_a0
    const/4 v10, 0x1

    :goto_a1
    const-string/jumbo v11, "request: just deleteFromDB providerName = "

    const-string/jumbo v12, "result.get()"

    const-string v13, "e:"

    const-string v14, "key_user_enable_search_widget"

    const-string v15, "key_is_show_search_box"

    if-nez v2, :cond_ff

    invoke-static {v0, v15, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v3, 0x3

    invoke-static {v0, v14, v3}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz v10, :cond_dc

    :try_start_b8
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",isDeletedSuccessful = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_dc
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/bottomsearch/a;

    invoke-direct {v3, v9, v1, v2}, Lcom/android/launcher3/bottomsearch/a;-><init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_f4} :catch_f5

    return v0

    :catch_f5
    move-exception v0

    invoke-static {v13}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1d4

    :cond_ff
    if-eqz v2, :cond_153

    if-eqz v3, :cond_153

    const/4 v7, 0x1

    invoke-static {v0, v15, v7}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0, v14, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz v10, :cond_130

    :try_start_10c
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isDeletedSuccessful = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_130
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/launcher3/bottomsearch/b;

    invoke-direct {v4, v9, v1, v2, v3}, Lcom/android/launcher3/bottomsearch/b;-><init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_148} :catch_149

    return v0

    :catch_149
    move-exception v0

    invoke-static {v13}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1d4

    :cond_153
    if-eqz v2, :cond_1d4

    if-nez v3, :cond_1d4

    invoke-static {v0, v15, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-static {v0, v14, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :try_start_15e
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v2, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    move/from16 v3, p5

    invoke-virtual {v9, v7, v1, v2, v3}, Lcom/android/launcher3/OplusLauncherModel;->preAddWidgetProviderInWorkHandler(Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Z)Lcom/android/launcher/widget/AddWidgetProviderCallableResult;

    move-result-object v1

    if-eqz v1, :cond_1d4

    iget-object v2, v1, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;->addedWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v3, v1, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;->addedWorkspaceScreensFinal:Lcom/android/launcher3/util/IntArray;

    iget-object v1, v1, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;->allWorkspaceScreens:Lcom/android/launcher3/util/IntArray;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request: widgetInfo = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1c5

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v5, v7}, Lcom/android/launcher3/OplusLauncherModel;->getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v14

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v10, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v15, v2

    move/from16 v16, v4

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v10

    invoke-virtual/range {v14 .. v19}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/j1;

    const/4 v4, 0x1

    move-object/from16 p0, v1

    move-object/from16 p1, v9

    move-object/from16 p2, v3

    move-object/from16 p3, v2

    move/from16 p4, p6

    move/from16 p5, v4

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/j1;-><init>(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0

    :cond_1c5
    const-string/jumbo v0, "reqeust AddAppWidget, widgetInfo is null!"

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_1cb} :catch_1cc

    return v5

    :catch_1cc
    move-exception v0

    invoke-static {v13}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1d4
    :goto_1d4
    return v5
.end method

.method private static final request$lambda$10(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;ZZ)Ljava/lang/Boolean;
    .registers 8

    const-string v0, "$launcherModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$providerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p0

    const-string v0, "BOTTOM.WIDGET - COMMON"

    if-eqz p0, :cond_3a

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_19

    move v1, v3

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    xor-int/2addr v1, v3

    if-eqz v1, :cond_3a

    array-length v1, p0

    :goto_1e
    if-ge v2, v1, :cond_29

    aget-object v3, p0, v2

    invoke-interface {v3, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppWidgetRemove(Ljava/lang/String;)Z

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_29
    const-string/jumbo p0, "request enableSearchWidget:"

    const-string p1, " ,enableBottomWidget "

    const-string v1, " ,ret: "

    invoke-static {p0, p2, p1, p3, v1}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, v3, v0}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3a
    const-string p0, "DeleteAppWidget fail! callback is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static final request$lambda$11(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V
    .registers 10

    const-string v0, "$launcherModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p0

    const-string v0, "BOTTOM.WIDGET - COMMON"

    if-eqz p0, :cond_43

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    xor-int/2addr v1, v3

    if-eqz v1, :cond_43

    array-length v1, p0

    :goto_19
    if-ge v2, v1, :cond_49

    aget-object v3, p0, v2

    invoke-interface {v3, p1, p2, p3}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppWidgetAdd(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request AddAppWidget success, widgetInfo =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v4, v3, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_40

    sget-object v4, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v3}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->addOrDeleteBottomWidget(Lcom/android/launcher3/Launcher;)V

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_43
    const-string/jumbo p0, "request AddAppWidget fail! callback is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    return-void
.end method

.method private static final request$lambda$9(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .registers 7

    const-string v0, "$launcherModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$providerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p0

    const-string v0, "BOTTOM.WIDGET - COMMON"

    if-eqz p0, :cond_34

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_19

    move v1, v3

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    xor-int/2addr v1, v3

    if-eqz v1, :cond_34

    array-length v1, p0

    :goto_1e
    if-ge v2, v1, :cond_29

    aget-object v3, p0, v2

    invoke-interface {v3, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppWidgetRemove(Ljava/lang/String;)Z

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_29
    const-string/jumbo p0, "request enableSearchWidget:"

    const-string p1, " ret: "

    invoke-static {p0, p2, p1, v3, v0}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_34
    const-string p0, "DeleteAppWidget fail! callback is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private final showTips(Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .registers 10

    const-string p0, "BOTTOM.WIDGET - COMMON"

    const-string/jumbo v0, "showTips"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_14

    const-string p1, "launcher must be resumed"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "key_first_add_bottom_widget"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9f

    new-instance p0, Lcom/android/launcher3/bottomsearch/ExpandTips;

    invoke-direct {p0, p1}, Lcom/android/launcher3/bottomsearch/ExpandTips;-><init>(Landroid/content/Context;)V

    sget-boolean v1, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->crossVersionOTA:Z

    if-eqz v1, :cond_2d

    const v1, 0x7f120147

    goto :goto_30

    :cond_2d
    const v1, 0x7f120146

    :goto_30
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/bottomsearch/ExpandTips;->setContent(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_8c

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v3

    const/high16 v5, 0x3f800000  # 1.0f

    cmpg-float v3, v3, v5

    if-nez v3, :cond_5a

    move v2, v1

    :cond_5a
    if-nez v2, :cond_8c

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v3

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setScaleY(F)V

    invoke-virtual {p0, p2, v4}, Lcom/android/launcher3/bottomsearch/ExpandTips;->showWithDirection(Landroid/view/View;I)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_8f

    :cond_8c
    invoke-virtual {p0, p2, v4}, Lcom/android/launcher3/bottomsearch/ExpandTips;->showWithDirection(Landroid/view/View;I)V

    :goto_8f
    new-instance p2, Lcom/android/launcher3/bottomsearch/PopupStateListener;

    invoke-direct {p2}, Lcom/android/launcher3/bottomsearch/PopupStateListener;-><init>()V

    invoke-virtual {p2, p0}, Lcom/android/launcher3/bottomsearch/PopupStateListener;->setPopup(Landroid/widget/PopupWindow;)V

    sget-object p0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->mutableList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_9f
    return-void
.end method


# virtual methods
.method public addOrDeleteBottomWidget(Lcom/android/launcher3/Launcher;)V
    .registers 8

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->isBottomEnable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "addOrDeleteBottomWidget add:"

    const-string v2, " , caller - "

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BOTTOM.WIDGET - COMMON"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    if-nez v1, :cond_29

    return-void

    :cond_29
    const/4 v2, 0x0

    if-eqz v0, :cond_109

    invoke-virtual {p0, p1}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->launcherSupport(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.bottomsearch.BottomWidgetContainerView"

    const/4 v4, 0x0

    if-nez v0, :cond_50

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f0d015c

    invoke-virtual {v0, v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->setBottomView(Landroid/view/View;)V

    goto :goto_57

    :cond_50
    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    :goto_57
    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->inflateAndBindSearchBox()Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    if-nez v0, :cond_71

    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->setBottomView(Landroid/view/View;)V

    return-void

    :cond_71
    sget-object v0, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpInfo;->getRealScreenWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070de9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    new-instance v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomSearchHeight(Landroid/content/Context;)I

    move-result v5

    invoke-direct {v3, v0, v5}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/16 v0, 0x51

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_99

    goto :goto_9f

    :cond_99
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v4, v0, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    :goto_9f
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e1

    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b3

    :cond_b2
    move-object v0, v2

    :goto_b3
    if-eqz v0, :cond_e1

    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_c1

    :cond_c0
    move-object v0, v2

    :goto_c1
    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e1

    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_d1

    :cond_d0
    move-object v0, v2

    :goto_d1
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_d8

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    :cond_d8
    if-eqz v2, :cond_e1

    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_e1
    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e8

    goto :goto_f8

    :cond_e8
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    if-eqz v2, :cond_f3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    goto :goto_f5

    :cond_f3
    const/high16 v2, 0x3f800000  # 1.0f

    :goto_f5
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_f8
    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lcom/android/keyguardservice/a;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/keyguardservice/a;-><init>(Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_116

    :cond_109
    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->setBottomView(Landroid/view/View;)V

    invoke-static {p1}, Lcom/android/launcher3/bottomsearch/CommonUtils;->deleteAppWidgetId(Landroid/content/Context;)V

    :goto_116
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    return-void
.end method

.method public featureSupport()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher3/bottomsearch/CommonUtils;->featureSupport()Z

    move-result p0

    return p0
.end method

.method public getAppWidgetId(Landroid/content/Context;)I
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/bottomsearch/CommonUtils;->getAppWidgetId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getBottomSearchHeight(Landroid/content/Context;)I
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/bottomsearch/CommonUtils;->getBottomSearchHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getBottomView()Landroid/view/View;
    .registers 1

    sget-object p0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->bottomView:Landroid/view/View;

    return-object p0
.end method

.method public getBrowserSettingIntent(ZLandroid/content/Context;)Landroid/content/Intent;
    .registers 3

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/bottomsearch/CommonUtils;->getBrowserSettingIntent(ZLandroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getCrossVersionOTA()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->crossVersionOTA:Z

    return p0
.end method

.method public getMPreferenceTitle()I
    .registers 1

    sget p0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->mPreferenceTitle:I

    return p0
.end method

.method public final getMutableList$OplusLauncher_RealmePallExportAallRelease()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/ILauncherLifecycleObserver;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->mutableList:Ljava/util/List;

    return-object p0
.end method

.method public getSettingShortcut()Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/bottomsearch/CommonUtils;->getSettingShortcut()Lcom/android/launcher3/popup/SystemShortcut$Factory;

    move-result-object p0

    return-object p0
.end method

.method public initSwitchStatus(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lastVersion"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSupportStatus version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BOTTOM.WIDGET - COMMON"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "has_init_bottom_search"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    const-string/jumbo v2, "not init bottom search"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3c

    move v2, v3

    goto :goto_3d

    :cond_3c
    move v2, v4

    :goto_3d
    const-string v5, "key_is_show_search_box"

    if-nez v2, :cond_84

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_84

    const-string v6, "."

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {p2, v7, v4, v4, v8}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v7, "DISPLAY"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v4, v4, v8}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7a

    const-string p0, "cross version update"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->crossVersionOTA:Z

    invoke-static {p1, v5, v3}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_87

    :cond_7a
    invoke-interface {p0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_87

    invoke-static {p1, v5, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_87

    :cond_84
    invoke-static {p1, v5, v3}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_87
    :goto_87
    invoke-static {p1, v0, v3}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_8a
    return-void
.end method

.method public isBottomEnable(Landroid/content/Context;)Z
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/bottomsearch/CommonUtils;->isBottomEnable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isBottomSearchWidget(Landroid/content/ComponentName;)Z
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/bottomsearch/CommonUtils;->isBottomSearchWidget(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isBottomSearchWidget(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/bottomsearch/CommonUtils;->isBottomSearchWidget(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBottomWidgetAdded(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo p0, "result"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "isWidgetAdded"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isBottomWidgetAdded extra : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " providerName:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BOTTOM.WIDGET - COMMON"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7d

    const/4 p0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_38

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_36

    goto :goto_38

    :cond_36
    move v2, v1

    goto :goto_39

    :cond_38
    :goto_38
    move v2, p0

    :goto_39
    if-nez v2, :cond_7d

    if-eqz p3, :cond_7d

    sget-object v2, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v2, p2}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->isBottomSearchWidget(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string v2, "is_bottom_search_widget"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7d

    const-string p3, "key_is_show_search_box"

    invoke-static {p1, p3, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBottomWidgetAdded bottomAdded : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "bottom_widget_is_added"

    invoke-virtual {p4, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p1, :cond_7c

    invoke-interface {p5, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7b

    goto :goto_7c

    :cond_7b
    move p0, v1

    :cond_7c
    :goto_7c
    return p0

    :cond_7d
    invoke-interface {p5, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public launcherSupport(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/bottomsearch/CommonUtils;->launcherSupport(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    return p0
.end method

.method public needDeleteWidget(Landroid/content/Context;Landroid/content/ComponentName;Z)Z
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cn"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_26

    invoke-static {p2}, Lcom/android/launcher3/bottomsearch/CommonUtils;->isBrowserWidget(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_24

    sget-boolean p0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->crossVersionOTA:Z

    if-eqz p0, :cond_24

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result p0

    if-eqz p0, :cond_24

    invoke-static {p1}, Lcom/android/launcher3/bottomsearch/CommonUtils;->isBottomEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0

    :cond_26
    invoke-static {p2}, Lcom/android/launcher3/bottomsearch/CommonUtils;->isBrowserWidget(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BOTTOM.WIDGET - COMMON"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    :cond_1f
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->setBottomView(Landroid/view/View;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo p0, "owner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "BOTTOM.WIDGET - COMMON"

    const-string/jumbo v0, "onPause"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->mutableList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/ILauncherLifecycleObserver;

    invoke-interface {v0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_14

    :cond_24
    sget-object p0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->mutableList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onRestoreLauncher(Landroid/content/Context;Z)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onRestoreLauncher success "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BOTTOM.WIDGET - COMMON"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_32

    const-string p0, "key_store_from_backup"

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_32

    const-string/jumbo p0, "onRestoreLauncher disable bottom widget"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_is_show_search_box"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_32
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume owner : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " bottomView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BOTTOM.WIDGET - COMMON"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getBottomView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_47

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_47

    new-instance v1, Lcom/android/launcher/widget/a;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher/widget/a;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_47
    return-void
.end method

.method public removeBottomWidget(Landroid/content/ComponentName;Lcom/android/launcher/Launcher;)Z
    .registers 8

    const-string/jumbo v0, "providerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BOTTOM.WIDGET - COMMON"

    const-string/jumbo v1, "removeBottomWidget"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->addOrDeleteBottomWidget(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusLauncherModel;->findWidgetInfoList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_2b

    :cond_29
    move v2, p1

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v2, v1

    :goto_2c
    if-eqz v2, :cond_2f

    return p1

    :cond_2f
    new-instance p1, Lcom/android/launcher3/bottomsearch/BottomSearchImpl$removeBottomWidget$1;

    invoke-direct {p1, p2}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl$removeBottomWidget$1;-><init>(Lcom/android/launcher/Launcher;)V

    new-instance v2, Lcom/android/launcher/folder/download/model/c;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3}, Lcom/android/launcher/folder/download/model/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {p0, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    const-string p1, "itemInfoList"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_91

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_91

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    const-string v3, "launcher.model.mBgDataModel.appWidgets"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v2

    const-string v3, "Removing bindAppWidgetRemove item.id:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    const-string p1, "bindAppWidgetRemove: just remove data, because has not found this widget from container"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    :cond_91
    return v1
.end method

.method public requestAddOrDeleteBottomWidget(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZZLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "ZZ",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    move-object v2, p2

    move-object v0, p3

    move-object/from16 v1, p6

    const-string v3, "context"

    move-object v4, p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "requestAddOrDeleteAppWidget"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "deleteDB"

    move-object/from16 v7, p7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestAddOrDeleteBottomWidget providerName "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , extras : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "BOTTOM.WIDGET - COMMON"

    invoke-static {v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_41

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v3, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v3, 0x1

    :goto_42
    if-nez v3, :cond_82

    if-eqz v0, :cond_82

    sget-object v3, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v3, p2}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->isBottomSearchWidget(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_82

    const-string v3, "is_bottom_search_widget"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v6, "enable_search_widget"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "enable_bottom_widget"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string/jumbo v0, "requestAddOrDeleteBottomWidget isBottomWidget "

    const-string v9, " ,enableSearchWidget:"

    const-string v10, " ,enableBottomWidget:"

    invoke-static {v0, v3, v9, v6, v10}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v8, v5}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v3, :cond_82

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v6

    move v4, v8

    move/from16 v5, p5

    move v6, p4

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->request(Landroid/content/Context;Ljava/lang/String;ZZZZLkotlin/jvm/functions/Function1;)Z

    move-result v0

    return v0

    :cond_82
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, p2, v0, v3, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setBottomView(Landroid/view/View;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->bottomView:Landroid/view/View;

    return-void
.end method

.method public final setCrossVersionOTA(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->crossVersionOTA:Z

    return-void
.end method

.method public setMPreferenceTitle(I)V
    .registers 2

    sput p1, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->mPreferenceTitle:I

    return-void
.end method
