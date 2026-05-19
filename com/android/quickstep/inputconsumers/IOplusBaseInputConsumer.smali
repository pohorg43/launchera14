.class public interface abstract Lcom/android/quickstep/inputconsumers/IOplusBaseInputConsumer;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TYPE_CHILD_MODE:I = 0x100000

.field public static final TYPE_FOCUS_MODE:I = 0x800000

.field public static final TYPE_NON_GESTURE_HOME:I = 0x200000

.field public static final TYPE_OTHER_ACTIVITY_THREE_FINGER:I = 0x10000000

.field public static final TYPE_OVERSCROLL:I = 0x1000000

.field public static final TYPE_STUDY_MODE:I = 0x2000000

.field public static final TYPE_SUPER_POWER_SAVE_MODE:I = 0x400000

.field public static final TYPE_TASKBAR_UNSTASH:I = 0x8000000

.field public static final TYPE_WELL_BEING_ASSISTANT_MODE:I = 0x4000000


# virtual methods
.method public checkPreviousSwipeFinished()V
    .registers 1

    return-void
.end method

.method public onConsumerHasBeenSwitched(Lcom/android/quickstep/InputConsumer;)V
    .registers 2
    .param p1  # Lcom/android/quickstep/InputConsumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    return-void
.end method
