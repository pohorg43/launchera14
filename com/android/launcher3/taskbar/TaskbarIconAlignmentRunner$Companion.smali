.class public final Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final childCountMisMatch(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/taskbar/TaskbarView;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "hotseat"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "taskbarView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-eq p0, p1, :cond_1b

    const/4 p2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x0

    :goto_1c
    if-eqz p2, :cond_27

    const-string v0, "childCountMisMatch, dockChildCount = "

    const-string v1, ", taskbarIconCount = "

    const-string v2, "TaskbarIconAlignmentRunner"

    invoke-static {v0, p0, v1, p1, v2}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    :cond_27
    return p2
.end method

.method public final getDuration(ZZ)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p2, :cond_5

    const/16 p0, 0x2ee

    return p0

    :cond_5
    const/16 p0, 0x320

    return p0
.end method

.method public final getInterpolator(Z)Landroid/view/animation/Interpolator;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->access$getLAUNCH_APP_INTERPOLATOR$cp()Landroid/view/animation/PathInterpolator;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->access$getCLOSE_APP_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;

    move-result-object p0

    :goto_b
    return-object p0
.end method
