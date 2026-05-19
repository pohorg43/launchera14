.class public final Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;
.super Landroid/view/IOplusWindowStateObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver$Companion;

.field private static final STATUS_BAR_STATE:Ljava/lang/String; = "systembar_state"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SYSTEM_BAR_ID:Ljava/lang/String; = "systembar_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LMistouchGestureBarVisibilityObserver"
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

.field private isShowing:Z

.field private mRegisted:Z

.field private final mWm$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->Companion:Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/view/IOplusWindowStateObserver$Stub;-><init>()V

    sget-object v0, Lkotlin/a;->c:Lkotlin/a;

    sget-object v1, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver$mWm$2;->INSTANCE:Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver$mWm$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->mWm$delegate:Lh4/f;

    return-void
.end method

.method private final getMWm()Landroid/view/OplusWindowManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->mWm$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/OplusWindowManager;

    return-object p0
.end method

.method private final register()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->mRegisted:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->mRegisted:Z

    const-string v0, "QuickStep"

    const-string v1, "LMistouchGestureBarVisibilityObserver"

    const-string v2, "register()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->getMWm()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/OplusWindowManager;->registerOplusWindowStateObserver(Landroid/view/IOplusWindowStateObserver;)V

    return-void
.end method

.method private final unregister()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->mRegisted:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "QuickStep"

    const-string v1, "LMistouchGestureBarVisibilityObserver"

    const-string v2, "unregister()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->getMWm()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/OplusWindowManager;->unregisterOplusWindowStateObserver(Landroid/view/IOplusWindowStateObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->mRegisted:Z

    iput-boolean v0, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->isShowing:Z

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

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->changedAction:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final isShowing()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->isShowing:Z

    return p0
.end method

.method public onWindowStateChange(Landroid/os/Bundle;)V
    .registers 5

    if-eqz p1, :cond_52

    const-string v0, "systembar_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v1, "systembar_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_52

    if-nez p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    iput-boolean p1, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->isShowing:Z

    sget-object p1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGestureBarHideObserver()Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/observer/SwipeSideGestureBarHideObserver;->isHide()Z

    move-result v0

    if-nez v0, :cond_52

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getEnabled()Z

    move-result p1

    if-eqz p1, :cond_52

    const-string p1, "onChange(), showing="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->isShowing:Z

    const-string v1, "QuickStep"

    const-string v2, "LMistouchGestureBarVisibilityObserver"

    invoke-static {p1, v0, v1, v2}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->changedAction:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_52

    iget-boolean p0, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->isShowing:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
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

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->changedAction:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setShowing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->isShowing:Z

    return-void
.end method

.method public final update(Z)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->register()V

    goto :goto_9

    :cond_6
    invoke-direct {p0}, Lcom/oplus/quickstep/mistouch/observer/GestureBarVisibilityObserver;->unregister()V

    :goto_9
    return-void
.end method
