.class public final synthetic Lcom/android/launcher3/uioverrides/states/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/uioverrides/states/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/uioverrides/states/a;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/states/a;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/states/a;->a:Lcom/android/launcher3/uioverrides/states/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->a(F)F

    move-result p0

    return p0
.end method
