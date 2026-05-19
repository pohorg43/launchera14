.class public final Lcom/oplus/quickstep/navigation/NavigationController$mNavStateChangeListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/common/IObserverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/navigation/NavigationController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/navigation/NavigationController;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/navigation/NavigationController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateChangeListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateChangeListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-static {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->access$getMNavStateObserver$p(Lcom/oplus/quickstep/navigation/NavigationController;)Lcom/oplus/quickstep/common/observers/NavStateObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateChangeListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-static {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->access$getMNavStateObserver$p(Lcom/oplus/quickstep/navigation/NavigationController;)Lcom/oplus/quickstep/common/observers/NavStateObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_20

    goto :goto_22

    :cond_20
    move v0, v1

    goto :goto_23

    :cond_22
    :goto_22
    move v0, v2

    :goto_23
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--->notifyModeChange isNavButtonState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateChangeListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-static {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->access$getMNavStateObserver$p(Lcom/oplus/quickstep/navigation/NavigationController;)Lcom/oplus/quickstep/common/observers/NavStateObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result p0

    if-nez p0, :cond_3d

    move v1, v2

    :cond_3d
    const-string p0, "NavigationController"

    invoke-static {p1, v1, p0}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method
