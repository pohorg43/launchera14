.class public Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$AsyncTraceCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/utils/AvoidUpdateDuringAnimUtil$AsyncTraceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncTraceCallback"
.end annotation


# instance fields
.field private final mAppWidgetHostView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$AsyncTraceCallback;->mAppWidgetHostView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public notifyAnimationEnd()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$AsyncTraceCallback;->mAppWidgetHostView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$AsyncTraceCallback;->mAppWidgetHostView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-static {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->access$200(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V

    :cond_13
    return-void
.end method

.method public notifyAnimationStart()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$AsyncTraceCallback;->mAppWidgetHostView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView$AsyncTraceCallback;->mAppWidgetHostView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-static {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->access$100(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V

    :cond_13
    return-void
.end method
