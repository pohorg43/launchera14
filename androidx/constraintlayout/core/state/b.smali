.class public final synthetic Landroidx/constraintlayout/core/state/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Landroidx/constraintlayout/core/state/b;

.field public static final synthetic b:Landroidx/constraintlayout/core/state/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/constraintlayout/core/state/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/b;->a:Landroidx/constraintlayout/core/state/b;

    new-instance v0, Landroidx/constraintlayout/core/state/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/b;->b:Landroidx/constraintlayout/core/state/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/util/window/RefreshRateTracker;->a(Landroid/content/Context;)Lcom/android/launcher3/util/window/RefreshRateTracker;

    move-result-object p0

    return-object p0
.end method

.method public getInterpolation(F)F
    .registers 2

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->e(F)F

    move-result p0

    return p0
.end method
