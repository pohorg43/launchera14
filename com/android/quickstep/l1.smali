.class public final synthetic Lcom/android/quickstep/l1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/RecentsAnimationDeviceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/l1;->a:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/l1;->a:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->h(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V

    return-void
.end method
