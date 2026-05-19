.class final Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$mAppTransitionManagerImpl$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/DeviceProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$mAppTransitionManagerImpl$2;->this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$mAppTransitionManagerImpl$2;->this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;

    invoke-static {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.OplusQuickstepTransitionManagerImpl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$mAppTransitionManagerImpl$2;->invoke()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object p0

    return-object p0
.end method
