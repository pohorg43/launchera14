.class Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;
.super Lcom/android/quickstep/util/TransformParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FakeTransformParams"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-direct {p0}, Lcom/android/quickstep/util/TransformParams;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)V

    return-void
.end method


# virtual methods
.method public applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V
    .registers 4

    instance-of v0, p1, Lcom/android/quickstep/util/RecordingSurfaceTransaction;

    if-eqz v0, :cond_3a

    check-cast p1, Lcom/android/quickstep/util/RecordingSurfaceTransaction;

    iget-object p1, p1, Lcom/android/quickstep/util/RecordingSurfaceTransaction;->mockProperties:Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;

    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    iget-object v1, p1, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iget-object v1, p1, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-static {v0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->access$000(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p1, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget p1, p1, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->cornerRadius:F

    invoke-static {v0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->access$102(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)F

    iget-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object p1, p1, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidateOutline()V

    iget-object p0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidateOutline()V

    :cond_3a
    return-void
.end method

.method public createSurfaceParams(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/SurfaceTransaction;
    .registers 5

    new-instance v0, Lcom/android/quickstep/util/RecordingSurfaceTransaction;

    invoke-direct {v0}, Lcom/android/quickstep/util/RecordingSurfaceTransaction;-><init>()V

    iget-object v1, v0, Lcom/android/quickstep/util/RecordingSurfaceTransaction;->mockProperties:Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, p0}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-object v0
.end method
