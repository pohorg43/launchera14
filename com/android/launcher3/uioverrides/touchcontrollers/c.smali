.class public final synthetic Lcom/android/launcher3/uioverrides/touchcontrollers/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/c;->a:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    return-void
.end method


# virtual methods
.method public final onMotionPauseDetected()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/c;->a:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->c(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V

    return-void
.end method
