.class public final Lcom/android/launcher3/taskbar/TaskbarInsetsController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarInsetsController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/TaskbarInsetsController$Companion;

.field private static final INDEX_LEFT:I = 0x0

.field private static final INDEX_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TaskbarInsetsController"

.field private static final TASKBAR_PROVIDED_INSETS_FLAG:I = -0x80000000


# instance fields
.field private final context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final deviceProfileChangeListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/android/launcher3/DeviceProfile;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private final gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field private final insetsOwner:Landroid/os/IBinder;

.field private final taskbarHeightForIme:I

.field private final touchableRegion:Landroid/graphics/Region;

.field private final unstashedTouchableRegion:Landroid/graphics/Region;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarInsetsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->Companion:Lcom/android/launcher3/taskbar/TaskbarInsetsController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070fe8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->taskbarHeightForIme:I

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarInsetsController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->deviceProfileChangeListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {v2, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/launcher3/taskbar/TaskbarInsetsController;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->unstashedTouchableRegion:Landroid/graphics/Region;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Lcom/android/launcher3/DeviceProfile;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onDestroy$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Lcom/android/launcher3/DeviceProfile;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->init$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method private final getContentHeightForIme()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez p0, :cond_a

    const-string p0, "controllers"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getContentHeightForIme()I

    move-result p0

    return p0
.end method

.method private final getInsetsByNavMode(I)Landroid/graphics/Insets;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneButtonNavMode(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_21

    if-eqz v0, :cond_16

    goto :goto_21

    :cond_16
    invoke-static {v1, v1, p1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    const-string/jumbo p1, "of(0, 0, bottomInset, 0)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_21
    :goto_21
    invoke-static {v1, v1, v1, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    const-string/jumbo p1, "of(0, 0, 0, bottomInset)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getReducingInsetsForTaskbarInsetsHeight(I)Landroid/graphics/Insets;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p0, :cond_b

    const-string/jumbo p0, "windowLayoutParams"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_b
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0, p1, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    const-string/jumbo p1, "of(0, windowLayoutParams.height - height, 0, 0)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final init$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onDestroy$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11

    const-string/jumbo v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarInsetsController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\twindowHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    const-string/jumbo v3, "windowLayoutParams"

    if-nez v1, :cond_39

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_39
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p0, :cond_4d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4e

    :cond_4d
    move-object v2, p0

    :goto_4e
    iget-object p0, v2, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    const-string/jumbo v0, "windowLayoutParams.providedInsets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_59
    if-ge v2, v0, :cond_b5

    aget-object v3, p0, v2

    const-string v4, "\tprovidedInsets: (type="

    invoke-static {p1, v4}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v5

    invoke-static {v5}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " insetsSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getInsetsSize()Landroid/graphics/Insets;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    move-result-object v4

    if-eqz v4, :cond_af

    const-string v4, " insetsSizeOverrides={"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    move-result-object v3

    const-string/jumbo v4, "provider.insetsSizeOverrides"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v3

    move v5, v1

    :goto_98
    if-ge v5, v4, :cond_a9

    aget-object v6, v3, v5

    if-lez v5, :cond_a3

    const-string v7, ", "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a3
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_98

    :cond_a9
    const-string/jumbo v3, "})"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_af
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_b5
    return-void
.end method

.method public final getContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method public final getTaskbarHeightForIme()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->taskbarHeightForIme:I

    return p0
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .registers 11

    const-string v0, "controllers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string v0, "context.windowLayoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    const-string/jumbo v1, "windowLayoutParams"

    if-nez p1, :cond_1e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1e
    const/4 v2, 0x5

    new-array v2, v2, [Landroid/view/InsetsFrameProvider;

    new-instance v3, Landroid/view/InsetsFrameProvider;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Landroid/view/InsetsFrameProvider;->setFlags(II)Landroid/view/InsetsFrameProvider;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Landroid/view/InsetsFrameProvider;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v7

    invoke-direct {v3, v5, v6, v7}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    aput-object v3, v2, v4

    const/4 v3, 0x2

    new-instance v5, Landroid/view/InsetsFrameProvider;

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v8

    invoke-direct {v5, v7, v6, v8}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    aput-object v5, v2, v3

    const/4 v3, 0x3

    new-instance v5, Landroid/view/InsetsFrameProvider;

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v8

    invoke-direct {v5, v7, v6, v8}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v5, v6}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    new-instance v5, Landroid/view/InsetsFrameProvider;

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v8

    invoke-direct {v5, v7, v4, v8}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v5, v6}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v5

    aput-object v5, v2, v3

    iput-object v2, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p1, :cond_80

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_81

    :cond_80
    move-object v0, p1

    :goto_81
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisableWindowRoundCorner()Z

    move-result p1

    xor-int/2addr p1, v4

    iput-boolean p1, v0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->deviceProfileChangeListener:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/android/launcher3/taskbar/y0;

    invoke-direct {v1, v0}, Lcom/android/launcher3/taskbar/y0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p1, v1}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->registerForCallingUser()V

    return-void
.end method

.method public final onDestroy()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->deviceProfileChangeListener:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/android/launcher3/taskbar/b;

    invoke-direct {v2, v1}, Lcom/android/launcher3/taskbar/b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v2}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->unregister()V

    return-void
.end method

.method public final onTaskbarWindowHeightOrInsetsChanged()V
    .registers 15

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "windowLayoutParams"

    const/4 v4, 0x0

    if-nez v2, :cond_20

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_20
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    const-string v6, "controllers"

    if-nez v5, :cond_2c

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_2c
    iget-object v5, v5, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTouchableHeight()I

    move-result v5

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v7, :cond_3a

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v4

    :cond_3a
    iget-object v7, v7, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget v7, v7, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    sub-int v9, v2, v5

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9, v0, v2}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->unstashedTouchableRegion:Landroid/graphics/Region;

    sub-int v7, v2, v7

    invoke-virtual {v8, v10, v7, v0, v2}, Landroid/graphics/Region;->set(IIII)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onTaskbarWindowHeightOrInsetsChanged, touchableRegion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", , touchableHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", screenWidth: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", screenHeight: "

    const-string v8, ", windowHeight:"

    invoke-static {v7, v0, v5, v1, v8}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, "TaskbarInsetsController"

    invoke-static {v7, v2, v0}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v0, :cond_7e

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_7e
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getContentHeightToReportToApps()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v1, :cond_8c

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_8c
    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTappableHeightToReportToApps()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v5, :cond_a0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_a0
    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    const-string/jumbo v6, "windowLayoutParams.providedInsets"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v5

    move v8, v10

    :goto_aa
    const/4 v9, 0x1

    if-ge v8, v7, :cond_121

    aget-object v11, v5, v8

    const/high16 v12, -0x80000000

    invoke-virtual {v11, v12, v12}, Landroid/view/InsetsFrameProvider;->setFlags(II)Landroid/view/InsetsFrameProvider;

    invoke-virtual {v11}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v12

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v13

    if-eq v12, v13, :cond_117

    invoke-virtual {v11}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v12

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v13

    if-ne v12, v13, :cond_c9

    goto :goto_117

    :cond_c9
    invoke-virtual {v11}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v12

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v13

    if-ne v12, v13, :cond_db

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsByNavMode(I)Landroid/graphics/Insets;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    goto :goto_11e

    :cond_db
    invoke-virtual {v11}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v12

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v13

    if-ne v12, v13, :cond_f9

    invoke-virtual {v11}, Landroid/view/InsetsFrameProvider;->getIndex()I

    move-result v12

    if-nez v12, :cond_f9

    iget-object v9, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v9, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivityForCallingUser(Landroid/content/res/Resources;)I

    move-result v9

    invoke-static {v9, v10, v10, v10}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    goto :goto_11e

    :cond_f9
    invoke-virtual {v11}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v12

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v13

    if-ne v12, v13, :cond_11e

    invoke-virtual {v11}, Landroid/view/InsetsFrameProvider;->getIndex()I

    move-result v12

    if-ne v12, v9, :cond_11e

    iget-object v9, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v9, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivityForCallingUser(Landroid/content/res/Resources;)I

    move-result v9

    invoke-static {v10, v10, v9, v10}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    goto :goto_11e

    :cond_117
    :goto_117
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsByNavMode(I)Landroid/graphics/Insets;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    :cond_11e
    :goto_11e
    add-int/lit8 v8, v8, 0x1

    goto :goto_aa

    :cond_121
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->taskbarHeightForIme:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsByNavMode(I)Landroid/graphics/Insets;

    move-result-object v0

    new-array v1, v9, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    new-instance v2, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    const/16 v5, 0x7db

    invoke-direct {v2, v5, v0}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    aput-object v2, v1, v10

    invoke-direct {p0, v10}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsByNavMode(I)Landroid/graphics/Insets;

    move-result-object v2

    new-instance v7, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    invoke-direct {v7, v5, v0}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    new-instance v0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    const/16 v5, 0x7ef

    invoke-direct {v0, v5, v2}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_14a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_14b

    :cond_14a
    move-object v4, v0

    :goto_14b
    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    :goto_151
    if-ge v10, v2, :cond_15b

    aget-object v3, v0, v10

    invoke-virtual {v3, v1}, Landroid/view/InsetsFrameProvider;->setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;

    add-int/lit8 v10, v10, 0x1

    goto :goto_151

    :cond_15b
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->notifyUpdateLayoutParams()V

    return-void
