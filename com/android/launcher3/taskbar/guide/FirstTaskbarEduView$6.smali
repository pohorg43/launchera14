.class Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$6;->this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_GUIDE_OPEN_OR_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$6;->this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->access$500(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_GUIDE_OPEN_OR_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method
