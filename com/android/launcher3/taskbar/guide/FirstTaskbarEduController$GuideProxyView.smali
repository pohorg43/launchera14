.class Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuideProxyView"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;->this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(ZLcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;->lambda$handleClose$0(ZLcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;->show()V

    return-void
.end method

.method private static synthetic lambda$handleClose$0(ZLcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private show()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;->this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->access$000(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public handleClose(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;->this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->access$000(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController$GuideProxyView;->this$0:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->access$200(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;)Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/batchdrag/c;->d:Lcom/android/launcher/batchdrag/c;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/taskbar/guide/a;

    invoke-direct {v0, p1}, Lcom/android/launcher3/taskbar/guide/a;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isOfType(I)Z
    .registers 2

    const/high16 p0, 0x10000

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