.end method

.method public final updateInsetsTouchability(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 11

    const-string v0, "insetsInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    const/4 v1, 0x0

    const-string v2, "controllers"

    if-nez v0, :cond_15

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_15
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v3

    iget-object v4, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addVisibleButtonsRegion(Lcom/android/launcher3/views/BaseDragLayer;Landroid/graphics/Region;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->setForceUseUnstashedTouchableRegion(Z)V

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    const v4, 0x3c23d70a  # 0.01f

    cmpg-float v3, v3, v4

    const/4 v4, 0x1

    const-string v5, "TaskbarInsetsController"

    const/4 v6, 0x3

    if-gez v3, :cond_69

    invoke-virtual {p1, v6}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInsetsTouchability-ALPHA_CUTOFF_THRESHOLD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", touchableRegion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e8

    :cond_69
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_71

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_71
    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isImeVisible()Z

    move-result v3

    if-eqz v3, :cond_a5

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_81

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_81
    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-virtual {p1, v6}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInsetsTouchability-isImeVisible, touchableRegion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e8

    :cond_a5
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_ad

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_ad
    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isTaskbarTouchable()Z

    move-result v3

    if-nez v3, :cond_d1

    invoke-virtual {p1, v6}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInsetsTouchability-isTaskbarTouchable, touchableRegion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e8

    :cond_d1
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_d9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_d9
    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isSystemDragInProgress()Z

    move-result v3

    if-eqz v3, :cond_104

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    invoke-virtual {p1, v6}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInsetsTouchability-isSystemDragInProgress, touchableRegion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e8

    :cond_104
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/high16 v7, 0x80000

    invoke-static {v3, v7}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result v3

    if-eqz v3, :cond_142

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v0, :cond_116

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_117

    :cond_116
    move-object v1, v0

    :goto_117
    iget-object v0, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->areIconsVisible()Z

    move-result v0

    if-eqz v0, :cond_126

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :cond_126
    invoke-virtual {p1, v6}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInsetsTouchability: has open view taskbar_overlay_proxy, touchableRegion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e8

    :cond_142
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/high16 v7, 0x20000

    invoke-static {v3, v7}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result v3

    if-eqz v3, :cond_16f

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    invoke-virtual {p1, v6}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInsetsTouchability: has open view taskbar_all_apps, touchableRegion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e8

    :cond_16f
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_177

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_177
    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarViewController;->areIconsVisible()Z

    move-result v3

    if-nez v3, :cond_1eb

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const v7, 0x7fffff

    invoke-static {v3, v7}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result v3

    if-nez v3, :cond_1eb

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v3

    if-eqz v3, :cond_193

    goto :goto_1eb

    :cond_193
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-eqz v0, :cond_1ce

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v0, :cond_1a3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1a4

    :cond_1a3
    move-object v1, v0

    :goto_1a4
    iget-object v0, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->areIconsVisible()Z

    move-result v0

    if-nez v0, :cond_1ce

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInsetsTouchability: Taskbar is open and has navigation bar, touchableRegion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto :goto_1e8

    :cond_1ce
    invoke-virtual {p1, v6}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInsetsTouchability: final touchableRegion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e8
    move v0, v4

    goto/16 :goto_2a1

    :cond_1eb
    :goto_1eb
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v3, v4}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result v3

    if-nez v3, :cond_237

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v7}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isTaskbarWindowFullscreen()Z

    move-result v7

    if-eqz v7, :cond_1fc

    goto :goto_237

    :cond_1fc
    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v7, :cond_204

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v1

    :cond_204
    iget-object v7, v7, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->unstashedTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_22f

    invoke-virtual {v7}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isSmallScreenMode()Z

    move-result v8

    if-nez v8, :cond_22f

    invoke-virtual {v7}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v8

    if-eqz v8, :cond_22f

    iget-boolean v7, v7, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsManuallyStashedInApp:Z

    if-eqz v7, :cond_22f

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->isStillInTouch()Z

    move-result v7

    if-eqz v7, :cond_22f

    iget-object v7, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->unstashedTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v8}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->setForceUseUnstashedTouchableRegion(Z)V

    goto :goto_238

    :cond_22f
    iget-object v4, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_238

    :cond_237
    :goto_237
    move v6, v0

    :goto_238
    invoke-virtual {p1, v6}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateInsetsTouchability-areIconsVisible:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v6, :cond_24e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_24f

    :cond_24e
    move-object v1, v6

    :goto_24f
    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->areIconsVisible()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isNavBarKidsModeActive ="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isTaskbarWindowFullscreen ="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isTaskbarWindowFullscreen()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",touchableRegion "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ,hasOpenView = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", touchableRegion: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", unstashedTouchableRegion: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->unstashedTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->excludeFromMagnificationRegion(Z)V

    return-void
.end method
