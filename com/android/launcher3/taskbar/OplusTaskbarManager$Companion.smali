.class public final Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarManager;
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

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isSmallScreenButtonNavMode(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "taskbarContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object v0

    const-string/jumbo v1, "taskbarContext.taskbarProfile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;->isSmallScreenMode(Lcom/android/launcher3/taskbar/TaskbarProfile;)Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public final isSmallScreenMode(Lcom/android/launcher3/taskbar/TaskbarProfile;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "taskbarProfile"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isHideTaskbarWindowOnSmallScreen()Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method
