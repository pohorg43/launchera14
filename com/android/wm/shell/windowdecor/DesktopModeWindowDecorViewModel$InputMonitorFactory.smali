.class Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMonitorFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/hardware/input/InputManager;Landroid/content/Context;)Landroid/view/InputMonitor;
    .registers 3

    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    const-string p2, "caption-touch"

    invoke-virtual {p1, p2, p0}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p0

    return-object p0
.end method
