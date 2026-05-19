.class public final synthetic Landroidx/constraintlayout/core/state/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Landroidx/constraintlayout/core/state/a;

.field public static final synthetic b:Landroidx/constraintlayout/core/state/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/constraintlayout/core/state/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/a;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/a;->a:Landroidx/constraintlayout/core/state/a;

    new-instance v0, Landroidx/constraintlayout/core/state/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/a;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/a;->b:Landroidx/constraintlayout/core/state/a;

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

    invoke-static {p1}, Lcom/android/launcher3/util/UiThreadHelper;->a(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public getInterpolation(F)F
    .registers 2

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->h(F)F

    move-result p0

    return p0
.end method
