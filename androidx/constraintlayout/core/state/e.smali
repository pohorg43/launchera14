.class public final synthetic Landroidx/constraintlayout/core/state/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
.implements Lcom/oplus/smartsdk/SmartAPICallback;


# static fields
.field public static final synthetic b:Landroidx/constraintlayout/core/state/e;

.field public static final synthetic c:Landroidx/constraintlayout/core/state/e;

.field public static final synthetic d:Landroidx/constraintlayout/core/state/e;

.field public static final synthetic e:Landroidx/constraintlayout/core/state/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/constraintlayout/core/state/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/e;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/e;->b:Landroidx/constraintlayout/core/state/e;

    new-instance v0, Landroidx/constraintlayout/core/state/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/e;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/e;->c:Landroidx/constraintlayout/core/state/e;

    new-instance v0, Landroidx/constraintlayout/core/state/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/e;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/e;->d:Landroidx/constraintlayout/core/state/e;

    new-instance v0, Landroidx/constraintlayout/core/state/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/e;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/e;->e:Landroidx/constraintlayout/core/state/e;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Landroidx/constraintlayout/core/state/e;->a:I

    packed-switch p0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x1
    new-instance p0, Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-direct {p0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;-><init>(Landroid/content/Context;)V

    return-object p0

    :goto_c
    invoke-static {p1}, Lcom/android/launcher3/util/ScreenOnTracker;->b(Landroid/content/Context;)Lcom/android/launcher3/util/ScreenOnTracker;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public getInterpolation(F)F
    .registers 2

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->a(F)F

    move-result p0

    return p0
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->b(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method
