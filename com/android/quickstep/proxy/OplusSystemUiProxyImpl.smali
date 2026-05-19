.class public abstract Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/recents/ISystemUiProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusSystemUiProxyImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusSystemUiProxyImpl.kt\ncom/android/quickstep/proxy/OplusSystemUiProxyImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,188:1\n1#2:189\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl$Companion;

.field public static final STATE_BINDER_DIED:I = 0x4

.field public static final STATE_DESTROY:I = 0x3

.field public static final STATE_INITIALIZE_FAIL:I = 0x2

.field public static final STATE_INITIALIZE_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OplusSystemUiProxyImpl"

.field private static final TRANSACTION_FORCE_CANCEL_RECENTS:I = 0x7


# instance fields
.field public mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private pendingGestureRegionChanged:Ljava/lang/Runnable;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->Companion:Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->changeBottomGestureAreaRatio$lambda$19$lambda$18(Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;F)V

    return-void
.end method

.method private static final changeBottomGestureAreaRatio$lambda$19$lambda$18(Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;F)V
    .registers 3

    const-string v0, "$this_run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->changeBottomGestureAreaRatio(F)V

    return-void
.end method

.method private final notifyForceCancelRecentsTransition(Landroid/os/IBinder;)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const-string v0, "com.android.wm.shell.transition.IShellTransitions"

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, p0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    goto :goto_1a

    :catchall_15
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1a
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_21

    goto :goto_29

    :cond_21
    const-string/jumbo p1, "notifyForceCancelRecentsTransition failure, e="

    const-string v0, "OplusSystemUiProxyImpl"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_29
    return-void
.end method


# virtual methods
.method public final addTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)Z
    .registers 5

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTaskListener: mShellTransitions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusSystemUiProxyImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    const/4 v0, 0x0

    if-eqz p0, :cond_51

    :try_start_2a
    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/IShellTransitions;->registerRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V

    const/4 v0, 0x1

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_31

    goto :goto_36

    :catchall_31
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_36
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3d

    goto :goto_51

    :cond_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTaskListener: add task listener failed, e="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    :goto_51
    return v0
.end method

.method public changeBottomGestureAreaRatio(F)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_33

    :try_start_7
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->changeBottomGestureAreaRatio(F)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_12
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_19

    goto :goto_2f

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed call changeBottomGestureAreaRatio, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemUiProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->pendingGestureRegionChanged:Ljava/lang/Runnable;

    goto :goto_41

    :cond_33
    const-string v0, "OplusSystemUiProxyImpl"

    const-string v1, "changeBottomGestureAreaRatio: mSystemUiProxy is null, run changeBottomGestureAreaRatio when mSystemUiProxy is set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/launcher3/graphics/h;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/graphics/h;-><init>(Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;F)V

    iput-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->pendingGestureRegionChanged:Ljava/lang/Runnable;

    :goto_41
    return-void
.end method

.method public changeMistouchBarVisiablity(ZZ)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_2f

    :try_start_7
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->changeMistouchBarVisiablity(ZZ)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_2f

    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed call changeMistouchBarVisiablity, e="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUiProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final checkIfProxyNull()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "checkIfProxyNull: mSystemUiProxy is NULL. state="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->state:I

    const-string v1, "QuickStep"

    const-string v2, "OplusSystemUiProxyImpl"

    invoke-static {v0, p0, v1, v2}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final executeGestureRegionChangedTransaction()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusSystemUiProxyImpl"

    const-string v2, "executeGestureRegionChangedTransaction()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->pendingGestureRegionChanged:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->pendingGestureRegionChanged:Ljava/lang/Runnable;

    return-void
.end method

.method public final forceCancelRecentsTransition()V
    .registers 4

    const-string v0, "forceCancelRecentsTransition: mShellTransitions = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusSystemUiProxyImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz v0, :cond_4d

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_4d

    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->notifyForceCancelRecentsTransition(Landroid/os/IBinder;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2c

    goto :goto_31

    :catchall_2c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_31
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_38

    goto :goto_4d

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTaskListener: remove task listener failed, e="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final getState()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->state:I

    return p0
.end method

.method public notifyAppTransition(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyAppTransition: bundle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusSystemUiProxyImpl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_49

    :try_start_23
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAppTransition(Landroid/os/Bundle;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_29

    goto :goto_2e

    :catchall_29
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_2e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_35

    goto :goto_49

    :cond_35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed call notifyAppTransition, e="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    return-void
.end method

.method public notifyInjectAllEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/view/MotionEvent;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_2f

    :try_start_7
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyInjectAllEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Ljava/util/List;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_2f

    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed call notifyInjectAllEvent, e="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUiProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    return-void
.end method

.method public notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_2f

    :try_start_7
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_2f

    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed call notifyInjectEvent, e="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUiProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    return-void
.end method

.method public notifyKeyEvent(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_2f

    :try_start_7
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyKeyEvent(I)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_2f

    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed call notifyKeyEvent, e="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUiProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    return-void
.end method

.method public notifySwipeToRecentFinished()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_2f

    :try_start_7
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifySwipeToRecentFinished()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_2f

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed call notifySwipeToRecentFinished, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusSystemUiProxyImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    return-void
.end method

.method public onGetAppIcon(Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_2f

    :try_start_7
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onGetAppIcon(Landroid/graphics/Bitmap;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_2f

    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed call onGetAppIcon, e="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUiProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final removeTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeTaskListener: mShellTransitions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusSystemUiProxyImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz p0, :cond_51

    :try_start_2a
    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/IShellTransitions;->unregisterRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_30

    goto :goto_35

    :catchall_30
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_35
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3c

    goto :goto_51

    :cond_3c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeTaskListener: remove task listener failed, e="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    :goto_51
    return-void
.end method

.method public final setState(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->state:I

    return-void
.end method
