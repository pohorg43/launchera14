.class public final Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$createTaskbarTranslateYForHomeAnim$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->createTaskbarTranslateYForHomeAnim(FJLandroid/view/animation/Interpolator;Landroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $toValue:F

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;F)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$createTaskbarTranslateYForHomeAnim$2$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    iput p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$createTaskbarTranslateYForHomeAnim$2$1;->$toValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$createTaskbarTranslateYForHomeAnim$2$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    iget v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$createTaskbarTranslateYForHomeAnim$2$1;->$toValue:F

    invoke-static {p1, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->access$onIconTranslationYForHomeEnd(Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;F)V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_ICON_TRANSLATION_Y_FOR_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$createTaskbarTranslateYForHomeAnim$2$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->setTranslationYForHome(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$createTaskbarTranslateYForHomeAnim$2$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->setTranslationYForHome(Z)V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_ICON_TRANSLATION_Y_FOR_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$createTaskbarTranslateYForHomeAnim$2$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->access$onIconTranslationYForHomeStart(Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;)V

    return-void
.end method
