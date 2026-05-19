.class public abstract Lcom/android/quickstep/OplusBaseRecentsActivity;
.super Lcom/android/launcher3/statemanager/StatefulActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusBaseRecentsActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "Lcom/android/quickstep/fallback/RecentsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/OplusBaseRecentsActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusBaseRecentsActivity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mDockviewPanel:Lcom/oplus/quickstep/dock/DockView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;"
        }
    .end annotation
.end field

.field public mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

.field private mIsRecentsVisibility:Z

.field private final mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

.field private mTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

.field private final mWms$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusBaseRecentsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusBaseRecentsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusBaseRecentsActivity;->Companion:Lcom/android/quickstep/OplusBaseRecentsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mIsRecentsVisibility:Z

    sget-object v0, Lkotlin/a;->c:Lkotlin/a;

    sget-object v1, Lcom/android/quickstep/OplusBaseRecentsActivity$mWms$2;->INSTANCE:Lcom/android/quickstep/OplusBaseRecentsActivity$mWms$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mWms$delegate:Lh4/f;

    new-instance v0, Lcom/android/launcher3/taskbar/z0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/z0;-><init>(Lcom/android/quickstep/OplusBaseRecentsActivity;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    return-void
.end method

.method private final getMWms()Landroid/view/IWindowManager;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mWms$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mWms>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/IWindowManager;

    return-object p0
.end method

.method public static synthetic i(Lcom/android/quickstep/OplusBaseRecentsActivity;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusBaseRecentsActivity;->mScreenOnListener$lambda$1(Lcom/android/quickstep/OplusBaseRecentsActivity;Z)V

    return-void
.end method

.method private static final mScreenOnListener$lambda$1(Lcom/android/quickstep/OplusBaseRecentsActivity;Z)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_46

    const-string p1, "QuickStep"

    const-string v0, "OplusBaseRecentsActivity"

    const-string/jumbo v1, "onScreenOff, go home."

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_46

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    const-class v0, Lcom/android/quickstep/RecentsActivity;

    const-string v0, "com.android.quickstep.RecentsActivity"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_46

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_46
    return-void
.end method


# virtual methods
.method public createAtomicAnimationFactory()Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory<",
            "Lcom/android/quickstep/fallback/RecentsState;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/quickstep/util/OplusRecentsAtomicAnimationFactoryImpl;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/OplusRecentsAtomicAnimationFactoryImpl;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    return-object v0
.end method

.method public final getMFallbackRecentsView()Lcom/android/quickstep/fallback/FallbackRecentsView;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mFallbackRecentsView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    return-object p0
.end method

.method public final initView()V
    .registers 3

    const v0, 0x7f0a0246

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/oplus/quickstep/dock/DockView;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/oplus/quickstep/dock/DockView;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_1a

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mDockviewPanel:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->getMFallbackRecentsView()Lcom/android/quickstep/fallback/FallbackRecentsView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockView(Lcom/oplus/quickstep/dock/DockView;)V

    :cond_1a
    const v0, 0x7f0a04b7

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->getMFallbackRecentsView()Lcom/android/quickstep/fallback/FallbackRecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_11

    :cond_e
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    :goto_11
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/ScreenOnTracker;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/ScreenOnTracker;->addListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseRecentsActivity"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ScreenOnTracker;

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/ScreenOnTracker;->removeListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    iget-boolean v0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mIsRecentsVisibility:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->setRecentsInVisibility()V

    :cond_1e
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->getMFallbackRecentsView()Lcom/android/quickstep/fallback/FallbackRecentsView;

    move-result-object p0

    const/4 v0, 0x1

    const-string/jumbo v1, "onResume"

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisible(ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->setStartDone()V

    return-void
.end method

.method public onStart()V
    .registers 5

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onStart()V

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseRecentsActivity"

    const-string/jumbo v2, "onStart"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->getMWms()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->setRecentsVisibility(Z)V

    iput-boolean v3, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mIsRecentsVisibility:Z

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1a

    goto :goto_1f

    :catchall_1a
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1f
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_26

    goto :goto_3b

    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRecentsVisibility to true, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b
    return-void
.end method

.method public onStop()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStop()V

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseRecentsActivity"

    const-string/jumbo v2, "onStop"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->setRecentsInVisibility()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->setStartDone()V

    return-void
.end method

.method public final setMFallbackRecentsView(Lcom/android/quickstep/fallback/FallbackRecentsView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    return-void
.end method

.method public final setRecentsInVisibility()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->getMWms()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setRecentsVisibility(Z)V

    iput-boolean v1, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mIsRecentsVisibility:Z

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_32

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecentsVisibility to false, e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseRecentsActivity"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    return-void
.end method
