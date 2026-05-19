.class public final Lcom/oplus/quickstep/navigation/NavigationController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;,
        Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;,
        Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;,
        Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNavigationController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationController.kt\ncom/oplus/quickstep/navigation/NavigationController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,631:1\n1855#2,2:632\n*S KotlinDebug\n*F\n+ 1 NavigationController.kt\ncom/oplus/quickstep/navigation/NavigationController\n*L\n535#1:632,2\n*E\n"
    }
.end annotation


# static fields
.field private static final GESTURE_ORIGIN_CLONE_PHONE:I = 0x1

.field public static final INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

.field private static final TAG:Ljava/lang/String; = "NavigationController"


# instance fields
.field private mAssistantHeight:I

.field private mBottomOffset:I

.field private final mBracketSpaceModeObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;

.field private final mBracketSpaceSwitchObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;

.field private final mDisableGestureObserver:Lcom/oplus/quickstep/common/observers/DisableGestureObserver;

.field private final mForceCancelRecentsAnimToggleObserver:Lcom/oplus/quickstep/common/observers/ForceCancelRecentsAnimToggleObserver;

.field private mGestureBottomArea:I

.field private final mGestureNavbarHiddenObserver:Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;

.field private final mGestureRectF0:Landroid/graphics/RectF;

.field private final mGestureRectF180:Landroid/graphics/RectF;

.field private final mGestureRectF270:Landroid/graphics/RectF;

.field private final mGestureRectF90:Landroid/graphics/RectF;

.field private mIsMistouchPreventionActive:Z

.field private mIsSwipeUpGestureWithKeysModeSideBack:Z

.field private mLeftOffset:I

.field private final mMisTouchStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;

.field private mMistouchStateChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;

.field private mModeChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;

.field private final mNavStateChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$mNavStateChangeListener$1;

.field private final mNavStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;

.field private final mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

.field private final mNavbarCombinationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/common/IObserverListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavbarDirectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/common/IObserverListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOneHandModeHeight:I

.field private final mOneHandedModeObserver:Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;

.field private final mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

.field private final mOplusWindowManager:Landroid/view/OplusWindowManager;

.field private final mPauseAppListUpdateListener:Lcom/oplus/quickstep/navigation/NavigationController$mPauseAppListUpdateListener$1;

.field private final mPauseAppListUpdateObserver:Lcom/oplus/quickstep/common/observers/PauseAppListUpdateObserver;

.field private mRightOffset:I

.field private final mStashedHandlerHiddenListener:Lcom/oplus/quickstep/navigation/NavigationController$mStashedHandlerHiddenListener$1;

.field private final mStashedHandlerHiddenListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSwipeSideGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;

.field private final mSwipeTouchRegion:Landroid/graphics/RectF;

.field private final mSwipeUpGestureKeysModeListener:Lcom/oplus/quickstep/navigation/NavigationController$mSwipeUpGestureKeysModeListener$1;

.field private final mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

.field private final mSwipeUpGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;

.field private mTopOffset:I

.field private mTouchBoundsChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;

.field private final mVirtualKeyCombinationTypeListener:Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;

.field private final mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

.field private final mVirtualKeyDirectionTypeListener:Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyDirectionTypeListener$1;

.field private final mVirtualKeyDirectionTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyDirectionTypeObserver;

