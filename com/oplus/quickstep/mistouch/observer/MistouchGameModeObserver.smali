.class public final Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;
.super Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMistouchGameModeObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MistouchGameModeObserver.kt\ncom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n1#2:133\n*E\n"
    }
.end annotation


# static fields
.field private static final APP_VALUE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver$Companion;

.field private static final GAME_VALUE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY:Ljava/lang/String; = "gesture_mistouch_in_game_mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LMistouchGameModeObserver"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final UNRECOGNIZED_FWKS_VALUE:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final UNRECOGNIZED_VALUE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private changedAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private final mOplusActivityManager$delegate:Lh4/f;

.field private final mOplusStatusBarManager$delegate:Lh4/f;

.field private mRegisted:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->Companion:Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;-><init>()V

    sget-object v0, Lkotlin/a;->c:Lkotlin/a;

    sget-object v1, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver$mOplusActivityManager$2;->INSTANCE:Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver$mOplusActivityManager$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->mOplusActivityManager$delegate:Lh4/f;

    sget-object v1, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver$mOplusStatusBarManager$2;->INSTANCE:Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver$mOplusStatusBarManager$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->mOplusStatusBarManager$delegate:Lh4/f;

    return-void
.end method

.method private final checkFromFrameworks()Z
    .registers 9

    const-string v0, "LMistouchGameModeObserver"

    const-string v1, "QuickStep"

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->getMOplusActivityManager()Landroid/app/OplusActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/OplusActivityManager;->getAllTopAppInfos()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_18

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_18

    move v5, v4

    goto :goto_19

    :cond_18
    move v5, v2

    :goto_19
    if-nez v5, :cond_3c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFromFrameworks(), appInfos="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_30

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3c
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/app/OplusAppInfo;

    if-eqz v3, :cond_a4

    const-string v5, "appInfos[0]"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/oplus/app/OplusAppInfo;

    invoke-direct {v5, v3}, Lcom/oplus/app/OplusAppInfo;-><init>(Lcom/oplus/app/OplusAppInfo;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->getMOplusStatusBarManager()Landroid/app/OplusStatusBarManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/OplusStatusBarManager;->getTopIsFullscreen()Z

    move-result v3

    iget v6, v5, Lcom/oplus/app/OplusAppInfo;->orientation:I

    invoke-direct {p0, v6}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->isAppRequestLand(I)Z

    move-result p0

    iget-object v6, v5, Lcom/oplus/app/OplusAppInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_65

    return v2

    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkFromFrameworks(), isLand="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", pkg="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", launchedPkg="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/oplus/app/OplusAppInfo;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", isRoot="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/oplus/app/OplusAppInfo;->isRootActivity:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_a4

    iget-object p0, v5, Lcom/oplus/app/OplusAppInfo;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a3

    iget-boolean p0, v5, Lcom/oplus/app/OplusAppInfo;->isRootActivity:Z
    :try_end_a1
    .catchall {:try_start_5 .. :try_end_a1} :catchall_a5

    if-eqz p0, :cond_a4

    :cond_a3
    move v2, v4

    :cond_a4
    return v2

    :catchall_a5
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_c4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFromFrameworks(), e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c4
    return v2
.end method

.method private final getMOplusActivityManager()Landroid/app/OplusActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->mOplusActivityManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/OplusActivityManager;

    return-object p0
.end method

.method private final getMOplusStatusBarManager()Landroid/app/OplusStatusBarManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->mOplusStatusBarManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/OplusStatusBarManager;

    return-object p0
.end method

.method private final isAppRequestLand(I)Z
    .registers 2

    if-eqz p1, :cond_f

    const/4 p0, 0x6

    if-eq p1, p0, :cond_f

    const/16 p0, 0x8

    if-eq p1, p0, :cond_f

    const/16 p0, 0xb

    if-eq p1, p0, :cond_f

    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private final register(Landroid/content/Context;I)V
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->mRegisted:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->mRegisted:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register(), from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QuickStep"

    const-string v1, "LMistouchGameModeObserver"

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    return-void
.end method

.method private final unregister(Landroid/content/Context;I)V
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->mRegisted:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->mRegisted:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister(), from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QuickStep"

    const-string v1, "LMistouchGameModeObserver"

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->unregister(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getChangedAction()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->changedAction:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    const-string p0, "gesture_mistouch_in_game_mode"

    return-object p0
.end method

.method public getUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/common/AbstractObserver;->Companion:Lcom/oplus/quickstep/common/AbstractObserver$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;->toSecureUri()Ljava/util/function/Function;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "toSecureUri().apply(getKey())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public initState(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->updateValue()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getMState()I

    move-result p0

    return p0
.end method

.method public final isInGame()Z
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getMState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onChange(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/AbstractObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->updateValue()V

    iget-object v0, p0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->changedAction:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->isInGame()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-super {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->onChange(Z)V

    return-void
.end method

.method public final setChangedAction(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->changedAction:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final update(ZI)V
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_e

    invoke-direct {p0, v0, p2}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->register(Landroid/content/Context;I)V

    goto :goto_11

    :cond_e
    invoke-direct {p0, v0, p2}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->unregister(Landroid/content/Context;I)V

    :cond_11
    :goto_11
    return-void
.end method

.method public final updateValue()V
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5d

    sget-object v1, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    const-string v2, "gesture_mistouch_in_game_mode"

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eq v0, v3, :cond_19

    if-eq v0, v2, :cond_25

    const/4 v3, 0x0

    goto :goto_28

    :cond_19
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->checkFromFrameworks()Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_25
    move v3, v2

    goto :goto_28

    :cond_27
    move v3, v1

    :goto_28
    invoke-virtual {p0, v3}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->setMState(I)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getMState()I

    move-result v3

    if-eq v3, v1, :cond_39

    if-eq v3, v2, :cond_36

    const-string v1, "app"

    goto :goto_3b

    :cond_36
    const-string v1, "game"

    goto :goto_3b

    :cond_39
    const-string v1, "fwks unrecognized"

    :goto_3b
    const-string v2, "updateValue(), value="

    const-string v3, ", state="

    invoke-static {v2, v0, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getMState()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", mode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "LMistouchGameModeObserver"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    return-void
.end method
