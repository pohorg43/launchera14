.class public final synthetic Landroidx/constraintlayout/core/state/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Lcom/oplus/smartsdk/SmartAPICallback;


# static fields
.field public static final synthetic a:Landroidx/constraintlayout/core/state/f;

.field public static final synthetic b:Landroidx/constraintlayout/core/state/f;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/constraintlayout/core/state/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/f;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/f;->a:Landroidx/constraintlayout/core/state/f;

    new-instance v0, Landroidx/constraintlayout/core/state/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/f;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/f;->b:Landroidx/constraintlayout/core/state/f;

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

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->c(F)F

    move-result p0

    return p0
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->c(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method
