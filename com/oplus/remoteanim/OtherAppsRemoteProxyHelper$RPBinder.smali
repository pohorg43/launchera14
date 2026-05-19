.class public final Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;
.super Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RPBinder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->onRecentsAnimationFinished$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->onRecentsAnimationStart$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->onViewAlphaChanged$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->onRecentsAnimationSurfaceSave$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method private static final onRecentsAnimationFinished$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onRecentsAnimationStart$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onRecentsAnimationSurfaceSave$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onViewAlphaChanged$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onRecentsAnimationFinished(Landroid/os/Bundle;)V
    .registers 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string p0, "OtherAppsRemoteProxyHelper"

    const-string v0, "onRecentsAnimationFinished()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->getOtherAppsRemoteListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onRecentsAnimationFinished$1;

    invoke-direct {v0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onRecentsAnimationFinished$1;-><init>(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/wm/shell/pip/f;

    invoke-direct {p1, v0}, Lcom/android/wm/shell/pip/f;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRecentsAnimationStart(Landroid/os/Bundle;)V
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string p0, "OtherAppsRemoteProxyHelper"

    const-string v0, "onRecentsAnimationStart()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->getOtherAppsRemoteListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onRecentsAnimationStart$1;

    invoke-direct {v0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onRecentsAnimationStart$1;-><init>(Landroid/os/Bundle;)V

    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/b;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string p0, "OtherAppsRemoteProxyHelper"

    const-string v0, "onRecentsAnimationSurfaceSave()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->getOtherAppsRemoteListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onRecentsAnimationSurfaceSave$1;

    invoke-direct {v0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onRecentsAnimationSurfaceSave$1;-><init>(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/launcher3/card/h;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/card/h;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onViewAlphaChanged(F)V
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->getOtherAppsRemoteListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onViewAlphaChanged$1;

    invoke-direct {v0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onViewAlphaChanged$1;-><init>(F)V

    new-instance p1, Lcom/android/launcher3/card/g;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/card/g;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