.field private swipeSlideModeChangedFun:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavbarDirectionListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavbarCombinationListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mStashedHandlerHiddenListeners:Ljava/util/List;

    new-instance v0, Landroid/view/OplusWindowManager;

    invoke-direct {v0}, Landroid/view/OplusWindowManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF90:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF180:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF270:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeTouchRegion:Landroid/graphics/RectF;

    new-instance v0, Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/NavStateObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/VirtualKeyDirectionTypeObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/VirtualKeyDirectionTypeObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyDirectionTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyDirectionTypeObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeSideGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/DisableGestureObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/DisableGestureObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mDisableGestureObserver:Lcom/oplus/quickstep/common/observers/DisableGestureObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureNavbarHiddenObserver:Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOneHandedModeObserver:Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceSwitchObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceModeObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/PauseAppListUpdateObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/PauseAppListUpdateObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mPauseAppListUpdateObserver:Lcom/oplus/quickstep/common/observers/PauseAppListUpdateObserver;

    new-instance v0, Lcom/oplus/quickstep/common/observers/ForceCancelRecentsAnimToggleObserver;

    invoke-direct {v0}, Lcom/oplus/quickstep/common/observers/ForceCancelRecentsAnimToggleObserver;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mForceCancelRecentsAnimToggleObserver:Lcom/oplus/quickstep/common/observers/ForceCancelRecentsAnimToggleObserver;

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;-><init>(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;-><init>(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeListener:Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyDirectionTypeListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyDirectionTypeListener$1;-><init>(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyDirectionTypeListener:Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyDirectionTypeListener$1;

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$mStashedHandlerHiddenListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController$mStashedHandlerHiddenListener$1;-><init>(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mStashedHandlerHiddenListener:Lcom/oplus/quickstep/navigation/NavigationController$mStashedHandlerHiddenListener$1;

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateChangeListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateChangeListener$1;-><init>(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$mNavStateChangeListener$1;

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$mSwipeUpGestureKeysModeListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController$mSwipeUpGestureKeysModeListener$1;-><init>(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeListener:Lcom/oplus/quickstep/navigation/NavigationController$mSwipeUpGestureKeysModeListener$1;

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;-><init>(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mMisTouchStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;

    new-instance v0, Lcom/oplus/quickstep/navigation/NavigationController$mPauseAppListUpdateListener$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/navigation/NavigationController$mPauseAppListUpdateListener$1;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mPauseAppListUpdateListener:Lcom/oplus/quickstep/navigation/NavigationController$mPauseAppListUpdateListener$1;

    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;Lcom/oplus/quickstep/navigation/NavigationController;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/navigation/NavigationController;->updateTouchRegion$lambda$1(Ljava/util/ArrayList;Lcom/oplus/quickstep/navigation/NavigationController;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static final synthetic access$getMNavStateObserver$p(Lcom/oplus/quickstep/navigation/NavigationController;)Lcom/oplus/quickstep/common/observers/NavStateObserver;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    return-object p0
.end method

.method public static final synthetic access$getMNavbarCombinationListeners$p(Lcom/oplus/quickstep/navigation/NavigationController;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavbarCombinationListeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMNavbarDirectionListeners$p(Lcom/oplus/quickstep/navigation/NavigationController;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavbarDirectionListeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMStashedHandlerHiddenListeners$p(Lcom/oplus/quickstep/navigation/NavigationController;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mStashedHandlerHiddenListeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$isNavigationModeGesture(Lcom/oplus/quickstep/navigation/NavigationController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isNavigationModeGesture()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$notifyMistouchStateChange(Lcom/oplus/quickstep/navigation/NavigationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->notifyMistouchStateChange()V

    return-void
.end method

.method public static final synthetic access$updateMistouchState(Lcom/oplus/quickstep/navigation/NavigationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->updateMistouchState()V

    return-void
.end method

.method public static final synthetic access$updateTouchBounds(Lcom/oplus/quickstep/navigation/NavigationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->updateTouchBounds()V

    return-void
.end method

.method private final calculatePixelSizeByDp(Landroid/content/res/Resources;I)I
    .registers 6

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float v0, p2

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const-string v1, "calculatePixelSizeByDp: density="

    const-string v2, ", rDensity = "

    invoke-static {v1, p0, v2}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "NavigationController"

    invoke-static {p0, v0, p1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v0
.end method

.method private final calculateTouchRegion(Lcom/android/quickstep/OrientationRectF;I)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transCoordinateByRotation origin orientationRectF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mLeftOffset:I

    iput v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mTopOffset:I

    iput v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mRightOffset:I

    iput v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBottomOffset:I

    iget v1, p1, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    const/4 v2, 0x0

    if-eqz v1, :cond_81

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6d

    const/4 v3, 0x2

    if-eq v1, v3, :cond_54

    const/4 v3, 0x3

    if-eq v1, v3, :cond_37

    goto/16 :goto_9b

    :cond_37
    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF270:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->getHeight()F

    move-result v3

    int-to-float v4, p2

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->getHeight()F

    move-result v4

    invoke-virtual {p1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->getWidth()F

    move-result p1

    invoke-virtual {v1, v3, v2, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mAssistantHeight:I

    sub-int/2addr p2, p1

    if-lez p2, :cond_50

    goto :goto_51

    :cond_50
    move v0, p2

    :goto_51
    iput v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mLeftOffset:I

    goto :goto_9b

    :cond_54
    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF180:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->getWidth()F

    move-result p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v2, p1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOneHandModeHeight:I

    iget v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mAssistantHeight:I

    if-ge p1, v1, :cond_65

    move p1, v1

    :cond_65
    sub-int/2addr p1, p2

    if-gez p1, :cond_69

    goto :goto_6a

    :cond_69
    move v0, p1

    :goto_6a
    iput v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBottomOffset:I

    goto :goto_9b

    :cond_6d
    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF90:Landroid/graphics/RectF;

    int-to-float v3, p2

    invoke-virtual {p1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->getWidth()F

    move-result p1

    invoke-virtual {v1, v2, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mAssistantHeight:I

    sub-int/2addr p1, p2

    if-gez p1, :cond_7d

    goto :goto_7e

    :cond_7d
    move v0, p1

    :goto_7e
    iput v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mRightOffset:I

    goto :goto_9b

    :cond_81
    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF0:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, p2

    sub-float v4, v3, v4

    iget p1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOneHandModeHeight:I

    iget v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mAssistantHeight:I

    if-ge p1, v1, :cond_94

    move p1, v1

    :cond_94
    sub-int/2addr p2, p1

    if-lez p2, :cond_98

    goto :goto_99

    :cond_98
    move v0, p2

    :goto_99
    iput v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mTopOffset:I

    :goto_9b
    return-void
.end method

.method private final changeGestureBottomArea(Lcom/android/quickstep/OrientationRectF;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/navigation/NavigationController;->calculateTouchRegion(Lcom/android/quickstep/OrientationRectF;I)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->updateTouchRegion()V

    return-void
.end method

.method private final isNavigationModeGesture()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private final notifyMistouchStateChange()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mMistouchStateChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;->onMistouchStateChange()V

    :cond_7
    return-void
.end method

.method private final notifyTouchBoundsChange()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mTouchBoundsChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;->onTouchBoundsChange()V

    :cond_7
    return-void
.end method

.method private final updateMistouchState()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    goto :goto_21

    :cond_f
    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeSideGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v0

    if-ne v0, v3, :cond_21

    goto :goto_20

    :cond_18
    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v0

    if-ne v0, v3, :cond_21

    :goto_20
    move v2, v3

    :cond_21
    :goto_21
    iput-boolean v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mIsMistouchPreventionActive:Z

    return-void
.end method

.method private final updateTouchBounds()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-virtual {v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v0

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget-boolean v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mIsSwipeUpGestureWithKeysModeSideBack:Z

    if-eq v1, v0, :cond_1d

    iput-boolean v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mIsSwipeUpGestureWithKeysModeSideBack:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->notifyTouchBoundsChange()V

    :cond_1d
    return-void
.end method

.method private static final updateTouchRegion$lambda$1(Ljava/util/ArrayList;Lcom/oplus/quickstep/navigation/NavigationController;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 12

    const-string v0, "$swipeTouchRegions"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    const-string v2, "updateTouchRegion: swipeTouchRegions = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavigationController"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_36
    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    const/16 v2, 0x7e2

    invoke-virtual {v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    iget-object v3, p1, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Landroid/os/Bundle;

    const-string v4, "homegesture_displayid_0"

    move-object v5, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/OplusWindowManager;->updateInvalidRegion(Ljava/lang/String;Ljava/util/List;ZZLandroid/os/Bundle;)Z

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->releaseCpuResources(I)V

    return-void
.end method


# virtual methods
.method public final addOplusSystemDeviceStateChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    return-void
.end method

.method public final addStashedHandlerHiddenListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "stashedHandlerHiddenListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mStashedHandlerHiddenListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addVirtualKeyCombinationListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 3

    const-string v0, "virtualKeyCombinationListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavbarCombinationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addVirtualKeyDirectionListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 3

    const-string v0, "virtualKeyDirectionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavbarDirectionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final calculateSpecificNavigationMode()Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .registers 7

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {v1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "NavigationController"

    const/4 v4, 0x2

    if-eqz v1, :cond_43

    const/4 v5, 0x1

    if-eq v1, v5, :cond_43

    if-eq v1, v4, :cond_19

    if-eq v1, v2, :cond_16

    goto :goto_6c

    :cond_16
    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    goto :goto_6c

    :cond_19
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, " calculateSpecificNavigationMode: swipeUpGestureKeysMode = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-virtual {v2}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-virtual {v1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v1

    if-eq v1, v5, :cond_40

    if-eq v1, v4, :cond_40

    goto :goto_6c

    :cond_40
    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    goto :goto_6c

    :cond_43
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string v1, " calculateSpecificNavigationMode: virtualKeyCombinationType = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    invoke-virtual {v5}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    invoke-virtual {v1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v1

    if-eq v1, v4, :cond_6a

    if-eq v1, v2, :cond_6a

    goto :goto_6c

    :cond_6a
    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    :goto_6c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_b0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " calculateSpecificNavigationMode: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mNavStateObserver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {v2}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", virtualKeyCombinationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    invoke-virtual {v2}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", swipeUpGestureKeysMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    return-object v0
.end method

.method public final changeGestureBottomArea(I)V
    .registers 5

    const-string v0, "changeGestureBottomArea: newSize = "

    const-string v1, ", mGestureBottomArea = "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureBottomArea:I

    const-string v2, "NavigationController"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureBottomArea:I

    if-eq p1, p0, :cond_23

    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->changeBottomGestureAreaRatio(F)V

    :cond_23
    return-void
.end method

.method public final clearTouchRegion()V
    .registers 3

    const-string v0, "NavigationController"

    const-string v1, "clearTouchRegion()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF0:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF90:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF180:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF270:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "pw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigation mode gesture : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navigation mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {v1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNavigationModeGesture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isNavigationModeGesture()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isNavigationModeGesture()Z

    move-result v0

    if-eqz v0, :cond_10a

    const-string v0, "swipe touch region:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF0:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const-string v1, "swipe touch region mGestureRectF0: "

    if-nez v0, :cond_61

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF0:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_61
    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF90:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF90:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_79
    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF180:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF180:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_91
    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF270:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a9

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF270:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a9
    const-string v0, "touch inject region:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset_left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mLeftOffset:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset_top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mTopOffset:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset_right: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mRightOffset:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset_bottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBottomOffset:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_10a
    return-void
.end method

.method public final getColorGestureAreaSize(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "context.resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b000c

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/navigation/NavigationController;->calculatePixelSizeByDp(Landroid/content/res/Resources;I)I

    move-result p0

    const-string p1, "getColorGestureAreaSize() bottomGestureAreaSize="

    const-string v0, "NavigationController"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public final getGestureAreaSizeInMistouch(Landroid/content/res/Resources;Lcom/android/quickstep/OrientationRectF;)F
    .registers 10

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientationRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    const v1, 0x7f0b000c

    invoke-direct {p0, p1, v1}, Lcom/oplus/quickstep/navigation/NavigationController;->calculatePixelSizeByDp(Landroid/content/res/Resources;I)I

    move-result v1

    sget-object v2, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->setRotation(I)V

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3a

    :cond_1e
    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object v2, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v2}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureMistouchPreventionActive()Z

    move-result v2

    if-eqz v2, :cond_3a

    const v2, 0x7f0b000d

    invoke-direct {p0, p1, v2}, Lcom/oplus/quickstep/navigation/NavigationController;->calculatePixelSizeByDp(Landroid/content/res/Resources;I)I

    move-result p1

    goto :goto_3b

    :cond_3a
    move p1, v1

    :goto_3b
    iget v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureBottomArea:I

    const-string v3, ", size="

    const-string v4, ", newSize="

    const-string v5, "getGestureAreaSizeInMistouch(), rotation="

    const-string v6, "NavigationController"

    if-eq p1, v2, :cond_5b

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/navigation/NavigationController;->changeGestureBottomArea(I)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSystemUiSupportClearBottomGestureArea()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-direct {p0, p2, p1}, Lcom/oplus/quickstep/navigation/NavigationController;->changeGestureBottomArea(Lcom/android/quickstep/OrientationRectF;I)V

    invoke-static {v5, v0, v4, p1, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, v1, v6}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_62

    :cond_5b
    invoke-static {v5, v0, v4, p1, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, v1, v6}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_62
    int-to-float p0, p1

    return p0
.end method

.method public final getMAssistantHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mAssistantHeight:I

    return p0
.end method

.method public final getMOneHandModeHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOneHandModeHeight:I

    return p0
.end method

.method public final getSwipeSlideModeChangedFun()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->swipeSlideModeChangedFun:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getSwipeTouchRegion()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeTouchRegion:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getSystemDeviceState()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result p0

    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mMisTouchStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$mNavStateChangeListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeListener:Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyDirectionTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyDirectionTypeObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyDirectionTypeListener:Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyDirectionTypeListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyDirectionTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyDirectionTypeObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeListener:Lcom/oplus/quickstep/navigation/NavigationController$mSwipeUpGestureKeysModeListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mMisTouchStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureMistouchPreventionObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeSideGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mMisTouchStateListener:Lcom/oplus/quickstep/navigation/NavigationController$mMisTouchStateListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeSideGestureMistouchPreventionObserver:Lcom/oplus/quickstep/common/observers/SwipeSideGestureMistouchPreventionObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mDisableGestureObserver:Lcom/oplus/quickstep/common/observers/DisableGestureObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureNavbarHiddenObserver:Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mStashedHandlerHiddenListener:Lcom/oplus/quickstep/navigation/NavigationController$mStashedHandlerHiddenListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureNavbarHiddenObserver:Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOneHandedModeObserver:Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v3, v5}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceSwitchObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceModeObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mForceCancelRecentsAnimToggleObserver:Lcom/oplus/quickstep/common/observers/ForceCancelRecentsAnimToggleObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mPauseAppListUpdateObserver:Lcom/oplus/quickstep/common/observers/PauseAppListUpdateObserver;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mPauseAppListUpdateListener:Lcom/oplus/quickstep/navigation/NavigationController$mPauseAppListUpdateListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mPauseAppListUpdateObserver:Lcom/oplus/quickstep/common/observers/PauseAppListUpdateObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1, v4}, Lcom/oplus/quickstep/common/AbstractObserver;->register(Landroid/content/Context;IZ)V

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->updateTouchBounds()V

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->updateMistouchState()V

    return-void
.end method

.method public final initBeforeRegistered(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyCombinationTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyCombinationTypeObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mVirtualKeyDirectionTypeObserver:Lcom/oplus/quickstep/common/observers/VirtualKeyDirectionTypeObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeUpGestureKeysModeObserver:Lcom/oplus/quickstep/common/observers/SwipeUpGestureKeysModeObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mDisableGestureObserver:Lcom/oplus/quickstep/common/observers/DisableGestureObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureNavbarHiddenObserver:Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceSwitchObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceModeObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mForceCancelRecentsAnimToggleObserver:Lcom/oplus/quickstep/common/observers/ForceCancelRecentsAnimToggleObserver;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method public final isBracketSpaceSwitchOpen()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceSwitchObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/BracketSpaceSwitchObserver;->isBracketSpaceSwitchOpen()Z

    move-result p0

    return p0
.end method

.method public final isDeviceInHalfOn()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;->isInHalfOpen()Z

    move-result p0

    return p0
.end method

.method public final isForceCancelRecentsAnimFunctionOpen()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mForceCancelRecentsAnimToggleObserver:Lcom/oplus/quickstep/common/observers/ForceCancelRecentsAnimToggleObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/ForceCancelRecentsAnimToggleObserver;->isForceCancelRecentsAnimFunctionOpen()Z

    move-result p0

    return p0
.end method

.method public final isGestureDisabled()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mDisableGestureObserver:Lcom/oplus/quickstep/common/observers/DisableGestureObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/DisableGestureObserver;->isGestureDisabled()Z

    move-result p0

    return p0
.end method

.method public final isGestureMistouchPreventionActive()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mIsMistouchPreventionActive:Z

    return p0
.end method

.method public final isGestureNavbarHidden()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureNavbarHiddenObserver:Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/GestureNavBarHiddenObserver;->isNavbarHidden()Z

    move-result p0

    return p0
.end method

.method public final isInBracketSpaceMode()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBracketSpaceModeObserver:Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/BracketSpaceModeObserver;->isInBracketSpaceMode()Z

    move-result p0

    return p0
.end method

.method public final isOneHandedModeEnable()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOneHandedModeObserver:Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OneHandedModeObserver;->isIsOneHandedModeEnabled()Z

    move-result p0

    return p0
.end method

.method public final isSwipeSideGesture()Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final isSwipeUpGesture()Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final isSwipeUpGestureWithKeysModeSideBack()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mIsSwipeUpGestureWithKeysModeSideBack:Z

    return p0
.end method

.method public final isSwipeUpMode()Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final notifyModeChange()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mModeChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->calculateSpecificNavigationMode()Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;->onModeChange(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V

    :cond_b
    iget-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->swipeSlideModeChangedFun:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method

.method public final reInitNavState(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->initStateIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method public final releaseTouchBoundChangeListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mTouchBoundsChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;

    return-void
.end method

.method public final removeOplusSystemDeviceStateChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOplusSystemDeviceStateObserver:Lcom/oplus/quickstep/common/observers/SystemDeviceObserver;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->removeListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    return-void
.end method

.method public final removeStashedHandlerHiddenListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "stashedHandlerHiddenListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mStashedHandlerHiddenListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeVirtualKeyCombinationListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 3

    const-string v0, "virtualKeyCombinationListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavbarCombinationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeVirtualKeyDirectionListener(Lcom/oplus/quickstep/common/IObserverListener;)V
    .registers 3

    const-string v0, "virtualKeyDirectionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavbarDirectionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setMAssistantHeight(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mAssistantHeight:I

    return-void
.end method

.method public final setMOneHandModeHeight(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mOneHandModeHeight:I

    return-void
.end method

.method public final setMistouchStateChangeListener(Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mMistouchStateChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$MistouchStateChangeListener;

    return-void
.end method

.method public final setModeChangeListener(Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;)Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mModeChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->calculateSpecificNavigationMode()Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    return-object p0
.end method

.method public final setSwipeSlideModeChangedFun(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->swipeSlideModeChangedFun:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSwipeTouchRegion(Landroid/graphics/RectF;)V
    .registers 3

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mSwipeTouchRegion:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setTouchBoundsChangeListener(Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mTouchBoundsChangeListener:Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;

    return-void
.end method

.method public final updateTouchRegion()V
    .registers 6

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSystemUiSupportClearBottomGestureArea()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "updateTouchRegion: mNavState = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mNavStateObserver:Lcom/oplus/quickstep/common/observers/NavStateObserver;

    invoke-virtual {v1}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmGestureRectF_0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF0:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \nmGestureRectF_90="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF90:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \nmGestureRectF_180="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF180:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \nmGestureRectF_270="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF270:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offsets=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mLeftOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mTopOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mRightOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBottomOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-direct {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isNavigationModeGesture()Z

    move-result v2

    if-eqz v2, :cond_10d

    iget-object v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF0:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a2

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF0:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a2
    iget-object v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF90:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b4

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF90:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b4
    iget-object v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF180:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c6

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF180:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c6
    iget-object v2, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF270:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d8

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mGestureRectF270:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget v3, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mLeftOffset:I

    int-to-float v3, v3

    const-string v4, "offset_left"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget v3, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mTopOffset:I

    int-to-float v3, v3

    const-string v4, "offset_top"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget v3, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mRightOffset:I

    int-to-float v3, v3

    const-string v4, "offset_right"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget v3, p0, Lcom/oplus/quickstep/navigation/NavigationController;->mBottomOffset:I

    int-to-float v3, v3

    const-string v4, "offset_bottom"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_10d
    sget-object v2, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/quickstep/f1;

    invoke-direct {v3, v0, p0, v1}, Lcom/android/quickstep/f1;-><init>(Ljava/util/ArrayList;Lcom/oplus/quickstep/navigation/NavigationController;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
