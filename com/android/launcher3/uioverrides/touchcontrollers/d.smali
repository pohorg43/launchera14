.class public final synthetic Lcom/android/launcher3/uioverrides/touchcontrollers/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/d;->a:Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/d;->a:Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;

    sget v0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->a:I

    invoke-virtual {p0}, Lcom/android/launcher3/touch/OplusAbstractStateChangeTouchController;->isEndToTarget()Z

    move-result p0

    return p0
.end method
