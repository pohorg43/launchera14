.class public final Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/OplusTaskViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LockEventListener"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskViewImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskViewImpl.kt\ncom/android/quickstep/views/OplusTaskViewImpl$LockEventListener\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1160:1\n252#2:1161\n*S KotlinDebug\n*F\n+ 1 OplusTaskViewImpl.kt\ncom/android/quickstep/views/OplusTaskViewImpl$LockEventListener\n*L\n210#1:1161\n*E\n"
    }
.end annotation


# instance fields
.field private final taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 3

    const-string/jumbo v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    return-void
.end method


# virtual methods
.method public final getTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    return-object p0
.end method

.method public final onBusEvent(Lcom/oplus/quickstep/events/ui/UpdateLockViewEvent;)V
    .registers 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got bus event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    iget-object p1, p1, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {p1}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->updateLockState()V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isLocked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {v1}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->isShowSuperLockRelatedUI()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->updateLockIconVisibility(ZZZ)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getHintPoint()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_45

    move p1, v2

    goto :goto_46

    :cond_45
    move p1, v0

    :goto_46
    if-eqz p1, :cond_55

    sget-object p1, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->isUserOperateSuperLockInMenu()Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p0, v0, v2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->updateHintPointVisibility(ZZ)V

    :cond_55
    return-void
.end method
