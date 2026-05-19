.class public final synthetic Landroidx/constraintlayout/core/state/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
.implements Lcom/oplus/smartsdk/SmartAPICallback;


# static fields
.field public static final synthetic b:Landroidx/constraintlayout/core/state/d;

.field public static final synthetic c:Landroidx/constraintlayout/core/state/d;

.field public static final synthetic d:Landroidx/constraintlayout/core/state/d;

.field public static final synthetic e:Landroidx/constraintlayout/core/state/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/constraintlayout/core/state/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/d;->b:Landroidx/constraintlayout/core/state/d;

    new-instance v0, Landroidx/constraintlayout/core/state/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/d;->c:Landroidx/constraintlayout/core/state/d;

    new-instance v0, Landroidx/constraintlayout/core/state/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/d;->d:Landroidx/constraintlayout/core/state/d;

    new-instance v0, Landroidx/constraintlayout/core/state/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    sput-object v0, Landroidx/constraintlayout/core/state/d;->e:Landroidx/constraintlayout/core/state/d;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Landroidx/constraintlayout/core/state/d;->a:I

    packed-switch p0, :pswitch_data_10

    goto :goto_b

    :pswitch_6  #0x1
    invoke-static {p1}, Lcom/android/launcher3/dot/SmallAppUtils;->a(Landroid/content/Context;)Lcom/android/launcher3/dot/SmallAppUtils;

    move-result-object p0

    return-object p0

    :goto_b
    invoke-static {p1}, Lcom/android/launcher3/pm/UserCache;->a(Landroid/content/Context;)Lcom/android/launcher3/pm/UserCache;

    move-result-object p0

    return-object p0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public getInterpolation(F)F
    .registers 2

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->b(F)F

    move-result p0

    return p0
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p1}, Lpantanal/app/app_card/engine/SmartEngineChecker;->d(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method
