.class public final Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$DRAG_LAYER_ALPHA$1;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/OplusDragLayer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Alpha: dragLayer"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/OplusDragLayer;)Ljava/lang/Float;
    .registers 2

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    goto :goto_9

    :cond_7
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_9
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$DRAG_LAYER_ALPHA$1;->get(Lcom/android/launcher3/OplusDragLayer;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/launcher3/OplusDragLayer;F)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Lcom/android/launcher3/OplusDragLayer;->setAlphaByTaskView(F)V

    :cond_5
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation$DRAG_LAYER_ALPHA$1;->setValue(Lcom/android/launcher3/OplusDragLayer;F)V

    return-void
.end method
