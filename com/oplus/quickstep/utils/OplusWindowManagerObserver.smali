.class public final Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;
.super Landroid/view/IOplusWindowStateObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/OplusWindowManagerObserver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/utils/OplusWindowManagerObserver$Companion;

.field public static final INPUT:Ljava/lang/String; = "input"

.field private static final TAG:Ljava/lang/String; = "OplusWindowManagerObserver"


# instance fields
.field private final callBack:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/os/Bundle;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

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

.field private mRegistered:Z

.field private final mWm$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->Companion:Lcom/oplus/quickstep/utils/OplusWindowManagerObserver$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/os/Bundle;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/IOplusWindowStateObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->callBack:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lkotlin/a;->c:Lkotlin/a;

    sget-object v0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver$mWm$2;->INSTANCE:Lcom/oplus/quickstep/utils/OplusWindowManagerObserver$mWm$2;

    invoke-static {p1, v0}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->mWm$delegate:Lh4/f;

    return-void
.end method

.method private final getMWm()Landroid/view/OplusWindowManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->mWm$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/OplusWindowManager;

    return-object p0
.end method


# virtual methods
.method public final getCallBack()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/os/Bundle;",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->callBack:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

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

    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->changedAction:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final isInputShow()Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->getMWm()Landroid/view/OplusWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/OplusWindowManager;->isInputShow()Z

    move-result p0

    return p0
.end method

.method public onWindowStateChange(Landroid/os/Bundle;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->callBack:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final register()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->mRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->mRegistered:Z

    const-string v0, "QuickStep"

    const-string v1, "OplusWindowManagerObserver"

    const-string v2, "register()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->getMWm()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/OplusWindowManager;->registerOplusWindowStateObserver(Landroid/view/IOplusWindowStateObserver;)V

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

    iput-object p1, p0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->changedAction:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final unregister()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->mRegistered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "QuickStep"

    const-string v1, "OplusWindowManagerObserver"

    const-string v2, "unregister()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->getMWm()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/OplusWindowManager;->unregisterOplusWindowStateObserver(Landroid/view/IOplusWindowStateObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/OplusWindowManagerObserver;->mRegistered:Z

    return-void
.end method
