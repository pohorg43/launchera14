.class public final Lcom/android/launcher3/appedit/AppCustomizerManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;,
        Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;,
        Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;,
        Lcom/android/launcher3/appedit/AppCustomizerManager$CustomBroadcastReceiver;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppCustomizerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppCustomizerManager.kt\ncom/android/launcher3/appedit/AppCustomizerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,576:1\n1855#2:577\n1855#2,2:578\n1856#2:580\n1855#2,2:582\n1855#2,2:584\n1855#2,2:586\n1#3:581\n*S KotlinDebug\n*F\n+ 1 AppCustomizerManager.kt\ncom/android/launcher3/appedit/AppCustomizerManager\n*L\n418#1:577\n419#1:578,2\n418#1:580\n446#1:582,2\n464#1:584,2\n349#1:586,2\n*E\n"
    }
.end annotation


# static fields
.field private static final CUSTOMIZE_EDIT_TIME:Ljava/lang/String; = "app_name_customize_edit_time"

.field public static final Companion:Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppCustomizerManager"

.field private static oldTitle:Ljava/lang/String;

.field private static final sInstance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/android/launcher3/appedit/AppCustomizerManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppEditIsShow:Z

.field private mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

.field private mIsDestory:Z

.field private mReceiver:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->Companion:Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;

    const-string v0, ""

    sput-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->oldTitle:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher3/appedit/AppCustomizerManager$Companion$sInstance$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->sInstance$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    invoke-direct {v0}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    new-instance v0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

    invoke-direct {v0}, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mReceiver:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/launcher3/appedit/AppCustomizerManager;->updateItemTitle$lambda$3(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method public static final synthetic access$getMArgs$p(Lcom/android/launcher3/appedit/AppCustomizerManager;)Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    return-object p0
.end method

.method public static final synthetic access$getOldTitle$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->oldTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->sInstance$delegate:Lh4/f;

    return-object v0
.end method

.method public static final synthetic access$identifier(Lcom/android/launcher3/appedit/AppCustomizerManager;Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->identifier(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setOldTitle$cp(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->oldTitle:Ljava/lang/String;

    return-void
.end method

.method private final flatMapVerify(Landroid/content/Context;)Z
    .registers 4

    const-string p0, "flatMapVerify"

    invoke-static {p0}, Lcom/android/launcher3/appedit/AppEditConfig;->isNotSupportOpen(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    sget-object p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppEditModelLoader;->flatMapVerify(Landroid/content/Context;)Z

    move-result p0

    const-string p1, "flatMapVerify "

    const-string v0, "AppEdit"

    const-string v1, "AppCustomizerManager"

    invoke-static {p1, p0, v0, v1}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private final flatMapVerifyBreak(Landroid/content/Context;I)Z
    .registers 3

    sget-object p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppEditModelLoader;->getTableCount(Landroid/content/Context;)I

    move-result p0

    if-lt p2, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private final generateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->Companion:Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic handlerLauncherDestory$default(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 16

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_6

    sget-object p6, Lcom/android/launcher3/appedit/AppCustomizerManager$handlerLauncherDestory$1;->INSTANCE:Lcom/android/launcher3/appedit/AppCustomizerManager$handlerLauncherDestory$1;

    :cond_6
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/appedit/AppCustomizerManager;->handlerLauncherDestory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final identifier(Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 2

    if-eqz p1, :cond_f

    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method private final line(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "--------------------------------"

    const-string v0, "-------------------------------"

    invoke-static {p0, p1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic registerReceiver$default(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    sget-object p2, Lcom/android/launcher3/appedit/AppCustomizerManager$registerReceiver$1;->INSTANCE:Lcom/android/launcher3/appedit/AppCustomizerManager$registerReceiver$1;

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->registerReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method private final resetDragLayer()V
    .registers 8

    const-string v0, "mAppEditIsShow "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mAppEditIsShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppEdit"

    const-string v2, "AppCustomizerManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/config/ContextFetcher;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_129

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_39

    return-void

    :cond_39
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_4c

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_4c

    return-void

    :cond_4c
    const-string v3, "in stable overview state: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->Companion:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;

    invoke-virtual {v1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;->isWorkspaceContentAnim()Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x3f59999a  # 0.85f

    const/high16 v4, 0x3f800000  # 1.0f

    if-nez v1, :cond_b0

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_7f

    goto :goto_b0

    :cond_7f
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mAppEditIsShow:Z

    if-nez v5, :cond_90

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDismissState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8f

    goto :goto_90

    :cond_8f
    move v2, v4

    :cond_90
    :goto_90
    invoke-virtual {v1, v2}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mAppEditIsShow:Z

    if-eqz v2, :cond_9d

    move v2, v3

    goto :goto_9e

    :cond_9d
    move v2, v4

    :goto_9e
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mAppEditIsShow:Z

    if-eqz p0, :cond_aa

    goto :goto_ab

    :cond_aa
    move v3, v4

    :goto_ab
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    goto/16 :goto_129

    :cond_b0
    :goto_b0
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mAppEditIsShow:Z

    if-eqz v5, :cond_ba

    move v5, v2

    goto :goto_bb

    :cond_ba
    move v5, v4

    :goto_bb
    invoke-virtual {v1, v5}, Lcom/android/launcher3/OplusWorkspace;->setAlpha(F)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mAppEditIsShow:Z

    if-eqz v5, :cond_c8

    move v5, v3

    goto :goto_c9

    :cond_c8
    move v5, v4

    :goto_c9
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mAppEditIsShow:Z

    if-eqz v5, :cond_d6

    move v5, v3

    goto :goto_d7

    :cond_d6
    move v5, v4

    :goto_d7
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setScaleY(F)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_e8

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    goto :goto_e9

    :cond_e8
    move-object v1, v5

    :goto_e9
    if-nez v1, :cond_ec

    goto :goto_f5

    :cond_ec
    iget-boolean v6, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mAppEditIsShow:Z

    if-eqz v6, :cond_f1

    goto :goto_f2

    :cond_f1
    move v2, v4

    :goto_f2
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_f5
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    if-eqz v1, :cond_102

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    goto :goto_103

    :cond_102
    move-object v1, v5

    :goto_103
    if-nez v1, :cond_106

    goto :goto_110

    :cond_106
    iget-boolean v2, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mAppEditIsShow:Z

    if-eqz v2, :cond_10c

    move v2, v3

    goto :goto_10d

    :cond_10c
    move v2, v4

    :goto_10d
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    :goto_110
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_11d

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    :cond_11d
    if-nez v5, :cond_120

    goto :goto_129

    :cond_120
    iget-boolean p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mAppEditIsShow:Z

    if-eqz p0, :cond_125

    goto :goto_126

    :cond_125
    move v3, v4

    :goto_126
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_129
    :goto_129
    return-void
.end method

.method private final updateItemTitle(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, " updateItemTitle write: packageName = "

    const-string v1, ", className = "

    const-string v5, ", title = "

    invoke-static {v0, p3, v1, v4, v5}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cxt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modify = "

    const-string v5, ", reset = "

    move v7, p2

    move/from16 v8, p6

    invoke-static {v0, p2, v1, v8, v5}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "AppEdit"

    const-string v5, "AppCustomizerManager"

    move/from16 v9, p7

    invoke-static {v0, v9, v1, v5}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_3a
    move v7, p2

    move/from16 v8, p6

    move/from16 v9, p7

    :goto_3f
    if-eqz v3, :cond_66

    if-eqz v4, :cond_66

    if-eqz v6, :cond_66

    if-nez v2, :cond_48

    goto :goto_66

    :cond_48
    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statsClickAppEditResult()V

    sget-object v10, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v11, Lcom/android/launcher3/appedit/a;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/appedit/a;-><init>(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    invoke-virtual {v10, v11}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_66
    :goto_66
    return-void
.end method

.method public static synthetic updateItemTitle$default(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 21

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager$updateItemTitle$1;->INSTANCE:Lcom/android/launcher3/appedit/AppCustomizerManager$updateItemTitle$1;

    move-object v9, v0

    goto :goto_c

    :cond_a
    move-object/from16 v9, p8

    :goto_c
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/appedit/AppCustomizerManager;->updateItemTitle(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final updateItemTitle$lambda$3(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
    .registers 23

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    const-string/jumbo v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$cxt"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$packageName"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$className"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$title"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateItemTitle mArgs.itemInfo?.user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    invoke-virtual {v2}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v2

    if-eqz v2, :cond_3a

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "AppEdit"

    const-string v14, "AppCustomizerManager"

    invoke-static {v13, v14, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object v1

    invoke-direct {p0, v9, v10, v11}, Lcom/android/launcher3/appedit/AppCustomizerManager;->generateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p1

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/appedit/AppEditModelLoader;->updateTitle(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZ)V

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-virtual {v1, v9}, Lcom/android/launcher3/OplusLauncherModel;->onAppLabelRenamed(Ljava/lang/String;)V

    :cond_6d
    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object v1

    invoke-virtual {v1, v9, v11, v12}, Lcom/android/quickstep/TaskIconCache;->updateCache(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "app_name_customize_edit_time"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_ad

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateItemTitle： isSucceed =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", key = app_name_customize_edit_time, value = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v14, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ad
    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v1}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e5

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_bf
    :goto_bf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    if-eqz v3, :cond_bf

    new-instance v4, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v5, 0x2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    invoke-direct {v4, v5, v2, v6}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_bf

    :cond_e5
    if-eqz p7, :cond_f4

    sget-object v1, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object v1

    invoke-direct {p0, v9, v10, v11}, Lcom/android/launcher3/appedit/AppCustomizerManager;->generateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/android/launcher3/appedit/AppEditModelLoader;->deleteTitle(Landroid/content/Context;Ljava/lang/String;)V

    :cond_f4
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_10a

    new-instance v1, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v1, v2, v8, v9}, Lcom/android/launcher/model/UpdateSplitScreenCombinationTitleTask;-><init>(Landroid/os/UserHandle;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_10a
    return-void
.end method


# virtual methods
.method public final destroys(Landroid/content/Context;)V
    .registers 3

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->unRegisterReceiver(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mIsDestory:Z

    return-void
.end method

.method public final flatMapAllAppInfo(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flatMap allAppInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1c

    :cond_1b
    move-object v3, v2

    :goto_1c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start"

    invoke-direct {p0, v4}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppEdit"

    const-string v6, "AppCustomizerManager"

    invoke-static {v0, v4, v5, v6}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapVerify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_39

    return-void

    :cond_39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_43

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    const/4 v7, -0x1

    invoke-virtual {p0, v4, p1, v7}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I

    goto :goto_47

    :cond_58
    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p2, :cond_66

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_66
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "end"

    invoke-direct {p0, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v5, v6}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I
    .registers 11

    const-string v0, "cxt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_f3

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    return v0

    :cond_e
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const-string v3, "flatMapInfo screenId "

    const-string v4, "AppCustomizerManager"

    const-string v5, "AppEdit"

    if-eq v1, p3, :cond_36

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1c

    goto :goto_36

    :cond_1c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_f3

    const-string p0, " != itemInfo.screenId continue; title "

    invoke-static {v3, p3, p0}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f3

    :cond_36
    :goto_36
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_5b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " itemInfo 2 "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "  "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, v4, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_f3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_f3

    const-string v1, "className"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->identifier(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v6

    invoke-direct {p0, v3, p3, v6}, Lcom/android/launcher3/appedit/AppCustomizerManager;->generateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Lcom/android/launcher3/appedit/AppEditModelLoader;->mapEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object p0

    if-eqz p0, :cond_f3

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTittleStatus()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_8b

    goto :goto_97

    :cond_8b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_97

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_97
    :goto_97
    instance-of p2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz p2, :cond_9f

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    goto :goto_a0

    :cond_9f
    const/4 p2, 0x0

    :goto_a0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTittleStatus()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_aa

    goto :goto_b2

    :cond_aa
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_b2

    move v1, v2

    goto :goto_b3

    :cond_b2
    :goto_b2
    move v1, v0

    :goto_b3
    iput-boolean v1, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsLabelEdited:Z

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getIconStatus()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_bc

    goto :goto_c3

    :cond_bc
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_c3

    move v0, v2

    :cond_c3
    :goto_c3
    iput-boolean v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsIconEdited:Z

    const-string v0, "flatMapInfo className "

    const-string v1, " title "

    invoke-static {v0, p3, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " map title 2 "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " IsLabelEdited: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsLabelEdited:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "mIsIconEdited: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsIconEdited:Z

    invoke-static {p3, p0, v5, v4}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_f3
    :goto_f3
    return v0
.end method

.method public final flatMapWorkItemInfo(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;I)V
    .registers 12

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapVerify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const-string v0, "flatMapWorkItemInfo workspaceItems "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_22

    iget-object v2, p2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_23

    :cond_22
    move-object v2, v1

    :goto_23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start"

    invoke-direct {p0, v3}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AppEdit"

    const-string v5, "AppCustomizerManager"

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flatMapWorkItemInfo folders "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_59

    iget-object v7, p2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    if-eqz v7, :cond_59

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5a

    :cond_59
    move-object v7, v1

    :goto_5a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4, v5}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_82

    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_82

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_72
    if-ge v3, v0, :cond_82

    iget-object v7, p2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v7, p1, p3}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    :cond_82
    if-eqz p2, :cond_b5

    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    if-eqz v0, :cond_b5

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_8c

    const-string v7, "contents"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v7, p1, p3}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I

    goto :goto_a5

    :cond_b5
    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p2, :cond_c7

    iget-object p2, p2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    if-eqz p2, :cond_c7

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_c7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "end"

    invoke-direct {p0, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v4, v5}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final flatMapWorkItemInfo(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 7

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapVerify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flatMapWorkItemInfo workspaceItems "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppEdit"

    const-string v3, "AppCustomizerManager"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I

    return-void
.end method

.method public final getCustomizeAppTitle(Landroid/content/ComponentName;ILandroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string v0, "cxt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    sget-object v1, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "it.className"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->generateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p3, p0}, Lcom/android/launcher3/appedit/AppEditModelLoader;->mapEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_29
    return-object v0
.end method

.method public final getCustomizeAppTitle(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "cxt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f

    const-string v1, "className"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->identifier(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/android/launcher3/appedit/AppCustomizerManager;->generateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Lcom/android/launcher3/appedit/AppEditModelLoader;->mapEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object p0

    if-eqz p0, :cond_5f

    const-string p2, "flatMapInfo className "

    const-string v1, " title "

    invoke-static {p2, v0, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " map title 2 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppEdit"

    const-string v1, "AppCustomizerManager"

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPendingArgs()Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    return-object p0
.end method

.method public final handlerLauncherDestory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "cxt"

    move-object v2, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "packageName"

    move-object v3, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    move-object v5, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callBack"

    move-object/from16 v4, p6

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsDestory "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mIsDestory:Z

    const-string v6, "AppEdit"

    const-string v7, "AppCustomizerManager"

    invoke-static {v1, v4, v6, v7}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mIsDestory:Z

    if-eqz v1, :cond_67

    iget-object v1, v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    invoke-virtual {v1}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_67

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cxt.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    invoke-virtual {v2}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->identifier(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v2

    const/4 v8, 0x0

    const/16 v9, 0x80

    const/4 v10, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/appedit/AppCustomizerManager;->updateItemTitle$default(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_67
    return-void
.end method

.method public final isShowAppEdit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mAppEditIsShow:Z

    return p0
.end method

.method public final onAppEditActivityDestroy()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mAppEditIsShow:Z

    invoke-direct {p0}, Lcom/android/launcher3/appedit/AppCustomizerManager;->resetDragLayer()V

    return-void
.end method

.method public final onAppEditActivityShow()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mAppEditIsShow:Z

    invoke-direct {p0}, Lcom/android/launcher3/appedit/AppCustomizerManager;->resetDragLayer()V

    return-void
.end method

.method public final onCreate(Landroid/content/Context;)V
    .registers 3

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/appedit/AppCustomizerManager$onCreate$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager$onCreate$1;-><init>(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/appedit/AppCustomizerManager;->registerReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mIsDestory:Z

    return-void
.end method

.method public final pendingReqArgs(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    instance-of v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    goto :goto_11

    :cond_10
    move-object v1, v2

    :goto_11
    invoke-virtual {v0, v1}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    :cond_20
    if-nez v2, :cond_24

    const-string v2, ""

    :cond_24
    invoke-virtual {p0, v2}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->setComponent(Ljava/lang/String;)V

    return-void
.end method

.method public final registerReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mReceiver:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->registerReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public final removePackage(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapVerify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    return-void

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removePackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppEdit"

    const-string v2, "AppCustomizerManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    sget-object v1, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->identifier(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p2

    invoke-direct {p0, v2, v0, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->generateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/android/launcher3/appedit/AppEditModelLoader;->deleteTitle(Landroid/content/Context;Ljava/lang/String;)V

    :cond_51
    return-void
.end method

.method public final reqUpdateWorkspaceItemInfo(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapVerify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const-string/jumbo v0, "reqUpdateWorkspaceItemInfo "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "st_end"

    invoke-direct {p0, v1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppEdit"

    const-string v3, "AppCustomizerManager"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4c

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I

    goto :goto_3b

    :cond_4c
    return-void
.end method

.method public final unRegisterReceiver(Landroid/content/Context;)V
    .registers 3

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mReceiver:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->unRegisterReceiver(Landroid/content/Context;)V

    return-void
.end method
