.class public Lio/branch/search/BranchAnalytics_LifecycleAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/GeneratedAdapter;


# instance fields
.field public final a:Lio/branch/search/BranchAnalytics;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchAnalytics;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/BranchAnalytics_LifecycleAdapter;->a:Lio/branch/search/BranchAnalytics;

    return-void
.end method


# virtual methods
.method public callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V
    .registers 6

    const/4 p1, 0x1

    if-eqz p4, :cond_5

    move v0, p1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-eqz p3, :cond_9

    return-void

    :cond_9
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p3, :cond_1d

    if-eqz v0, :cond_17

    const-string p2, "onMoveToForeground"

    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/MethodCallsLogger;->approveCall(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_17
    iget-object p0, p0, Lio/branch/search/BranchAnalytics_LifecycleAdapter;->a:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->onMoveToForeground()V

    :cond_1c
    return-void

    :cond_1d
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p3, :cond_30

    if-eqz v0, :cond_2b

    const-string p2, "onMoveToBackground"

    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/MethodCallsLogger;->approveCall(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_30

    :cond_2b
    iget-object p0, p0, Lio/branch/search/BranchAnalytics_LifecycleAdapter;->a:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->onMoveToBackground()V

    :cond_30
    return-void
.end method
