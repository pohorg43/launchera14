.class public final synthetic Landroidx/constraintlayout/core/state/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Lcom/oplus/smartsdk/SmartAPICallback;


# static fields
.field public static final synthetic a:Landroidx/constraintlayout/core/state/g;

.field public static final synthetic b:Landroidx/constraintlayout/core/state/g;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/constraintlayout/core/state/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/g;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/g;->a:Landroidx/constraintlayout/core/state/g;

    new-instance v0, Landroidx/constraintlayout/core/state/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/g;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/g;->b:Landroidx/constraintlayout/core/state/g;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 2

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->d(F)F

    move-result p0

    return p0
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->d(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method
