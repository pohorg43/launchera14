.class public final Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/OplusTaskViewImpl;
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

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurveScaleForCurveInterpolation(Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;F)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->getCurveScaleForCurveInterpolation(F)F

    move-result p0

    return p0
.end method

.method private final getCurveScaleForCurveInterpolation(F)F
    .registers 3

    const/4 p0, 0x1

    int-to-float p0, p0

    const v0, 0x3cf5c28f  # 0.03f

    mul-float/2addr p1, v0

    sub-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final getADJACENT_TRANSLATE_X()Landroid/util/FloatProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/quickstep/views/OplusTaskViewImpl;->access$getADJACENT_TRANSLATE_X$cp()Landroid/util/FloatProperty;

    move-result-object p0

    return-object p0
.end method

.method public final getCurveScaleForInterpolation(F)F
    .registers 3

    invoke-static {}, Lcom/android/quickstep/views/OplusTaskViewImpl;->access$getCURVE_INTERPOLATOR$cp()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->getCurveScaleForCurveInterpolation(F)F

    move-result p0

    return p0
.end method

.method public final getTRANSLATION_X()Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/quickstep/views/OplusTaskViewImpl;->access$getTRANSLATION_X$cp()Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-result-object p0

    return-object p0
.end method

.method public final getTRANSLATION_Y()Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/quickstep/views/OplusTaskViewImpl;->access$getTRANSLATION_Y$cp()Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-result-object p0

    return-object p0
.end method

.method public final simpleDesc(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p1, :cond_6

    const-string/jumbo p0, "null"

    return-object p0

    :cond_6
    const-string/jumbo p0, "task("

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    const/16 v0, 0x29

    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
